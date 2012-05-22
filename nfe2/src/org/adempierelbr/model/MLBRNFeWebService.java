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

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 *	Model for LBR_NFeWebService
 *
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MNFeWebService.java,27/08/2010 17:10:00 mgrigioni Exp $
 */
public class MLBRNFeWebService extends X_LBR_NFeWebService
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	public static final String CADCONSULTACADASTRO	= "NfeConsultaCadastro";
	public static final String STATUSSERVICO		= "NfeStatusServico";
	public static final String CONSULTA				= "NfeConsultaProtocolo";
	public static final String INUTILIZACAO			= "NfeInutilizacao";
	public static final String CANCELAMENTO			= "NfeCancelamento";
	public static final String RETRECEPCAO			= "NfeRetRecepcao";
	public static final String RECEPCAO				= "NfeRecepcao";
	public static final String RECEPCAOEVENTO		= "RecepcaoEvento";
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeWebService (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeWebService (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 		Retorna a URL do WebServices
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@return
	 */
	public static String getURL (String name, String envType, String versionNo, int C_Region_ID)
	{
		MLBRNFeWebService ws = get (name, envType, versionNo, C_Region_ID);
		//
		if (ws == null)
			return null;
		//
		return ws.getURL();
	}	//	getURL

	/**
	 * 		Get
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@return
	 */
	public static MLBRNFeWebService get (String name, String envType, String versionNo, int C_Region_ID)
	{
		String where = "UPPER(Name) LIKE ? AND lbr_NFeEnv=? AND VersionNo=? AND C_Region_ID=?";
		return new Query (Env.getCtx(),MLBRNFeWebService.Table_Name, where, null)
						.setParameters(new Object[]{name.toUpperCase(), envType, versionNo, C_Region_ID})
						.first();
	}	//	get
}	//	MNFeWebService
