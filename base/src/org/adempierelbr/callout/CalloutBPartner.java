package org.adempierelbr.callout;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * CalloutBPartner
 * 
 * Callout for Table C_BPartner
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: CalloutBPartner.java, 06/02/2008 10:31:00 mgrigioni
 */
public class CalloutBPartner extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  isIEExempt
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - C_BPartner / Column lbr_IsIEExempt
	 * 
	 */
	public String isIEExempt (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		boolean lbr_IsIEExempt = (Boolean)mTab.getValue("lbr_IsIEExempt");
		
		if (lbr_IsIEExempt)
			mTab.setValue("lbr_IE", null);
		
		return "";
	}	//	isIEExempt
	
}