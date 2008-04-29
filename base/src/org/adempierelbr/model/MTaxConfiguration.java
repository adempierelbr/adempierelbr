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

import org.compiere.model.X_LBR_TaxConfiguration;
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
public class MTaxConfiguration extends X_LBR_TaxConfiguration {
    
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MTaxConfiguration.class);
	
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
	public MTaxConfiguration(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	public static boolean hasSOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND IsSOTrx = 'Y' AND lbr_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasSOTrx = false;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasSOTrx = true;
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		return hasSOTrx;
	} //hasSOTrx
	
	public static boolean hasPOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND lbr_IsPOTrx = 'Y' AND lbr_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasPOTrx = false;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasPOTrx = true;
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		return hasPOTrx;
	} //hasPOTrx
		
} //MTaxConfiguration