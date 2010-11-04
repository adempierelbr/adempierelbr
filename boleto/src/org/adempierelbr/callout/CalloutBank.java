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

import org.adempierelbr.model.X_LBR_Bank;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

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