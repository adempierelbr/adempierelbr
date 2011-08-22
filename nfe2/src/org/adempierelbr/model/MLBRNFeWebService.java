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

import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	Model for LBR_NFeWebService
 *
 *	@author Mario Grigioni
 *	@version $Id: MNFeWebService.java,27/08/2010 17:10:00 mgrigioni Exp $
 */
public class MLBRNFeWebService extends X_LBR_NFeWebService
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNFeWebService.class);
	
	public static final String CADCONSULTACADASTRO = "NfeConsultaCadastro";
	public static final String STATUSSERVICO       = "NfeStatusServico";
	public static final String CONSULTA            = "NfeConsultaProtocolo";
	public static final String INUTILIZACAO        = "NfeInutilizacao";
	public static final String CANCELAMENTO        = "NfeCancelamento";
	public static final String RETRECEPCAO         = "NfeRetRecepcao";
	public static final String RECEPCAO            = "NfeRecepcao";
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeWebService(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeWebService (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public static String getURL (String name, String envType, String versionNo, int C_Region_ID){
		
		String sql = "SELECT URL FROM LBR_NFeWebService " +
				     "WHERE UPPER(Name) LIKE ? AND lbr_NFeEnv = ? " +
				     "AND VersionNo = ? AND C_Region_ID = ?";

		return DB.getSQLValueString(null, sql, 
				new Object[]{name.toUpperCase(),envType,versionNo,C_Region_ID});
	} //getURL
	
	public static String getSCANURL (String name, String envType, String versionNo){
		
		String sql = "SELECT URL FROM LBR_NFeWebService " +
				     "WHERE UPPER(Name) LIKE ? AND lbr_NFeEnv = ? " +
				     "AND VersionNo = ?";

		return DB.getSQLValueString(null, sql, 
				new Object[]{name.toUpperCase(),envType,versionNo});
	} //getSCANURL
	
	public static String[] getURL (String envType){
		
		String sql = "SELECT URL FROM LBR_NFeWebService " +
		             "WHERE lbr_NFeEnv = ?";
		
		ArrayList<String> list = new ArrayList<String>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, envType);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String url = rs.getString("URL");
				       url = url.substring(url.indexOf("//") + 2);
			           url = url.substring(0, url.indexOf("/"));
			    
			   if (!list.contains(url))
				   list.add(url);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		String[] retValue = new String[list.size()];
		list.toArray(retValue);
		return retValue;
	}

}	//	MNFeWebService