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

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * NBS Model
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: MLBRNBS.java, v1.0 2017/01/17 11:29:20, kenos_rfeitosa Exp $
 *
 */
public class MLBRNBS extends X_LBR_NBS
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_NBS_ID
	 * @param trxName
	 */
	public MLBRNBS(Properties ctx, int LBR_NBS_ID, String trxName)
	{
		super(ctx, LBR_NBS_ID, trxName);
	}
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRNBS (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNCM
	
	/**
	 * 		Get NBS
	 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
	 * @param ctx
	 * @param nbsName
	 * @param trxName
	 * @return
	 */
	public static MLBRNBS get (Properties ctx, String nbsName, String trxName)
	{
		String sql = "AD_Client_ID IN (0, ?)"
				+ " AND REPLACE(Value, '.', '')=? ";
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), TextUtil.toNumeric(nbsName)})
			.setOrderBy ("ORDER BY AD_Client_ID DESC")
			.first();
	}	//	get

}
