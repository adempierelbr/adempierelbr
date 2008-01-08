package org.adempierelbr.util;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MTaxBR;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

/**
 * TaxBR
 * 
 * TaxBR Utils
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: TextBR.java, 02/01/2008 08:44:00 mgrigioni
 */
public class TaxBR
{   
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(TaxBR.class);
	/** Scale           */
	public static final int scale = 2; 
	
	/**************************************************************************
	 *  calculateTaxes
	 *  
	 *  Method that calculate Brazilian Taxes using BeanShell
	 *  
	 *  @param Integer Line_ID (C_OrderLine_ID, C_InvoiceLine_ID)
	 *  @param boolean isOrder (defines if this is an Order or Invoice)
	 *  @param String trx
	 */
	public static void calculateTaxes(Integer Line_ID, boolean isOrder, String trx) throws EvalError{
		
		Integer[] taxes = MTaxBR.getLBR_TaxName_ID(Line_ID, isOrder, trx);
		
		Map<String, MTaxBR> lines = new HashMap<String, MTaxBR>();
		lines = MTaxBR.getMTaxBR(Line_ID, isOrder, trx);
		
		boolean isTaxIncluded = false;
		double  amt = 0.0;
		double  lineamt = 0.0;
		
		if (isOrder){
			MOrderLine oLine = new MOrderLine(Env.getCtx(),Line_ID,trx);
			MOrder order = new MOrder(Env.getCtx(),oLine.getC_Order_ID(),trx);
			isTaxIncluded = order.isTaxIncluded();
			lineamt = oLine.getLineNetAmt().doubleValue();
		}
		else{
			MInvoiceLine iLine = new MInvoiceLine(Env.getCtx(),Line_ID,trx);
			MInvoice invoice = new MInvoice(Env.getCtx(),iLine.getC_Invoice_ID(),trx);
			isTaxIncluded = invoice.isTaxIncluded();
			lineamt = iLine.getLineNetAmt().doubleValue();
		}
				
		for (int i=0;i<taxes.length;i++){
			
			X_LBR_TaxName taxName = new X_LBR_TaxName(Env.getCtx(),taxes[i],trx);
			String name  = taxName.getName().trim();
			MTaxBR taxBR = lines.get(name);
			if (taxBR != null){
				
				if (isTaxIncluded){
					amt = calculate(taxBR.getFormulaNetWorth(),lineamt,lines);
				}
				else{
					amt = lineamt;
				}
				
				//Base de Cálculo
				double     base    = calculate(taxBR.getFormula(),amt,lines);
				BigDecimal taxbase = new BigDecimal(base = base/taxBR.getTaxBase()).setScale(scale, BigDecimal.ROUND_HALF_UP);
				
				//Valor do Imposto
				double     taxamt  = base * taxBR.getTaxRate();
				
				//Atualizando LBR_TaxLine
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxBR.getLBR_TaxLine_ID(),trx);
				taxLine.setlbr_TaxAmt(new BigDecimal(taxamt));
				taxLine.setlbr_TaxBaseAmt(taxbase);
				taxLine.save(trx);
				
			} //end if
			
		} //end for
		
	} //calculateTaxes
	
	private static double calculate(String formula, Double amt, Map<String, MTaxBR> lines) throws EvalError{
		
		if (formula == null || formula.equals("")){
			return 0.0;
		}
		
		String[] tax   = getTaxes(formula);
		
		Interpreter interpreter = new Interpreter();
		for (int j=0;j<tax.length;j++){
			
			if (tax[j].equalsIgnoreCase("AMT")){
				interpreter.set(tax[j], amt);
			}
			else{
				MTaxBR temptaxBR = lines.get(tax[j]);
					if (temptaxBR != null){
						interpreter.set(tax[j],temptaxBR.getTaxRate());
					}
					else{
						interpreter.set(tax[j], 0.0);
					}
			}
			
		}
		
		//Fórmula
		formula = formula.replaceAll("@", "");
		
		//Base de Cálculo
		double     base    = (Double)interpreter.eval(formula);
		
		return base;
	}
	
	private static String[] getTaxes(String formula){
		
		ArrayList<String> taxes = new ArrayList<String>();
		
		int pos = 0;
		while (pos < formula.length())
		{
			int first = formula.indexOf('@', pos);
			if (first != -1){
				int second = formula.indexOf('@', first+1);
				if (second != -1){
					String tax = formula.substring(first+1, second);
					if (!taxes.contains(tax)){
						taxes.add(tax);
					}
					pos = second + 1;
				}
				else{
					pos = formula.length();
				}
			}
			else{
				pos = formula.length();
			}
		}
		
		String[] retValue = new String[taxes.size()];
		taxes.toArray(retValue);
		return retValue;
	} //getTaxes
	
	public static MOrderTax getMOrderTax(Properties ctx, Integer C_Order_ID, Integer C_Tax_ID, String trx){
		
		if (C_Order_ID == null)
			C_Order_ID = -1;
		if (C_Tax_ID == null)
			C_Tax_ID = -1;
		
		MOrderTax retValue = null;
		
		String sql = "SELECT * FROM C_OrderTax WHERE C_Order_ID=? AND C_Tax_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Order_ID);
			pstmt.setInt (2, C_Tax_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = new MOrderTax (ctx, rs, trx);
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		if (retValue == null){
			retValue = new MOrderTax(ctx,0,trx);
			retValue.setC_Order_ID(C_Order_ID);
			retValue.setC_Tax_ID(C_Tax_ID);
		}
		
		return retValue;
		
	} //getMOrderTax
	
	public static BigDecimal getMOrderTaxAmt(Properties ctx, Integer C_Order_ID, String trx){
		
		if (C_Order_ID == null)
			return Env.ZERO;
		
		BigDecimal retValue = Env.ZERO;
				
		String sql = "SELECT SUM(TaxAmt) FROM C_OrderTax WHERE C_Order_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Order_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		if (retValue == null) retValue = Env.ZERO;
		
		return retValue;
		
	} //getMOrderTaxAmt
	
	public static MInvoiceTax getMInvoiceTax(Properties ctx, Integer C_Invoice_ID, Integer C_Tax_ID, String trx){
		
		if (C_Invoice_ID == null)
			C_Invoice_ID = -1;
		if (C_Tax_ID == null)
			C_Tax_ID = -1;
		
		MInvoiceTax retValue = null;
		
		String sql = "SELECT * FROM C_InvoiceTax WHERE C_Invoice_ID=? AND C_Tax_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			pstmt.setInt (2, C_Tax_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = new MInvoiceTax (ctx, rs, trx);
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		if (retValue == null){
			retValue = new MInvoiceTax(ctx,0,trx);
			retValue.setC_Invoice_ID(C_Invoice_ID);
			retValue.setC_Tax_ID(C_Tax_ID);
		}
		
		return retValue;
	} //getMInvoiceTax
	
	public static BigDecimal getMInvoiceTaxAmt(Properties ctx, Integer C_Invoice_ID, String trx){
		
		if (C_Invoice_ID == null)
			return Env.ZERO;
		
		BigDecimal retValue = Env.ZERO;
		
		String sql = "SELECT SUM(TaxAmt) FROM C_InvoiceTax WHERE C_Invoice_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		
		if (retValue == null) retValue = Env.ZERO;
		
		return retValue;
		
	} //getMInvoiceTaxAmt
		
}//TaxBR