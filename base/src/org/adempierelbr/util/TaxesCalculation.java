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
package org.adempierelbr.util;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.adempierelbr.model.MLBRTaxIncludedList;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.adempierelbr.model.X_LBR_TaxName;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPriceList;
import org.compiere.model.MTax;
import org.compiere.model.PO;
import org.compiere.model.X_C_Order;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;

/**
 *	TaxesCalculation
 *
 *	Utility class for Taxes Calculation
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: TaxesCalculation.java, 05/02/2010 14:43:00 mgrigioni
 */
public class TaxesCalculation{

	/** Values **/
	private BigDecimal grandTotal     = Env.ZERO;
	private BigDecimal totalLines     = Env.ZERO;
	private BigDecimal taxTotalAmt    = Env.ZERO;
	private BigDecimal taxExcludedAmt = Env.ZERO;
	private BigDecimal taxSubstAmt    = Env.ZERO;

	public Map<Integer,Taxes> m_refTax = new HashMap<Integer,Taxes>();

	private Properties ctx  = null;
	private String     trx  = null;
	private boolean m_isOrder = true;

	/** Model Classes */
	private MOrder       m_order     = null;
	private MOrderLine   m_orderline = null;

	private MInvoice     m_invoice     = null;
	private MInvoiceLine m_invoiceline = null;

	//Constructors Order
	public TaxesCalculation(MOrder order){
		this.m_isOrder = true;
		this.m_order = order;
		this.ctx = order.getCtx();
		this.trx = order.get_TrxName();
	}

	public TaxesCalculation(MOrderLine oLine){
		this.m_isOrder = true;
		this.m_orderline = oLine;
		this.ctx = oLine.getCtx();
		this.trx = oLine.get_TrxName();

		this.m_order = new MOrder(ctx,oLine.getC_Order_ID(),trx);
	}

	//Constructors Invoice
	public TaxesCalculation(MInvoice invoice){
		m_isOrder = false;
		m_invoice = invoice;
		this.ctx = invoice.getCtx();
		this.trx = invoice.get_TrxName();
	}

	public TaxesCalculation(MInvoiceLine iLine){
		m_isOrder = false;
		m_invoiceline= iLine;
		this.ctx = iLine.getCtx();
		this.trx = iLine.get_TrxName();

		this.m_invoice = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
	}

	private void clearValues(){
		grandTotal     = Env.ZERO;
		totalLines     = Env.ZERO;
		taxTotalAmt    = Env.ZERO;
		taxExcludedAmt = Env.ZERO;
		taxSubstAmt    = Env.ZERO;

		m_refTax = new HashMap<Integer,Taxes>();
	}

	private void setLine(PO line){
		if (m_isOrder)
			m_orderline = (MOrderLine)line;
		else
			m_invoiceline = (MInvoiceLine)line;
	}

	private MPriceList getMPriceList(){
		if (m_isOrder)
			return new MPriceList(ctx,m_order.getM_PriceList_ID(),trx);
		else
			return new MPriceList(ctx,m_invoice.getM_PriceList_ID(),trx);
	}

	private MTax getMTax(){
		if (m_isOrder)
			return new MTax(ctx,m_orderline.getC_Tax_ID(),trx);
		else
			return new MTax(ctx,m_invoiceline.getC_Tax_ID(),trx);
	}

	private PO[] getLines(){
		if (m_isOrder)
			return m_order.getLines();
		else
			return m_invoice.getLines();
	}

	private int getDocument_ID(){
		if (m_isOrder)
			return m_order.get_ID();
		else
			return m_invoice.get_ID();
	}

	private BigDecimal getDocTotalLines(){
		return TaxBR.getTotalLinesAmt(getDocument_ID(), m_isOrder, trx);
	}

	private int getLine_ID(){
		if (m_isOrder)
			return m_orderline.get_ID();
		else
			return m_invoiceline.get_ID();
	}

	private boolean isTaxIncluded(){
		if (m_isOrder)
			return m_order.isTaxIncluded();
		else
			return m_invoice.isTaxIncluded();
	}

	private boolean saveDocTax(){

		Collection<Taxes> taxes = m_refTax.values();
		for (Taxes tax : taxes){

			if (tax.getTaxAmt().signum() == 0) //DO NOT SAVE WHEN TaxAmt = 0
				continue;

			if (m_isOrder){
				MOrderTax oTax = TaxBR.getMOrderTax(ctx, getDocument_ID(), tax.getC_Tax_ID(), trx);
				oTax.setAD_Org_ID(m_order.getAD_Org_ID());
				oTax.setTaxAmt(tax.getTaxAmt().setScale(TaxBR.SCALE, TaxBR.ROUND));
				oTax.setTaxBaseAmt(tax.getTaxBaseAmt().setScale(TaxBR.SCALE, TaxBR.ROUND));
				oTax.setIsTaxIncluded(isTaxIncluded());
				if (!oTax.save(trx)) return false;
			}
			else{
				MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx, getDocument_ID(), tax.getC_Tax_ID(), trx);
				iTax.setAD_Org_ID(m_invoice.getAD_Org_ID());
				iTax.setTaxAmt(tax.getTaxAmt().setScale(TaxBR.SCALE, TaxBR.ROUND));
				iTax.setTaxBaseAmt(tax.getTaxBaseAmt().setScale(TaxBR.SCALE, TaxBR.ROUND));
				iTax.setIsTaxIncluded(isTaxIncluded());
				if (!iTax.save(trx)) return false;
			}
		} //loop Taxes

		return true;
	} //saveDocTax

	private boolean saveTaxLineAmt(int C_InvoiceLine_ID, BigDecimal TaxAmt, boolean IsTaxIncluded){

		String sql = "UPDATE C_InvoiceLine SET TaxAmt = " + TaxAmt;

		if (!IsTaxIncluded)
			 sql += ", LineTotalAmt = LineNetAmt + " + TaxAmt;

		sql += " WHERE C_InvoiceLine_ID = " + C_InvoiceLine_ID;

		if (DB.executeUpdate(sql, trx) == -1)
			return false;

		return true;
	} //saveTaxLineAmt

	private boolean updateHeaderValues(int Doc_ID, BigDecimal TotalLines, BigDecimal GrandTotal){

		String sql = "SET GrandTotal = ? , TotalLines = ?";

		if (m_isOrder){
			sql = "UPDATE C_Order " + sql + " WHERE C_Order_ID = ?";
		}
		else{
			sql = "UPDATE C_Invoice " + sql + "WHERE C_Invoice_ID = ?";
		}


		if (DB.executeUpdate(sql, new Object[]{GrandTotal,TotalLines,Doc_ID}, false, trx) == -1)
			return false;

		return true;
	} //updateHeaderValues

	public void modelChange() throws EvalError{
		modelChange(true);
	}

	public void modelChange(boolean saveTax) throws EvalError{

		if (m_orderline == null && m_invoiceline == null)
			return;

		MPriceList pList = getMPriceList();
		clearValues();

		if (saveTax){
			TaxBR.deleteAllTax(getDocument_ID(), m_isOrder, trx);
		}

		boolean brazilianlist = pList.get_ValueAsBoolean("lbr_BrazilianPriceList");
		ArrayList<Integer> tIncluded = new ArrayList<Integer>();
		if (brazilianlist){
			tIncluded = MLBRTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		}

		MTax tax = getMTax();

		if (tax.isSummary()){

			//CALCULATE ONLY THE CURRENT ROW
			TaxBR.calculateTaxes(getLine_ID(), m_isOrder, trx);

			PO[] lines = getLines();

			for (PO line : lines)
			{
				int LBR_Tax_ID = line.get_ValueAsInt("LBR_Tax_ID");
				if (LBR_Tax_ID > 0){

					Map<Integer,X_LBR_TaxLine> lTaxes = MLBRTax.getLines(ctx, LBR_Tax_ID, trx);
					MTax cTaxes[] = tax.getChildTaxes(false);
					for(MTax cTax : cTaxes){

						int LBR_TaxName_ID = cTax.get_ValueAsInt("LBR_TaxName_ID");

						if (lTaxes.containsKey(LBR_TaxName_ID)) {

							X_LBR_TaxLine taxLine = lTaxes.get(LBR_TaxName_ID);
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
							int        C_Tax_ID       = cTax.get_ID();

							BigDecimal taxLineAmt = taxLine.getlbr_TaxAmt();
							BigDecimal taxLineBaseAmt = taxLine.getlbr_TaxBaseAmt();

							if(taxName.isHasWithHold())
								taxLineAmt = taxLineAmt.negate();

							//START POST TAX
							Taxes aux = new Taxes(C_Tax_ID,Env.ZERO,Env.ZERO);

							if (m_refTax.containsKey(C_Tax_ID)){
								aux = m_refTax.get(C_Tax_ID);
							}

							aux.setTaxAmt(aux.getTaxAmt().add(taxLineAmt));
							aux.setTaxBaseAmt(aux.getTaxBaseAmt().add(taxLineBaseAmt));

							m_refTax.put(C_Tax_ID, aux);
							//END POST TAX

							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								taxExcludedAmt = taxExcludedAmt.add(taxLineAmt);
							}

							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								taxSubstAmt = taxSubstAmt.add(taxLineAmt);
							}

							taxTotalAmt = taxTotalAmt.add(taxLineAmt);
						}
					} //end for child taxes

				} //LBR_Tax_ID not null

			} //end for order lines

			//Precisão
			taxTotalAmt    = taxTotalAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
			taxExcludedAmt = taxExcludedAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
			taxSubstAmt    = taxSubstAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);

			boolean isTaxIncluded = isTaxIncluded();
			totalLines = getDocTotalLines();

			if (isTaxIncluded){
				grandTotal = totalLines.add(taxExcludedAmt);
			}
			else{
				grandTotal = totalLines.add(taxTotalAmt);
			}


			if (saveTax){
				if(m_isOrder){
					updateHeaderValues(m_order.get_ID(),totalLines,grandTotal);
				}
				else{
					updateHeaderValues(m_invoice.get_ID(),totalLines,grandTotal);
				}
			}
		} //isSummary

		if (saveTax){
			saveDocTax();
		}
	} //modelChange

	public void docValidate(int timing) throws EvalError{

		if (m_order == null && m_invoice == null)
			return;

		//Speedup - Does not need to calculate if PO and Approved
		if (m_isOrder){
			if (!m_order.isSOTrx() && m_order.getDocStatus().equals(X_C_Order.DOCSTATUS_Approved))
				return;
		}

		MPriceList pList = getMPriceList();
		clearValues();

		boolean brazilianlist = pList.get_ValueAsBoolean("lbr_BrazilianPriceList");
		ArrayList<Integer> tIncluded = new ArrayList<Integer>();
		if (brazilianlist){
			tIncluded = MLBRTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		}

		TaxBR.deleteAllTax(getDocument_ID(), m_isOrder, trx);

		PO[] lines = getLines();

		for (PO line : lines) {

			BigDecimal TaxLineAmt = Env.ZERO;

			setLine(line);
			MTax tax = getMTax();

			if (tax.isSummary()){

				int LBR_Tax_ID = line.get_ValueAsInt("LBR_Tax_ID");
				if (LBR_Tax_ID > 0){

					//CALCULATE THE CURRENT ROW
					TaxBR.calculateTaxes(getLine_ID(), m_isOrder, trx);

					Map<Integer,X_LBR_TaxLine> lTaxes = MLBRTax.getLines(ctx, LBR_Tax_ID, trx);
					MTax cTaxes[] = tax.getChildTaxes(false);
					for(MTax cTax : cTaxes){

						int LBR_TaxName_ID = cTax.get_ValueAsInt("LBR_TaxName_ID");

						if (lTaxes.containsKey(LBR_TaxName_ID)) {

							X_LBR_TaxLine taxLine = lTaxes.get(LBR_TaxName_ID);
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);

							int        C_Tax_ID       = cTax.get_ID();
							BigDecimal taxLineAmt     = taxLine.getlbr_TaxAmt();
							BigDecimal taxLineBaseAmt = taxLine.getlbr_TaxBaseAmt();

							//Verifica se o Imposto deve ser Contabilizado
							if (taxLine.islbr_PostTax())
							{
								Taxes aux = new Taxes(C_Tax_ID,Env.ZERO,Env.ZERO);

								if (m_refTax.containsKey(C_Tax_ID)){
									aux = m_refTax.get(C_Tax_ID);
								}

								aux.setTaxAmt(aux.getTaxAmt().add(taxLineAmt));
								aux.setTaxBaseAmt(aux.getTaxBaseAmt().add(taxLineBaseAmt));

								m_refTax.put(C_Tax_ID, aux);
							} // postTax

							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								taxExcludedAmt = taxExcludedAmt.add(taxLineAmt);
							}

							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								taxSubstAmt = taxSubstAmt.add(taxLineAmt);
							}

							taxTotalAmt = taxTotalAmt.add(taxLineAmt);
							TaxLineAmt  = TaxLineAmt.add(taxLineAmt);
						}

					} //end for child taxes

				} //LBR_Tax_ID not null

			} //summary tax

			if (!m_isOrder){
				saveTaxLineAmt(line.get_ID(),TaxLineAmt.setScale(TaxBR.SCALE, TaxBR.ROUND), isTaxIncluded());
			}

		} //end for order lines

		//Precisão
		taxTotalAmt    = taxTotalAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
		taxExcludedAmt = taxExcludedAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
		taxSubstAmt    = taxSubstAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);

		boolean isTaxIncluded = isTaxIncluded();
		totalLines = getDocTotalLines();

		if (isTaxIncluded){
			grandTotal = totalLines.add(taxExcludedAmt);
		}
		else{
			grandTotal = totalLines.add(taxTotalAmt);
		}

		if(m_isOrder){
			m_order.setTotalLines(totalLines);
			m_order.setGrandTotal(grandTotal);
			m_order.save(trx);
		}
		else{
			m_invoice.setTotalLines(totalLines);
			m_invoice.setGrandTotal(grandTotal);
			m_invoice.save(trx);
		}

		saveDocTax();
	} //docValidate


	/** SET AND GET **/
	public BigDecimal getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(BigDecimal grandTotal) {
		this.grandTotal = grandTotal;
	}

	public BigDecimal getTotalLines() {
		return totalLines;
	}

	public void setTotalLines(BigDecimal totalLines) {
		this.totalLines = totalLines;
	}

	public BigDecimal getTaxTotalAmt() {
		return taxTotalAmt;
	}

	public void setTaxTotalAmt(BigDecimal taxTotalAmt) {
		this.taxTotalAmt = taxTotalAmt;
	}

	public BigDecimal getTaxExcludedAmt() {
		return taxExcludedAmt;
	}

	public void setTaxExcludedAmt(BigDecimal taxExcludedAmt) {
		this.taxExcludedAmt = taxExcludedAmt;
	}

	public BigDecimal getTaxSubstAmt() {
		return taxSubstAmt;
	}

	public void setTaxSubstAmt(BigDecimal taxSubstAmt) {
		this.taxSubstAmt = taxSubstAmt;
	}

	public boolean isOrder() {
		return m_isOrder;
	}

	public void setOrder(boolean isOrder) {
		this.m_isOrder = isOrder;
	}

} //TaxesCalculation

class Taxes{

	private int        C_Tax_ID   = 0;
	private BigDecimal TaxAmt     = Env.ZERO;
	private BigDecimal TaxBaseAmt = Env.ZERO;

	Taxes(int C_Tax_ID, BigDecimal TaxAmt, BigDecimal TaxBaseAmt){
		this.C_Tax_ID   = C_Tax_ID;
		this.TaxAmt     = TaxAmt;
		this.TaxBaseAmt = TaxBaseAmt;
	}

	public int getC_Tax_ID(){
		return this.C_Tax_ID;
	}

	public BigDecimal getTaxAmt(){
		return this.TaxAmt;
	}

	public void setTaxAmt(BigDecimal taxAmt){
		this.TaxAmt = taxAmt;
	}

	public BigDecimal getTaxBaseAmt(){
		return this.TaxBaseAmt;
	}

	public void setTaxBaseAmt(BigDecimal taxBaseAmt){
		this.TaxBaseAmt = taxBaseAmt;
	}

} //Taxes