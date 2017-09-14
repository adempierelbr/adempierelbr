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

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.util.Env;

/**
 * 		Callout para MDF-e
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: CalloutMDFe.java, v1.0 2015/08/25 4:22:29 PM, ralexsander Exp $
 */
public class CalloutMDFe extends CalloutEngine
{
	/**
	 *  	Set Driver Name from BPartner
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String setDriverName (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer) mTab.getValue("C_BPartner_ID");
		
		if (C_BPartner_ID != null && C_BPartner_ID > 0)
		{
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), C_BPartner_ID, null), I_W_C_BPartner.class);
			//
			if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(bp.getlbr_BPTypeBR()))
			{
				String name = mTab.get_ValueAsString("Name");
				String cpf = mTab.get_ValueAsString("lbr_CPF");
				
				if (name == null || name.isEmpty())
					mTab.setValue("Name", bp.getName());
				
				if (cpf == null || cpf.isEmpty())
					mTab.setValue("lbr_CPF", bp.getlbr_CPF());
			}
		}
		//
		return "";
	}	//	setDriverName

}	//	CalloutMDFe
