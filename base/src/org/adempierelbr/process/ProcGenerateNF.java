package org.adempierelbr.process;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MShipper;
import org.compiere.model.MUOM;
import org.compiere.model.X_LBR_NCM;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;


/**
 *	ProcGenerateNF
 *
 *  Process to Generate Nota Fiscal
 *	
 *	@author Mario Grigioni
 *	@version $Id: ProcGenerateNF.java, 08/01/2008 10:38:00 mgrigioni
 */
public class ProcGenerateNF extends SvrProcess
{
	
	/** Fatura                    */
	private int p_C_Invoice_ID = 0;
	/** Nota Fiscal               */
	private static int p_LBR_NotaFiscal_ID = 0;
	
	public static Properties ctx;
	public static String     trx;
	public static boolean    isSOTrx = true;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateNF.class);

	//Default Constructor
	public ProcGenerateNF(){}
	
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("GenerateNF Process " + "Fatura: " + p_C_Invoice_ID);
			
		if (p_C_Invoice_ID == 0)
			throw new IllegalArgumentException("Fatura == 0");
		
		int LBR_NotaFiscal_ID = generate(getCtx(),p_C_Invoice_ID,get_TrxName());
		
		
		/*
		String sql = "UPDATE C_Invoice SET C_NotaFiscal_ID=" + C_NotaFiscal_ID +
        	         "WHERE C_Invoice_ID=" + p_C_Invoice_ID;
		int process = DB.executeUpdate(sql, get_TrxName());
		if (process == -1)
			throw new CompiereSystemError ("Não foi possível atribuir o número da Nota Fiscal a Fatura");
		
		
		PrintNF.print(ctx, PrintNF.getDefaultPrinter(), C_NotaFiscal_ID, Trx);
		sql = "UPDATE C_NotaFiscal SET IsPrinted= 'Y' " +
              "WHERE C_NotaFiscal_ID=" + p_C_NotaFiscal_ID;
		process = DB.executeUpdate(sql, get_TrxName());
		if (process == -1)
			throw new CompiereSystemError ("Não foi possível marcar a Nota como Impressa");
		*/
		
		return "GenerateNotaFiscal Process Completed " + "Fatura: " + p_C_Invoice_ID;
		
	}	//	doIt
	
	
	
	public static int generate(Properties context, int C_Invoice_ID, String transaction) throws UnsupportedEncodingException{
		
		int LBR_NotaFiscal_ID = p_LBR_NotaFiscal_ID;
		
		ctx = context;
		trx = transaction;
		
		if (LBR_NotaFiscal_ID != 0){
			
			DB.executeUpdate("DELETE FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID=" + LBR_NotaFiscal_ID, trx);
			
		}
		
		if (C_Invoice_ID != 0){
			
			MInvoice                   invoice               = null; //Fatura
			MInvoiceLine[]             lines                 = null; //Linhas da Fatura
			MOrder                     order                 = null; //Ordem de Venda
			MInOut                     shipment              = null; //Remessa
			
			MBPartner                  bpartner              = null; //Destinatário
			MBPartnerLocation          bpLocation            = null; //Localização Parceiro de Negócios
			MLocation                  location              = null; //Endereço Destinatário (Ordem de Venda)
			
			MBPartnerLocation          invoiceBPLocation     = null; //Localização Fatura 
			MLocation                  invoiceLocation       = null; //Endereço da Fatura
			
			MBPartnerLocation          deliveryBPLocation    = null; //Localização Entrega
			MLocation                  deliveryLocation      = null; //Endereço de Entrega
			
			MShipper                   shipper               = null; //Transportadora
			MBPartner                  transp                = null; //Transportadora (Parceiro de Negócios)
			MBPartnerLocation[]        transpLocations       = null; //Localização Transportadora
			MLocation                  transpLocation        = null; //Endereço Transportadora
			
			MPaymentTerm               paymentTerm           = null; //Condição de Pagamento
			
			MDocType                   docType               = null; //Tipo de Documento

			MRegion                    region                = null; //Estado
			MCountry                   country               = null; //País
			
			MOrgInfo                   orgInfo               = null; //Organização
			
			Map<String,String>         refNCM                = new HashMap<String, String>(); //Referência NCM
			String                     NCMReference          = "";
			int                        ref_ID                = -1;
			
			String[]                   CNPJ_IE               = {null,null};
			
			//Fatura
			invoice = new MInvoice(ctx,C_Invoice_ID,trx);
			
			//Linhas da Fatura
			lines = invoice.getLines();
			int numLinhas = lines.length;
			int LineNo = 0;
			
			//Tipo de Documento
			docType = new MDocType(ctx,invoice.getC_DocTypeTarget_ID(),trx);
			
			//Ordem de Venda
			order = new MOrder(ctx,invoice.getC_Order_ID(),trx);
			
			//Remessa
			int M_InOutLine_ID = lines[numLinhas - 1].getM_InOutLine_ID();
			MInOutLine shipmentLine = new MInOutLine(ctx,M_InOutLine_ID,trx);
			shipment = new MInOut(ctx,shipmentLine.getM_InOut_ID(),trx);
			
			//Parceiro de Negócios
			bpartner = new MBPartner(ctx,invoice.getC_BPartner_ID(),trx);
			
			//Localização Parceiro de Negócios
			bpLocation = new MBPartnerLocation(ctx,shipment.getC_BPartner_Location_ID(),trx);
			location = new MLocation(ctx,bpLocation.getC_Location_ID(),trx);
			
			//Endereço da Fatura
			invoiceBPLocation = new MBPartnerLocation(ctx,invoice.getC_BPartner_Location_ID(),trx);
			invoiceLocation = new MLocation(ctx,invoiceBPLocation.getC_Location_ID(),trx);
			
			//Endereço de Entrega
			deliveryBPLocation = new MBPartnerLocation(ctx,shipment.getC_BPartner_Location_ID(),trx);
			deliveryLocation = new MLocation(ctx,deliveryBPLocation.getC_Location_ID(),trx);
			
			if (shipment.getDeliveryViaRule().equalsIgnoreCase("S")){
			
				//Transportadora
				shipper = new MShipper(ctx,shipment.getM_Shipper_ID(),trx);
				transp = new MBPartner(ctx,shipper.getC_BPartner_ID(),trx);
			
				//Localização Transportadora
				transpLocations = transp.getLocations(false);
				if (transpLocations.length > 0){
					transpLocation = new MLocation(ctx,transpLocations[0].getC_Location_ID(),trx);
				}
				
			}
			
			//Condição de Pagamento
			paymentTerm = new MPaymentTerm(ctx,invoice.getC_PaymentTerm_ID(),trx);
			
			//Organização
			orgInfo = MOrgInfo.get(ctx, invoice.getAD_Org_ID());
		
			
			/** SET NOTA FISCAL **/
			
			MNotaFiscal NotaFiscal = new MNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);   /** NOTA FISCAL **/
			
			NotaFiscal.setIsSOTrx(isSOTrx);   //Entrada ou Saída

			NotaFiscal.setC_DocType_ID(0);   //Tipo de Documento Alvo
			//NotaFiscal.setC_DocTypeTarget_ID(1000043);   //Tipo de Documento Alvo //FIXME
			NotaFiscal.setDateDoc(invoice.getDateInvoiced());   //Data do Documento
			
			/** Dados da Empresa **/
			NotaFiscal.setlbr_CNPJ(orgInfo.get_ValueAsString("lbr_CNPJ"));
			NotaFiscal.setlbr_IE(orgInfo.get_ValueAsString("lbr_IE"));
			
			/** Referência NF **/
			NotaFiscal.setC_Invoice_ID(invoice.getC_Invoice_ID());   /** C_Invoice_ID **/
			NotaFiscal.setC_Order_ID(order.getC_Order_ID());   /** C_Order_ID **/
			NotaFiscal.setM_InOut_ID(shipment.getM_InOut_ID());   /** M_InOut_ID **/
			
			/** Parceiro de Negócios **/
			NotaFiscal.setC_BPartner_ID(bpartner.getC_BPartner_ID());   /** C_BPartner_ID **/
			NotaFiscal.setBPName(bpartner.getName());   //Nome Destinatário
			NotaFiscal.setlbr_BPPhone(bpLocation.getPhone());   //Telefone Destinatário
			NotaFiscal.setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());   /** C_BPartner_Location_ID **/
			
			CNPJ_IE = NotaFiscal.getCNPJ_IE(bpartner.getC_BPartner_ID());
			
			NotaFiscal.setlbr_BPCNPJ(CNPJ_IE[0]);   //CNPJ Destinatário
			NotaFiscal.setlbr_BPIE(CNPJ_IE[1]);   //IE Destinatário
			
			NotaFiscal.setlbr_BPAddress1(location.getAddress1());   //Endereço Destinatário
			NotaFiscal.setlbr_BPAddress2(location.getAddress2());   //Endereço Destinatário
			NotaFiscal.setlbr_BPAddress3(location.getAddress3());   //Endereço Destinatário
			NotaFiscal.setlbr_BPAddress4(location.getAddress4());   //Endereço Destinatário
			NotaFiscal.setlbr_BPCity(location.getCity());   //Cidade Destinatário
			NotaFiscal.setlbr_BPPostal(location.getPostal());   //CEP Destinatário
			
			region = new MRegion(ctx,location.getC_Region_ID(),trx);
			NotaFiscal.setlbr_BPRegion(region.getName());   //Estado Destinatário
			
			country = new MCountry(ctx,location.getC_Country_ID(),trx);
			NotaFiscal.setlbr_BPCountry(country.getCountryCode());   //País Destinatário
			
			/** Fatura **/
			NotaFiscal.setBill_Location_ID(invoiceLocation.getC_Location_ID());   /** InvoiceLocation_ID **/
			NotaFiscal.setC_PaymentTerm_ID(paymentTerm.getC_PaymentTerm_ID());   /** C_PaymentTerm_ID **/
			
			CNPJ_IE = NotaFiscal.getCNPJ_IE(invoice.getC_BPartner_ID());
			
			NotaFiscal.setlbr_BPInvoiceCNPJ(CNPJ_IE[0]);   //CNPJ Fatura
			NotaFiscal.setlbr_BPInvoiceIE(CNPJ_IE[1]);   //IE Fatura
			
			NotaFiscal.setlbr_BPInvoiceAddress1(invoiceLocation.getAddress1());   //Endereço Fatura
			NotaFiscal.setlbr_BPInvoiceAddress2(invoiceLocation.getAddress2());   //Endereço Fatura
			NotaFiscal.setlbr_BPInvoiceAddress3(invoiceLocation.getAddress3());   //Endereço Fatura
			NotaFiscal.setlbr_BPInvoiceAddress4(invoiceLocation.getAddress4());   //Endereço Fatura
			NotaFiscal.setlbr_BPInvoiceCity(invoiceLocation.getCity());   //Cidade Fatura
			NotaFiscal.setlbr_BPInvoicePostal(invoiceLocation.getPostal());   //CEP Fatura
			
			region = new MRegion(ctx,invoiceLocation.getC_Region_ID(),trx);
			NotaFiscal.setlbr_BPInvoiceRegion(region.getName());   //Estado Fatura
			
			country = new MCountry(ctx,invoiceLocation.getC_Country_ID(),trx);
			NotaFiscal.setlbr_BPInvoiceCountry(country.getCountryCode());   //País Fatura
			
			/** Entrega **/
			CNPJ_IE = NotaFiscal.getCNPJ_IE(shipment.getC_BPartner_ID());
			
			NotaFiscal.setlbr_BPDeliveryCNPJ(CNPJ_IE[0]);   //CNPJ Entrega
			NotaFiscal.setlbr_BPDeliveryIE(CNPJ_IE[1]);   //IE Entrega
			
			NotaFiscal.setlbr_BPDeliveryAddress1(deliveryLocation.getAddress1());   //Endereço Entrega
			NotaFiscal.setlbr_BPDeliveryAddress2(deliveryLocation.getAddress2());   //Endereço Entrega
			NotaFiscal.setlbr_BPDeliveryAddress3(deliveryLocation.getAddress3());   //Endereço Entrega
			NotaFiscal.setlbr_BPDeliveryAddress4(deliveryLocation.getAddress4());   //Endereço Entrega
			NotaFiscal.setlbr_BPDeliveryCity(deliveryLocation.getCity());   //Cidade Entrega
			NotaFiscal.setlbr_BPDeliveryPostal(deliveryLocation.getPostal());   //CEP Entrega
			
			region = new MRegion(ctx,deliveryLocation.getC_Region_ID(),trx);
			NotaFiscal.setlbr_BPDeliveryRegion(region.getName());   //Estado Entrega
			
			country = new MCountry(ctx,deliveryLocation.getC_Country_ID(),trx);
			NotaFiscal.setlbr_BPDeliveryCountry(country.getCountryCode());   //País Entrega
			
			NotaFiscal.setFreightCostRule(shipment.getFreightCostRule()); //Frete por Conta
			

			/** Transportadora **/
			if (shipment.getDeliveryViaRule().equalsIgnoreCase("S")){
				
				NotaFiscal.setM_Shipper_ID(shipper.getM_Shipper_ID()); 
				if (transpLocations.length > 0){
					CNPJ_IE = NotaFiscal.getCNPJ_IE(transp.getC_BPartner_ID());
					
					NotaFiscal.setlbr_BPShipperCNPJ(CNPJ_IE[0]);   //CNPJ Transportadora
					NotaFiscal.setlbr_BPShipperIE(CNPJ_IE[1]);   //IE Transportadora
				
					NotaFiscal.setlbr_BPShipperAddress1(transpLocation.getAddress1());   //Endereço Transportadora
					NotaFiscal.setlbr_BPShipperAddress2(transpLocation.getAddress2());   //Endereço Transportadora
					NotaFiscal.setlbr_BPShipperAddress3(transpLocation.getAddress3());   //Endereço Transportadora
					NotaFiscal.setlbr_BPShipperAddress4(transpLocation.getAddress4());   //Endereço Transportadora
					
					NotaFiscal.setlbr_BPShipperCity(transpLocation.getCity());   //Cidade Transportadora
					NotaFiscal.setlbr_BPShipperPostal(transpLocation.getPostal());   //CEP Transportadora
					
					region = new MRegion(ctx,transpLocation.getC_Region_ID(),trx);
					NotaFiscal.setlbr_BPShipperRegion(region.getName());   //Estado Transportadora
					
					country = new MCountry(ctx,transpLocation.getC_Country_ID(),trx);
					NotaFiscal.setlbr_BPShipperCountry(country.getCountryCode());   //País Transportadora
				}

			}//Regra de Entrega = Shipper (Transportadora)
			
			/** Valores **/
			NotaFiscal.setGrandTotal(invoice.getGrandTotal());   //Valor Total da Nota
			NotaFiscal.setTotalLines(invoice.getTotalLines()); //Valor do Produtos
			NotaFiscal.setlbr_InsuranceAmt(null);   //Valor do Seguro //TODO
			NotaFiscal.setFreightAmt(null);   //Valor do Frete //TODO
			NotaFiscal.setlbr_GrossWeight(null); // Peso Bruto //TODO
			NotaFiscal.setlbr_NetWeight(null); //Peso Líquido //TODO
			NotaFiscal.setNoPackages(null);   //Quantidade/Volumes //TODO
			NotaFiscal.setProcessed(true);
			NotaFiscal.save(trx);
			
			/** SET NOTA FISCAL LINE **/
			for (int i=0;i<numLinhas;i++){
				
				if (!lines[i].isDescription()){
					
					LineNo++; // Número da Linha
					
					MProduct   product = new MProduct(ctx,lines[i].getM_Product_ID(),trx);
					MUOM       uom     = new MUOM(ctx,product.getC_UOM_ID(),trx);
					
					Integer LBR_NCM_ID = (Integer)product.get_Value("LBR_NCM_ID");
					
					String VendorProductNo = POLBR.getVendorProductNo(product.getM_Product_ID(),bpartner.getC_BPartner_ID());

					MNotaFiscalLine NotaFiscalLine = new MNotaFiscalLine(ctx,0,trx);   /** NOTA FISCAL LINE**/
					
					NotaFiscalLine.setLBR_NotaFiscal_ID(NotaFiscal.getLBR_NotaFiscal_ID());   /** LBR_NotaFiscal_ID **/
					NotaFiscalLine.setC_InvoiceLine_ID(lines[i].getC_InvoiceLine_ID());   /** C_InvoiceLine_ID **/
					NotaFiscalLine.setLine(LineNo);   //Linha Número
					NotaFiscalLine.setM_Product_ID(product.getM_Product_ID());   /** M_Product_ID **/
					NotaFiscalLine.setDescription(lines[i].getDescription());   //Descrição linha Fatura
							
					NotaFiscalLine.setProductName(product.getName());   //Nome/Descrição Produto
					NotaFiscalLine.setProductValue(product.getValue());   //Código Produto
	
					NotaFiscalLine.setVendorProductNo(VendorProductNo);   //Código do Produto (Cliente)
					NotaFiscalLine.setC_UOM_ID(uom.getC_UOM_ID());   /** C_UOM_ID **/
					NotaFiscalLine.setlbr_UOMName(uom.getUOMSymbol());   //Unidade de Medida
					NotaFiscalLine.setQty(lines[i].getQtyInvoiced());   //Quantidade
					
					if (LBR_NCM_ID != null && LBR_NCM_ID.intValue() != 0){
						
						X_LBR_NCM ncm = new X_LBR_NCM(ctx,LBR_NCM_ID,trx);
						
						NotaFiscalLine.setLBR_NCM_ID(ncm.getLBR_NCM_ID());   /** LBR_NCM_ID **/
						
						String ncmName = ncm.getValue();
						
						if (!(ncmName == null || ncmName.equals(""))){
							
							if (refNCM.containsKey(ncmName)){
								NotaFiscalLine.setlbr_NCMName(refNCM.get(ncmName).toString());   //NCM
							}
							else {
								ref_ID = ref_ID + 1;
								String cl = TextUtil.alfab[ref_ID];
								refNCM.put(ncmName, cl);
								NotaFiscalLine.setlbr_NCMName(cl);
								
								if (NCMReference.equals("")){
									NCMReference += "Classif: ";
								}
								
								NCMReference += cl + "-" + ncmName + ", ";
								
							}
						}
					
					}

					
					NotaFiscalLine.save();
					
				}//!lines[i].isDescription()
				
				
			}//loop Linhas
			
			NotaFiscal.setlbr_NCMReference(NCMReference);   //Referência NCM

			NotaFiscal.save();
			
			LBR_NotaFiscal_ID = NotaFiscal.getLBR_NotaFiscal_ID();
						
		}//C_Invoice_ID != 0
		
		return LBR_NotaFiscal_ID;
		
	}//generate
	
}//ProcGenerateNF