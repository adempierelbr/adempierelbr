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
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.MShipper;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_LegalMessage;
import org.compiere.model.X_LBR_NCM;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NFTax;
import org.compiere.model.X_LBR_NotaFiscal;
import org.compiere.model.X_LBR_NotaFiscalLine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MNotaFiscal
 *
 *	Model for X_LBR_NotaFiscal
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscal.java, 08/01/2008 10:56:00 mgrigioni
 */
public class MNotaFiscal extends X_LBR_NotaFiscal {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MNotaFiscal.class);
	
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
	public MNotaFiscal(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	
	/**************************************************************************
	 *  getLines
	 *  @return MNotaFiscalLine[] lines
	 *  @deprecated
	 */
	public MNotaFiscalLine[] getLines(){
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
	
	public void setOrgInfo(int AD_Org_ID){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID);
		
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

		setlbr_BPCNPJ(POLBR.getCNPJ(bpartner));   //CNPJ Destinatário
		setlbr_BPIE(POLBR.getIE(bpartner));   //IE Destinatário
		
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
			
		setlbr_BPInvoiceCNPJ(POLBR.getCNPJ(getCtx(), invoice.getC_BPartner_ID()));   //CNPJ Fatura
		setlbr_BPInvoiceIE(POLBR.getIE(getCtx(), invoice.getC_BPartner_ID()));   //IE Fatura
			
		MBPartnerLocation bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
		MLocation         location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		
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
		
		setlbr_BPDeliveryCNPJ(POLBR.getCNPJ(getCtx(), shipment.getC_BPartner_ID()));   //CNPJ Entrega
		setlbr_BPDeliveryIE(POLBR.getIE(getCtx(), shipment.getC_BPartner_ID()));   //IE Entrega
			
		MBPartnerLocation bpLocation = new MBPartnerLocation(getCtx(),shipment.getC_BPartner_Location_ID(),get_TrxName());
		MLocation         location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		
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
		
		setlbr_BPShipperCNPJ(POLBR.getCNPJ(transp));   //CNPJ Transportadora
		setlbr_BPShipperIE(POLBR.getIE(transp));   //IE Transportadora
		
		//Localização Transportadora
		MBPartnerLocation[] transpLocations = transp.getLocations(false);
		MLocation location = null;
		
		if (transpLocations.length > 0){

			location = new MLocation(getCtx(),transpLocations[0].getC_Location_ID(),get_TrxName());
			
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
		
	} //setShipper
	
	public String getNCM(Integer LBR_NCM_ID){
		
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return null;
		
		X_LBR_NCM ncm = new X_LBR_NCM(getCtx(),LBR_NCM_ID,get_TrxName());
		
		String ncmName = ncm.getValue();
		
		if (!(ncmName == null || ncmName.equals(""))){
				
			if (m_refNCM.containsKey(ncmName)){
				return m_refNCM.get(ncmName).toString();   //NCM
			}
			else {
				String cl = TextUtil.alfab[m_refNCM.size()];
				m_refNCM.put(ncmName, cl);
				setNCMReference(ncmName,cl,true);
				return cl;
			}
		}
		
		return null;
	} //getNCM
	
	public String getCFOP(Integer LBR_CFOP_ID){
		
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return null;
		
		X_LBR_CFOP cfop = new X_LBR_CFOP(getCtx(),LBR_CFOP_ID,get_TrxName());
		
		String cfopName = cfop.getValue();
		
		if (!(cfopName == null || cfopName.equals(""))){
			
			if (m_refCFOP.containsKey(cfopName)){
				return m_refCFOP.get(cfopName).toString();   //CFOP
			}
			else {
				String cl = TextUtil.alfab[m_refCFOP.size()];
				m_refCFOP.put(cfopName, cl);
				setCFOPNote(cfop.getDescription() + ", ",true);
				setCFOPReference(cfopName,cl,true);
				return cl;
			}
		}
		
		return null;	
	} //getCFOP
	
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
	public MNotaFiscalLine[] getLines(String orderBy){
		
		String whereClause = "LBR_NotaFiscal_ID = ?";
		
		MTable table = MTable.get(getCtx(), MNotaFiscalLine.Table_Name);		
		Query query =  new Query(table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 	
	 	orderBy = POLBR.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);
		
		List<MNotaFiscalLine> list = query.list();
		
		return list.toArray(new MNotaFiscalLine[list.size()]);	
	} //getLines
	
	/**************************************************************************
	 *  lastPrinted
	 *  @return int documentno
	 */
	public int lastPrinted(){
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT max(DocumentNo) ");
		sql.append("FROM ").append(MNotaFiscal.Table_Name);
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
						m_processMsg = invoice.getProcessMsg();
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

	private void setNCMReference(String ncmName, String cl, boolean concat) {
		
		if (concat){
			if (m_NCMReference.equals("")){
				m_NCMReference += "Classif: ";
			}
				
			m_NCMReference += cl + "-" + ncmName + ", ";
		}
		else{
			m_NCMReference = ncmName;
		}
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

	private void setCFOPReference(String cfopName, String cl, boolean concat) {
		if (concat){
			if (m_CFOPReference.equals("")){
				m_CFOPReference += "";
			}
				
			m_CFOPReference += cfopName + "/";
		}
		else{
			m_CFOPReference = cfopName;
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
	
} //MNotaFiscal