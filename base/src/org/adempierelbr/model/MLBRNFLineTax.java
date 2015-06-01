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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.Env;

/**
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFLineTax.java, v1.0 2011/10/17 1:53:04 AM, ralexsander Exp $
 */
public class MLBRNFLineTax extends X_LBR_NFLineTax
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -6683920438972507538L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFLineTax (Properties ctx, int ID, String trxName)
	{
		super(ctx, ID, trxName);
	}	//	MLBRNFLineTax

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFLineTax
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (MLBRNotaFiscalLine nfl)
	{
		super(nfl.getCtx(), 0, nfl.get_TrxName());
		//
		setLBR_NotaFiscalLine_ID(nfl.getLBR_NotaFiscalLine_ID());
	}	//	MLBRNFLineTax
	
	public String getTaxStatus (boolean isSOTrx)
	{
		if (getLBR_TaxStatus_ID() <= 0)
			return "";
		//
		if (!isSOTrx 
				&& getLBR_TaxStatus().getPO_Name() != null
				&& getLBR_TaxStatus().getPO_Name().length() > 0)
			return getLBR_TaxStatus().getPO_Name();
		//
		return getLBR_TaxStatus().getName();
	}	//	getTaxStatus
	
	public String getmodBC ()
	{
		if (getLBR_TaxBaseType_ID() <= 0)
			return "";
		//
		if (getLBR_TaxBaseType().getName() != null
				&& getLBR_TaxBaseType().getValue().length() > 0)
			return getLBR_TaxBaseType().getValue();
		//
		return getLBR_TaxBaseType().getValue();
	}	//	getTaxStatus
	
	/**
	 * 		Grava os impostos
	 * 	@param tl
	 */
	public void setTaxes (MLBRTaxLine tl)
	{
		if (tl == null)
			return;
		//
		setlbr_TaxAmt(tl.getlbr_TaxAmt());
		setlbr_TaxBase(tl.getlbr_TaxBase());
		setlbr_TaxBaseAmt(tl.getlbr_TaxBaseAmt());
		setlbr_TaxRate(tl.getlbr_TaxRate());
		//
		setLBR_TaxStatus_ID(tl.getLBR_TaxStatus_ID());
		setLBR_LegalMessage_ID(tl.getLBR_LegalMessage_ID());
		setLBR_TaxBaseType_ID(tl.getLBR_TaxBaseType_ID());
		setQty(tl.getQty());
		setLBR_TaxListAmt(tl.getLBR_TaxListAmt());
	}	//	setTaxes
	
	/**
	 * 	Valor dos impostos que serão destacados como desconto na NF
	 * 		Mecanismo criado para gerar NFs para Zona Franca
	 * 
	 * 	@param nota fiscal line
	 * 	@return discount amount
	 */
	public static BigDecimal getTaxesDiscount (MLBRNotaFiscalLine nfLine)
	{
		if (nfLine == null)
			return Env.ZERO;
		//
		BigDecimal taxesDiscount = Env.ZERO;
		//
		for (MLBRNFLineTax nfLineTax : nfLine.getTaxes())
		{
			if (nfLineTax.getlbr_TaxRate().compareTo(Env.ZERO) == -1)
				taxesDiscount = taxesDiscount.add (nfLineTax.getlbr_TaxAmt().abs());
		}
		//
		return taxesDiscount;
	}
}	//	MLBRNotaFiscal
