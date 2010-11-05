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
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MISSMatrix
 *
 *	Model for X_LBR_ISSMatrix
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MISSMatrix.java, 02/03/2008 11:40:00 mgrigioni
 */
public class MLBRISSMatrix extends X_LBR_ISSMatrix {

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
	public MLBRISSMatrix(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRISSMatrix (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**************************************************************************
	 *  get Matrix_ID
	 *  @return X_LBR_TaxLine[] lines
	 */
	public static int getLBR_Tax_ID(Properties ctx, int M_Product_ID, int C_City_ID, String trx){

		String sql = "SELECT LBR_Tax_ID FROM LBR_ISSMatrix " +
				     "WHERE (M_Product_ID IS NULL OR M_Product_ID = ?) " +
				     "AND C_City_ID = ? AND AD_Client_ID = ? " +
				     "ORDER BY M_Product_ID";

		int Matrix_ID = DB.getSQLValue(trx, sql,
				new Object[]{M_Product_ID, C_City_ID, Env.getAD_Client_ID(ctx)});

		return Matrix_ID > 0 ? Matrix_ID : 0;
	}

} //MISSMatrix