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
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.X_LBR_OtherNF;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	MOtherNF
 *
 *	Model for X_LBR_OtherNF
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MOtherNF.java, 11/12/2008 13:21:00 mgrigioni
 */
public class MOtherNF extends X_LBR_OtherNF {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MOtherNF.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MOtherNF(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	public ArrayList<Integer> getLines()
	{
		ArrayList<Integer> lineIds = new ArrayList<Integer>();
		PreparedStatement pstmt = null;
		
		StringBuffer sql = new StringBuffer();
					 sql.append("SELECT lbr_othernfline_id ")
					    .append("FROM lbr_othernfline ")
					    .append("WHERE lbr_othernf_id = ?");
		
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, getLBR_OtherNF_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				lineIds.add(rs.getInt(1));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return lineIds;
	} //getLines
		
} //MOtherNF