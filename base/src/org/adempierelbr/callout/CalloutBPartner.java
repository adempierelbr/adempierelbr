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