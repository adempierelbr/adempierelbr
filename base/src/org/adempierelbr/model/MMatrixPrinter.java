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

import org.compiere.model.X_LBR_MatrixPrinter;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	MMatrixPrinter
 *
 *	Model for X_LBR_MatrixPrinter
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MMatrixPrinter.java, 27/11/2008 10:24:00 mgrigioni
 */
public class MMatrixPrinter extends X_LBR_MatrixPrinter {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MMatrixPrinter.class);
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MMatrixPrinter(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MMatrixPrinter (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**************************************************************************
	 *  Get DefaultPrinter
	 *  @return int LBR_MatrixPrinter_ID
	 */
	public static int getDefaultPrinter(){
				
		Integer LBR_MatrixPrinter_ID = null;
		String sql = "SELECT LBR_MatrixPrinter_ID " +
				     "FROM LBR_MatrixPrinter " +
				     "WHERE IsDefault = 'Y' order by LBR_MatrixPrinter_ID";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql,null);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				LBR_MatrixPrinter_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_MatrixPrinter_ID == null) LBR_MatrixPrinter_ID = 0;
		
		return LBR_MatrixPrinter_ID.intValue();	
	}
			
} //MMatrixPrinter