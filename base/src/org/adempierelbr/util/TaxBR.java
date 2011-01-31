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
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import javax.script.ScriptException;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_NFLineTax;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.adempierelbr.model.X_LBR_TaxName;
import org.compiere.model.GridTab;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MProduct;
import org.compiere.model.MTax;
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
 * @author Mario Grigioni
 * @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 * @contributor Fernando O. Moraes (Faire, www.faire.com.br)
 * @version $Id: TextBR.java, 26/01/2010 09:10:00 mgrigioni
 */
public abstract class TaxBR
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(TaxBR.class);

	/** Scale           */
	public static final int SCALE           = 2;
	public static final int ROUND_SCALE     = 12;
	public static final RoundingMode ROUND  = RoundingMode.HALF_UP;
	public static final MathContext MCROUND = new MathContext(ROUND_SCALE,ROUND);

	/** Produto */
	public static String taxType_Product      = X_LBR_TaxName.LBR_TAXTYPE_Product;
	/** Serviço */
	public static String taxType_Service      = X_LBR_TaxName.LBR_TAXTYPE_Service;
	/** Substituição Tributária */
	public static String taxType_Substitution = X_LBR_TaxName.LBR_TAXTYPE_Substitution;

	/**************************************************************************
	 *  calculateTaxes
	 *
	 *  Method that calculate Brazilian Taxes using Groovy
	 *
	 *  @param Integer Line_ID (C_OrderLine_ID, C_InvoiceLine_ID)
	 *  @param boolean isOrder (defines if this is an Order or Invoice)
	 *  @param String trx
	 *  @throws ScriptException
	 */
	public static void calculateTaxes(int Line_ID, boolean isOrder, String trx) throws EvalError{

		Properties ctx = Env.getCtx();

		X_LBR_TaxName[] taxesName = ImpostoBR.getLBR_TaxName(ctx, Line_ID, isOrder, trx);

		Map<String, ImpostoBR> lines = new HashMap<String, ImpostoBR>();
		lines = ImpostoBR.getImpostoBR(Line_ID, isOrder, trx);

		MProduct product = null;

		boolean isTaxIncluded = false;
		BigDecimal  lineamt  = Env.ZERO;

		if (isOrder)
		{
			MOrderLine oLine = new MOrderLine(ctx,Line_ID,trx);
			MOrder order = new MOrder(ctx,oLine.getC_Order_ID(),trx);
			product = oLine.getProduct();
			isTaxIncluded = order.isTaxIncluded();
			lineamt = oLine.getPriceEntered().multiply(oLine.getQtyEntered()); //BF - não usar o LineNetAmt devido a casas decimais
		}
		else
		{
			MInvoiceLine iLine = new MInvoiceLine(ctx,Line_ID,trx);
			MInvoice invoice = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
			product = iLine.getProduct();
			isTaxIncluded = invoice.isTaxIncluded();
			lineamt = iLine.getPriceEntered().multiply(iLine.getQtyEntered()); //BF - não usar o LineNetAmt devido a casas decimais
		}

		for (X_LBR_TaxName taxName : taxesName)
		{
			String name       = taxName.getName().trim();
			ImpostoBR taxBR   = lines.get(name);
			ImpostoBR s_taxBR = null;

			//Faz o cálculo do imposto substituto antes
			if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution))
			{
				X_LBR_TaxName s_taxName = new X_LBR_TaxName(ctx, taxName.getLBR_TaxSubstitution_ID(), trx);
				String s_name  = s_taxName.getName().trim();
				s_taxBR = lines.get(s_name);
				calculateTaxAmt(s_taxBR, null, product, s_taxName, lines, isTaxIncluded, lineamt, trx);
				
				//Calcula o imposto substituido
				calculateTaxAmt(taxBR, s_taxBR, product, taxName, lines, isTaxIncluded, lineamt, trx);
			}
			else
				calculateTaxAmt(taxBR, s_taxBR, product, taxName, lines, isTaxIncluded, lineamt, trx);

		} //end for

	} //calculateTaxes

	private static void calculateTaxAmt(ImpostoBR taxBR, ImpostoBR s_taxBR, MProduct product, X_LBR_TaxName taxName,
			Map<String, ImpostoBR> lines, boolean isTaxIncluded, BigDecimal lineamt, String trx) throws EvalError{

		if (taxBR == null)
			return;

		BigDecimal amt      = Env.ZERO;
		BigDecimal factor   = Env.ZERO;
		BigDecimal substamt = Env.ZERO;

		if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Service))
			factor = calculateTaxBase(taxBR.getServiceFactor(), lineamt, factor, lines);

		if (isTaxIncluded){
			amt = calculateTaxBase(taxBR.getFormulaNetWorth(), lineamt, factor, lines);
		}
		else{
			amt = lineamt;
		}

		//Se o imposto for Substituição Tributária, e o produto estiver marcado
		if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution))
		{
			if (product != null &&
				product.get_ValueAsBoolean("lbr_HasSubstitution"))
			{

				//Valor do Imposto Substituto
				if (s_taxBR != null){
					X_LBR_TaxLine s_taxLine = new X_LBR_TaxLine(Env.getCtx(),s_taxBR.getLBR_TaxLine_ID(),trx);
					substamt = s_taxLine.getlbr_TaxAmt().setScale(SCALE, ROUND);
				}

				//Valor + Margem de Lucro
				BigDecimal iva = (BigDecimal)product.get_Value("lbr_ProfitPercentage");
				//lineAmt*(1+(iva/100))
				lineamt = lineamt.multiply((Env.ONE.add((iva.divide(Env.ONEHUNDRED, ROUND)))));

				if (isTaxIncluded){
					amt = calculateTaxBase(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
				}
				else
					amt = calculateTaxBase(taxBR.getFormula(), lineamt, factor, lines);
			}
		} //substituição tributária

		//Base de Cálculo
		BigDecimal taxbase = calculateTaxBase(taxBR.getFormula(),amt,factor,lines);
				   taxbase = taxbase.multiply(taxBR.getTaxBase());
		//Valor do Imposto
		BigDecimal taxamt  = taxbase.multiply(taxBR.getTaxRate());

		//BF (Base de Cálculo estava somando alíquotas isentas)
		if (taxBR.getTaxRate().signum() != 1)
			taxbase = Env.ZERO;

		if (substamt.signum() != 0){ //BF - Não estava funcionando os estornos
			taxamt = taxamt.subtract(substamt);
		}

		//Atualizando LBR_TaxLine
		X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxBR.getLBR_TaxLine_ID(),trx);
		taxLine.setlbr_TaxAmt(taxamt.stripTrailingZeros());
		taxLine.setlbr_TaxBaseAmt(taxbase.stripTrailingZeros());
		if (taxLine.getLBR_Tax_ID()!= 0)
			taxLine.save(trx);

	} //calculateTaxAmt

	public static BigDecimal getTaxAmt(GridTab mTab, String trxType, Boolean isTaxIncluded) throws EvalError
	{
		ImpostoBR s_taxBR   = null;
		BigDecimal amt      = Env.ZERO;
		BigDecimal rateIPI  = Env.ZERO;
		BigDecimal baseIPI  = Env.ZERO;
		BigDecimal factor   = Env.ZERO;
		BigDecimal lineamt 	= Env.ZERO;
		BigDecimal totalamt = Env.ZERO;
		BigDecimal substamt = Env.ZERO;
		Properties ctx = Env.getCtx();
		Integer product_ID = (Integer) mTab.getValue("M_Product_ID");

		MProduct product = null;

		if(product_ID != null)
			product = new MProduct(ctx, product_ID, null);

		if(!isTaxIncluded)
			lineamt = (BigDecimal) mTab.getValue("PriceEntered");
		else
			lineamt = (BigDecimal) mTab.getValue("lbr_PriceEnteredBR");

		if(mTab.getValue("LBR_Tax_ID") == null
				|| mTab.getValue("C_Tax_ID") == null)
			return Env.ZERO;

		Integer C_Tax_ID = (Integer) mTab.getValue("C_Tax_ID");
		if (C_Tax_ID == null) C_Tax_ID = 0;

		Integer LBR_Tax_ID = (Integer) mTab.getValue("LBR_Tax_ID");
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;

		MLBRTax tx = new MLBRTax(ctx, (Integer)mTab.getValue("LBR_Tax_ID"), null);
		X_LBR_TaxLine[] txLines = tx.getLines();
		Map<String, ImpostoBR> lines = new HashMap<String, ImpostoBR>();
		lines = ImpostoBR.getImpostoBR(C_Tax_ID, LBR_Tax_ID, trxType, null);

		// Adicionar o IPI no calculo
		if(isTaxIncluded)
		{
			for(X_LBR_TaxLine txLine : txLines)
			{
				X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, txLine.getLBR_TaxName_ID(), null);

				if(taxName.getName().trim().indexOf("IPI") != -1){ //BF - Necessário olhar a redução da base de cálculo antes de somar o valor do IPI
					rateIPI = txLine.getlbr_TaxRate();
					baseIPI = Env.ONE.subtract((txLine.getlbr_TaxBase().divide(Env.ONEHUNDRED, MCROUND)));
					BigDecimal ipiAmt = lineamt.multiply(rateIPI.divide(Env.ONEHUNDRED, MCROUND));
					   		   ipiAmt = ipiAmt.multiply(baseIPI).stripTrailingZeros();

					lineamt = lineamt.add(ipiAmt);
				}
			}
		}

		for(X_LBR_TaxLine txLine : txLines)
		{
			X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, txLine.getLBR_TaxName_ID(), null);
			ImpostoBR taxBR = lines.get(taxName.getName().trim());
			if (taxBR == null)
				continue;

			// Remover o IPI do calculo
			if(taxName.getName().trim().indexOf("IPI") != -1
			   || taxName.isHasWithHold())
				continue;

			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Service))
				factor = calculateTaxBase(taxBR.getServiceFactor(),lineamt,factor,lines);

			if (isTaxIncluded){
				amt = calculateTaxBase(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
			}
			else{
				amt = lineamt;
			}
			//Se o imposto for Substituição Tributária, e o produto estiver marcado
			if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)){
				if (product != null &&
					product.get_ValueAsBoolean("lbr_HasSubstitution")){

					//Valor do Imposto Substituto
					if (s_taxBR != null){
						X_LBR_TaxLine s_taxLine = new X_LBR_TaxLine(Env.getCtx(),s_taxBR.getLBR_TaxLine_ID(),null);
						substamt = s_taxLine.getlbr_TaxAmt().setScale(SCALE, ROUND);
					}

					//Valor + Margem de Lucro
					BigDecimal iva = (BigDecimal)product.get_Value("lbr_ProfitPercentage");
					lineamt = lineamt.multiply((Env.ONE.add((iva.divide(Env.ONEHUNDRED, MCROUND)))));

					if (isTaxIncluded)
						amt = calculateTaxBase(taxBR.getFormulaNetWorth(),lineamt,factor,lines);
					else
						amt = calculateTaxBase(taxBR.getFormula(), lineamt, factor, lines);

				}
			}

			//Base de Cálculo
			BigDecimal taxbase = calculateTaxBase(taxBR.getFormula(),amt,factor,lines);
			   		   taxbase = taxbase.multiply(taxBR.getTaxBase());

			//Valor do Imposto
			BigDecimal taxamt  = taxbase.multiply(taxBR.getTaxRate());

			if (substamt.signum() != 0){ //BF - Não estava funcionando os estornos
				taxamt = taxamt.subtract(substamt);
			}

			totalamt = totalamt.add(taxamt);
		}
		 //end if

		return totalamt.stripTrailingZeros();
	} //getTaxAmt

	private static BigDecimal calculateTaxBase(String formula, BigDecimal amt, BigDecimal factor, Map<String, ImpostoBR> lines) throws EvalError{

		if (formula == null || formula.equals("")){
			return Env.ZERO;
		}

		String[] variables = parseVariable(formula);

		Interpreter engine = new Interpreter();
		for (String variable : variables)
		{
			if (variable.equals("AMT")){
				log.info("Amt = " + amt);
				engine.set(variable, amt.doubleValue());
			}
			else if (variable.equals("FACTOR")){
				log.info("Factor = " + factor);
				engine.set(variable, factor.doubleValue());
			}

			else
			{
				ImpostoBR temptaxBR = lines.get(variable);

				if (temptaxBR != null)
				{
					log.info(variable + " = " + temptaxBR.getTaxRate());
					engine.set(variable, (temptaxBR.getTaxRate().multiply(temptaxBR.getTaxBase())).doubleValue());
				}
				else{
					log.info(variable + " = " + 0);
					engine.set(variable, 0.0);
				}
			}

		}

		//Fórmula
		formula = formula.replaceAll("@", "");
		log.info(formula);

		//se amt = 0, retornar zero, para não fazer divisão por 0
		if (amt.signum() == 0){
			return Env.ZERO;
		}

		//Base de Cálculo
		BigDecimal	base  = new BigDecimal(((Double)engine.eval(formula)).toString());

		return base.stripTrailingZeros();
	} //calculate TaxBase

	/**
	 * getTotalLinesAmt
	 * @param ID
	 * @param isOrder
	 * @param trx
	 * @return BigDecimal TotalLinesAmt
	 */
	public static BigDecimal getTotalLinesAmt(int ID, boolean isOrder, String trx){

		String sql = "SELECT SUM(QtyEntered * PriceEntered) ";

		if (isOrder){
			sql += "FROM C_OrderLine " +
				   "WHERE C_Order_ID = ?";
		}
		else{
			sql += "FROM C_InvoiceLine " +
				   "WHERE C_Invoice_ID = ?";
		}

		BigDecimal TotalLinesAmt = DB.getSQLValueBD(trx, sql, ID);
		if (TotalLinesAmt == null) TotalLinesAmt = Env.ZERO;

		return TotalLinesAmt.setScale(SCALE, ROUND);
	} //getTotalLinesAmt

	public static MOrderTax getMOrderTax(Properties ctx, int C_Order_ID, int C_Tax_ID, String trx){

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

		String sql = "SELECT SUM(TaxAmt) FROM C_OrderTax WHERE C_Order_ID=?";

		BigDecimal retValue = DB.getSQLValueBD(trx, sql, C_Order_ID);

		return retValue != null ? retValue : Env.ZERO;
	} //getMOrderTaxAmt

	public static MInvoiceTax getMInvoiceTax(Properties ctx, int C_Invoice_ID, int C_Tax_ID, String trx){

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

		String sql = "SELECT SUM(TaxAmt) FROM C_InvoiceTax WHERE C_Invoice_ID=?";

		BigDecimal retValue = DB.getSQLValueBD(trx, sql, C_Invoice_ID);

		return retValue != null ? retValue : Env.ZERO;
	} //getMInvoiceTaxAmt

	private static String[] parseVariable(String formula){

		ArrayList<String> taxes = new ArrayList<String>();

		int pos = 0;
		while (pos < formula.length())
		{
			int first = formula.indexOf('@', pos);
			if (first != -1){
				int second = formula.indexOf('@', first+1);
				if (second != -1){
					String tax = (formula.substring(first+1, second)).toUpperCase();
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
	} //getFormulaTaxes

	public static int deleteAllTax(int ID, boolean isOrder, String trx){

		StringBuffer sql = new StringBuffer();

		sql.append("DELETE FROM ");
		if (isOrder)
			sql.append(MOrderTax.Table_Name);
		else
			sql.append(MInvoiceTax.Table_Name);

		sql.append(" WHERE (TaxAmt = 0 OR ");
		sql.append("C_Tax_ID IN (SELECT C_Tax_ID FROM C_Tax WHERE (IsSummary = 'Y' OR LBR_TaxName_ID IS NOT NULL) AND " +
				"IsActive = 'Y')) AND ");

		if (isOrder)
			sql.append(MOrder.Table_Name).append("_ID = ");
		else
			sql.append(MInvoice.Table_Name).append("_ID = ");

		sql.append(ID);

		return DB.executeUpdate(sql.toString(), trx);
	} //deleteAllTax

	public static int deleteSummaryTax(int ID, boolean isOrder, String trx){

		StringBuffer sql = new StringBuffer();

		sql.append("DELETE FROM ");
		if (isOrder)
			sql.append(MOrderTax.Table_Name);
		else
			sql.append(MInvoiceTax.Table_Name);

		sql.append(" WHERE (TaxAmt = 0 OR ");
		sql.append("C_Tax_ID IN (SELECT C_Tax_ID FROM C_Tax WHERE IsSummary = 'Y' AND IsActive = 'Y')) AND ");

		if (isOrder)
			sql.append(MOrder.Table_Name).append("_ID = ");
		else
			sql.append(MInvoice.Table_Name).append("_ID = ");

		sql.append(ID);

		return DB.executeUpdate(sql.toString(), trx);
	} //deleteSummaryTax

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

	/**
	 * *** WARNING *** only use if you have values in LBR_NFLineTax
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 */
	public static void setNFTax(Properties ctx, int LBR_NotaFiscal_ID, String trx){

		MLBRNotaFiscal.deleteLBR_NFTax(LBR_NotaFiscal_ID, trx); //Imposto Cabeçalho

		String sql = "SELECT t.LBR_TaxGroup_ID, SUM(t.lbr_TaxBaseAmt), SUM(t.lbr_TaxAmt) " + //1..3
			         "FROM LBR_NFLineTax t " +
		             "INNER JOIN LBR_NotaFiscalLine nfl ON t.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID " +
		             "WHERE nfl.LBR_NotaFiscal_ID = ? " + //#1
		             "GROUP BY t.LBR_TaxGroup_ID";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, LBR_NotaFiscal_ID);
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

	/**
	 * setNFLineTax
	 * @param ctx
	 * @param C_InvoiceLine_ID
	 * @param LBR_NotaFiscalLine_ID
	 * @param trx
	 */
	public static void setNFLineTax(Properties ctx, int C_InvoiceLine_ID, int LBR_NotaFiscalLine_ID, String trx){
		setNFLineTax(ctx,C_InvoiceLine_ID,LBR_NotaFiscalLine_ID,null,trx);
	}

	// BF [ 1902926 ] NFLineTax - Falta campo Alíquota e Redução da Base
	// mgrigioni 27/02/2008, (Kenos, http://www.kenos.com.br)
	public static void setNFLineTax(Properties ctx, int C_InvoiceLine_ID, int LBR_NotaFiscalLine_ID, String description, String trx){

		MInvoiceLine iLine = new MInvoiceLine(ctx,C_InvoiceLine_ID,trx);

		X_LBR_TaxName[] taxesName = ImpostoBR.getLBR_TaxName(ctx, C_InvoiceLine_ID, false, trx);
		Map<Integer,X_LBR_TaxLine> lTaxes = MLBRTax.getLines(ctx, iLine.get_ValueAsInt("LBR_Tax_ID"), trx);

		for (X_LBR_TaxName taxName : taxesName){

			if (lTaxes.containsKey(taxName.get_ID())){

				X_LBR_TaxLine taxLine = lTaxes.get(taxName.get_ID());
				int C_Tax_ID = MLBRTax.getC_Tax_ID(iLine.getC_Tax_ID(), taxName.get_ID(), trx);
				if (C_Tax_ID > 0 && taxLine.islbr_PostTax()){

					MTax tax = new MTax(ctx,C_Tax_ID,trx);
					int LBR_TaxGroup_ID = tax.get_ValueAsInt("LBR_TaxGroup_ID");

					if (LBR_TaxGroup_ID > 0) //BUG: Quando TaxGroup e NULL
					{
						setNFLineTax(ctx,LBR_TaxGroup_ID,LBR_NotaFiscalLine_ID,taxLine.getlbr_TaxBaseAmt(),
								taxLine.getlbr_TaxAmt(),taxLine.getlbr_TaxRate(), taxLine.getlbr_TaxBase(),
								description,trx);
					}//endif

				}//endif

			}//endif

		}//for

	}

	/**
	 * setNFLineTax
	 */
	public static void setNFLineTax(Properties ctx, int LBR_TaxGroup_ID, int LBR_NotaFiscalLine_ID,
			BigDecimal lbr_TaxBaseAmt, BigDecimal lbr_TaxAmt, BigDecimal lbr_TaxRate,
			BigDecimal lbr_TaxBase, String description, String trx){

		X_LBR_NFLineTax nfLineTax = new X_LBR_NFLineTax(ctx,0,trx);
		nfLineTax.setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
		nfLineTax.setLBR_NotaFiscalLine_ID(LBR_NotaFiscalLine_ID);
		nfLineTax.setlbr_TaxBaseAmt(lbr_TaxBaseAmt.setScale(SCALE, ROUND));
		nfLineTax.setlbr_TaxAmt(lbr_TaxAmt.setScale(SCALE, ROUND));
		nfLineTax.setlbr_TaxRate(lbr_TaxRate.setScale(SCALE, ROUND));
		nfLineTax.setlbr_TaxBase(lbr_TaxBase.setScale(SCALE, ROUND));
		nfLineTax.setDescription(description); //ELTEK
		nfLineTax.save(trx);
	} //setNFLineTax

	/**
	 * getTaxGroup_ID
	 * @param TaxGroupName
	 * @return LBR_TaxGroup_ID
	 */
	public static int getTaxGroup_ID (String TaxGroupName){

		String sql = "SELECT LBR_TaxGroup_ID " +
				     "FROM LBR_TaxGroup " +
				     "WHERE Name = ?";

		int LBR_TaxGroup_ID = DB.getSQLValue(null, sql, TaxGroupName);

		return LBR_TaxGroup_ID;
	} //getTaxGroup_ID

}//TaxBR