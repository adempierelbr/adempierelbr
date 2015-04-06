/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 		Model for X_LBR_NotaFiscalDocRef
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscalDocRef.java, v1.0 2015/04/04 16:42:25 PM, ralexsander Exp $
 */
public class MLBRNotaFiscalDocRef extends X_LBR_NotaFiscalDocRef
{	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscalDocRef (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);	
	}	//	MLBRADI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalDocRef (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRADI

	/**
	 * Get records limited by org and partner
	 * @param AD_Org_ID
	 * @param C_BPartner_ID
	 * @return
	 */
	public static MLBRNotaFiscalDocRef[] get (int LBR_NotaFiscal_ID, String trxName)
	{
		List<Object> parameters = new ArrayList<Object>();
		parameters.add(LBR_NotaFiscal_ID);
		
		String where = "LBR_NotaFiscal_ID=?";
		
		List<MLBRNotaFiscalDocRef> list = new Query (Env.getCtx(), MLBRNotaFiscalDocRef.Table_Name, where, trxName)
			.setParameters(parameters)
			.list();
		//
		MLBRNotaFiscalDocRef[] retValue = new MLBRNotaFiscalDocRef[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	get
}	//	MLBRADI
