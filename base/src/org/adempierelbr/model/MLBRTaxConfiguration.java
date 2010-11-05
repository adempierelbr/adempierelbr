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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MTaxConfiguration
 *
 *	Model for X_LBR_TaxConfiguration
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTaxConfiguration.java, 29/04/2008 09:02:00 mgrigioni
 */
public class MLBRTaxConfiguration extends X_LBR_TaxConfiguration {
    
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRTaxConfiguration.class);
	
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
	public MLBRTaxConfiguration(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxConfiguration (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public static boolean hasSOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND IsSOTrx = 'Y'";
		
		if (M_Product_ID == 0 && LBR_FiscalGroup_Product_ID == 0)
			sql += " AND lbr_ExceptionType IS NULL";
		else
			sql += " AND lbr_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasSOTrx = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasSOTrx = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return hasSOTrx;
	} //hasSOTrx
	
	public static boolean hasPOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND lbr_IsPOTrx = 'Y'";
		
		if (M_Product_ID == 0 && LBR_FiscalGroup_Product_ID == 0)
			sql += " AND lbr_ExceptionType IS NULL";
		else
			sql += " AND lbr_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasPOTrx = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasPOTrx = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return hasPOTrx;
	} //hasPOTrx
		
} //MTaxConfiguration