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

import java.util.Properties;

import org.adempierelbr.util.POLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MSequence;
import org.compiere.model.X_LBR_NotaFiscal;

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
					
			if (getM_InOut_ID() != 0){
				MInOut shipment = new MInOut(getCtx(),getM_InOut_ID(),get_TrxName());
				if (shipment.voidIt()){
					shipment.save(get_TrxName());
				}
			}
				
			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			if (invoice.voidIt()){
				invoice.save(get_TrxName());
				setIsCancelled(true);
				return true;
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
			setIsCancelled(true);
			return true;	
		}
		
		return false;
	}
	
} //MNotaFiscal