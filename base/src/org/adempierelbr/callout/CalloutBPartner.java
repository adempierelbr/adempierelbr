/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * 	Callout for Business Partner table
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutBPartner.java, 2015/08/20 10:44:00 ralexsander $
 */
public class CalloutBPartner extends CalloutEngine
{
	/**
	 *  	Reset the Valid flag when BP Type is changed
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String changeBPType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		mTab.setValue(I_W_C_BPartner.COLUMNNAME_lbr_BPTypeBRIsValid, false);
		return "";
	}	//	changeBPType
}	//	CalloutBPartner
