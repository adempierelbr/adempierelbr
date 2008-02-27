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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MTax;
import org.adempierelbr.model.MTaxBR;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NFTax;
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
	/** Produto */
	public static String taxType_Product      = X_LBR_TaxName.LBR_TAXTYPE_Product;
	/** Serviço */
	public static String taxType_Service      = X_LBR_TaxName.LBR_TAXTYPE_Service;
	/** Substituição Tributária */
	public static String taxType_Substitution = X_LBR_TaxName.LBR_TAXTYPE_Substitution;
	
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
		
		MProduct product = null;
		
		boolean isTaxIncluded = false;
		double  lineamt  = 0.0;
		
		if (isOrder){
			MOrderLine oLine = new MOrderLine(Env.getCtx(),Line_ID,trx);
			MOrder order = new MOrder(Env.getCtx(),oLine.getC_Order_ID(),trx);
			product = oLine.getProduct();
			isTaxIncluded = order.isTaxIncluded();
			lineamt = oLine.getLineNetAmt().doubleValue();
		}
		else{
			MInvoiceLine iLine = new MInvoiceLine(Env.getCtx(),Line_ID,trx);
			MInvoice invoice = new MInvoice(Env.getCtx(),iLine.getC_Invoice_ID(),trx);
			product = iLine.getProduct();
			isTaxIncluded = invoice.isTaxIncluded();
			lineamt = iLine.getLineNetAmt().doubleValue();
		}
				
		for (int i=0;i<taxes.length;i++){
			
			X_LBR_TaxName taxName = new X_LBR_TaxName(Env.getCtx(),taxes[i],trx);
			String name    = taxName.getName().trim();
			MTaxBR taxBR   = lines.get(name);
			MTaxBR s_taxBR = null;
			
			//Faz o cálculo do imposto substituto antes
			if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
				X_LBR_TaxName s_taxName = new X_LBR_TaxName(Env.getCtx(),taxName.getLBR_TaxSubstitution_ID(),trx);
				String s_name  = s_taxName.getName().trim();
				s_taxBR = lines.get(s_name);
				calculate(s_taxBR,null,product,s_taxName,lines,isTaxIncluded,lineamt,trx);
			}
			
			calculate(taxBR, s_taxBR, product,taxName,lines,isTaxIncluded,lineamt,trx);
			
		} //end for
		
	} //calculateTaxes
	
	private static void calculate(MTaxBR taxBR, MTaxBR s_taxBR, MProduct product, X_LBR_TaxName taxName, 
			Map<String, MTaxBR> lines, boolean isTaxIncluded, double lineamt, String trx) throws EvalError{
		
		if (taxBR != null){
			
			double     amt      = 0.0;
			BigDecimal substamt = Env.ZERO;
			
			if (isTaxIncluded){
				amt = calculate(taxBR.getFormulaNetWorth(),lineamt,lines);
			}
			else{
				amt = lineamt;
			}
			
			//Se o imposto for Substituição Tributária, e o produto estiver marcado
			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)){
				if (product != null && 
					POLBR.get_ValueAsBoolean(product.get_Value("lbr_HasSubstitution"))){
					
					//Valor do Imposto Substituto
					if (s_taxBR != null){
						X_LBR_TaxLine s_taxLine = new X_LBR_TaxLine(Env.getCtx(),s_taxBR.getLBR_TaxLine_ID(),trx);
						substamt = s_taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
					}
					
					//Valor + Margem de Lucro
					double profit = ((BigDecimal)product.get_Value("lbr_ProfitPercentage")).doubleValue();
					lineamt = lineamt * (1+(profit/100));
					
					if (isTaxIncluded){
						amt = calculate(taxBR.getFormulaNetWorth(),lineamt,lines);
					}
					
				}	
			}
			
			//Base de Cálculo
			double     base    = calculate(taxBR.getFormula(),amt,lines);
			BigDecimal taxbase = new BigDecimal(base = base*taxBR.getTaxBase()).setScale(scale, BigDecimal.ROUND_HALF_UP);
			
			//Valor do Imposto
			double     taxamt  = base * taxBR.getTaxRate();
			
			if (substamt.signum() == 1){
				taxamt = taxamt - substamt.doubleValue();
			}
			
			//Atualizando LBR_TaxLine
			X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxBR.getLBR_TaxLine_ID(),trx);
			taxLine.setlbr_TaxAmt(new BigDecimal(taxamt));
			taxLine.setlbr_TaxBaseAmt(taxbase);
			if (taxLine.getLBR_Tax_ID()!= 0)
				taxLine.save(trx);
			
		} //end if
	}
	
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
	
	public static BigDecimal getMOrderTaxAmt(Integer C_Order_ID, String trx){
		
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
	
	public static BigDecimal getMInvoiceTaxAmt(Integer C_Invoice_ID, String trx){
		
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
	
	public static void setNFTax(Properties ctx, int C_Invoice_ID, int LBR_NotaFiscal_ID, String trx){
		
		String sql = "SELECT t.LBR_TaxGroup_ID, SUM(it.TaxBaseAmt), SUM(it.TaxAmt) " + //1..3
			         "FROM C_InvoiceTax it " +
		             "INNER JOIN C_Tax t ON it.C_Tax_ID = t.C_Tax_ID " +
		             "WHERE C_Invoice_ID = ? " + //#1
		             "GROUP BY t.LBR_TaxGroup_ID";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ()){
				
				X_LBR_NFTax nfTax = new X_LBR_NFTax(ctx, 0, trx);
				nfTax.setLBR_TaxGroup_ID(rs.getInt(1));
				nfTax.setLBR_NotaFiscal_ID(LBR_NotaFiscal_ID);
				nfTax.setlbr_TaxBaseAmt(rs.getBigDecimal(2));
				nfTax.setlbr_TaxAmt(rs.getBigDecimal(3));
				nfTax.save(trx);
				
			}
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
	} //setNFTax
	
	// BF [ 1902926 ] NFLineTax - Falta campo Alíquota e Redução da Base
	// mgrigioni 27/02/2008, (Kenos, http://www.kenos.com.br)
	public static void setNFLineTax(Properties ctx, int C_InvoiceLine_ID, int LBR_NotaFiscalLine_ID, String trx){
		
		MInvoiceLine iLine = new MInvoiceLine(ctx,C_InvoiceLine_ID,trx);
		
		Integer[] taxName = MTaxBR.getLBR_TaxName_ID(C_InvoiceLine_ID, false, trx);
		
		for (int i=0;i<taxName.length;i++){
			
			int LBR_TaxLine_ID = MTax.getLine((Integer)iLine.get_Value("LBR_Tax_ID"),taxName[i],trx);
			if (LBR_TaxLine_ID != 0){
				
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx, LBR_TaxLine_ID, trx);
				int C_Tax_ID = MTax.getC_Tax_ID(iLine.getC_Tax_ID(), taxName[i], trx);
				if (C_Tax_ID != 0){
					
					org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,C_Tax_ID,trx);
					Integer LBR_TaxGroup_ID = (Integer)tax.get_Value("LBR_TaxGroup_ID");
					if (LBR_TaxGroup_ID != null || LBR_TaxGroup_ID.intValue() == 0){
						
						X_LBR_NFLineTax nfLineTax = new X_LBR_NFLineTax(ctx,0,trx);
						nfLineTax.setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
						nfLineTax.setLBR_NotaFiscalLine_ID(LBR_NotaFiscalLine_ID);
						nfLineTax.setlbr_TaxBaseAmt(taxLine.getlbr_TaxBaseAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						nfLineTax.setlbr_TaxAmt(taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						nfLineTax.setlbr_TaxRate(taxLine.getlbr_TaxRate().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						nfLineTax.setlbr_TaxBase(taxLine.getlbr_TaxBase().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						nfLineTax.save(trx);
						
					}//endif
					
				}//endif
				
			}//endif
			
		}//for
		
	}
		
}//TaxBR