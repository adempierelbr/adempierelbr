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
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MConversionRate;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.X_LBR_NotaFiscal;
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

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNotaFiscal(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**************************************************************************
	 *  getLines
	 *  @return MNotaFiscalLine[] lines
	 */
	public MNotaFiscalLine[] getLines(){
		
		String sql = "SELECT LBR_NotaFiscalLine_ID " + //1
		 			 "FROM LBR_NotaFiscalLine " +
		 			 "WHERE LBR_NotaFiscal_ID = ? "; //*1

		ArrayList<MNotaFiscalLine> list = new ArrayList<MNotaFiscalLine>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_NotaFiscal_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MNotaFiscalLine(getCtx(),rs.getInt(1),get_TrxName()));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		MNotaFiscalLine[] retValue = new MNotaFiscalLine[list.size()];
		list.toArray(retValue);
		return retValue;
		
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
	
	public String[] getCNPJ_IE(int C_BPartner_ID){
		
		String[] CNPJ_IE = {null,null};
		
		String  CNPJ = null;
		String  IE   = null;
		
		MBPartner bpartner = new MBPartner(getCtx(),C_BPartner_ID,get_TrxName());
				
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");
		
		if (!(BPTypeBR == null || BPTypeBR.equals(""))){
		
			if (BPTypeBR.equalsIgnoreCase("PJ")){
				CNPJ = bpartner.get_ValueAsString("lbr_CNPJ");   //CNPJ
				
				boolean isIEExempt = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_IsIEExempt"));
							
				if (isIEExempt){
					IE = "ISENTO";
				}
				else{
					IE = bpartner.get_ValueAsString("lbr_IE");
				}
				
			}
			else if (BPTypeBR.equalsIgnoreCase("PF")){
				CNPJ = bpartner.get_ValueAsString("lbr_CPF");   //CNPJ = CPF
				IE = "ISENTO";   //IE = ISENTO
			}
			
		}
		
		CNPJ_IE[0] = CNPJ;
		CNPJ_IE[1] = IE;
		
		return CNPJ_IE;
	
	}//getCNPJ_IE
	
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
				else return false;
			
			if (getM_InOut_ID() != 0){
				MInOut shipment = new MInOut(getCtx(),getM_InOut_ID(),get_TrxName());
				if (shipment.getDocStatus().equals(MInOut.DOCSTATUS_Voided) || //Already Voided
				    shipment.getDocStatus().equals(MInOut.DOCSTATUS_Reversed))
						;
				else
					if (shipment.voidIt()){
						shipment.save(get_TrxName());
					}
					else return false;
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
	
} //MNotaFiscal