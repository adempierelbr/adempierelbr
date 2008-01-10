package org.adempierelbr.callout;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.util.Env;

/**
 * CalloutOrder
 * 
 * Callout for Table C_Order
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: CalloutOrder.java, 10/01/2008 10:44:00 mgrigioni
 */
public class CalloutOrder extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  NFDescription
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - C_Order / Column C_BPartner
	 *  FR [ 1862321 ] Observações Nota Fiscal
	 * 
	 */
	public String NFDescription (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer)mTab.getValue("C_BPartner_ID");
		
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0)
			return "";
		
		boolean isSOTrx = (Env.getContext(ctx, WindowNo, "IsSOTrx")).equalsIgnoreCase("Y");
		
		if (!isSOTrx) return "";
		
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		
		String nfDescription = bpartner.get_ValueAsString("lbr_NFDescription");
		
		mTab.setValue("lbr_NFDescription", nfDescription);
		
		return "";
	}	//	NFDescription
	
}