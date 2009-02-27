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

import org.compiere.model.X_LBR_ICMSMatrix;
import org.compiere.util.CLogger;
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
public class MICMSMatrix extends X_LBR_ICMSMatrix {
    
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
	public MICMSMatrix(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MICMSMatrix (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**************************************************************************
	 *  get Matrix_ID
	 *  @return X_LBR_TaxLine[] lines
	 */
	public static int getLBR_Tax_ID(Properties ctx, int C_Region_ID, int To_Region_ID, String trx){
		
		CLogger log = CLogger.getCLogger(MICMSMatrix.class);
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_ICMSMatrix " +
				     "WHERE C_Region_ID = ? " +
				     "AND To_Region_ID = ? " +
				     "AND AD_Client_ID = ?";

		Integer Matrix_ID = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Region_ID);
			pstmt.setInt(2, To_Region_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				Matrix_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (Matrix_ID == null) Matrix_ID = 0;
		
		return Matrix_ID.intValue();
	}
		
} //MICMSMatrix