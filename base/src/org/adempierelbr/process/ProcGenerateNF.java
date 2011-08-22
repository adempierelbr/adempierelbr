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
import java.math.RoundingMode;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNFTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUOM;
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
 *	@contributor Pablo Boff Pigozzo 04/10/2010 pablobp
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

		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),p_LBR_NotaFiscal_ID,get_TrxName());

		boolean isSOTrx = true;

		p_C_Invoice_ID = nf.getC_Invoice_ID();
		if (p_C_Invoice_ID == null || p_C_Invoice_ID.intValue() == 0){
			/** Dados da Empresa **/
			nf.setOrgInfo(nf.getAD_Org_ID());
			nf.setProcessed(true);
			nf.save(get_TrxName());
		}

		MInvoice invoice = new MInvoice(getCtx(),p_C_Invoice_ID,get_TrxName());
		Integer invoice_NF_ID = (Integer)invoice.get_Value("LBR_NotaFiscal_ID");
		if (invoice_NF_ID != null && invoice_NF_ID.intValue() > 0
				&& invoice_NF_ID.intValue() != p_LBR_NotaFiscal_ID){
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

			BigDecimal discountAmt     = Env.ZERO;
			BigDecimal TotalLines	   = Env.ZERO;
			BigDecimal ServiceTotalAmt = Env.ZERO;

			boolean hasConvert = false;
			int LineNo = 0;

			//Linhas da Fatura
			MInvoiceLine[] lines = invoice.getLines();

			//Ordem de Venda
			MOrder order = new MOrder(ctx,invoice.getC_Order_ID(),trx);

			//Remessa
			int M_InOut_ID = AdempiereLBR.getM_InOut_ID(invoice.getC_Invoice_ID(), trx);
			MInOut shipment = new MInOut(ctx,M_InOut_ID,trx);

			//Parceiro de Negócios
			MBPartner bpartner = new MBPartner(ctx,invoice.getC_BPartner_ID(),trx);

			//Transportadora
			MShipper shipper = null;
			if (shipment.getDeliveryViaRule().equalsIgnoreCase("S")){
				shipper = new MShipper(ctx,shipment.getM_Shipper_ID(),trx);
			}

			//Empresa
			MClient client         = MClient.get(ctx);
			MClientInfo clientInfo = client.getInfo();

			/** SET NOTA FISCAL **/
			MLBRNotaFiscal NotaFiscal = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);   /** NOTA FISCAL **/

			// Org
			MOrgInfo orgInfo = MOrgInfo.get(ctx, invoice.getAD_Org_ID(), trx);
			boolean isSCAN   = orgInfo.get_ValueAsBoolean("lbr_IsScan");
			NotaFiscal.setAD_Org_ID(invoice.getAD_Org_ID());
			
			NotaFiscal.setIsSOTrx(isSOTrx);   //Entrada ou Saída
			NotaFiscal.setlbr_IsOwnDocument(IsOwnDocument);
			NotaFiscal.setlbr_TransactionType((String)invoice.get_Value("lbr_TransactionType")); //CORRECAO ELTEK

			if (IsOwnDocument){

				int C_DocType_ID = NotaFiscal.getLBR_DocTypeNF_ID(invoice); //DocumentNF da Fatura
				if (C_DocType_ID == 0 || isSCAN)
					C_DocType_ID = MLBRNotaFiscal.getNFB(invoice.getAD_Org_ID(),isSOTrx,isSCAN); //Se estiver em branco busca no banco um documento de NF

				NotaFiscal.setC_DocType_ID(C_DocType_ID);   //Tipo de Documento Alvo
				NotaFiscal.setC_DocTypeTarget_ID(C_DocType_ID);   //Tipo de Documento Alvo
			}
			else{
				NotaFiscal.setC_DocType_ID(0);
				NotaFiscal.setC_DocTypeTarget_ID(0);

				if (invoice.get_Value("lbr_NFEntrada") != null &&
					!invoice.get_ValueAsString("lbr_NFEntrada").trim().equals("")){

					NotaFiscal.setDocumentNo(invoice.get_ValueAsString("lbr_NFEntrada"));

				}
				else{
					if (NotaFiscal.getDocumentNo() == null || NotaFiscal.getDocumentNo().trim().equals("")){
						log.warning("Nota Fiscal Entrada = 0");
						return 0;
					}
				}

				NotaFiscal.setIsPrinted(true);
			}

			NotaFiscal.setDateDoc(invoice.getDateInvoiced());   //Data do Documento

			/** Dados da Empresa **/
			NotaFiscal.setOrgInfo(invoice.getAD_Org_ID());

			/** Referência NF **/
			NotaFiscal.setC_Invoice_ID(invoice.getC_Invoice_ID());   /** C_Invoice_ID **/
			NotaFiscal.setC_Order_ID(order.getC_Order_ID());   /** C_Order_ID **/
			NotaFiscal.setM_InOut_ID(shipment.getM_InOut_ID());   /** M_InOut_ID **/

			String description = order.get_ValueAsString("lbr_NFDescription");
			NotaFiscal.setDescription(description); //Observação Nota Fiscal

			/** Parceiro de Negócios **/
			MBPartnerLocation bpLocation = NotaFiscal.getBPartnerLocation(order, invoice, shipment);
			NotaFiscal.setBPartner(bpartner, bpLocation);

			/** Fatura **/
			NotaFiscal.setInvoiceBPartner(invoice);

			/** Entrega **/
			NotaFiscal.setShipmentBPartner(shipment,invoice);

			/** Transportadora **/
			if (shipment.getDeliveryViaRule().equalsIgnoreCase("S")){
				NotaFiscal.setShipper(shipper, null);
			}

			/** Valores **/
			NotaFiscal.setlbr_InsuranceAmt(null);   //Valor do Seguro //TODO
			NotaFiscal.setFreightAmt(null);   //Valor do Frete
			NotaFiscal.setlbr_GrossWeight(null); // Peso Bruto //TODO
			NotaFiscal.setlbr_NetWeight(null); //Peso Líquido //TODO
			NotaFiscal.setlbr_PackingType(null); //Espécie //TODO
			NotaFiscal.setNoPackages(new BigDecimal(shipment.getNoPackages()));   //Quantidade/Volumes

			/** NF Model **/
			if(invoice.get_Value("lbr_NFModel") != null && !invoice.get_ValueAsString("lbr_NFModel").equalsIgnoreCase(""))
				NotaFiscal.setlbr_NFModel(invoice.get_ValueAsString("lbr_NFModel"));
			
			/** Notes **/
			NotaFiscal.setlbr_BillNote(invoice.get_ValueAsString("lbr_BillNote"));
			NotaFiscal.setlbr_ShipNote(invoice.get_ValueAsString("lbr_ShipNote"));

			NotaFiscal.save(trx);

			//CONVERSAO
			int clientCurrency = client.getC_Currency_ID();
			int C_Currency_ID  = invoice.getC_Currency_ID();

			if (clientCurrency != C_Currency_ID){
				hasConvert = true;
			}

			/** SET NOTA FISCAL LINE **/
			for (MInvoiceLine iLine : lines){

				if (!iLine.isDescription()){

					//Linha de Desconto, não aparece nas linhas e é somado no discountAmt
					if (iLine.getLineNetAmt().signum() == -1){
						discountAmt = discountAmt.add(iLine.getLineNetAmt());
						continue;
					}
					
					LineNo++; // Número da Linha

					MProduct   product = new MProduct(ctx,iLine.getM_Product_ID(),trx);
					MUOM       uom     = new MUOM(ctx,iLine.getC_UOM_ID(),trx);

					Integer LBR_NCM_ID          = (Integer)product.get_Value("LBR_NCM_ID");
					if (LBR_NCM_ID == null) LBR_NCM_ID = 0;

					Integer LBR_CFOP_ID         = (Integer)iLine.get_Value("LBR_CFOP_ID");
					if (LBR_CFOP_ID == null) LBR_CFOP_ID = 0;

					Integer LBR_LegalMessage_ID = (Integer)iLine.get_Value("LBR_LegalMessage_ID");
					if (LBR_LegalMessage_ID == null) LBR_LegalMessage_ID = 0;

					/* FRETE */
					int FreightProduct_ID = clientInfo.getM_ProductFreight_ID();
					if (product.getM_Product_ID() == FreightProduct_ID)
					{
						BigDecimal freightAmt = NotaFiscal.getFreightAmt();
						NotaFiscal.setFreightAmt(freightAmt.add(iLine.getLineNetAmt()));
						//
						LineNo--;
						continue;
					}

					String VendorProductNo = AdempiereLBR.getVendorProductNo(product.getM_Product_ID(),bpartner.getC_BPartner_ID(),trx);

					MLBRNotaFiscalLine NotaFiscalLine = new MLBRNotaFiscalLine(ctx,0,trx);   /** NOTA FISCAL LINE**/

					// Org
					NotaFiscalLine.setAD_Org_ID(NotaFiscal.getAD_Org_ID());
					
					NotaFiscalLine.setLBR_NotaFiscal_ID(NotaFiscal.getLBR_NotaFiscal_ID());   /** LBR_NotaFiscal_ID **/
					NotaFiscalLine.setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());   /** C_InvoiceLine_ID **/
					NotaFiscalLine.setLine(LineNo);   //Linha Número
					NotaFiscalLine.setM_Product_ID(product.getM_Product_ID());   /** M_Product_ID **/

					String ldescription = iLine.getDescription();
					if (ldescription != null){
						ldescription = ldescription.trim();
						if (ldescription.equals(""))
							ldescription = null;
					}

					NotaFiscalLine.setDescription(ldescription);   //Descrição linha Fatura

					NotaFiscalLine.setProductName(product.getName());   //Nome/Descrição Produto
					NotaFiscalLine.setProductValue(product.getValue());   //Código Produto

					//VALORES
					BigDecimal LineNetAmt = iLine.getLineNetAmt();
					BigDecimal Price      = iLine.getPriceEntered();
					BigDecimal PriceList  = iLine.getPriceList();

					/** CONVERSAO DE MOEDA **/
					if (hasConvert){
						LineNetAmt = NotaFiscal.convertAmt(LineNetAmt, C_Currency_ID);
						Price      = NotaFiscal.convertAmt(Price, C_Currency_ID);
						PriceList  = NotaFiscal.convertAmt(PriceList, C_Currency_ID);
					}

					//Serviço
					/* CODIGO ABAIXO - VALIDAÇÃO POR CFOP
					if (product.getProductType().equals(MProduct.PRODUCTTYPE_Item)){
						NotaFiscalLine.setlbr_IsService(false);
						TotalLines = TotalLines.add(LineNetAmt);
					}
					else{
						NotaFiscalLine.setlbr_IsService(true);
						ServiceTotalAmt = ServiceTotalAmt.add(LineNetAmt);
					}
					*/

					NotaFiscalLine.setVendorProductNo(VendorProductNo);   //Código do Produto (Cliente)
					NotaFiscalLine.setC_UOM_ID(uom.getC_UOM_ID());   /** C_UOM_ID **/
					NotaFiscalLine.setlbr_UOMName(uom.getUOMSymbol());   //Unidade de Medida
					NotaFiscalLine.setlbr_TaxStatus(iLine.get_ValueAsString("lbr_TaxStatus")); //Situação Tributária ICMS
					NotaFiscalLine.setlbr_TaxStatusIPI((String)iLine.get_Value("lbr_TaxStatusIPI")); 
					NotaFiscalLine.setlbr_TaxStatusPIS((String)iLine.get_Value("lbr_TaxStatusPIS")); 
					NotaFiscalLine.setlbr_TaxStatusCOFINS((String)iLine.get_Value("lbr_TaxStatusCOFINS")); 
					NotaFiscalLine.setQty(iLine.getQtyEntered());   //Quantidade
					NotaFiscalLine.setPrice(Price); //Preço
					NotaFiscalLine.setPriceListAmt(PriceList); //Preço de Lista

					//Desconto
					BigDecimal discount = Env.ZERO;
					if (NotaFiscalLine.getPrice().signum() == 1 && NotaFiscalLine.getPriceListAmt().signum() == 1){
						discount = (Env.ONE.subtract(NotaFiscalLine.getPrice().divide
								(NotaFiscalLine.getPriceListAmt(), TaxBR.MCROUND))).multiply(Env.ONEHUNDRED);
					}
					NotaFiscalLine.setDiscount(discount.setScale(2, RoundingMode.HALF_UP));

					NotaFiscalLine.setLineTotalAmt(LineNetAmt); //Preço de Linha

					/* NCM */
					NotaFiscalLine.setLBR_NCM_ID(LBR_NCM_ID);   /** LBR_NCM_ID **/
					NotaFiscalLine.setlbr_NCMName(NotaFiscal.getNCM(LBR_NCM_ID));

					/* CFOP */
					NotaFiscalLine.setLBR_CFOP_ID(LBR_CFOP_ID);   /** LBR_CFOP_ID **/
					NotaFiscalLine.setlbr_CFOPName(NotaFiscal.getCFOP(LBR_CFOP_ID));
					
					//VALIDAÇÂO DO CAMPO SERVIÇO POR CFOP
					if (NotaFiscalLine.getLBR_CFOP().islbr_IsService()){
						NotaFiscalLine.setlbr_IsService(true);
						ServiceTotalAmt = ServiceTotalAmt.add(LineNetAmt);
					}
					else{
						NotaFiscalLine.setlbr_IsService(false);
						TotalLines = TotalLines.add(LineNetAmt);
					}

					/* Mensagem Legal */
					NotaFiscalLine.setLBR_LegalMessage_ID(LBR_LegalMessage_ID);   /** LBR_LegalMessage_ID **/
					NotaFiscal.setLegalMessage(LBR_LegalMessage_ID);

					NotaFiscalLine.save(trx);
					MLBRNFLineTax.createLBR_NFLineTax(ctx, iLine.getC_InvoiceLine_ID(), NotaFiscalLine.getLBR_NotaFiscalLine_ID(), NotaFiscal.getAD_Org_ID(), trx);

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
			NotaFiscal.setDiscountAmt(discountAmt.abs()); //Total de Descontos
			NotaFiscal.setTotalLines(TotalLines.setScale(2, RoundingMode.HALF_UP)); //Valor dos Produtos
			NotaFiscal.setlbr_ServiceTotalAmt(ServiceTotalAmt.setScale(2, RoundingMode.HALF_UP)); //Valor dos Serviços
			
			/** Referências **/
			NotaFiscal.setlbr_NCMReference(NotaFiscal.getNCMReference());   //Referência NCM
			NotaFiscal.setlbr_CFOPNote(NotaFiscal.getCFOPNote()); //Natureza da Operação
			NotaFiscal.setlbr_CFOPReference(NotaFiscal.getCFOPReference()); //Referência CFOP
			NotaFiscal.setDocumentNote(NotaFiscal.getLegalMessage()); //Mensagens Legais

			/** Lançamento Impostos Siscomex **/
			NotaFiscal.setSiscomexTax();

			/** Lançamento Impostos Frete **/
			NotaFiscal.setFreightTax();
			
			/** Lançamento Impostos Nota Fiscal **/
			MLBRNFTax.createLBR_NFTax(ctx, NotaFiscal.getLBR_NotaFiscal_ID(), NotaFiscal.getAD_Org_ID(), trx);
			
			/** Código de Barras **/
			StringBuilder Barcode1 = new StringBuilder();
			Barcode1.append("1");
			Barcode1.append(TextUtil.pad(NotaFiscal.getDocumentNo(), '0', 6, true));
			Barcode1.append(TextUtil.pad(TextUtil.toNumeric(NotaFiscal.getlbr_CNPJ()), '0', 14, true));
			Barcode1.append(NotaFiscal.getlbr_OrgRegion());
			Barcode1.append(TextUtil.timeToString(NotaFiscal.getDateDoc(), "yyyyMMdd"));
			Barcode1.append("2"); //TODO "Fix hardcode value"
			NotaFiscal.setlbr_Barcode1(Barcode1.toString());

			StringBuilder Barcode2 = new StringBuilder();
			Barcode2.append("2");
			Barcode2.append(TextUtil.pad(TextUtil.toNumeric(NotaFiscal.getlbr_CNPJ()), '0', 14, true));
			Barcode2.append(NotaFiscal.getlbr_OrgRegion());
			Barcode2.append(TextUtil.pad(String.format("%10.2f", NotaFiscal.getGrandTotal()).replace('.', ','),'0',10,true));
			Barcode2.append(TextUtil.pad(String.format("%10.2f", NotaFiscal.getICMSAmt()),'0',10,true));
			NotaFiscal.setlbr_Barcode1(Barcode2.toString());


			NotaFiscal.setProcessed(true);
			NotaFiscal.save(trx);

			LBR_NotaFiscal_ID = NotaFiscal.getLBR_NotaFiscal_ID();
			
			// Gerar XML automaticamente
			try
			{
				if (NotaFiscal.getC_DocType_ID() > 0)
				{
					MDocType dt = new MDocType (ctx, NotaFiscal.getC_DocType_ID(), trx);
					String model = dt.get_ValueAsString("lbr_NFModel");
					//
					if (model == null)
						log.log(Level.INFO, "Tipo de NF não definido.");
					else if (model.startsWith("RPS"))
					{
						NotaFiscal.setlbr_ServiceTaxes();
						NotaFiscal.save(trx);
					}
					//
					else if (model.equals("55") && 
							MSysConfig.getBooleanValue("LBR_AUTO_GENERATE_XML", false, NotaFiscal.getAD_Client_ID()))
						NFeXMLGenerator.geraCorpoNFe(LBR_NotaFiscal_ID, trx);
				}
			} catch(Exception ex) {
				log.log(Level.WARNING,"Falha ao gerar automaticamente o XML da Nota Fiscal " + NotaFiscal.getDocumentNo());
			}
			
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro no processo GenerateNotaFiscal", e);
		}

		return LBR_NotaFiscal_ID;

	}//generate

	private static void deleteLines(int LBR_NotaFiscal_ID, String trx){

		if (LBR_NotaFiscal_ID != 0){
			MLBRNotaFiscal.deleteLBR_NFTax(LBR_NotaFiscal_ID, trx); //Imposto Cabeçalho
			MLBRNotaFiscal.deleteLBR_NFLineTax(LBR_NotaFiscal_ID, trx); //Imposto Linha
			MLBRNotaFiscal.deleteLBR_NotaFiscalLine(LBR_NotaFiscal_ID, trx); //Linhas da NF
		}

	} //deleteLines

}//ProcGenerateNF