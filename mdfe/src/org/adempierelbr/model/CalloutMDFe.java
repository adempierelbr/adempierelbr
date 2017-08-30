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
package org.adempierelbr.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MCity;

/**
 * 		Callout MDFe
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CalloutMDFe.java, v1.0 2014/01/30 21:53:32 PM, ralexsander Exp $
 */
public class CalloutMDFe extends CalloutEngine
{
	/**
	 * 	Limpa os valores do campo Cidade, ao alterar o campo Estado
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String clearCity (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		mTab.setValue (MCity.COLUMNNAME_C_City_ID, null);
		//
		return "";
	}	//	clearCity
	
	/**
	 * 	Ajusta o campo de Ação do Documento para Anular
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String setVoid (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (value == null || value.toString().isEmpty())
			mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Close);
		else
			mTab.setValue (MLBRMDFe.COLUMNNAME_DocAction, MLBRMDFe.DOCACTION_Void);
		//
		return "";
	}	//	setVoid
}	//	CalloutMDFe
