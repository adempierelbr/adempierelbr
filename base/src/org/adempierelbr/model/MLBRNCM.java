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
import java.sql.Timestamp;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *		NCM Model
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *			<li> Sponsored by Soliton, www.soliton.com.br
 *	
 *	@author Mario Grigioni
 *	@version $Id: MNCM.java, 01/12/2009 11:14:00 mgrigioni
 */
public class MLBRNCM extends X_LBR_NCM
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNCM (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRNCM

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNCM (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNCM

	public static int getDefaultNCM(int AD_Client_ID)
	{

		String sql = "SELECT COALESCE(MAX(LBR_NCM_ID),0) FROM LBR_NCM "
			       + "WHERE IsDefault='Y' AND IsActive='Y' AND AD_Client_ID=?";

		int LBR_NCM_ID = DB.getSQLValue(null, sql, AD_Client_ID);

		return LBR_NCM_ID > 0 ? LBR_NCM_ID : 0;
	} //getDefaultNCM
	
	/**
	 * 		Retorna o registro mais relevante do imposto do NCM
	 * 
	 * 	@param 	Organização
	 * 	@param 	Valid From
	 * 	@return NCM Tax
	 */
	public MLBRNCMTax getLBR_Tax_ID (int AD_Org_ID, int C_Region_ID, Timestamp validFrom)
	{
		String where = "AD_Org_ID IN (0, ?) AND LBR_NCM_ID=? AND (C_Region_ID IS NULL OR C_Region_ID=?) ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom<=" + DB.TO_DATE(validFrom) + ") ";
		//
		MLBRNCMTax tcpg = new Query (Env.getCtx(), MLBRNCMTax.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_NCM_ID(), C_Region_ID})
			.setOrderBy("AD_Org_ID DESC, C_Region_ID, ValidFrom DESC")
			.first();
		//
		return tcpg;
	}	//	getLBR_Tax_ID
	
	/**
	 * 		Get NCM
	 * @author Ricardo Santana (Kenos, www.kenos.com.br)
	 * @param ctx
	 * @param LBR_NCM_ID
	 * @param dateTrx
	 * @param trxName
	 * @return
	 */
	public static MLBRNCM get (Properties ctx, String ncmName, String trxName)
	{
		String sql = "AD_Client_ID IN (0, ?)"
				+ " AND REPLACE(Value, '.', '')=? ";
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), TextUtil.toNumeric(ncmName)})
			.setOrderBy ("ORDER BY AD_Client_ID DESC")
			.first();
	}	//	get
	
	/**
	 * 	Usar a aba de imposto do NCM
	 */
	@Deprecated
	public int getLBR_Tax_ID ()
	{
		return super.getLBR_Tax_ID();
	}	//	getLBR_Tax_ID

} 	//	MLBRNCM