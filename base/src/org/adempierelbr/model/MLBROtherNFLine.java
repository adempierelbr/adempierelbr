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

/**
 *	MOtherNFLine
 *
 *	Model for X_LBR_OtherNFLine
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Alvaro Montenegro (Kenos, www.kenos.com.br)
 *	@version $Id: MOtherNFLine.java, 11/12/2008 13:27:00 mgrigioni
 */
public class MLBROtherNFLine extends X_LBR_OtherNFLine {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(MLBROtherNFLine.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBROtherNFLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBROtherNFLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MOtherNFLine
	
	public static boolean voidConsignationLine(Integer C_InvoiceLine_ID, String trx)
	{
		int returnValue = 0;
		
		String sql = "UPDATE LBR_OtherNFLine SET IsCancelled = 'Y' " +
				     "WHERE C_InvoiceLine_ID = " +
				     	"(SELECT lbr_ori_c_invoiceline_id " +
				     	"FROM lbr_processlink " +
				     	"WHERE lbr_dest_c_invoiceline_id = ?)";
				     		     
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_InvoiceLine_ID);
			returnValue = pstmt.executeUpdate();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return (returnValue > 0);
		
	}	//voidConsignationLine
		
} //MOtherNFLine