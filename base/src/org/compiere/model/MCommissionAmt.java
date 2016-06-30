/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRFormula;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.MLBRTaxName;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

/**
 *	Commission Run Amounts
 *	
 *  @author Jorg Janke
 *  @version $Id: MCommissionAmt.java,v 1.3 2006/07/30 00:51:03 jjanke Exp $
 */
public class MCommissionAmt extends X_C_CommissionAmt
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1747802539808391638L;

	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param C_CommissionAmt_ID id
	 *	@param trxName transaction
	 */
	public MCommissionAmt(Properties ctx, int C_CommissionAmt_ID, String trxName)
	{
		super(ctx, C_CommissionAmt_ID, trxName);
		if (C_CommissionAmt_ID == 0)
		{
		//	setC_CommissionRun_ID (0);
		//	setC_CommissionLine_ID (0);
			setActualQty (Env.ZERO);
			setCommissionAmt (Env.ZERO);
			setConvertedAmt (Env.ZERO);
		}
	}	//	MCommissionAmt

	/**
	 * 	Parent Constructor
	 *	@param run parent
	 *	@param C_CommissionLine_ID line
	 */
	public MCommissionAmt (MCommissionRun run, int C_CommissionLine_ID)
	{
		this (run.getCtx(), 0, run.get_TrxName());
		setClientOrg (run);
		setC_CommissionRun_ID (run.getC_CommissionRun_ID());
		setC_CommissionLine_ID (C_CommissionLine_ID);
	}	//	MCommissionAmt

	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param rs result set
	 *	@param trxName transaction
	 */
	public MCommissionAmt(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MCommissionAmt

	/**
	 * 	Get Details
	 *	@return array of details
	 */
	public MCommissionDetail[] getDetails()
	{
		final String whereClause = I_C_CommissionDetail.COLUMNNAME_C_CommissionAmt_ID+"=?";
	List<MCommissionDetail> list = new Query(getCtx(),I_C_CommissionDetail.Table_Name, whereClause, get_TrxName())
		.setParameters(getC_CommissionAmt_ID())
		.list();
		//	Convert
		MCommissionDetail[] retValue = new MCommissionDetail[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getDetails

	/**
	 * 	Calculate Commission
	 */
	
	public void calculateCommission()
	{
		//	Details List
		MCommissionDetail[] details = getDetails();

		//	Variables
		BigDecimal ConvertedAmt = Env.ZERO;
		BigDecimal ActualQty = Env.ZERO;
		BigDecimal ConvertedByFormula = Env.ZERO;
		
		//	Commission Line
		MCommissionLine cl = new MCommissionLine(getCtx(), getC_CommissionLine_ID(), get_TrxName());
		
		// Document Base Type to Calculate
		String DocBaseType = cl.getC_Commission().getDocBasisType();
		
		// Formula
		int formula_ID = cl.get_ValueAsInt("LBR_Formula_ID");
		
		//	If List Details is Not Set, Force not use the Formula
		if (!cl.getC_Commission().isListDetails())
			formula_ID = 0;
		
		//	each Detail's list
		for (int i = 0; i < details.length; i++)
		{
			MCommissionDetail detail = details[i];
			BigDecimal amt = detail.getConvertedAmt();
			BigDecimal amtFormula = Env.ZERO;;
			
			if (amt == null)
				amt = Env.ZERO;
			
			ConvertedAmt = ConvertedAmt.add(amt);
			ActualQty = ActualQty.add(detail.getActualQty());			
			
			try
			{
				//	Call Method to apply Formula on Amout
				amtFormula = CalculateFormula (formula_ID, detail, amt, DocBaseType);
			}
			catch (EvalError e)
			{
				e.printStackTrace();
			}		
			
			//	Converted Amount after appled Calculated
			ConvertedByFormula = ConvertedByFormula.add(amtFormula);
		}
		setConvertedAmt(ConvertedAmt);
		setActualQty(ActualQty);
		
		//	Qty
		BigDecimal qty = getActualQty().subtract(cl.getQtySubtract());
		if (cl.isPositiveOnly() && qty.signum() < 0)
			qty = Env.ZERO;
		qty = qty.multiply(cl.getQtyMultiplier());
		//	Amt
		BigDecimal amt = ConvertedByFormula.subtract(cl.getAmtSubtract());
		if (cl.isPositiveOnly() && amt.signum() < 0)
			amt = Env.ZERO;
		amt = amt.multiply(cl.getAmtMultiplier());
		//
		setCommissionAmt(amt.add(qty));
	}	//	calculateCommission
	
	/**
	 * Calculate Amout aplly the Formula
	 * 
	 * @param LBR_Formula_ID
	 * @param detail
	 * @param amt
	 * @return
	 * @throws EvalError
	 */
	protected BigDecimal CalculateFormula (int LBR_Formula_ID, MCommissionDetail detail, BigDecimal amt, String DocBaseType) throws EvalError
	{
		//	Formula
		MLBRFormula formula = new MLBRFormula (Env.getCtx(), LBR_Formula_ID, null);
		
		//	Return Amt Original if Formula Is Not Valid
		if (formula == null || LBR_Formula_ID == 0)
			return amt;
		
		//	Result
		BigDecimal result = Env.ZERO;
		
		//	Percent Paid when Commission is based on Receipt (Payment)
		Double percentPaid = 1.0;
		
		// Order Line / Invoice Line
		PO po;
		
		//	Commission Based on Order Or Invoice
		if (MCommission.DOCBASISTYPE_Order.equals(DocBaseType))
			po = (MOrderLine) detail.getC_OrderLine();
		else
			po = (MInvoiceLine) detail.getC_InvoiceLine();
		
		//	Commission Based on Receipt (Payment)
		if (MCommission.DOCBASISTYPE_Receipt.equals(DocBaseType))
		{
			//	Get Invoice
			MInvoice invoice = new MInvoice (Env.getCtx(), po.get_ValueAsInt("C_Invoice_ID"), null);
			//	Total Invoiced
			BigDecimal invoicetotal = invoice.getGrandTotal();
			
			//	If Total Receipt is less then Total Invoiced (Partial Payment)
			if (amt.compareTo(invoicetotal) == -1)
			{
				//	Get Percent of Amt compared to Total Invoiced
				percentPaid = ((amt.doubleValue()*100) / (invoicetotal).doubleValue()) / 100;
			}
		}
		
		//	Tax
		MLBRTax tax = new MLBRTax (Env.getCtx(), po.get_ValueAsInt("LBR_Tax_ID"), null);
		
		// Tax Calculate
		Interpreter bsh = new Interpreter ();
		
		//	Add Order Line Total Amout
		bsh.set("AMT", amt.doubleValue());
		
		// Add Order Line Total Amout
		bsh.set("PERCENT", percentPaid);
		
		//	Add Tax to Avoid Error on calculate of formula
		for (MLBRTaxName txName :MLBRTaxName.getTaxNames())
			if (formula.toString().indexOf(txName.getName().trim()) > 0)
			{
				log.finer ("Fill to ZERO, TaxName=" + txName.getName().trim() + "=0");
				bsh.set(txName.getName().trim(), 1/Math.pow (10, 17));
			}
		
		// Add Tax to Calculate
		for (MLBRTaxLine tLine : tax.getLines())
		{
			//	Tax Amount
			BigDecimal amttax = tLine.getlbr_TaxAmt();

			//	Log
			log.fine ("Set Amt, TaxName=" + tLine.getLBR_TaxName().getName().trim() + "=" + amttax);
			//	Add Tax Amout
			bsh.set(tLine.getLBR_TaxName().getName().trim(),amttax.doubleValue());
		}
		
		//	Calculate and Receive the Result
		result = new BigDecimal ((Double)bsh.eval(formula.getlbr_Formula()));
		
		// Return de Result	
		return result.setScale(2, BigDecimal.ROUND_HALF_UP);		
	}
	
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return success
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (!newRecord)
			updateRunHeader();
		return success;
	}	//	afterSave
	
	/**
	 * 	After Delete
	 *	@param success success
	 *	@return success
	 */
	protected boolean afterDelete (boolean success)
	{
		if (success)
			updateRunHeader();
		return success;
	}	//	afterDelete
	
	/**
	 * 	Update Amt Header
	 */
	private void updateRunHeader()
	{
		MCommissionRun run = new MCommissionRun(getCtx(), getC_CommissionRun_ID(),get_TrxName());
		run.updateFromAmt();
		run.save();
	}	//	updateRunHeader

}	//	MCommissionAmt