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

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MTax;
import org.compiere.util.Env;

/**
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFLineTax.java, v1.0 2011/10/17 1:53:04 AM, ralexsander Exp $
 */
public class MLBRNFTax extends X_LBR_NFTax
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
	public MLBRNFTax (Properties ctx, int ID, String trxName)
	{
		super(ctx, ID, trxName);
	}	//	MLBRNFLineTax

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFLineTax
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFTax (MLBRNotaFiscal nfl)
	{
		super(nfl.getCtx(), 0, nfl.get_TrxName());
		//
		setLBR_NotaFiscal_ID(nfl.getLBR_NotaFiscal_ID());
	}	//	MLBRNFLineTax
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt)
	{
		if (lbr_TaxAmt == null)
			lbr_TaxAmt = Env.ZERO;
		//
		super.setlbr_TaxAmt (lbr_TaxAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setlbr_TaxAmt
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt)
	{
		if (lbr_TaxBaseAmt == null)
			lbr_TaxBaseAmt = Env.ZERO;
		//
		super.setlbr_TaxBaseAmt (lbr_TaxBaseAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setlbr_TaxBaseAmt
	
	/**
	 * 		Grava os impostos
	 * 	@param tl
	 */
	public void setTaxes (MInvoiceTax it)
	{
		if (it == null)
			return;
		//
		I_W_C_Tax tax = POWrapper.create (new MTax (getCtx(), it.getC_Tax_ID(), null), I_W_C_Tax.class);
		Boolean hasWithhold = false;
		
		//	Verifica se o imposto é de retenção para destacar na NF
		if (tax.getLBR_TaxName_ID() > 0)
		{
			MLBRTaxName tn = new MLBRTaxName (getCtx(), tax.getLBR_TaxName_ID(), null);
			hasWithhold = tn.isLBR_HasWithhold();
		}
		
		//	Caso não seja de retenção e tenha valor negativo, não deve-se destacar na NF
		//		portanto o valor é zerado
		if (it.getTaxAmt().signum() == -1 && !hasWithhold)
		{
			setlbr_TaxAmt(Env.ZERO);
			setlbr_TaxBaseAmt(Env.ZERO);
		}
		else
		{
			setlbr_TaxAmt(it.getTaxAmt());
			setlbr_TaxBaseAmt(it.getTaxBaseAmt());
		}
	}	//	setTaxes
}	//	MLBRNotaFiscal
