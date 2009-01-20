/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
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
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_LegalMessage;
import org.compiere.model.X_LBR_NCM;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;


/**
 *	ProcGenerateNF
 *
 *  Process to Generate Nota Fiscal
 *  
 *  BF: 1931334 (amontenegro)
 *	 
 *	@author Mario Grigioni
 *	@version $Id: ProcGenerateNF.java, 08/01/2008 10:38:00 mgrigioni
 */
public class ProcGenerateNF extends SvrProcess
{
	
	/** Fatura                    */
	private Integer p_C_Invoice_ID = 0;
	/** Nota Fiscal               */
	private static Integer p_LBR_NotaFiscal_ID = 0;
	/** Documento Próprio         */
	private boolean p_IsOwnDocument = true;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateNF.class);

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
			else if (name.equals("lbr_IsOwnDocument"))
				p_IsOwnDocument = ((String)para[i].getParameter()).equals("Y");
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
		
		p_LBR_NotaFiscal_ID = getRecord_ID();
		if (p_LBR_NotaFiscal_ID == null || p_LBR_NotaFiscal_ID.intValue() == 0)
			throw new IllegalArgumentException("Nota Fiscal == 0");
		
		MNotaFiscal nf = new MNotaFiscal(getCtx(),p_LBR_NotaFiscal_ID,get_TrxName());
		
		boolean isSOTrx = true;
		
		p_C_Invoice_ID = nf.getC_Invoice_ID();
		if (p_C_Invoice_ID == null || p_C_Invoice_ID.intValue() == 0)
			throw new IllegalArgumentException("Fatura == 0");
		
		MInvoice invoice = new MInvoice(getCtx(),p_C_Invoice_ID,get_TrxName());
		Integer invoice_NF_ID = (Integer)invoice.get_Value("LBR_NotaFiscal_ID");
		if (invoice_NF_ID != null && invoice_NF_ID.intValue() > 0){
			throw new IllegalArgumentException("Fatura já possui nota fiscal");
		}
		
		MDocType dt = new MDocType(getCtx(),invoice.getC_DocTypeTarget_ID(),get_TrxName());
		if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) ||
			dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice)){
				
			isSOTrx = true;
				
		}
		else if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) ||
				 dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo)){
			
			isSOTrx = false;
			
		}
		
		int LBR_NotaFiscal_ID = generate(getCtx(),invoice, p_LBR_NotaFiscal_ID, isSOTrx, p_IsOwnDocument,get_TrxName());
		
		invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", LBR_NotaFiscal_ID);
		invoice.save(get_TrxName());

		return "GenerateNotaFiscal Process Completed " + "Fatura: " + p_C_Invoice_ID;
		
	}	//	doIt
	
	public static int generate(Properties context, MInvoice invoice, int LBR_NotaFiscal_ID, boolean isSOTrx, boolean IsOwnDocument, String transaction){
				
		Properties ctx = context;
		String     trx = transaction;
		
		try{
		
			deleteLines(LBR_NotaFiscal_ID, trx);
			
			MClientInfo                clientInfo            = MClientInfo.get(ctx);
				
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
				
			MRegion                    region                = null; //Estado
			MCountry                   country               = null; //País
				
			MOrgInfo                   orgInfo               = null; //Organização
			MClient                    client                = null; //Empresa	
			
			Map<String,String>         refNCM                = new HashMap<String, String>(); //Referência NCM
			String                     NCMReference          = "";
			int                        ref_ID                = -1;
				
			Map<String,String>         refCFOP               = new HashMap<String, String>(); //Referência CFOP
			String					   CFOPNote				 = "";
			String                     CFOPReference         = "";
			int                        cfop_ID               = -1;
			
			ArrayList<Integer>         refLegalMessage       = new ArrayList<Integer>(); //Referência Mensagem Legal
			String                     legalMessage          = "";
				
			String[]                   CNPJ_IE               = {null,null};
			
			BigDecimal				   TotalLines			 = Env.ZERO;
			BigDecimal				   ServiceTotalAmt		 = Env.ZERO;
			
			boolean                    hasConvert            = false;
					
			//Linhas da Fatura
			lines = invoice.getLines();
			int numLinhas = lines.length;
			int LineNo = 0;
	
			//Ordem de Venda
			order = new MOrder(ctx,invoice.getC_Order_ID(),trx);
				
			//Remessa
			int M_InOutLine_ID = lines[numLinhas - 1].getM_InOutLine_ID();
			MInOutLine shipmentLine = new MInOutLine(ctx,M_InOutLine_ID,trx);
			shipment = new MInOut(ctx,shipmentLine.getM_InOut_ID(),trx);
				
			//Parceiro de Negócios
			bpartner = new MBPartner(ctx,invoice.getC_BPartner_ID(),trx);
				
			//Localização Parceiro de Negócios
			if (shipment.getC_BPartner_Location_ID() != 0){
				bpLocation = new MBPartnerLocation(ctx,shipment.getC_BPartner_Location_ID(),trx);
			}
			else if (order.getC_BPartner_Location_ID() != 0){
				bpLocation = new MBPartnerLocation(ctx,order.getC_BPartner_Location_ID(),trx);
			}
			else{
				bpLocation = new MBPartnerLocation(ctx,invoice.getC_BPartner_Location_ID(),trx);
			}
			
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
			
			//Empresa
			client = MClient.get(ctx);
			
				
			/** SET NOTA FISCAL **/
				
			MNotaFiscal NotaFiscal = new MNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);   /** NOTA FISCAL **/
				
			NotaFiscal.setIsSOTrx(isSOTrx);   //Entrada ou Saída
				
			if (IsOwnDocument){
				int C_DocType_ID = POLBR.getNFB(invoice.getAD_Org_ID(),isSOTrx);
				NotaFiscal.setC_DocType_ID(C_DocType_ID);   //Tipo de Documento Alvo
				NotaFiscal.setC_DocTypeTarget_ID(C_DocType_ID);   //Tipo de Documento Alvo
			}
			else{
				NotaFiscal.setC_DocType_ID(0);
				NotaFiscal.setC_DocTypeTarget_ID(0);
				
				if (invoice.getPOReference() == null ||
					invoice.getPOReference().equals("")){
					return 0;
				}
				
				NotaFiscal.setDocumentNo(invoice.getPOReference());
				NotaFiscal.setIsPrinted(true);
			}
			
			NotaFiscal.setDateDoc(invoice.getDateInvoiced());   //Data do Documento
			
			/** Dados da Empresa **/
			NotaFiscal.setlbr_CNPJ(orgInfo.get_ValueAsString("lbr_CNPJ"));
			NotaFiscal.setlbr_IE(orgInfo.get_ValueAsString("lbr_IE"));
				
			/** Referência NF **/
			NotaFiscal.setC_Invoice_ID(invoice.getC_Invoice_ID());   /** C_Invoice_ID **/
			NotaFiscal.setC_Order_ID(order.getC_Order_ID());   /** C_Order_ID **/
			NotaFiscal.setM_InOut_ID(shipment.getM_InOut_ID());   /** M_InOut_ID **/
			String description = order.get_ValueAsString("lbr_NFDescription");
			description = description.replaceAll("null", "");
			NotaFiscal.setDescription(description); //Observação Nota Fiscal
				
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
			NotaFiscal.setBill_Location_ID(invoiceBPLocation.getC_BPartner_Location_ID());   /** InvoiceLocation_ID **/
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
				NotaFiscal.setlbr_BPShipperName(shipper.getName());
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
					
					NotaFiscal.setlbr_BPShipperLicensePlate(null); //Placa do Caminhão //TODO
				}
	
			}//Regra de Entrega = Shipper (Transportadora)
				
			/** Valores **/
			NotaFiscal.setlbr_InsuranceAmt(null);   //Valor do Seguro //TODO
			//NotaFiscal.setFreightAmt(null);   //Valor do Frete (Definido na Linha)
			NotaFiscal.setlbr_GrossWeight(null); // Peso Bruto //TODO
			NotaFiscal.setlbr_NetWeight(null); //Peso Líquido //TODO
			NotaFiscal.setlbr_PackingType(null); //Espécie //TODO
			NotaFiscal.setNoPackages(new BigDecimal(shipment.getNoPackages()));   //Quantidade/Volumes
			NotaFiscal.setProcessed(true);
			NotaFiscal.save(trx);
				
			TaxBR.setNFTax(ctx, invoice.getC_Invoice_ID(), NotaFiscal.getLBR_NotaFiscal_ID(), trx);
			
			//CONVERSAO
			int clientCurrency = client.getC_Currency_ID();
			int C_Currency_ID  = invoice.getC_Currency_ID();
			
			if (clientCurrency != C_Currency_ID){
				hasConvert = true;
			}
			
			/** SET NOTA FISCAL LINE **/
			for (int i=0;i<numLinhas;i++){
					
				if (!lines[i].isDescription()){
						
					LineNo++; // Número da Linha
						
					MProduct   product = new MProduct(ctx,lines[i].getM_Product_ID(),trx);
					MUOM       uom     = new MUOM(ctx,lines[i].getC_UOM_ID(),trx);
						
					Integer LBR_NCM_ID          = (Integer)product.get_Value("LBR_NCM_ID");
					Integer LBR_CFOP_ID         = (Integer)lines[i].get_Value("LBR_CFOP_ID");
					Integer LBR_LegalMessage_ID = (Integer)lines[i].get_Value("LBR_LegalMessage_ID");
					
					/* FRETE */
					int FreightProduct_ID = clientInfo.getM_ProductFreight_ID();
					if (product.getM_Product_ID() == FreightProduct_ID){
						NotaFiscal.setFreightAmt(lines[i].getLineNetAmt());
						LineNo--;
						continue;
					}
					
					String VendorProductNo = POLBR.getVendorProductNo(product.getM_Product_ID(),bpartner.getC_BPartner_ID());
	
					MNotaFiscalLine NotaFiscalLine = new MNotaFiscalLine(ctx,0,trx);   /** NOTA FISCAL LINE**/
						
					NotaFiscalLine.setLBR_NotaFiscal_ID(NotaFiscal.getLBR_NotaFiscal_ID());   /** LBR_NotaFiscal_ID **/
					NotaFiscalLine.setC_InvoiceLine_ID(lines[i].getC_InvoiceLine_ID());   /** C_InvoiceLine_ID **/
					NotaFiscalLine.setLine(LineNo);   //Linha Número
					NotaFiscalLine.setM_Product_ID(product.getM_Product_ID());   /** M_Product_ID **/
					
					String ldescription = lines[i].getDescription();
					if (ldescription != null){
						ldescription = ldescription.trim();
						if (ldescription.equals(""))
							ldescription = null;
					}

					NotaFiscalLine.setDescription(ldescription);   //Descrição linha Fatura
								
					NotaFiscalLine.setProductName(product.getName());   //Nome/Descrição Produto
					NotaFiscalLine.setProductValue(product.getValue());   //Código Produto
					
					//VALORES
					BigDecimal LineNetAmt = lines[i].getLineNetAmt();
					BigDecimal Price      = lines[i].getPriceEntered();
					BigDecimal PriceList  = lines[i].getPriceList();
					
					/** CONVERSAO DE MOEDA **/
					if (hasConvert){
						LineNetAmt = NotaFiscal.convertAmt(LineNetAmt, C_Currency_ID);
						Price      = NotaFiscal.convertAmt(Price, C_Currency_ID);
						PriceList  = NotaFiscal.convertAmt(PriceList, C_Currency_ID);	
					}
					
					//Serviço
					if (product.getProductType().equals(MProduct.PRODUCTTYPE_Item)){
						NotaFiscalLine.setlbr_IsService(false);
						TotalLines = TotalLines.add(LineNetAmt);
					}
					else{
						NotaFiscalLine.setlbr_IsService(true);
						ServiceTotalAmt = ServiceTotalAmt.add(LineNetAmt);
					}
					
					NotaFiscalLine.setVendorProductNo(VendorProductNo);   //Código do Produto (Cliente)
					NotaFiscalLine.setC_UOM_ID(uom.getC_UOM_ID());   /** C_UOM_ID **/
					NotaFiscalLine.setlbr_UOMName(uom.getUOMSymbol());   //Unidade de Medida
					NotaFiscalLine.setlbr_TaxStatus(lines[i].get_ValueAsString("lbr_TaxStatus")); //Situação Tributária
					NotaFiscalLine.setQty(lines[i].getQtyEntered());   //Quantidade
					NotaFiscalLine.setPrice(Price); //Preço
					NotaFiscalLine.setPriceListAmt(PriceList); //Preço de Lista
					
					//Desconto
					double discount = 0.0;
					if (NotaFiscalLine.getPrice().signum() == 1 && NotaFiscalLine.getPriceListAmt().signum() == 1){
						discount = (1-NotaFiscalLine.getPrice().doubleValue()/NotaFiscalLine.getPriceListAmt().doubleValue())*100;
					}
					NotaFiscalLine.setDiscount(new BigDecimal(discount).setScale(2, BigDecimal.ROUND_HALF_UP));
					
					NotaFiscalLine.setLineTotalAmt(LineNetAmt); //Preço de Linha
					
					/* NCM */
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
					
					/* CFOP */
					if (LBR_CFOP_ID != null && LBR_CFOP_ID.intValue() != 0){
							
						X_LBR_CFOP cfop = new X_LBR_CFOP(ctx,LBR_CFOP_ID,trx);
							
						NotaFiscalLine.setLBR_CFOP_ID(cfop.getLBR_CFOP_ID());   /** LBR_CFOP_ID **/
							
						String cfopName = cfop.getValue();
							
						if (!(cfopName == null || cfopName.equals(""))){
								
							if (refCFOP.containsKey(cfopName)){
								NotaFiscalLine.setlbr_CFOPName(refCFOP.get(cfopName).toString());   //NCM
							}
							else {
								cfop_ID = cfop_ID + 1;
								String cl = TextUtil.alfab[cfop_ID];
								refCFOP.put(cfopName, cl);
								NotaFiscalLine.setlbr_CFOPName(cl);
									
								if (CFOPReference.equals("")){
									CFOPReference += "\nCFOP: ";
								}
								
								CFOPNote      += cfop.getDescription() + ", ";
								CFOPReference += cl + "-" + cfopName + ", ";
									
							}
						}
						
					}
					
					/* Mensagem Legal */
					if (LBR_LegalMessage_ID != null && LBR_LegalMessage_ID.intValue() != 0){
						
						X_LBR_LegalMessage lMessage = new X_LBR_LegalMessage(ctx,LBR_LegalMessage_ID,trx);
							
						NotaFiscalLine.setLBR_LegalMessage_ID(lMessage.getLBR_LegalMessage_ID());   /** LBR_LegalMessage_ID **/
								
						if (!refLegalMessage.contains(LBR_LegalMessage_ID)){
							
							refLegalMessage.add(LBR_LegalMessage_ID);
							legalMessage += lMessage.getTextMsg() + ", ";
						}
					}
					
					NotaFiscalLine.save(trx);
					TaxBR.setNFLineTax(ctx, lines[i].getC_InvoiceLine_ID(), NotaFiscalLine.getLBR_NotaFiscalLine_ID(), trx);
					
					if(NotaFiscalLine.islbr_IsService()){
						NotaFiscalLine.setlbr_ServiceTaxes();
						NotaFiscalLine.save(trx);
					}
					
				}//!lines[i].isDescription()
					
					
			}//loop Linhas
			
			/** Valores **/
			BigDecimal GrandTotal = invoice.getGrandTotal();
			if (hasConvert){
				GrandTotal = NotaFiscal.convertAmt(GrandTotal, C_Currency_ID);
			}
			
			NotaFiscal.setGrandTotal(GrandTotal);   //Valor Total da Nota
			NotaFiscal.setTotalLines(TotalLines.setScale(2, BigDecimal.ROUND_HALF_UP)); //Valor dos Produtos
			NotaFiscal.setlbr_ServiceTotalAmt(ServiceTotalAmt.setScale(2, BigDecimal.ROUND_HALF_UP)); //Valor dos Serviços 
			
			/** Referências **/
			NotaFiscal.setlbr_NCMReference(TextUtil.retiraPontoFinal(NCMReference));   //Referência NCM
			NotaFiscal.setlbr_CFOPNote(TextUtil.retiraPontoFinal(CFOPNote)); //Natureza da Operação
			NotaFiscal.setlbr_CFOPReference(TextUtil.retiraPontoFinal(CFOPReference)); //Referência CFOP
			NotaFiscal.setDocumentNote(TextUtil.retiraPontoFinal(legalMessage)); //Mensagens Legais
	
			NotaFiscal.save();
				
			LBR_NotaFiscal_ID = NotaFiscal.getLBR_NotaFiscal_ID();
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro no processo GenerateNotaFiscal", e);
		}
						
		return LBR_NotaFiscal_ID;
		
	}//generate
	
	private static void deleteLines(int LBR_NotaFiscal_ID, String trx){
		
		if (LBR_NotaFiscal_ID != 0){
			MNotaFiscal.deleteLBR_NFTax(LBR_NotaFiscal_ID, trx); //Imposto Cabeçalho
			MNotaFiscal.deleteLBR_NFLineTax(LBR_NotaFiscal_ID, trx); //Imposto Linha
			MNotaFiscal.deleteLBR_NotaFiscalLine(LBR_NotaFiscal_ID, trx); //Linhas da NF
		}
		
	} //deleteLines
	
}//ProcGenerateNF