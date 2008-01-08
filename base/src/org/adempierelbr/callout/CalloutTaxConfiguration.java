package org.adempierelbr.callout;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * CalloutTaxConfiguration
 * 
 * Callout for Table LBR_TaxConfiguration
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: CalloutTaxConfiguration.java, 11/12/2007 10:59:00 mgrigioni
 */
public class CalloutTaxConfiguration extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  ExceptionType
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_TaxConfiguration / Column lbr_ExceptionType
	 * 
	 */
	public String exceptionType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		String type = null;
		type = (String)mTab.getValue("lbr_ExceptionType");
		if (type == null || type.equals("")) {
			
			mTab.setValue("M_Product_ID", null);
			mTab.setValue("LBR_FiscalGroup_Product_ID", null);
			
			return "";
		}
		
		if (type.equalsIgnoreCase("P")){ //Produto
			mTab.setValue("LBR_FiscalGroup_Product_ID", null);
		}
		else { //Grupo de Tributação
			mTab.setValue("M_Product_ID", null);
		}
		
		return "";
	}	//	exceptionType
	
}