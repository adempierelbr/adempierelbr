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

import org.adempiere.exceptions.AdempiereException;
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
	public static final String RETAUTORIZACAO		= "NfeRetAutorizacao";
	public static final String AUTORIZACAO			= "NfeAutorizacao";
	public static final String RETRECEPCAO			= "NfeRetRecepcao";
	public static final String RECEPCAO				= "NfeRecepcao";
	public static final String RECEPCAOEVENTO		= "RecepcaoEvento";
	public static final String NFEDISTDFE			= "DistribuicaoDFe";
	public static final String DOWNLOADNFE			= "DownloadNFe";
	
	public static final String NFCE_CONSULTA 		= "NFCeConsulta"; 		// 	Consulta NFCe pela chave de acesso
	public static final String NFCE_CONSULTA_QRCODE = "NFCeConsultaQRCode"; // 	URL da consulta do QR-Code
	public static final String NFCE_STATUSSERVICO	= "NFCeStatusServico";
	public static final String NFCE_AUTORIZACAO		= "NFCeAutorizacao";
	public static final String NFCE_RETAUTORIZACAO	= "NFCeRetAutorizacao";
	public static final String NFCE_INUTILIZACAO	= "NFCeInutilizacao";

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
		return getURL(name, envType, versionNo, LBR_WSTYPE_Normal, C_Region_ID);
	}	//	getURL
	
	/**
	 * 		Retorna a URL do WebServices
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@return
	 */
	public static String getURL (String name, String envType, String versionNo, String type, int C_Region_ID)
	{
		MLBRNFeWebService ws = get (name, envType, versionNo, type, C_Region_ID);
		//
		if (ws == null)
			throw new AdempiereException ("Webservice not found for region [" + name + ", " + Integer.toString(C_Region_ID)  + "] environment [" + envType + "]");
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
		return get (name, envType, versionNo, LBR_WSTYPE_Normal, C_Region_ID);
	}	//	get
	
	/**
	 * 		Get
	 * 	@param name
	 * 	@param envType
	 * 	@param versionNo
	 * 	@param C_Region_ID
	 * 	@return
	 */
	public static MLBRNFeWebService get (String name, String envType, String versionNo, String type, int C_Region_ID)
	{
		Object[] parameters = null;
		
		String where = "UPPER(Name) LIKE ? AND lbr_NFeEnv=? AND VersionNo=? AND LBR_WSType=?";
		if (C_Region_ID > 0)
		{
			parameters = new Object[]{name.toUpperCase(), envType, versionNo, type, C_Region_ID};
			where += " AND C_Region_ID=?";
		}
		else
		{
			parameters = new Object[]{name.toUpperCase(), envType, versionNo, type};
			where += " AND C_Region_ID IS NULL";
		}
		
		return new Query (Env.getCtx(),MLBRNFeWebService.Table_Name, where, null)
						.setParameters(parameters)
						.first();
	}	//	get
}	//	MNFeWebService
