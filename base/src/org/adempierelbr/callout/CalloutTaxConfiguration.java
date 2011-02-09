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

import org.adempierelbr.model.X_LBR_ICMSBasis;
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
	
	/**
	 *	Retorna a Descrição do Fundamento Legal
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
    public String fundamentosICMS (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
    	Integer LBR_ICMSBasis_ID = (Integer)value;
    	if (LBR_ICMSBasis_ID == null || LBR_ICMSBasis_ID.intValue() == 0)
    		return "";

    	X_LBR_ICMSBasis fundamento = new X_LBR_ICMSBasis(ctx,LBR_ICMSBasis_ID,null);

    	mTab.setValue("Description", fundamento.getHelp() + " - " + fundamento.getDescription());

        return "";
	}	//	fundamentosICMS
	
}