package org.adempierelbr.model;

import java.util.Properties;

import org.compiere.model.MBPartner;
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
				
				boolean isIEExempt = false;
				
				Object oo = bpartner.get_Value("lbr_IsIEExempt");
				if (oo != null) 
				{
				 if (oo instanceof Boolean){
					 isIEExempt = ((Boolean)oo).booleanValue();
				 }
				 else isIEExempt = "Y".equals(oo);
				}
				
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
	
}