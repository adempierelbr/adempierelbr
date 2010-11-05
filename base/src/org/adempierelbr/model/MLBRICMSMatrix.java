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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.util.AdempiereLBR;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MICMSMatrix
 *
 *	Model for X_LBR_ICMSMatrix
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MICMSMatrix.java, 15/12/2007 14:50:00 mgrigioni
 */
public class MLBRICMSMatrix extends X_LBR_ICMSMatrix {

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
	public MLBRICMSMatrix(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRICMSMatrix (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	public static BigDecimal getICMSRate(Properties ctx, String regionName, String trx){

		int C_Region_ID = AdempiereLBR.getC_Region_ID(regionName, trx);
		if (C_Region_ID <= 0)
			return null;

		int LBR_Tax_ID = getLBR_Tax_ID(ctx,C_Region_ID,C_Region_ID,trx);

		String sql = "SELECT MAX(tl.lbr_TaxRate) FROM LBR_TaxLine tl " +
				     "WHERE tl.LBR_Tax_ID = ?";

		BigDecimal rate = DB.getSQLValueBD(trx, sql, LBR_Tax_ID);

		return rate != null ? rate : Env.ZERO;
	} //getICMSRate


	/**************************************************************************
	 *  get Matrix_ID
	 *  @return X_LBR_TaxLine[] lines
	 */
	public static int getLBR_Tax_ID(Properties ctx, int C_Region_ID, int To_Region_ID, String trx){

		String sql = "SELECT LBR_Tax_ID FROM LBR_ICMSMatrix " +
				     "WHERE C_Region_ID = ? AND To_Region_ID = ? " +
				     "AND AD_Client_ID = ?";

		int Matrix_ID = DB.getSQLValue(trx, sql,
				new Object[]{C_Region_ID, To_Region_ID, Env.getAD_Client_ID(ctx)});

		return Matrix_ID > 0 ? Matrix_ID : 0;
	}

} //MICMSMatrix