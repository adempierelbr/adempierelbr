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
import java.util.Properties;

/**
 *	Model for Tax Configuration Business Partner
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRTaxConfigBPartner.java, v2.0 2011/10/13 2:16:18 PM, ralexsander Exp $
 */
public class MLBRTaxConfigBPartner extends X_LBR_TaxConfig_BPartner
{	
	/**
	 * 	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxConfigBPartner (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);	
	}	//	MLBRTaxConfigBPartner
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxConfigBPartner (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxConfigBPartner
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		return super.beforeSave(newRecord);
	}	//	beforeSave
} 	//	MLBRTaxConfigBPartner