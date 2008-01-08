package org.adempierelbr.callout.boleto;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.X_LBR_Bank;

/**
 * CalloutBank
 * 
 * Callout for Table C_Bank
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: CalloutBank.java, 07/11/2007 12:25:02 mgrigioni
 */
public class CalloutBank extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  Brazilian Banks
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - C_Bank_ID / Column LBR_Bank_ID
	 * 
	 */
	public String getRoutingNo (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_Bank_ID = null;
		LBR_Bank_ID = (Integer)mTab.getValue("LBR_Bank_ID");
		if (LBR_Bank_ID == null || LBR_Bank_ID.intValue() == 0) return "";
		
		X_LBR_Bank Banco = new X_LBR_Bank(ctx,LBR_Bank_ID,null);
		String RoutingNo = Banco.getRoutingNo();
		String Name      = Banco.getName();
		
		mTab.setValue("RoutingNo", RoutingNo);
		mTab.setValue("Name", Name);
		
		return "";
	}	//	getRoutingNo
	
}