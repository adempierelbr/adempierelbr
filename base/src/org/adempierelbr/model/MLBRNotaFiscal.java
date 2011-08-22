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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeEmail;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.nfe.beans.ChaveNFE;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCost;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MUser;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.w3c.dom.Node;

/**
 *	MNotaFiscal
 *
 *	Model for X_LBR_NotaFiscal
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscal.java, 08/01/2008 10:56:00 mgrigioni
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNotaFiscal.class);

	/**	Process Message */
	private String		m_processMsg = null;

	/** REFERENCE */
	public Map<String,String> m_refNCM  = new HashMap<String, String>(); //Referência NCM
	public Map<String,String> m_refCFOP = new HashMap<String, String>(); //Referência CFOP
	public ArrayList<Integer> m_refLegalMessage = new ArrayList<Integer>(); //Referência Mensagem Legal

	/** STRING */
	String m_NCMReference  = "";
	String m_CFOPNote      = "";
	String m_CFOPReference = "";
	String m_LegalMessage  = "";

	/** CONSTANT */
	public final static int BRAZIL = 139;
	
	/**	RPS sem número do documento	*/
	public static final String RPS_TEMP = "RPS-TEMP";

	public String getProcessMsg() {

		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**
	 * Retorna as Notas Fiscais por período (compra e venda)
	 * @param dateFrom
	 * @param dateTo
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get(Timestamp dateFrom, Timestamp dateTo,String trxName){
		return get(dateFrom,dateTo,0,null,trxName);
	}
	
	public static MLBRNotaFiscal[] get(Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, String trxName){
		return get(dateFrom,dateTo,AD_Org_ID,null,trxName);
	}
	
	public static MLBRNotaFiscal[] get(Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName){
		return get(dateFrom,dateTo,0,isSOTrx,trxName);
	}

	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get(Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, Boolean isSOTrx, String trxName){

		String whereClause = "AD_Client_ID=? AND " +
				             "AD_Org_ID IN (0,?) AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END)";

		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),AD_Org_ID > 0 ? AD_Org_ID : Env.getAD_Org_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}

	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be sabed
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_DocType_ID() != getC_DocTypeTarget_ID())
			setC_DocType_ID(getC_DocTypeTarget_ID()); 	//	Define que o C_DocType_ID = C_DocTypeTarget_ID
		
		//	Opcionalmente pode gerar o RPS apenas na hora da transmissão
		if (newRecord)
		{
			Integer vC_DocTypeTarget_ID = getC_DocTypeTarget_ID();
			//
			if (vC_DocTypeTarget_ID != null
					&& vC_DocTypeTarget_ID.intValue() > 0)
			{
				MDocType dt = new MDocType (Env.getCtx(), vC_DocTypeTarget_ID, null);
				String nfModel = dt.get_ValueAsString("lbr_NFModel");
				//
				if (nfModel != null && nfModel.startsWith("RPS"))
				{
					if (!MSysConfig.getBooleanValue("LBR_REALTIME_RPS_NUMBER", true, getAD_Client_ID()))
						setDocumentNo(RPS_TEMP);
				}
			}
		}
		return true;
	}	//	beforeSave

	public boolean beforeDelete(){

		// Se for transmitida não exclui mais...
		if(getlbr_NFModel() != null && getlbr_NFModel().equals("55") && 
				getlbr_NFeProt() != null && !getlbr_NFeProt().isEmpty())
			return false;
		
		String trxName = get_TrxName();

		int C_Invoice_ID = getC_Invoice_ID();
		if (C_Invoice_ID > 0){
			MInvoice invoice = new MInvoice(getCtx(),C_Invoice_ID,trxName);
			invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", null);
			if (!invoice.save(trxName))
				return false;
		}

		if (!deleteLBR_NFTax(get_ID(),trxName))
			return false;

		if (!deleteLBR_NFLineTax(get_ID(),trxName))
			return false;

		if (!deleteLBR_NotaFiscalLine(get_ID(),trxName))
			return false;

		return true;
	}

	public int getLBR_DocTypeNF_ID(MInvoice invoice){

		Integer LBR_DocTypeNF_ID = 0;

		MDocType docType = new MDocType(getCtx(), invoice.getC_DocTypeTarget_ID(), get_TrxName());

		LBR_DocTypeNF_ID = (Integer)docType.get_Value("LBR_DocTypeNF_ID");
		if (LBR_DocTypeNF_ID == null)
			LBR_DocTypeNF_ID = 0;

		return LBR_DocTypeNF_ID.intValue();
	} //getLBR_DocTypeNF_ID
	
	/**
	 * Indicador do tipo de pagamento (Utilizado na NFe e SPED)
	 * @return String indPag
	 */
	public String getIndPag(){
		
		String indPag = "0"; //A VISTA
		MLBROpenItem[] openItems = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
		if (openItems.length > 1)
			indPag = "2"; //PARCELADO
		else {
			if (openItems.length == 1){
				if (openItems[0].getNetDays() > 0)
					indPag = "1"; //A PRAZO
			}
			else{
				indPag = "9"; //SEM COBRANCA
			}
		}
		
		return indPag;
	}

	public boolean setSiscomexTax(){

		BigDecimal TotalLinesAmt = getTotalLines();
		if (TotalLinesAmt.signum() == 0)
			return true;

		BigDecimal TotalSiscomexAmt = getlbr_TotalSISCOMEX();
		if (TotalSiscomexAmt.signum() == 0)
			return true;

		MLBRNotaFiscalLine[] nfLines = getLines("Line");
		for (MLBRNotaFiscalLine nfLine : nfLines){

			BigDecimal lineAmt = nfLine.getLineTotalAmt();
			//siscomexAmt = lineAmt/totalLinesAmt (porcentagem do total da nf)
			//siscomexAmt = TotalSiscomex*siscomexamt (siscomex proporcional)
			BigDecimal siscomexAmt = lineAmt.divide(TotalLinesAmt, TaxBR.MCROUND);
			           siscomexAmt = TotalSiscomexAmt.multiply(siscomexAmt);

			nfLine.setlbr_LineTotalSISCOMEX(siscomexAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
			nfLine.save();

			BigDecimal ICMSRate = nfLine.getICMSRate();
			if (ICMSRate == null || ICMSRate.signum() == 0)
				continue;

			//siscomex/(1-(ICMS/100))
			BigDecimal TaxBaseAmt = siscomexAmt.divide((Env.ONE.subtract(
					                                   (ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND))))
					                                   ,TaxBR.MCROUND);
			//taxBase*(ICMS/100)
			BigDecimal TaxAmt     = TaxBaseAmt.multiply((ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND)));

			int LBR_TaxGroup_ID   = TaxBR.getTaxGroup_ID("ICMS");
			if (LBR_TaxGroup_ID > 0){
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax(getCtx(), LBR_TaxGroup_ID, nfLine.get_ID(), TaxBaseAmt.setScale(TaxBR.SCALE, TaxBR.ROUND),
						TaxAmt.setScale(TaxBR.SCALE, TaxBR.ROUND), ICMSRate, Env.ZERO, "SISCOMEX", getAD_Org_ID(), get_TrxName());
				if (!nfLineTax.save(get_TrxName())){
					return false;
				}
			}

		} //for lines

		return true;
	} //setSiscomexTax

	public boolean setFreightTax(){

		BigDecimal TotalLinesAmt = getTotalLines();
		if (TotalLinesAmt.signum() == 0)
			return true;

		BigDecimal TotalFreightAmt = getFreightAmt();
		if (TotalFreightAmt.signum() == 0)
			return true;

		MLBRNotaFiscalLine[] nfLines = getLines("Line");
		for (MLBRNotaFiscalLine nfLine : nfLines){

			BigDecimal ICMSRate = nfLine.getICMSRate();
			if (ICMSRate == null || ICMSRate.signum() == 0)
				continue;

			BigDecimal freightAmt = nfLine.getFreightAmt(TotalLinesAmt, TotalFreightAmt);

			//frete/(1-(ICMS/100))
			BigDecimal TaxBaseAmt = freightAmt.divide((Env.ONE.subtract(
					                                   (ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND))))
					                                   ,TaxBR.MCROUND);
			//taxBase*(ICMS/100)
			BigDecimal TaxAmt     = TaxBaseAmt.multiply((ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND)));

			int LBR_TaxGroup_ID   = TaxBR.getTaxGroup_ID("ICMS");
			if (LBR_TaxGroup_ID > 0){
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax(getCtx(), LBR_TaxGroup_ID, nfLine.get_ID(), TaxBaseAmt.setScale(TaxBR.SCALE, TaxBR.ROUND),
						TaxAmt.setScale(TaxBR.SCALE, TaxBR.ROUND), ICMSRate, Env.ZERO, "FRETE", getAD_Org_ID(), get_TrxName());
				if (!nfLineTax.save(get_TrxName())){
					return false;
				}
			}

		} //for lines

		return true;
	} //setFreightTax

	/**************************************************************************
	 *  getLines
	 *  @return MNotaFiscalLine[] lines
	 *  @deprecated
	 */
	public MLBRNotaFiscalLine[] getLines(){
		return getLines(null);
	}
	
	/**************************************************************************
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines(String orderBy){

		String   whereClause = "LBR_NotaFiscal_ID = ?";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID()};

		return getLines(parameters,whereClause,orderBy);
	} //getLines

	/**
	 * getLines
	 * @param Object[] parameters
	 * @param String whereClause
	 * @param String orderBy
	 * @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines(Object[] parameters, String whereClause, String orderBy){

		MTable table = MTable.get(getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	orderBy = TextUtil.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);

	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	} //getLines

	public void setDescription(String description){
		if (description == null)
			super.setDescription("");
		else{
			description = description.replaceAll("null", " ");
			super.setDescription(description.trim());
		}
	}

	public MBPartnerLocation getBPartnerLocation(MOrder order, MInvoice invoice, MInOut shipment){

		MBPartnerLocation bpLocation = null;

		if (shipment != null && shipment.getC_BPartner_Location_ID() != 0){
			bpLocation = new MBPartnerLocation(getCtx(),shipment.getC_BPartner_Location_ID(),get_TrxName());
		}
		else if (order != null && order.getC_BPartner_Location_ID() != 0){
			bpLocation = new MBPartnerLocation(getCtx(),order.getC_BPartner_Location_ID(),get_TrxName());
		}
		else if (invoice != null){
			bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
		}

		return bpLocation;
	} //getBPartnerLocation

	public void setOrgInfo(int AD_Org_ID){
		MOrg org = MOrg.get(getCtx(), AD_Org_ID);
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),get_TrxName());
		MCountry orgCountry = new MCountry(getCtx(),orgLoc.getC_Country_ID(),get_TrxName());

		String legalEntity = orgInfo.get_ValueAsString("lbr_LegalEntity");
		if (legalEntity == null || legalEntity.length() < 1)
			legalEntity = org.getName();

		setOrg_Location_ID(orgLoc.getC_Location_ID());
		setlbr_OrgAddress1(orgLoc.getAddress1());
		setlbr_OrgAddress2(orgLoc.getAddress2());
		setlbr_OrgAddress3(orgLoc.getAddress3());
		setlbr_OrgAddress4(orgLoc.getAddress4());
		setlbr_OrgName(legalEntity);
		setlbr_OrgCity(orgLoc.getCity());
		setlbr_OrgPostal(orgLoc.getPostal());
		setlbr_OrgCountry(orgCountry.getCountryCode());
		setlbr_OrgRegion(orgLoc.getRegionName(true));
		setlbr_OrgCCM(orgInfo.get_ValueAsString("lbr_CCM"));
		setlbr_CNPJ(orgInfo.get_ValueAsString("lbr_CNPJ"));
		setlbr_IE(orgInfo.get_ValueAsString("lbr_IE"));
	} //setOrgInfo

	public void setBPartner(MBPartner bpartner, MBPartnerLocation bpLocation){

		if (bpartner == null || bpLocation == null)
			return;

		setC_BPartner_ID(bpartner.getC_BPartner_ID());   /** C_BPartner_ID **/
		setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());   /** C_BPartner_Location_ID **/
		setBPName(bpartner.getName());   //Nome Destinatário
		setlbr_BPPhone(bpLocation.getPhone());   //Telefone Destinatário

		setlbr_BPCNPJ(BPartnerUtil.getCNPJ(bpartner,bpLocation));   //CNPJ Destinatário
		setlbr_BPIE(BPartnerUtil.getIE(bpartner,bpLocation));   //IE Destinatário
		setlbr_BPSuframa(BPartnerUtil.getSuframa(bpartner,bpLocation)); //Suframa Destinatário

		MLocation location = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		setlbr_BPAddress1(location.getAddress1());   //Endereço Destinatário
		setlbr_BPAddress2(location.getAddress2());   //Endereço Destinatário
		setlbr_BPAddress3(location.getAddress3());   //Endereço Destinatário
		setlbr_BPAddress4(location.getAddress4());   //Endereço Destinatário
		setlbr_BPCity(location.getCity());   //Cidade Destinatário
		setlbr_BPPostal(location.getPostal());   //CEP Destinatário

		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPCountry(country.getCountryCode());   //País Destinatário

		if (country.get_ID() != BRAZIL)
			setlbr_BPRegion("EX");
		else{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPRegion(region.getName());   //Estado Destinatário
		}
	} //setBPartner

	public void setInvoiceBPartner(MInvoice invoice){

		if (invoice == null)
			return;

		setBill_Location_ID(invoice.getC_BPartner_Location_ID());   /** InvoiceLocation_ID **/
		setC_PaymentTerm_ID(invoice.getC_PaymentTerm_ID());   /** C_PaymentTerm_ID **/

		MBPartnerLocation bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
		MLocation         location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());

		setlbr_BPInvoiceCNPJ(BPartnerUtil.getCNPJ(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //CNPJ Fatura
		setlbr_BPInvoiceIE(BPartnerUtil.getIE(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //IE Fatura

		setlbr_BPInvoiceAddress1(location.getAddress1());   //Endereço Fatura
		setlbr_BPInvoiceAddress2(location.getAddress2());   //Endereço Fatura
		setlbr_BPInvoiceAddress3(location.getAddress3());   //Endereço Fatura
		setlbr_BPInvoiceAddress4(location.getAddress4());   //Endereço Fatura
		setlbr_BPInvoiceCity(location.getCity());   //Cidade Fatura
		setlbr_BPInvoicePostal(location.getPostal());   //CEP Fatura

		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPInvoiceCountry(country.getCountryCode());   //País Fatura

		if (country.get_ID() != BRAZIL)
			setlbr_BPInvoiceRegion("EX");
		else{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPInvoiceRegion(region.getName());   //Estado Fatura
		}
	} //setInvoiceBPartner

	public void setShipmentBPartner(MInOut shipment, MInvoice invoice){

		MBPartnerLocation bpLocation = null;
		MLocation         location   = null;

		if (shipment != null && shipment.getM_InOut_ID() != 0) {
			bpLocation = new MBPartnerLocation(getCtx(),shipment.getC_BPartner_Location_ID(),get_TrxName());
			location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());

			setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ(getCtx(), shipment.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //CNPJ Entrega
			setlbr_BPDeliveryIE(BPartnerUtil.getIE(getCtx(), shipment.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //IE Entrega
		}
		else if (invoice != null) {
			bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
			location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());

			setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //CNPJ Entrega
			setlbr_BPDeliveryIE(BPartnerUtil.getIE(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //IE Entrega
		}
		else return;

		setlbr_BPDeliveryAddress1(location.getAddress1());   //Endereço Entrega
		setlbr_BPDeliveryAddress2(location.getAddress2());   //Endereço Entrega
		setlbr_BPDeliveryAddress3(location.getAddress3());   //Endereço Entrega
		setlbr_BPDeliveryAddress4(location.getAddress4());   //Endereço Entrega
		setlbr_BPDeliveryCity(location.getCity());   //Cidade Entrega
		setlbr_BPDeliveryPostal(location.getPostal());   //CEP Entrega

		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPDeliveryCountry(country.getCountryCode());   //País Entrega

		if (country.get_ID() != BRAZIL)
			setlbr_BPDeliveryRegion("EX");
		else{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPDeliveryRegion(region.getName());   //Estado Entrega
		}

		setFreightCostRule(shipment.getFreightCostRule()); //Frete por Conta
	} //setShipmentBPartner

	public void setShipper(MShipper shipper, String LicensePlate){

		setlbr_BPShipperLicensePlate(LicensePlate);
		if (shipper == null)
			return;

		setM_Shipper_ID(shipper.getM_Shipper_ID());
		setlbr_BPShipperName(shipper.getName());

		MBPartner transp = new MBPartner(getCtx(),shipper.getC_BPartner_ID(),get_TrxName());

		//Localização Transportadora
		MBPartnerLocation[] transpLocations = transp.getLocations(false);
		MLocation location = null;

		if (transpLocations.length > 0){

			location = new MLocation(getCtx(),transpLocations[0].getC_Location_ID(),get_TrxName());
			setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ(transp,transpLocations[0]));   //CNPJ Transportadora
			setlbr_BPShipperIE(BPartnerUtil.getIE(transp,transpLocations[0]));   //IE Transportadora

			setlbr_BPShipperAddress1(location.getAddress1());   //Endereço Transportadora
			setlbr_BPShipperAddress2(location.getAddress2());   //Endereço Transportadora
			setlbr_BPShipperAddress3(location.getAddress3());   //Endereço Transportadora
			setlbr_BPShipperAddress4(location.getAddress4());   //Endereço Transportadora

			setlbr_BPShipperCity(location.getCity());   //Cidade Transportadora
			setlbr_BPShipperPostal(location.getPostal());   //CEP Transportadora

			MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
			setlbr_BPShipperCountry(country.getCountryCode());   //País Transportadora

			if (country.get_ID() != BRAZIL)
				setlbr_BPShipperRegion("EX");
			else{
				MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
				setlbr_BPShipperRegion(region.getName());   //Estado Transportadora
			}

		}
		else
		{
			setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ(transp,null));   //CNPJ Transportadora
			setlbr_BPShipperIE(BPartnerUtil.getIE(transp,null));   //IE Transportadora
		}

	} //setShipper

	/**
	 * Retorna o NCM ou a Referência do NCM
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_NCM_ID
	 * @return
	 */
	public String getNCM(Integer LBR_NCM_ID)
	{
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return null;

		X_LBR_NCM ncm = new X_LBR_NCM(getCtx(),LBR_NCM_ID,get_TrxName());
		String ncmName = ncm.getValue();

		if (!(ncmName == null || ncmName.equals("")))
		{
			//	Retorna a Ref. do NCM
			if (m_refNCM.containsKey(ncmName))
			{
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return m_refNCM.get(ncmName).toString();	//	NCM
			}
			else
			{
				String cl = TextUtil.getALFAB(m_refNCM.size());
				m_refNCM.put(ncmName, cl);
				setNCMReference(ncmName,cl,true);
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getNCM
	
	/**
	 * Retorna o valor do Imposto
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(null, sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt
	
	/**
	 * Retorna o valor do Imposto sem as linhas com serviço
	 * @param taxIndicator
	 * @param onlyService - true, só impostos de serviço, false, só impostos exceto serviços
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmtService(String taxIndicator, boolean onlyService){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine " +
		             "WHERE LBR_NotaFiscal_ID = ? AND lbr_CFOPName" + (onlyService ? " LIKE " : " NOT LIKE ") + "'%.933')"  +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmtService
	
	/**
	 * Retorna a Base de Cálculo do Imposto
	 * @return BigDecimal TaxBaseAmt
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(null, sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt
	
	/**
	 * Retorna o valor do Imposto sem as linhas com serviço
	 * @param taxIndicator
	 * @param onlyService - true, só impostos de serviço, false, só impostos exceto serviços
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseAmtService(String taxIndicator, boolean onlyService){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine " +
		             "WHERE LBR_NotaFiscal_ID = ? AND lbr_CFOPName" + (onlyService ? " LIKE " : " NOT LIKE ") + "'%.933')"  +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseAmtService

	/**
	 * Retorna a Alíquota do Imposto
	 * @return BigDecimal TaxRate
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?) " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate
	
	/**
	 * Retorna a base de cálculo e o valor do ICMS para as linhas de ativo fixo
	 * @return BigDecimla[] 0 = Base de Cálculo, 1 = Valor do Imposto
	 */
	public BigDecimal[] getAssetTaxAmt(){
		
		BigDecimal[] assetAmt = new BigDecimal[]{Env.ZERO,Env.ZERO};
		
		String   whereClause = "LBR_NotaFiscal_ID = ? AND lbr_CFOPName IN (?,?,?)";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID(),"1.551","2.551","3.551"};
		
		MLBRNotaFiscalLine[] nfLines = getLines(parameters,whereClause,"Line");
		
		for (MLBRNotaFiscalLine nfLine : nfLines){
			assetAmt[0] = assetAmt[0].add(nfLine.getICMSBaseAmt());
			assetAmt[1] = assetAmt[1].add(nfLine.getICMSAmt());
		}
		
		return assetAmt;
	} //getAssetAmt
	
	public BigDecimal getCost(int C_AcctSchema_ID, int C_CostElement_ID){

		BigDecimal currentCost = Env.ZERO;

		MLBRNotaFiscalLine[] lines = getLines("line");
		for(MLBRNotaFiscalLine line : lines){
			int M_Product_ID = line.getM_Product_ID();
			if (M_Product_ID == 0)
				continue;

			MProduct product = new MProduct(getCtx(),M_Product_ID,get_TrxName());
			MAcctSchema as   = MAcctSchema.get(getCtx(), C_AcctSchema_ID);

			MCost cost = MCost.get(product,0,as,0,C_CostElement_ID,get_TrxName());
			if (cost != null)
				currentCost = currentCost.add(cost.getCurrentCostPrice().multiply(line.getQty()));
		}

		return currentCost.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getCost

	/**
	 *  Retorno o valor da Base de ICMS
	 *
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSBaseST

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	public BigDecimal getICMSDebAmt(){

		String sql = "SELECT SUM(ValorICMS) FROM lbr_SitICMS_V " +
                     "WHERE LBR_NotaFiscal_ID = ?";
        //
		BigDecimal result = DB.getSQLValueBD(null, sql, new Object[]{getLBR_NotaFiscal_ID()});
		return result == null ? Env.ZERO : result;
	} // getICMSDebAmt

	/**
	 *  Retorno a média das alíquotas do ICMS
	 *
	 *  @return	BigDecimal	ICMS Rate
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate

	/**
	 * Retorno o valor do ICMS
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 * @return BigDecimal ICMS
	 * @deprecated
	 */
	public static BigDecimal getICMSAmt(Properties ctx, int LBR_NotaFiscal_ID, String trx){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);
		return nf.getICMSAmt();
	} //getICMSAMt

	/**
	 *  Retorno o valor do ICMSST
	 *
	 *  @return	BigDecimal	ICMSST
	 */
	public BigDecimal getICMSSTAmt()
	{
		return getTaxAmt("ICMSST");
	}	//	getICMSAmtST

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor do PIS
	 *
	 *  @return	BigDecimal	PIS
	 */
	public BigDecimal getPISAmt()
	{
		return getTaxAmt("PIS");
	}	//	getPISAmt

	/**
	 *  Retorno o valor do COFINS
	 *
	 *  @return	BigDecimal	COFINS
	 */
	public BigDecimal getCOFINSAmt()
	{
		return getTaxAmt("COFINS");
	}	//	getCOFINSAmt
	
	/**
	 * Retorna o desconto proporcional ao base amt
	 * Usado para saber o desconto das linhas só de serviço ou só de produtos
	 * @param baseAmt
	 * @return
	 */
	public BigDecimal getDiscountAmt(BigDecimal baseAmt){

		if (baseAmt.signum() <= 0 || baseAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal discountAmt = baseAmt.divide(getTotalLines().add(getlbr_ServiceTotalAmt()), TaxBR.MCROUND);
		           discountAmt = getDiscountAmt().multiply(discountAmt);

		return discountAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getDiscountAmt

	public static int getLBR_NotaFiscal_ID(String DocumentNo,boolean IsSOTrx, String trx)
	{

		String sql = "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";

		Integer LBR_NotaFiscal_ID = DB.getSQLValue(trx, sql,
				new Object[]{DocumentNo, Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});

		return LBR_NotaFiscal_ID;
	}	//	getLBR_NotaFiscal_ID

	public static int getNFB(int AD_Org_ID)
	{
		return getNFB(AD_Org_ID,true);
	}
	
	public static int getNFB(int AD_Org_ID, boolean isSOTrx){
		return getNFB(AD_Org_ID,isSOTrx,false);
	}

	public static int getNFB(int AD_Org_ID, boolean isSOTrx, boolean isSCAN) {

		String sql = "SELECT C_DocType_ID FROM C_DocType " +
				     "WHERE DocBaseType = 'NFB' " +
				     "AND AD_Client_ID = ? AND AD_Org_ID IN (0,?) " +
				     "AND IsSOTrx = ? AND lbr_NFeTpEmi = ?" +
				     "order by C_DocType_ID, AD_Org_ID desc";

		int C_DocType_ID = DB.getSQLValue(null, sql,
				new Object[]{Env.getAD_Client_ID(Env.getCtx()), AD_Org_ID, isSOTrx, isSCAN ? "3" : "1"});

		return C_DocType_ID;
	}	//	getNFB

	/**
	 * 	Retorna o CFOP das linhas, no caso de mais de 1 CFOP,
	 * 		retorna o ref. ao Maior Valor
	 *
	 * @return CFOP
	 */
	public String getCFOP()
	{
		String sql = "SELECT lbr_CFOPName " +
					 "FROM LBR_NotaFiscalLine " +
					 "WHERE LBR_NotaFiscal_ID=? ORDER BY LineTotalAmt DESC";

		return DB.getSQLValueString(null, sql, getLBR_NotaFiscal_ID());
	}

	/**
	 * Retorna o CFOP ou a Referência do CFOP
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_CFOP_ID
	 * @return CFOP ou Ref. do CFOP
	 */
	public String getCFOP(Integer LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return null;
		//
		X_LBR_CFOP cfop = new X_LBR_CFOP(getCtx(),LBR_CFOP_ID,get_TrxName());
		String cfopName = cfop.getValue();
		//
		if (!(cfopName == null || cfopName.equals("")))
		{
			//	Retorna a Ref. do CFOP
			if (m_refCFOP.containsKey(cfopName))
			{
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return m_refCFOP.get(cfopName).toString();	//	CFOP
			}
			else
			{
				String cl = TextUtil.getALFAB(m_refCFOP.size());
				m_refCFOP.put(cfopName, cl);
				setCFOPNote(cfop.getDescription() + ", ",true);
				setCFOPReference(cfopName,cl);
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getCFOP

	public void setLegalMessage(Integer LBR_LegalMessage_ID){

		if (LBR_LegalMessage_ID == null || LBR_LegalMessage_ID.intValue() == 0)
			return;

		X_LBR_LegalMessage lMessage = new X_LBR_LegalMessage(getCtx(),LBR_LegalMessage_ID,get_TrxName());

		if (!m_refLegalMessage.contains(LBR_LegalMessage_ID)){

			m_refLegalMessage.add(LBR_LegalMessage_ID);
			setLegalMessage(lMessage.getTextMsg() + ", ",true);
		}
	} //setLegalMessage

	/**************************************************************************
	 *  lastPrinted
	 *  @return int documentno
	 */
	public int lastPrinted(){

		String sql = "SELECT max(DocumentNo) FROM LBR_NotaFiscal " +
				     "WHERE AD_Org_ID = ? AND C_DocType_ID = ? " +
				     "AND IsSOTrx = ? AND IsPrinted = 'Y'";

		int documentno = DB.getSQLValue(get_TrxName(), sql,
				new Object[]{getAD_Org_ID(), getC_DocType_ID(), isSOTrx()});

		return documentno;
	} //lastPrinted

	/**
	 * Convert Amt
	 * @throws Exception
	 */
	public BigDecimal convertAmt(BigDecimal Amt, int C_Currency_ID) throws Exception{

		Amt = MConversionRate.convertBase(getCtx(), Amt, C_Currency_ID,
				  getDateDoc(), 0, Env.getAD_Client_ID(getCtx()),
				  Env.getAD_Org_ID(getCtx()));

		if (Amt == null){
			log.log(Level.SEVERE,"null if no rate = " + getDateDoc() + " / Currency = " + C_Currency_ID);
			throw new Exception();
		}

		return Amt;
	} //convertAmt

	/**
	 * 	Void Document.
	 * 	@return true if success
	 */
	public boolean voidIt(){

		log.info(toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;

		if (isCancelled()) return false; //Já está cancelada

		if (isPrinted()){

			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			if (invoice.getDocStatus().equals(MInvoice.DOCSTATUS_Voided) || //Already Voided
				invoice.getDocStatus().equals(MInvoice.DOCSTATUS_Reversed))
				;
			else
				if (invoice.voidIt()){
					invoice.save(get_TrxName());
				}
				else {
					m_processMsg = invoice.getProcessMsg();
					return false;
				}

			if (getM_InOut_ID() != 0){
				MInOut shipment = new MInOut(getCtx(),getM_InOut_ID(),get_TrxName());
				if (shipment.getDocStatus().equals(MInOut.DOCSTATUS_Voided) || //Already Voided
				    shipment.getDocStatus().equals(MInOut.DOCSTATUS_Reversed))
						;
				else
					if (shipment.voidIt()){
						shipment.save(get_TrxName());
					}
					else {
						m_processMsg = shipment.getProcessMsg();
						return false;
					}
			}

			/* CANCELA OV - Utilizar código no validator do cliente no AFTER_VOID
			if (getC_Order_ID() != 0){
				MOrder order = new MOrder(getCtx(),getC_Order_ID(),get_TrxName());
				if (order.getDocStatus().equals(MOrder.DOCSTATUS_Voided) || //Already Voided
				    order.getDocStatus().equals(MOrder.DOCSTATUS_Reversed))
						;
				else
					if (order.voidIt()){
						order.save(get_TrxName());
					}
					else return false;
			}
			*/

		} //printed
		else{

			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", null);
			invoice.save(get_TrxName());

			if (getC_DocTypeTarget_ID() != 0){

				MDocType docType = new MDocType(getCtx(),getC_DocTypeTarget_ID(),get_TrxName());
				if (docType.getDocNoSequence_ID() != 0){
					MSequence sequence = new MSequence(getCtx(), docType.getDocNoSequence_ID(), get_TrxName());

					int actual = sequence.getCurrentNext()-1;
					if (actual == Integer.parseInt(getDocumentNo())){
						sequence.setCurrentNext(sequence.getCurrentNext()-1);
						sequence.save(get_TrxName());
					}
					else{
						log.log(Level.SEVERE, "Existem notas com numeração superior " +
								"no sistema. Nota: " + getDocumentNo());
						return false;
					}
				}

			}

		}

		setIsCancelled(true);

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		return true;
	}

	public static boolean deleteLBR_NotaFiscalLine (int LBR_NotaFiscal_ID, String trx){

		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NotaFiscalLine.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(LBR_NotaFiscal_ID);

		if (DB.executeUpdate(sql.toString(), trx) == -1)
			return false;

		return true;
	} //deleteLBR_NotaFiscalLine

	public static boolean deleteLBR_NFTax (int LBR_NotaFiscal_ID, String trx){

		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NFTax.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(LBR_NotaFiscal_ID);

		if (DB.executeUpdate(sql.toString(), trx) == -1)
			return false;

		return true;
	} //deleteLBR_NFTax

	public static boolean deleteLBR_NFLineTax (int LBR_NotaFiscal_ID, String trx){

		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NFLineTax.Table_Name)
		   .append(" WHERE LBR_NotaFiscalLine_ID IN ")
		   .append("(SELECT LBR_NotaFiscalLine_ID FROM ")
		   .append(X_LBR_NotaFiscalLine.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(LBR_NotaFiscal_ID).append(")");

		if (DB.executeUpdate(sql.toString(), trx) == -1)
			return false;

		return true;
	} //deleteLBR_NFLineTax

	public String getNCMReference() {
		return TextUtil.retiraPontoFinal(m_NCMReference);
	}

	/**
	 * 	Set NCM Reference
	 *
	 * 	A-0000.00.00, B-9999.99.99
	 *
	 * @param ncmName
	 * @param cl
	 * @param concat
	 */
	private void setNCMReference(String ncmName, String cl, boolean concat)
	{
		if (concat)
		{
			if (m_NCMReference.equals(""))
				m_NCMReference += "Classif: ";
			//
			m_NCMReference += cl + "-" + ncmName + ", ";
		}
		else
			m_NCMReference = ncmName;
	}

	public String getCFOPNote() {
		return TextUtil.retiraPontoFinal(m_CFOPNote);
	}

	private void setCFOPNote(String cfopNote, boolean concat) {

		if (concat){
			m_CFOPNote += cfopNote;
		}
		else{
			m_CFOPNote = cfopNote;
		}
	}

	public String getCFOPReference() {
		return TextUtil.retiraPontoFinal(m_CFOPReference);
	}

	/**
	 * 	Set CFOP Reference.
	 *
	 * 	A-5.101, B-5.102
	 *
	 * @param cfopName
	 * @param cl
	 * @param concat
	 */
	private void setCFOPReference(String cfopName, String cl)
	{
		if (m_CFOPReference == null
				|| m_CFOPReference.equals(""))
		{
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference = cl + "-" + cfopName;
			else
				m_CFOPReference = cfopName;
		}
		else
		{
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference += ", " + cl + "-" + cfopName;
			else
				m_CFOPReference += ", " + cfopName;
		}
	}

	public String getLegalMessage() {
		return TextUtil.retiraPontoFinal(m_LegalMessage);
	}

	private void setLegalMessage(String legalMessage, boolean concat) {
		if (concat){
			m_LegalMessage += legalMessage;
		}
		else{
			m_LegalMessage = legalMessage;
		}
	}

	/**************************************************************************
	 *  getTaxes
	 *  @return X_LBR_NFLineTax[] taxes
	 */
	public X_LBR_NFTax[] getTaxes(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFLineTax> list = query.list();

		return list.toArray(new X_LBR_NFTax[list.size()]);
	} //getTaxes

	/**************************************************************************
	 *  getDIs
	 *  @return X_LBR_NFDI[] taxes
	 */
	public X_LBR_NFDI[] getDIs(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFDI> list = query.list();

		return list.toArray(new X_LBR_NFDI[list.size()]);
	}	//	getDIs

	/**
	 * Atualiza autorização NF-e e XML de distribuicao
	 *
	 * return null (success) or error message
	 * @throws Exception
	 */
	public static String authorizeNFe(Node node, String trxName){

		String error = null;

		if (node.getNodeType() == Node.ELEMENT_NODE)
		{
			String chNFe	= NFeUtil.getValue (node, "chNFe");
			String xMotivo 	= NFeUtil.getValue (node, "xMotivo");
			String digVal 	= NFeUtil.getValue (node, "digVal");
			String dhRecbto = NFeUtil.getValue (node, "dhRecbto");
			String cStat 	= NFeUtil.getValue (node, "cStat");
			String nProt 	= NFeUtil.getValue (node, "nProt");
			//
			MLBRNotaFiscal nf = getNFe(chNFe, trxName);
			if (nf == null)
			{
				error = "NF não encontrada";
				log.severe(error);
				return error;
			}

			if (nf.getlbr_NFeStatus() != null && nf.getlbr_NFeStatus().equals(NFeUtil.AUTORIZADA)){ //
				log.fine("NF já processada. " + nf.getDocumentNo());
				return error;
			}

	        Timestamp ts = NFeUtil.stringToTime(dhRecbto);
	        //
	        String nfeDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        if (nf.getlbr_NFeDesc() == null)
	        	nf.setlbr_NFeDesc(nfeDesc);
	        else
	        	nf.setlbr_NFeDesc(nf.getlbr_NFeDesc() + nfeDesc);

	        nf.setlbr_DigestValue(digVal);


	        // BF ID: 3391601
	        if(cStat != null)
	        {
	        	try {
	        		nf.setlbr_NFeStatus(cStat);
				} catch (Exception e) {
					nf.setlbr_NFeStatus(MLBRNotaFiscal.LBR_NFESTATUS_RejeiçãoErroNãoCatalogado);
				}
	        }
	        
	        //
	        if(nProt != null)
	        	nf.setlbr_NFeProt(nProt);
	        
	        //
	        if(ts != null)
	        	nf.setDateTrx(ts);
	        
	        nf.setProcessed(true);
			nf.save(trxName);

			//Atualiza XML para padrão de distribuição
			try {
				if (!NFeUtil.updateAttach(nf, NFeUtil.generateDistribution(nf)))
					error = "Problemas ao atualizar o XML para o padrão de distribuição";

				if (error == null &&
				   (nf.getlbr_NFeStatus().equals(NFeUtil.AUTORIZADA) ||
				    nf.getlbr_NFeStatus().equals(NFeUtil.CANCELADA))){
					NFeEmail.sendMail(nf);
				}

			} catch (Exception e) {
				log.log(Level.WARNING,"",e);
			}

		}

		return error;
	} //authorizeNFe
	
	public boolean checkNFeID(){
		return checkNFeID(getDocNo(),getlbr_NFeID());
	} //checkNFeID
	
	public static boolean checkNFeID(String documentNo, String nfeID){
		
		if (documentNo == null || nfeID == null)
			return false;
		
		documentNo = getDocNo(documentNo);
		
		if (nfeID.length() != 44)
			return false;
		
		int digito = ChaveNFE.gerarDigito(nfeID.substring(0, 43));
		if (digito != Integer.parseInt(nfeID.substring(43)))
			return false;
		
		int nfNo  = Integer.parseInt(documentNo);		
		int nfeNo = Integer.parseInt(nfeID.substring(25, 34));
		
		if (nfNo != nfeNo)
			return false;
		
		return true;
	} //checkNFeID
	
	/**
	 * 	Encontra a NF pelo ID de NF-e
	 *
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID, String trxName)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID = ? AND AD_Client_ID = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(trxName, sql,
				new Object[]{NFeID, Env.getAD_Client_ID(Env.getCtx())});

		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, trxName);
		else{
			log.warning("NFe " + NFeID);
			return null;
		}
	}	//	get

	/**
	 * 	Verifica se existe NF registrada com este número para Cliente/Fornecedor
	 *
	 * @param String DocumentNo
	 * @param int C_BPartner_ID
	 * @return true if exists or false if not
	 */
	public static boolean ifExists (String documentno, int C_BPartner_ID, boolean isSOTrx)
	{

		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					  "WHERE DocumentNo = ? AND C_BPartner_ID = ? " +
					  "AND AD_Client_ID = ? AND IsSOTrx = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql,
				new Object[]{documentno, C_BPartner_ID,
				Env.getAD_Client_ID(Env.getCtx()), isSOTrx});

		return LBR_NotaFiscal_ID == -1 ? false : true;
	}//ifExists

	/**
	 * Extrai o número da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	No da NF sem a Série
	 */
	public static String getDocNo(String documentNo)
	{
		if (documentNo == null || documentNo.startsWith("-"))
			return "";
		//
		if (documentNo.indexOf('-') == -1){
			documentNo = TextUtil.toNumeric(documentNo);
		}
		else{
			documentNo = TextUtil.toNumeric(documentNo.substring(0, documentNo.indexOf('-')));
		}
		
		if (!documentNo.isEmpty())
			return String.valueOf(Integer.parseInt(documentNo));
		
		return "";
	}//getdocNo

	public String getDocNo(){
		return getDocNo(getDocumentNo());
	}
	
	/**
	 * 	TODO: Replicar o campo email para a Nota Fiscal com a opção de ter um e-mail
	 * 		cadastrado para recepção de NF. Discutir se este e-mail deve ser por BP
	 * 		ou por Endereço.
	 * 
	 * @return Email
	 */
	public String getInvoiceContactEMail()
	{
		if (getC_Invoice_ID() > 0)
		{
			MInvoice i = new MInvoice (Env.getCtx(), getC_Invoice_ID(), null);
			if (i.getAD_User_ID() > 0)
			{
				MUser u = new MUser (Env.getCtx(), i.getAD_User_ID(), null);
				//
				if (u.getEMail() != null)
					return u.getEMail();
			}
		}
		//
		return "";
	}	//	getEMail

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	public static String getSerieNo(String documentNo)
	{
		if (documentNo == null || documentNo.indexOf('-') == -1 ||
			documentNo.endsWith("-"))
			return "";
		//

		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}//getserieNo

	public String getSerieNo(){
		String serieNo = getSerieNo(getDocumentNo());
		if (serieNo.isEmpty() && islbr_IsOwnDocument()){
			MDocType dt = new MDocType(getCtx(),getC_DocTypeTarget_ID(),get_TrxName());
			serieNo = dt.get_ValueAsString("lbr_NFSerie");
		}
		return serieNo;
	}
	
	/**
	 * 	Preenche o campo descrição com toda a discriminação dos serviços
	 */
	public void setlbr_ServiceTaxes()
	{
		String serviceDescription = "";
		MLBRNotaFiscalLine[] lines = getLines(null);
		//
		for (MLBRNotaFiscalLine line : lines)
		{
			if (line.getLBR_NotaFiscalLine_ID() <= 0
					|| line.getQty().compareTo(Env.ZERO) <= 0)
				continue;
			//
			serviceDescription += line.getQty() + " " + line.getlbr_UOMName() + "\t";
			serviceDescription += line.getProductName();
			//
			if (line.getDescription() != null 
					&& !line.getDescription().equals(""))
			{
				if (line.getProductName() != null && !"".equals(line.getProductName()))
					serviceDescription += ", " + line.getDescription();
				else
					serviceDescription += line.getDescription();
			}
			
			if (line.getQty().compareTo(Env.ONE) == 1)
				serviceDescription += ", Valor Unitário R$ " + line.getPrice().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',');
			
			serviceDescription += ", Valor Total R$ " + line.getLineTotalAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',') + ".";
			//
			serviceDescription += "\n";
		}
		//
		X_LBR_NFTax[] taxes = getTaxes();
		String header = "";
		String content = "";
		String footer = "";
		Boolean printTaxes = false;
		//
		if (taxes == null)
			;
		else
		{
			header += "\n" + TextUtil.rPad("Valor Bruto:", 15);
			header += "- R$ ";
			header += TextUtil.lPad(getlbr_ServiceTotalAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
			header += "\n\n";
			//
			if (taxes.length == 1)
				header += "Retenção:\n";
			else if (taxes.length > 1)
				header += "Retenções:\n";
			//
			for (X_LBR_NFTax tax : taxes)
			{
				X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
				if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
					continue;
				//
				printTaxes = true;
				//
				content += TextUtil.rPad(tg.getName(), 15);
				content += "- R$ ";
				content += TextUtil.lPad(tax.getlbr_TaxAmt().abs().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
				content += "\n";
			}
			footer += "\n" + TextUtil.rPad("Valor Líquido:", 15);
			footer += "- R$ ";
			footer += TextUtil.lPad(getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
			footer += "\n";
		}
		//
		if (printTaxes)
			serviceDescription += header + content + footer;
		//
		MLBROpenItem[] ois = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
		if (ois == null)
			;
		else if (ois.length == 1)
			serviceDescription += "\nVencimento em " + TextUtil.timeToString(ois[0].getDueDate(), "dd/MM/yyyy");
		else if (ois.length > 1)
		{
			serviceDescription += "\nVencimentos:\n";
			//
			for (MLBROpenItem oi : ois)
			{
				serviceDescription += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
				serviceDescription += "     - R$ ";
				serviceDescription += TextUtil.lPad(oi.getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
				serviceDescription += "\n";
			}
		}
		//	FIXME: Verificar como resolver o problema do POReference
//		if (getPOReference() != null 
//				&& !getPOReference().trim().equals(""))
//			serviceDescription += "\nReferência: " + getPOReference() + "\n";
		//
		if (getC_DocTypeTarget_ID() > 0)
		{
			MDocType dt = new MDocType (Env.getCtx(), getC_DocTypeTarget_ID(), null);
			//
			if (dt.getDocumentNote() != null && !dt.getDocumentNote().trim().equals(""))
				serviceDescription += "\n" + dt.getDocumentNote();
		}
		//
		setDescription(serviceDescription.trim());
	}	//	setlbr_ServiceTaxes

} //MNotaFiscal