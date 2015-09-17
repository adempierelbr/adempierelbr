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
 * 
 * Código da Situação Tributária
 * 
 * @author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: MLBRTaxStatus.java, v1.0 2015/09/16 12:13:22, rfeitosa Exp $
 *
 */
public class MLBRTaxStatus extends X_LBR_TaxStatus
{

	/**
	 * Serial
	 */
	private static final long serialVersionUID = -6517627867259820593L;

	/**
	 * Default Constructor
	 * @param ctx
	 * @param LBR_TaxStatus_ID
	 * @param trxName
	 */
	public MLBRTaxStatus(Properties ctx, int LBR_TaxStatus_ID, String trxName)
	{
		super(ctx, LBR_TaxStatus_ID, trxName);
	}	//MLBRTaxStatus
	
	/**
	 * Load Constructor
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBRTaxStatus(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//MLBRTaxStatus
	
	/**
	 * Tax Status Name
	 * @param nfLineTax
	 * @param isSoTrx
	 * @return
	 */
	public static String getTaxStatusName(X_LBR_NFLineTax nfLineTax, Boolean isSoTrx)
	{
		if (nfLineTax == null)
			return null;
		
		if (!isSoTrx && nfLineTax.getLBR_TaxStatus().getPO_Name() != null)
			return nfLineTax.getLBR_TaxStatus().getPO_Name();
		else
			return nfLineTax.getLBR_TaxStatus().getName();
	}	//getTaxStatusName

}	//MLBRTaxStatus