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

import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNCM;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * CalloutNF
 * 
 * Callout for Table LBR_NotaFiscal and LBR_NotaFiscalLine
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: CalloutNF.java, 22/02/2011 14:37:00 mgrigioni
 */
public class CalloutNF extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  setCFOP
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_NotaFiscalLine / Column LBR_CFOP_ID
	 * 
	 */
	public String setCFOP (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_CFOP_ID = (Integer)mField.getValue();
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return "";
		
		MLBRCFOP cfop = new MLBRCFOP(ctx,LBR_CFOP_ID,null);
		mTab.setValue("lbr_CFOPName", cfop.getValue());
		
		return "";
	}	// setCFOP
	
	/**
	 *  setNCM
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_NotaFiscalLine / Column LBR_NCM_ID
	 * 
	 */
	public String setNCM (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_NCM_ID = (Integer)mField.getValue();
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return "";
		
		MLBRNCM ncm = new MLBRNCM(ctx,LBR_NCM_ID,null);
		mTab.setValue("lbr_NCMName", ncm.getValue());
		
		return "";
	}	// setNCM
	
} //CalloutNF