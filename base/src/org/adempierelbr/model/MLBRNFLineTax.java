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
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;

import org.compiere.util.DB;
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
	
	/** Parent					*/
	private MLBRNotaFiscalLine			m_parent = null;
	
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
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscalLine getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscalLine(getCtx(), getLBR_NotaFiscalLine_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
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
	}	//	getTaxesDiscount
	
	/**
	 * 	Atualiza a linha da Nota Fiscal Eletrônica com os valores da partilhar de 
	 * 		ICMS entre estados para atender as normas da NT2015.003
	 * 	@return true if OK
	 */
	private boolean updateLine ()
	{
		BigDecimal taxAmt = getlbr_TaxAmt();

		//	Do nothing
		if (getLBR_TaxGroup_ID () <= 0 || !getLBR_TaxGroup().getName().contains("ICMSST")
				|| !MLBRNotaFiscal.LBR_TRANSACTIONTYPE_EndUser.equals(getParent().getParent().getlbr_TransactionType())
				|| !MLBRNotaFiscal.LBR_INDIEDEST_9_NãoContribuinte.equals(getParent().getParent().getLBR_IndIEDest())
				|| taxAmt.signum() != 1)
			return true;
		
		//	Already processed
		if (getParent().getParent().isProcessed())
			return false;

		BigDecimal partICMSRate = null;
		
		//	Check date
		if (getParent().getLBR_ICMSInterPartRate() == null
				|| getParent().getLBR_ICMSInterPartRate().compareTo(Env.ZERO) == 0)
		{
			Timestamp dateDoc = getParent().getParent().getDateDoc();
			Calendar cal = new GregorianCalendar ();
			cal.setTimeInMillis(dateDoc.getTime());
			//
			if (cal.before (new GregorianCalendar (2017, 01, 01)))		// ... -> 2016
				partICMSRate = new BigDecimal (40);
			
			else if (cal.before (new GregorianCalendar (2018, 01, 01)))	// 2017
				partICMSRate = new BigDecimal (60);
			
			else if (cal.before (new GregorianCalendar (2019, 01, 01)))	// 2018
				partICMSRate = new BigDecimal (80);
			
			else														// 2019 -> ...
				partICMSRate = new BigDecimal (100);
		}
		else
			partICMSRate = getParent().getLBR_ICMSInterPartRate();
		
		//	Apply partitioning
		BigDecimal partDest = taxAmt.multiply (partICMSRate.divide(Env.ONEHUNDRED, 2, BigDecimal.ROUND_HALF_UP));
		
		String sql = "UPDATE "
				+ MLBRNotaFiscalLine.Table_Name + " nfl "
				+ " SET " 
				+ MLBRNotaFiscalLine.COLUMNNAME_LBR_ICMSInterPartRate 	+ "=?, "
				+ MLBRNotaFiscalLine.COLUMNNAME_LBR_ICMSDestAmt 		+ "=?, "
				+ MLBRNotaFiscalLine.COLUMNNAME_LBR_ICMSIssuerAmt 		+ "=? "
				+ "WHERE " 
				+ MLBRNotaFiscalLine.COLUMNNAME_LBR_NotaFiscalLine_ID + "=" + getLBR_NotaFiscalLine_ID();
		
		int no = DB.executeUpdate(sql, new Object[]{partICMSRate, partDest, taxAmt.subtract(partDest)}, false, get_TrxName());
		if (no != 1)
			log.warning("(2) #" + no);
		return true;
	}	//	updateLine
	
	/**
	 * 	Called after Save for Post-Save Operation
	 * 	@param newRecord new record
	 *	@param success true if save operation was success
	 *	@return true if save was a success
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		return updateLine();
	}	//	afterSave
}	//	MLBRNotaFiscal
