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

import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		FCI
 * 
 * 	@author Mario Grigioni
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 		<li> Port to LBR and Enhancements
 *	@version $Id: MLBRProductFCI.java, v1.0 2013/10/01 4:24:29 PM, ralexsander Exp $
 */
public class MLBRProductFCI extends X_LBR_ProductFCI
{
	/**
	 *	Serial 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 *	Default Constructor
	 * 
	 * @param ctx
	 * @param LBR_ProductFCI_ID
	 * @param trxName
	 */
	public MLBRProductFCI (Properties ctx, int LBR_ProductFCI_ID, String trxName)
	{
		super (ctx, LBR_ProductFCI_ID, trxName);
	}	//	MLBRProductFCI

	/**
	 * 	Get Actual FCI
	 * 
	 * @param M_Product_ID
	 * @param trxName
	 * @return
	 */
	public static MLBRProductFCI getActual (int M_Product_ID, int AD_Org_ID, String trxName)
	{
		return getActual (M_Product_ID, AD_Org_ID, null, trxName);
	}	//	getActual
	
	/**
	 * 	Get Actual FCI
	 * 
	 * @param M_Product_ID
	 * @param trxName
	 * @return
	 */
	public static MLBRProductFCI getActual (int M_Product_ID, int AD_Org_ID, Timestamp until, String trxName)
	{
		String sql = "SELECT MAX(f.LBR_ProductFCI_ID) " +
				"FROM LBR_ProductFCI f, C_Period p " +
				"WHERE f.C_Period_ID=p.C_Period_ID AND f.AD_Org_ID IN (0, ?) " +
				"AND f.IsActive='Y' AND f.M_Product_ID=? AND f.Value NOT LIKE 'TEMP%' ";
		//
		if (until != null)
			sql += " AND p.StartDate <= " + DB.TO_DATE (until);
		
		int LBR_ProductFCI_ID = DB.getSQLValue (trxName, sql, AD_Org_ID, M_Product_ID);
		return LBR_ProductFCI_ID > 0 ? new MLBRProductFCI (Env.getCtx(), LBR_ProductFCI_ID, trxName) : null;
	}	//	getActual

	/**
	 * 	Before Save
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (getValue() == null
				|| !getValue().matches("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"))
		{
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ @LBR_FCIValue@"));
			return false;
		}
		
		setValue(getValue().toUpperCase());
		return super.beforeSave(newRecord);
	}	//	beforeSave
}	//	MLBRProductFCI
