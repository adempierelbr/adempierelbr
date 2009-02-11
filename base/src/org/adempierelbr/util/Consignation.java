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
package org.adempierelbr.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	Consignation
 *
 *	Consignation Process Suport Methods
 *	
 *	@author Alvaro Montenegro (Kenos, www.kenos.com.br)
 *	@version $Id: Consignation.java, 03/11/2007 10:13:00 amontenegro
 */
public class Consignation
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(Consignation.class);
	

	public static boolean voidConsignationLine(Integer C_InvoiceLine_ID, String trx)
	{
		int returnValue = 0;
		
		String sql = "UPDATE LBR_OtherNFLine SET IsCancelled = 'Y' WHERE C_InvoiceLine_ID = (select lbr_ori_c_invoiceline_id from lbr_processlink where lbr_dest_c_invoiceline_id = ?)";
				     		     
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
		
	}	//	getLBR_Boleto_ID
}
