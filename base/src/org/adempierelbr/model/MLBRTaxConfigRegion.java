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
 *	Model for Tax Configuration Region
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRTaxConfigRegion.java, v2.0 2011/10/13 2:16:18 PM, ralexsander Exp $
 */
public class MLBRTaxConfigRegion extends X_LBR_TaxConfig_Region
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
	public MLBRTaxConfigRegion (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);	
	}	//	MLBRTaxConfigRegion
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxConfigRegion (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxConfigRegion
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		return super.beforeSave(newRecord);
	}	//	beforeSave
} 	//	MLBRTaxConfigRegion