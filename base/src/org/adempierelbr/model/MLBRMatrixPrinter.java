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

/**
 *	MMatrixPrinter
 *
 *	Model for X_LBR_MatrixPrinter
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MMatrixPrinter.java, 27/11/2008 10:24:00 mgrigioni
 */
public class MLBRMatrixPrinter extends X_LBR_MatrixPrinter {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(MMatrixPrinter.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMatrixPrinter(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMatrixPrinter (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**************************************************************************
	 *  Get DefaultPrinter
	 *  @return int LBR_MatrixPrinter_ID
	 */
	public static int getDefaultPrinter(){

		String sql = "SELECT LBR_MatrixPrinter_ID " +
				     "FROM LBR_MatrixPrinter " +
				     "WHERE IsDefault = 'Y' order by LBR_MatrixPrinter_ID";

		int LBR_MatrixPrinter_ID = DB.getSQLValue(null, sql);

		return LBR_MatrixPrinter_ID > 0 ? LBR_MatrixPrinter_ID : 0;
	}

} //MMatrixPrinter