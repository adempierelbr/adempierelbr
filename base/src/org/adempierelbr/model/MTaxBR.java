package org.adempierelbr.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;


/**
 *	MTaxBR
 *
 *	MTaxBR Class
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTaxBR.java, 19/12/2007 09:50:00 mgrigioni
 */
public class MTaxBR{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MTaxBR.class);
	
	private int     LBR_TaxLine_ID;
	private String  Formula;
	private String  FormulaNetWorth;
	private boolean PostTax;
	private double  TaxRate;
	private double  TaxBase;
	
	public MTaxBR(String Formula, String FormulaNetWorth, int LBR_TaxLine_ID, double TaxRate, double TaxBase, boolean PostTax){
		
		setFormula(Formula);
		setFormulaNetWorth(FormulaNetWorth);
		setLBR_TaxLine_ID(LBR_TaxLine_ID);
		setTaxRate(TaxRate);
		setTaxBase(TaxBase);
		setPostTax(PostTax);
		
	}
	
	public static Map<String, MTaxBR> getMTaxBR(Integer Line_ID, boolean isOrder, String trx){
		
		String  formula[] = {"",""};
		String  transactionType = "";
		//
		Integer LBR_Tax_ID = null;
		//
		boolean PostTax = true;
		//
		double  TaxRate = 0.0;
		double  TaxBase = 0.0;
		//
		Map<String, MTaxBR> lines = new HashMap<String, MTaxBR>();
		
		if (isOrder){
			MOrderLine oLine = new MOrderLine(Env.getCtx(),Line_ID,trx);
			LBR_Tax_ID = (Integer)oLine.get_Value("LBR_Tax_ID");
			//
			MOrder order = new MOrder(Env.getCtx(),oLine.getC_Order_ID(),trx);
			transactionType = order.get_ValueAsString("lbr_TransactionType");
		}
		else{
			MInvoiceLine iLine = new MInvoiceLine(Env.getCtx(),Line_ID,trx);
			LBR_Tax_ID = (Integer)iLine.get_Value("LBR_Tax_ID");
			//
			MInvoice invoice = new MInvoice(Env.getCtx(),iLine.getC_Invoice_ID(),trx);
			transactionType = invoice.get_ValueAsString("lbr_TransactionType");
		}
		
		Integer[] TaxName = getLBR_TaxName_ID(Line_ID,isOrder,trx);
		
		for (int i=0;i<TaxName.length;i++){
			
			X_LBR_TaxName taxName = new X_LBR_TaxName(Env.getCtx(),TaxName[i],trx);
			
			formula = getlbr_Formula(TaxName[i],transactionType,trx); //FÓRMULA
			int LBR_TaxLine_ID = getLBR_TaxLine_ID(TaxName[i],LBR_Tax_ID,trx);
			
			if (LBR_TaxLine_ID != 0){
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),LBR_TaxLine_ID,trx);
				TaxRate = taxLine.getlbr_TaxRate().doubleValue()/100; //TAXRATE
				TaxBase = 1 - ((taxLine.getlbr_TaxBase().doubleValue())/100); //TAXBASE
				PostTax = taxLine.islbr_PostTax(); //POSTTAX
				
				lines.put(taxName.getName().trim(), new MTaxBR(formula[0], formula[1], LBR_TaxLine_ID, TaxRate, TaxBase, PostTax));
			}
			
		}
		
		return lines;
	} //getMTaxBR
	
	public static Integer[] getLBR_TaxName_ID(Integer Line_ID, boolean isOrder, String trx){
		
		if (Line_ID == null)
			Line_ID = -1;
		
		String sql = "SELECT LBR_TaxName_ID " + 
					 "FROM C_Tax tax";
		
		if (isOrder) 
			sql += ", C_OrderLine sLine WHERE sLine.C_OrderLine_ID = ? ";
		else
			sql += ", C_InvoiceLine sLine WHERE sLine.C_InvoiceLine_ID = ? ";
		
		sql += "AND Parent_Tax_ID = sLine.C_Tax_ID";
		
		ArrayList<Integer> list = new ArrayList<Integer>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Line_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (rs.getInt(1));
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
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
		
		Integer[] retValue = new Integer[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getLBR_TaxName_ID
	
	private static String[] getlbr_Formula(Integer LBR_TaxName_ID, String TransactionType, String trx){
		
		if (LBR_TaxName_ID == null)
			LBR_TaxName_ID = -1;
		
		String sql = "SELECT lbr_Formula, lbr_FormulaNetWorth " + 
					 "FROM LBR_TaxFormula " +
					 "WHERE LBR_TaxName_ID = ? " +
					 "AND lbr_TransactionType = ?";
		
		String formula[] = {"",""};
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_TaxName_ID);
			pstmt.setString(2, TransactionType);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				formula[0] = rs.getString(1);
				if (formula[0] != null) formula[0] = formula[0].trim();
				formula[1] = rs.getString(2).trim();
				if (formula[1] != null) formula[1] = formula[1].trim();
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
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
		
		return formula;
	} //getlbr_Formula
	
	private static int getLBR_TaxLine_ID(Integer LBR_TaxName_ID, Integer LBR_Tax_ID, String trx){
		
		if (LBR_TaxName_ID == null)
			return -1;
		if (LBR_Tax_ID == null)
			return -1;
		
		String sql = "SELECT LBR_TaxLine_ID " + 
					 "FROM LBR_TaxLine " +
					 "WHERE LBR_TaxName_ID = ? " +
					 "AND LBR_Tax_ID = ?";
		
		Integer LBR_TaxLine_ID = null;
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_TaxName_ID);
			pstmt.setInt(2, LBR_Tax_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxLine_ID = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
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
		
		if (LBR_TaxLine_ID == null) LBR_TaxLine_ID = 0;
		
		return LBR_TaxLine_ID.intValue();
	} //getLBR_TaxLine_ID
	
	
	/**
	 * @return the lBR_TaxLine_ID
	 */
	public int getLBR_TaxLine_ID() {
		return LBR_TaxLine_ID;
	}

	/**
	 * @param taxLine_ID the lBR_TaxLine_ID to set
	 */
	public void setLBR_TaxLine_ID(int taxLine_ID) {
		LBR_TaxLine_ID = taxLine_ID;
	}

	/**
	 * @return the formula
	 */
	public String getFormula() {
		return Formula;
	}

	/**
	 * @param formula the formula to set
	 */
	public void setFormula(String formula) {
		Formula = formula;
	}
	
	/**
	 * @return the formula net worth
	 */
	public String getFormulaNetWorth() {
		return FormulaNetWorth;
	}

	/**
	 * @param formula the formula net worth to set
	 */
	public void setFormulaNetWorth(String formula) {
		FormulaNetWorth = formula;
	}

	/**
	 * @return the postTax
	 */
	public boolean isPostTax() {
		return PostTax;
	}

	/**
	 * @param postTax the postTax to set
	 */
	public void setPostTax(boolean postTax) {
		PostTax = postTax;
	}

	/**
	 * @return the taxRate
	 */
	public double getTaxRate() {
		return TaxRate;
	}

	/**
	 * @param taxRate the taxRate to set
	 */
	public void setTaxRate(double taxRate) {
		TaxRate = taxRate;
	}

	/**
	 * @return the taxBase
	 */
	public double getTaxBase() {
		return TaxBase;
	}

	/**
	 * @param taxBase the taxBase to set
	 */
	public void setTaxBase(double taxBase) {
		TaxBase = taxBase;
	}
	
}