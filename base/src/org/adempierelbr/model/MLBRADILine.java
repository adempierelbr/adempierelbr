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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Model
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRADILine.java, v1.0 2011/08/12 6:02:01 PM, ralexsander Exp $
 */
public class MLBRADILine extends X_LBR_ADILine
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
	public MLBRADILine (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRADILine
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRADILine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRADILine
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRADI getParent()
	{
		return new MLBRADI (Env.getCtx(), getLBR_ADI_ID(), get_TrxName());
	}	//	getParent
	
	/**
	 * 	Calcula o valor proporcional do SISCOMEX
	 * 	@return valor do siscomex
	 */
	public BigDecimal getSISCOMEX ()
	{
		MLBRADI adi = getParent();
		MLBRDI di 	= adi.getParent();
		//
		BigDecimal sDI 		= di.getlbr_SISCOMEXAmt();
		BigDecimal sADI 	= adi.getlbr_SISCOMEXAmt();
		BigDecimal total 	= Env.ZERO.setScale(17);
		//
		BigDecimal countTotal 	= new BigDecimal(di.getCount()).setScale(17);
		BigDecimal countADI 	= new BigDecimal(adi.getCount()).setScale(17);
		
		if (sDI == null || sADI == null
			|| sDI.compareTo(Env.ZERO) <= 0
			|| sADI.compareTo(Env.ZERO) <= 0
			|| countTotal.compareTo(Env.ZERO) <= 0
			|| countADI.compareTo(Env.ZERO) <= 0)
			return Env.ZERO;
		
		//	Valor da DI dividido pelo total de itens
		total = sDI.divide(countTotal, 17, BigDecimal.ROUND_HALF_UP);
		
		//	Valor da ADI dividido pelo total dos itens da ADI
		total = total.add(sADI.divide(countADI, 17, BigDecimal.ROUND_HALF_UP));
		
		return total;
	}	//	getSISCOMEX
	
	/**
	 * 	Before Delete
	 */
	protected boolean beforeDelete()
	{
		if (getLBR_ADI().getLBR_DI().isProcessed())
		{
			log.saveError("Error", Msg.getMsg(getCtx(), "CannotDelete"));
			return false;
		}
		//
		return true;
	}	//	beforeDelete
}	//	MLBRADILine