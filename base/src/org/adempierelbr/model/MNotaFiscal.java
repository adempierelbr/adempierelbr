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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NotaFiscal;
import org.compiere.util.DB;

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
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_NotaFiscal_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MNotaFiscalLine(getCtx(),rs.getInt(1),get_TrxName()));
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}

		MNotaFiscalLine[] retValue = new MNotaFiscalLine[list.size()];
		list.toArray(retValue);
		return retValue;
		
	} //getLines
	
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
	 * 	Void Document.
	 * 	@return true if success 
	 */
	public boolean voidIt(){
		
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
			
		} //printed
		else{
			
			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", null);
			invoice.save(get_TrxName());
					
			if (getC_DocTypeTarget_ID() != 0){
				
				MDocType docType = new MDocType(getCtx(),getC_DocTypeTarget_ID(),get_TrxName());
				if (docType.getDocNoSequence_ID() != 0){
					MSequence sequence = new MSequence(getCtx(), docType.getDocNoSequence_ID(), get_TrxName());
					sequence.setCurrentNext(sequence.getCurrentNext()-1);
					sequence.save(get_TrxName());
				}
				
			}
		}
		
		setIsCancelled(true);
		return true;
	}
	
} //MNotaFiscal