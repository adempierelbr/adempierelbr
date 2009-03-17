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
import org.compiere.model.GridTab;
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
 * @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
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
		
		Properties ctx = Env.getCtx();
		
		Integer[] taxes = MTaxBR.getLBR_TaxName_ID(Line_ID, isOrder, trx);
		
		Map<String, MTaxBR> lines = new HashMap<String, MTaxBR>();
		lines = MTaxBR.getMTaxBR(Line_ID, isOrder, trx);
		
		MProduct product = null;
		
		boolean isTaxIncluded = false;
		double  lineamt  = 0.0;
		
		if (isOrder)
		{
			MOrderLine oLine = new MOrderLine(ctx,Line_ID,trx);
			MOrder order = new MOrder(ctx,oLine.getC_Order_ID(),trx);
			product = oLine.getProduct();
			isTaxIncluded = order.isTaxIncluded();
			lineamt = (oLine.getLineNetAmt().setScale(TaxBR.scale,BigDecimal.ROUND_HALF_UP)).doubleValue();
		}
		else
		{
			MInvoiceLine iLine = new MInvoiceLine(ctx,Line_ID,trx);
			MInvoice invoice = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
			product = iLine.getProduct();
			isTaxIncluded = invoice.isTaxIncluded();
			lineamt = (iLine.getLineNetAmt().setScale(TaxBR.scale,BigDecimal.ROUND_HALF_UP)).doubleValue();
		}
				
		for (int i=0;i<taxes.length;i++)
		{
			X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxes[i],trx);
			String name    = taxName.getName().trim();
			MTaxBR taxBR   = lines.get(name);
			MTaxBR s_taxBR = null;
			
			//Faz o cálculo do imposto substituto antes
			if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution))
			{
				X_LBR_TaxName s_taxName = new X_LBR_TaxName(ctx,taxName.getLBR_TaxSubstitution_ID(),trx);
				String s_name  = s_taxName.getName().trim();
				s_taxBR = lines.get(s_name);
				calculate(s_taxBR,null,product,s_taxName,lines,isTaxIncluded,lineamt,trx);
				//Calcula o imposto substituido
				calculate(taxBR, s_taxBR, product,taxName,lines,false,lineamt,trx);
			}
			else
				calculate(taxBR, s_taxBR, product,taxName,lines,isTaxIncluded,lineamt,trx);
			
		} //end for
		
	} //calculateTaxes
	
	private static void calculate(MTaxBR taxBR, MTaxBR s_taxBR, MProduct product, X_LBR_TaxName taxName, 
			Map<String, MTaxBR> lines, boolean isTaxIncluded, double lineamt, String trx) throws EvalError{
		
		if (taxBR != null)
		{
			
			double     amt      = 0.0;
			double     factor   = 0.0;
			BigDecimal substamt = Env.ZERO;
			
			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Service))
				factor = calculate(taxBR.getServiceFactor(),lineamt,factor,lines);
			
			if (isTaxIncluded){
				amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
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
					double iva = ((BigDecimal)product.get_Value("lbr_ProfitPercentage")).doubleValue();
					lineamt = lineamt * (1+(iva/100));
					
					if (isTaxIncluded){
						amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
					}
					else
						amt = calculate(taxBR.getFormula(), lineamt, factor, lines);
					
				}	
			}
			
			//Base de Cálculo
			double     base    = calculate(taxBR.getFormula(),amt,factor,lines);
			BigDecimal taxbase = new BigDecimal(base = base*taxBR.getTaxBase()).setScale(scale, BigDecimal.ROUND_HALF_UP);
			
			//Valor do Imposto
			double     taxamt  = base * taxBR.getTaxRate();
			
			//BF (Base de Cálculo estava somando alíquotas isentas)
			if (taxBR.getTaxRate() <= 0)
				taxbase = Env.ZERO;
			
			if (substamt.signum() != 0){ //BF - Não estava funcionando os estornos
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
	
	public static BigDecimal getTaxAmt(MOrderLine ol, Boolean isTaxIncluded) throws EvalError
	{
		MTaxBR s_taxBR 		= null;
		double     amt      = 0.0;
		double     factor   = 0.0;
		double	   lineamt 	= 0.0;
		double	   totalamt = 0.0;
		BigDecimal substamt = Env.ZERO;
		Properties ctx = Env.getCtx();
		
		MProduct product = ol.getProduct();
		
		if(!isTaxIncluded)
			lineamt = ol.getPriceEntered().doubleValue();
		else
			lineamt = ((BigDecimal) ol.get_Value("PriceEnteredBR")).doubleValue();
		
		if(ol.get_Value("LBR_Tax_ID") == null)
			return Env.ZERO;
		
		MTax tx = new MTax(ctx, (Integer) ol.get_Value("LBR_Tax_ID"), null);
		X_LBR_TaxLine[] txLines = tx.getLines();
		Map<String, MTaxBR> lines = new HashMap<String, MTaxBR>();
		lines = MTaxBR.getMTaxBR(ol.getC_OrderLine_ID(), true, null);
		
		for(X_LBR_TaxLine txLine : txLines)
		{
			X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, txLine.getLBR_TaxName_ID(), null);
			MTaxBR taxBR = lines.get(taxName.getName().trim());
			
			if(taxName.getName().trim().indexOf("IPI") != -1)
				continue;
				
			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Service))
				factor = calculate(taxBR.getServiceFactor(),lineamt,factor,lines);
			
			if (isTaxIncluded){
				amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
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
						X_LBR_TaxLine s_taxLine = new X_LBR_TaxLine(Env.getCtx(),s_taxBR.getLBR_TaxLine_ID(),null);
						substamt = s_taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
					}
					
					//Valor + Margem de Lucro
					double iva = ((BigDecimal)product.get_Value("lbr_ProfitPercentage")).doubleValue();
					lineamt = lineamt * (1+(iva/100));
					
					if (isTaxIncluded)
						amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
					else
						amt = calculate(taxBR.getFormula(), lineamt, factor, lines);
					
				}
			}
			
			//Base de Cálculo
			double     base    = calculate(taxBR.getFormula(),amt,factor,lines);
			BigDecimal taxbase = new BigDecimal(base = base*taxBR.getTaxBase()).setScale(scale, BigDecimal.ROUND_HALF_UP);
			
			//Valor do Imposto
			double     taxamt  = base * taxBR.getTaxRate();
			
			//BF (Base de Cálculo estava somando alíquotas isentas)
			if (taxBR.getTaxRate() <= 0)
				taxbase = Env.ZERO;
			
			if (substamt.signum() != 0){ //BF - Não estava funcionando os estornos
				taxamt = taxamt - substamt.doubleValue();
			}
			
			//Atualizando LBR_TaxLine
			//X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxBR.getLBR_TaxLine_ID(),trx);
			//taxLine.setlbr_TaxAmt(new BigDecimal(taxamt));
			//taxLine.setlbr_TaxBaseAmt(taxbase);
			//if (taxLine.getLBR_Tax_ID()!= 0)
				//taxLine.save(trx);
			totalamt = totalamt + taxamt;
		}
		 //end if
		return new BigDecimal(totalamt);
	}

	public static BigDecimal getTaxAmt(GridTab mTab, String trxType, Boolean isTaxIncluded) throws EvalError
	{
		MTaxBR s_taxBR 		= null;
		double     amt      = 0.0;
		double     rateIPI   = 0.0;
		double     factor   = 0.0;
		double	   lineamt 	= 0.0;
		double	   totalamt = 0.0;
		double     totalipi = 0.0;
		BigDecimal substamt = Env.ZERO;
		Properties ctx = Env.getCtx();
		
		MProduct product = new MProduct(ctx, (Integer) mTab.getValue("M_Product_ID"), null);
		
		if(!isTaxIncluded)
			lineamt = ((BigDecimal) mTab.getValue("PriceEntered")).doubleValue();
		else
			lineamt = ((BigDecimal) mTab.getValue("PriceEnteredBR")).doubleValue();
		
		if(mTab.getValue("LBR_Tax_ID") == null
				|| mTab.getValue("C_Tax_ID") == null)
			return Env.ZERO;
		
		Integer C_Tax_ID = (Integer) mTab.getValue("C_Tax_ID");
		Integer LBR_Tax_ID = (Integer) mTab.getValue("LBR_Tax_ID");
		
		MTax tx = new MTax(ctx, (Integer) mTab.getValue("LBR_Tax_ID"), null);
		X_LBR_TaxLine[] txLines = tx.getLines();
		Map<String, MTaxBR> lines = new HashMap<String, MTaxBR>();
		lines = MTaxBR.getMTaxBR(C_Tax_ID, LBR_Tax_ID, trxType, null);
		
		/** Adicionar o IPI no calculo **/
		if(isTaxIncluded)
		{
			for(X_LBR_TaxLine txLine : txLines)
			{
				X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, txLine.getLBR_TaxName_ID(), null);
				
				if(taxName.getName().trim().indexOf("IPI") != -1)
					rateIPI = rateIPI + txLine.getlbr_TaxRate().doubleValue();
			}
			
			lineamt = lineamt * (1 + (rateIPI/100));
		}
		
		for(X_LBR_TaxLine txLine : txLines)
		{
			X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, txLine.getLBR_TaxName_ID(), null);
			MTaxBR taxBR = lines.get(taxName.getName().trim());
			
			/** Remover o IPI do calculo **/
			if(taxName.getName().trim().indexOf("IPI") != -1)
				continue;
				
			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Service))
				factor = calculate(taxBR.getServiceFactor(),lineamt,factor,lines);
			
			if (isTaxIncluded){
				amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
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
						X_LBR_TaxLine s_taxLine = new X_LBR_TaxLine(Env.getCtx(),s_taxBR.getLBR_TaxLine_ID(),null);
						substamt = s_taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
					}
					
					//Valor + Margem de Lucro
					double iva = ((BigDecimal)product.get_Value("lbr_ProfitPercentage")).doubleValue();
					lineamt = lineamt * (1+(iva/100));
					
					if (isTaxIncluded)
						amt = calculate(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
					else
						amt = calculate(taxBR.getFormula(), lineamt, factor, lines);
					
				}
			}
			
			//Base de Cálculo
			double     base    = calculate(taxBR.getFormula(),amt,factor,lines);
			BigDecimal taxbase = new BigDecimal(base = base*taxBR.getTaxBase()).setScale(scale, BigDecimal.ROUND_HALF_UP);
			
			//Valor do Imposto
			double     taxamt  = base * taxBR.getTaxRate();
			
			//BF (Base de Cálculo estava somando alíquotas isentas)
			if (taxBR.getTaxRate() <= 0)
				taxbase = Env.ZERO;
			
			if (substamt.signum() != 0){ //BF - Não estava funcionando os estornos
				taxamt = taxamt - substamt.doubleValue();
			}
			
			//Atualizando LBR_TaxLine
			//X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxBR.getLBR_TaxLine_ID(),trx);
			//taxLine.setlbr_TaxAmt(new BigDecimal(taxamt));
			//taxLine.setlbr_TaxBaseAmt(taxbase);
			//if (taxLine.getLBR_Tax_ID()!= 0)
				//taxLine.save(trx);
			totalamt = totalamt + taxamt;
		}
		 //end if
		return new BigDecimal(totalamt).setScale(5, BigDecimal.ROUND_HALF_UP);
	}
	
	
	private static double calculate(String formula, Double amt, Double factor, Map<String, MTaxBR> lines) throws EvalError{
		
		if (formula == null || formula.equals("")){
			return 0.0;
		}
		
		String[] tax   = getTaxes(formula);
		
		Interpreter interpreter = new Interpreter();
		for (int j=0;j<tax.length;j++){
			
			if (tax[j].equalsIgnoreCase("AMT")){
				interpreter.set(tax[j], amt);
			}
			else if (tax[j].equalsIgnoreCase("FACTOR")){
				interpreter.set(tax[j], factor);
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
		
		//se amt = 0, retornar zero, para não fazer divisão por 0
		if (amt == 0){
			return 0;
		}
		
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
	
	public static int deleteSummaryTax(int ID, boolean isOrder, String trx){
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("DELETE FROM ");
		if (isOrder)
			sql.append(MOrderTax.Table_Name);
		else
			sql.append(MInvoiceTax.Table_Name);
		
		sql.append(" WHERE (TaxAmt = 0 OR ");
		sql.append("C_Tax_ID IN (SELECT C_Tax_ID FROM C_Tax WHERE IsSummary = 'Y')) AND ");
		
		if (isOrder)
			sql.append(MOrder.Table_Name).append("_ID = ");
		else
			sql.append(MInvoice.Table_Name).append("_ID = ");
		
		sql.append(ID);
		
		return DB.executeUpdate(sql.toString(), trx);
	} //deleteSummaryTax
	
	public static MOrderTax getMOrderTax(Properties ctx, Integer C_Order_ID, Integer C_Tax_ID, String trx){
		
		if (C_Order_ID == null)
			C_Order_ID = -1;
		if (C_Tax_ID == null)
			C_Tax_ID = -1;
		
		MOrderTax retValue = null;
		
		String sql = "SELECT * FROM C_OrderTax WHERE C_Order_ID=? AND C_Tax_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Order_ID);
			pstmt.setInt (2, C_Tax_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = new MOrderTax (ctx, rs, trx);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (retValue == null && C_Tax_ID > 0){
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Order_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			pstmt.setInt (2, C_Tax_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = new MInvoiceTax (ctx, rs, trx);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (retValue == null && C_Tax_ID > 0){
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_Invoice_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ()){
				
				Integer LBR_TaxGroup_ID = rs.getInt(1);
				if (LBR_TaxGroup_ID != null && LBR_TaxGroup_ID.intValue() != 0){
					X_LBR_NFTax nfTax = new X_LBR_NFTax(ctx, 0, trx);
					nfTax.setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
					nfTax.setLBR_NotaFiscal_ID(LBR_NotaFiscal_ID);
					nfTax.setlbr_TaxBaseAmt(rs.getBigDecimal(2));
					nfTax.setlbr_TaxAmt(rs.getBigDecimal(3));
					nfTax.save(trx);
				}
				
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
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
					
					if (LBR_TaxGroup_ID != null && LBR_TaxGroup_ID.intValue() != 0) //BUG: Quando TaxGroup e NULL
					{
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