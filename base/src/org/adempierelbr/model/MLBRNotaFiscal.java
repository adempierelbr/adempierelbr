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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MUser;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_LegalMessage;
import org.compiere.model.X_LBR_NCM;
import org.compiere.model.X_LBR_NFDI;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NFTax;
import org.compiere.model.X_LBR_NotaFiscal;
import org.compiere.model.X_LBR_NotaFiscalLine;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for X_LBR_NotaFiscal
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscal.java, 08/01/2008 10:56:00 mgrigioni
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal
{    
	/**
	 * 	Default Serial
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
	
	/**	RPS sem número do documento	*/
	public static final String RPS_TEMP = "RPS-TEMP";
	
	/** STRING */
	String m_NCMReference  = "";
	String m_CFOPNote      = "";
	String m_CFOPReference = "";
	String m_LegalMessage  = "";
	
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

	
	/**************************************************************************
	 *  getLines
	 *  @return MNotaFiscalLine[] lines
	 *  @deprecated
	 */
	public MLBRNotaFiscalLine[] getLines(){
		return getLines(null);
	}
	
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
	
	/**
	 * 	TODO: Replicar o campo email para a Nota Fiscal com a opção de ter um e-mail
	 * 		cadastrado para recepção de NF. Discutir se este e-mail deve ser por BP
	 * 		ou por Endereço.
	 * 
	 * @return Email
	 */
	public String getEMail()
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
	 * 	Set organization details
	 * 
	 * @param AD_Org_ID
	 */
	public void setOrgInfo (int AD_Org_ID)
	{
		MOrg org = MOrg.get(getCtx(), AD_Org_ID);
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID);
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),get_TrxName());
		MCountry orgCountry = new MCountry(getCtx(),orgLoc.getC_Country_ID(),get_TrxName());
		//
		String legalEntity = orgInfo.get_ValueAsString("lbr_LegalEntity");
		if (legalEntity == null || legalEntity.length() < 1)
			legalEntity = org.getName();
		//
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
		//
		setlbr_OrgPhone(orgInfo.get_ValueAsString("Phone"));
	}	//	setOrgInfo
	
	public void setBPartner(MBPartner bpartner, MBPartnerLocation bpLocation){
		
		if (bpartner == null || bpLocation == null)
			return;
		
		setC_BPartner_ID(bpartner.getC_BPartner_ID());   /** C_BPartner_ID **/
		setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());   /** C_BPartner_Location_ID **/
		setBPName(bpartner.getName());   //Nome Destinatário
		setlbr_BPPhone(bpLocation.getPhone());   //Telefone Destinatário

		setlbr_BPCNPJ(POLBR.getCNPJ(bpartner,bpLocation));   //CNPJ Destinatário
		setlbr_BPIE(POLBR.getIE(bpartner,bpLocation));   //IE Destinatário	
		
		MLocation location = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		setlbr_BPAddress1(location.getAddress1());   //Endereço Destinatário
		setlbr_BPAddress2(location.getAddress2());   //Endereço Destinatário
		setlbr_BPAddress3(location.getAddress3());   //Endereço Destinatário
		setlbr_BPAddress4(location.getAddress4());   //Endereço Destinatário
		setlbr_BPCity(location.getCity());   //Cidade Destinatário
		setlbr_BPPostal(location.getPostal());   //CEP Destinatário
			
		MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
		setlbr_BPRegion(region.getName());   //Estado Destinatário
			
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPCountry(country.getCountryCode());   //País Destinatário	
	} //setBPartner
	
	public void setInvoiceBPartner(MInvoice invoice){
		
		if (invoice == null)
			return;
		
		setBill_Location_ID(invoice.getC_BPartner_Location_ID());   /** InvoiceLocation_ID **/
		setC_PaymentTerm_ID(invoice.getC_PaymentTerm_ID());   /** C_PaymentTerm_ID **/
			
		MBPartnerLocation bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
		MLocation         location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		
		setlbr_BPInvoiceCNPJ(POLBR.getCNPJ(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //CNPJ Fatura
		setlbr_BPInvoiceIE(POLBR.getIE(getCtx(), invoice.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //IE Fatura
		
		setlbr_BPInvoiceAddress1(location.getAddress1());   //Endereço Fatura
		setlbr_BPInvoiceAddress2(location.getAddress2());   //Endereço Fatura
		setlbr_BPInvoiceAddress3(location.getAddress3());   //Endereço Fatura
		setlbr_BPInvoiceAddress4(location.getAddress4());   //Endereço Fatura
		setlbr_BPInvoiceCity(location.getCity());   //Cidade Fatura
		setlbr_BPInvoicePostal(location.getPostal());   //CEP Fatura
			
		MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
		setlbr_BPInvoiceRegion(region.getName());   //Estado Fatura
			
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPInvoiceCountry(country.getCountryCode());   //País Fatura
	} //setInvoiceBPartner
	
	public void setShipmentBPartner(MInOut shipment){
		
		if (shipment == null)
			return;
		
		MBPartnerLocation bpLocation = new MBPartnerLocation(getCtx(),shipment.getC_BPartner_Location_ID(),get_TrxName());
		MLocation         location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());

		setlbr_BPDeliveryCNPJ(POLBR.getCNPJ(getCtx(), shipment.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //CNPJ Entrega
		setlbr_BPDeliveryIE(POLBR.getIE(getCtx(), shipment.getC_BPartner_ID(),bpLocation.getC_BPartner_Location_ID()));   //IE Entrega
		
		setlbr_BPDeliveryAddress1(location.getAddress1());   //Endereço Entrega
		setlbr_BPDeliveryAddress2(location.getAddress2());   //Endereço Entrega
		setlbr_BPDeliveryAddress3(location.getAddress3());   //Endereço Entrega
		setlbr_BPDeliveryAddress4(location.getAddress4());   //Endereço Entrega
		setlbr_BPDeliveryCity(location.getCity());   //Cidade Entrega
		setlbr_BPDeliveryPostal(location.getPostal());   //CEP Entrega
			
		MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
		setlbr_BPDeliveryRegion(region.getName());   //Estado Entrega
			
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
		setlbr_BPDeliveryCountry(country.getCountryCode());   //País Entrega
			
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
			setlbr_BPShipperCNPJ(POLBR.getCNPJ(transp,transpLocations[0]));   //CNPJ Transportadora
			setlbr_BPShipperIE(POLBR.getIE(transp,transpLocations[0]));   //IE Transportadora
			
			setlbr_BPShipperAddress1(location.getAddress1());   //Endereço Transportadora
			setlbr_BPShipperAddress2(location.getAddress2());   //Endereço Transportadora
			setlbr_BPShipperAddress3(location.getAddress3());   //Endereço Transportadora
			setlbr_BPShipperAddress4(location.getAddress4());   //Endereço Transportadora
				
			setlbr_BPShipperCity(location.getCity());   //Cidade Transportadora
			setlbr_BPShipperPostal(location.getPostal());   //CEP Transportadora
				
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPShipperRegion(region.getName());   //Estado Transportadora
				
			MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());
			setlbr_BPShipperCountry(country.getCountryCode());   //País Transportadora
		}
		else
		{
			setlbr_BPShipperCNPJ(POLBR.getCNPJ(transp));   //CNPJ Transportadora
			setlbr_BPShipperIE(POLBR.getIE(transp));   //IE Transportadora
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
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", true, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return m_refNCM.get(ncmName).toString();	//	NCM
			}
			else
			{
				//	FIXME: Acertar o Alfabeto para AA, AB...
				String cl = TextUtil.alfab[m_refNCM.size() > 25 ? 25 : m_refNCM.size()];
				m_refNCM.put(ncmName, cl);
				setNCMReference(ncmName,cl,true);
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", true, Env.getAD_Client_ID(Env.getCtx())))
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
	 * 	Ajusta as variáveis da mensagem legal
	 * 
	 * 	@param documentNote
	 */
	public void setDocumentNote (String documentNote)
	{
		super.setDocumentNote(parse(documentNote));
	}	//	setDocumentNote
	
	/**
	 * 	Parse text
	 *	@param text text
	 *	@param po object
	 *	@return parsed text
	 */
	private String parse (String text)
	{
		if (text.indexOf('@') == -1)
			return text;
		
		String inStr = text;
		String token;
		StringBuffer outStr = new StringBuffer();

		int i = inStr.indexOf('@');
		while (i != -1)
		{
			outStr.append(inStr.substring(0, i));			// up to @
			inStr = inStr.substring(i+1, inStr.length());	// from first @

			int j = inStr.indexOf('@');						// next @
			if (j < 0)										// no second tag
			{
				inStr = "@" + inStr;
				break;
			}

			token = inStr.substring(0, j);
			outStr.append(parseVariable(token));			// replace context

			inStr = inStr.substring(j+1, inStr.length());	// from second @
			i = inStr.indexOf('@');
		}

		outStr.append(inStr);           					//	add remainder
		return outStr.toString();
	}	//	parse
	
	/**
	 * 	Parse Variable
	 *	@param variable variable
	 *	@return translated variable or if not found the original tag
	 */
	private String parseVariable (String variable)
	{
		if (variable == null || variable.indexOf('<') == -1)
			return "";
		else if (variable.contains("<lbr_TaxAmt>"))
		{
			BigDecimal tax = getTaxAmt(variable.substring(0, variable.indexOf('<')));
			//
			if (tax == null)
				tax = Env.ZERO;
			//
			return tax.setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',');
		}
		else
		{
			log.warning("Not implemented yet.");
			return "";
		}
	}	//	parseVariable
	
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
		//
		if (getPOReference() != null 
				&& !getPOReference().trim().equals(""))
			serviceDescription += "\nReferência: " + getPOReference() + "\n";
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
	
	/**
	 *  Retorno o valor da Base de ICMS
	 *  
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getICMSBase
	
	/**
	 *  Retorno o valor da Base de ICMSST
	 *  
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSBaseST()
	{
		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMSST')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getICMSBaseST
	
	/**
	 *  Retorno o valor do ICMS
	 *  
	 *  @return	BigDecimal	ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		//
		BigDecimal result = DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());
		return result == null ? Env.ZERO : result;	
	}	//	getICMSAmt
	
	/**
	 *  Retorno o valor do ICMSST
	 *  
	 *  @return	BigDecimal	ICMSST
	 */
	public BigDecimal getICMSAmtST()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMSST')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getICMSAmtST
	
	/**
	 *  Retorno o valor do IPI
	 *  
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getIPIAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor do IPI
	 *  
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getPISAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='PIS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor do IPI
	 *  
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getCOFINSAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='COFINS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor do Imposto
	 *  
	 *  @return	BigDecimal	Imposto
	 */
	public BigDecimal getTaxAmt (String taxName)
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
				"WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='"+taxName+"')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscal_ID());	
	}	//	getIPIAmt
	
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
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", true, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return m_refCFOP.get(cfopName).toString();	//	CFOP
			}
			else 
			{
				String cl = TextUtil.alfab[m_refCFOP.size() > 25 ? 25 : m_refCFOP.size()];
				m_refCFOP.put(cfopName, cl);
				setCFOPNote(cfop.getDescription() + ", ",true);
				setCFOPReference(cfopName,cl);
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", true, Env.getAD_Client_ID(Env.getCtx())))
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
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines(String orderBy){
		
		String whereClause = "LBR_NotaFiscal_ID = ?";
		
		MTable table = MTable.get(getCtx(), MLBRNotaFiscalLine.Table_Name);		
		Query query =  new Query(table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 	
	 	orderBy = POLBR.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);
		
	 	List<MLBRNotaFiscalLine> list = query.list();
		MLBRNotaFiscalLine [] teste = new MLBRNotaFiscalLine[list.size()];
	 	int i = 0;
		for (X_LBR_NotaFiscalLine notaFiscalLine : list) {
			teste[i++] = new MLBRNotaFiscalLine(Env.getCtx(), notaFiscalLine.getLBR_NotaFiscalLine_ID(), get_TrxName());
		}
		
		return teste;	
	} //getLines
	
	/**************************************************************************
	 *  lastPrinted
	 *  @return int documentno
	 */
	public int lastPrinted(){
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT max(DocumentNo) ");
		sql.append("FROM ").append(MLBRNotaFiscal.Table_Name);
		sql.append(" WHERE ").append("AD_Org_ID = ? "); //1
		sql.append("AND ").append("C_DocType_ID = ? "); //2
		sql.append("AND IsSOTrx = ? ");                 //3
		sql.append("AND IsPrinted = 'Y'");
		
		Integer documentno = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			pstmt.setInt(1, getAD_Org_ID());
			pstmt.setInt(2, getC_DocType_ID());
			pstmt.setString(3, isSOTrx() ? "Y" : "N");
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				documentno = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
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
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be sabed
	 */
	protected boolean beforeSave (boolean newRecord)
	{
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
		//
		return true;
	}	//	beforeSave
	
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
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", true, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference = cl + "-" + cfopName;
			else
				m_CFOPReference = cfopName;
		}
		else
		{
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", true, Env.getAD_Client_ID(Env.getCtx())))
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
	
	/**  
	 * UTILIZAR POLBR.getCNPJ ou POLBR.getIE
	 * @deprecated
	 */
	public String[] getCNPJ_IE(int C_BPartner_ID){
		
		String[] CNPJ_IE = {null,null};
				
		MBPartner bpartner = new MBPartner(getCtx(),C_BPartner_ID,get_TrxName());
		
		String  CNPJ = POLBR.getCNPJ(bpartner);
		String  IE   = POLBR.getIE(bpartner);
		
		CNPJ_IE[0] = CNPJ;
		CNPJ_IE[1] = IE;
		
		return CNPJ_IE;
	}//getCNPJ_IE
	
	/**************************************************************************
	 *  getTaxes
	 *  @return X_LBR_NFLineTax[] taxes
	 */
	public X_LBR_NFTax[] getTaxes(){
		
		String whereClause = "LBR_NotaFiscal_ID = ?";
		
		MTable table = MTable.get(getCtx(), X_LBR_NFTax.Table_Name);		
		Query query =  new Query(table, whereClause, get_TrxName());
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
		Query query =  new Query(table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 			
		List<X_LBR_NFDI> list = query.list();
		
		return list.toArray(new X_LBR_NFDI[list.size()]);	
	}	//	getDIs

	/**
	 * 	Encontra a NF pelo ID de NF-e
	 * 
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID " +
						"FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID=?" +
					     "AND AD_Client_ID=" + Env.getAD_Client_ID(Env.getCtx());
		//
		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql, NFeID);
		//
		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, null);
		else
			return null;
	}	//	get
	
} 	//	MLBRNotaFiscal