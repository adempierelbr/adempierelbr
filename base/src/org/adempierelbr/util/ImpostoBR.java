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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.adempierelbr.model.X_LBR_TaxName;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	ImpostoBR
 *
 *	ImpostoBR Class
 *
 *	@author Mario Grigioni
 *	@version $Id: ImpostoBR.java, 26/01/2010 09:10:00 mgrigioni
 */
public class ImpostoBR{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ImpostoBR.class);
	private String trxName;
	
	private static Map<Integer,TaxFormula> s_formula = new HashMap<Integer,TaxFormula>();

	private MLBRTax LBR_Tax;
	
	private int     LBR_TaxLine_ID;
	private String  TaxName;
	private String  Formula;
	private String  FormulaNetWorth;
	private String  ServiceFactor;
	private String  TransactionType;
	private boolean PostTax;
	private BigDecimal  TaxRate;
	private BigDecimal  TaxBase;
	
	public ImpostoBR(String Formula, String FormulaNetWorth, String ServiceFactor,int LBR_TaxLine_ID, 
			String TaxName, BigDecimal TaxRate, BigDecimal TaxBase, boolean PostTax, String TransactionType,String trx){
		setTrxName(trx);
		setFormula(Formula);
		setFormulaNetWorth(FormulaNetWorth);
		setServiceFactor(ServiceFactor);
		setLBR_TaxLine_ID(LBR_TaxLine_ID);
		setLBR_Tax(LBR_TaxLine_ID);
		setTaxName(TaxName);
		setTaxRate(TaxRate);
		setTaxBase(TaxBase);
		setPostTax(PostTax);
		setTransactionType(TransactionType);
	}

	public static Map<String, ImpostoBR> getImpostoBR(int Line_ID, boolean isOrder, String trx){

		String  transactionType = "";
		//
		int LBR_Tax_ID = 0;
		int C_Tax_ID   = 0;
		//

		if (isOrder){
			MOrderLine oLine = new MOrderLine(Env.getCtx(),Line_ID,trx);
			LBR_Tax_ID = oLine.get_ValueAsInt("LBR_Tax_ID");
			C_Tax_ID   = oLine.getC_Tax_ID();
			//
			MOrder order = new MOrder(Env.getCtx(),oLine.getC_Order_ID(),trx);
			transactionType = order.get_ValueAsString("lbr_TransactionType");
		}
		else{
			MInvoiceLine iLine = new MInvoiceLine(Env.getCtx(),Line_ID,trx);
			LBR_Tax_ID = iLine.get_ValueAsInt("LBR_Tax_ID");
			C_Tax_ID   = iLine.getC_Tax_ID();
			//
			MInvoice invoice = new MInvoice(Env.getCtx(),iLine.getC_Invoice_ID(),trx);
			transactionType = invoice.get_ValueAsString("lbr_TransactionType");
		}

		return getImpostoBR(C_Tax_ID,LBR_Tax_ID,transactionType,trx);
	} //getImpostoBR

	public static Map<String, ImpostoBR> getImpostoBR(int C_Tax_ID, int LBR_Tax_ID, String transactionType, String trx){

		boolean PostTax = true;
		//
		BigDecimal  TaxRate = Env.ZERO;
		BigDecimal  TaxBase = Env.ZERO;
		//
		Map<String, ImpostoBR> lines = new HashMap<String, ImpostoBR>();
		Map<Integer, X_LBR_TaxLine> lTaxes = MLBRTax.getLines(Env.getCtx(), LBR_Tax_ID, trx);

		X_LBR_TaxName[] taxesName = getLBR_TaxName(C_Tax_ID,trx);

		for (X_LBR_TaxName taxName : taxesName){

			if (lTaxes.containsKey(taxName.get_ID())) {

				X_LBR_TaxLine taxLine = lTaxes.get(taxName.get_ID());

				TaxFormula formula = getlbr_Formula(taxName.get_ID(),transactionType,trx); //FÓRMULA

				//TaxRate/100
				TaxRate = taxLine.getlbr_TaxRate().divide(Env.ONEHUNDRED, TaxBR.MCROUND).stripTrailingZeros(); //TAXRATE
				//1-(TaxBase/100)
				TaxBase = Env.ONE.subtract((taxLine.getlbr_TaxBase().divide(Env.ONEHUNDRED, TaxBR.MCROUND))).stripTrailingZeros(); //TAXBASE
				PostTax = taxLine.islbr_PostTax(); //POSTTAX

				String tax   = taxName.getName().trim();
				ImpostoBR taxBR = new ImpostoBR(formula.getlbr_Formula(), formula.getlbr_FormulaNetWorth(),
						                  formula.getlbr_ServiceFactor(), taxLine.get_ID(), tax, TaxRate, TaxBase,
						                  PostTax, transactionType,trx);

				lines.put(tax,taxBR);
			}

		}

		return lines;
	} //getImpostoBR

	public static X_LBR_TaxName[] getLBR_TaxName(Properties ctx, int Line_ID, boolean isOrder, String trx){

		int C_Tax_ID = 0;

		if (isOrder){
			C_Tax_ID = new MOrderLine(ctx,Line_ID,trx).getC_Tax_ID();
		}
		else{
			C_Tax_ID = new MInvoiceLine(ctx,Line_ID,trx).getC_Tax_ID();
		}

		return getLBR_TaxName(C_Tax_ID,trx);
	} //getLBR_TaxName

	public static X_LBR_TaxName[] getLBR_TaxName(int C_Tax_ID, String trx)
	{

		String whereClause = "LBR_TaxName_ID IN " +
				             "(SELECT LBR_TaxName_ID FROM C_Tax " +
				              "WHERE Parent_Tax_ID = ? " +
				              "AND LBR_TaxName_ID IS NOT NULL AND IsActive='Y')";

		MTable table = MTable.get(Env.getCtx(), X_LBR_TaxName.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), null);
		q.setParameters(new Object[]{C_Tax_ID});

		List<X_LBR_TaxName> list = q.list();
		X_LBR_TaxName[] taxes = new X_LBR_TaxName[list.size()];
		return list.toArray(taxes);
	} //getLBR_TaxName

	private static TaxFormula getlbr_Formula(int LBR_TaxName_ID, String TransactionType, String trx){

		TaxFormula formula = null;

		if (s_formula.size() > 0){
			formula = s_formula.get(LBR_TaxName_ID);
			if (formula != null && formula.getlbr_TransactionType().equals(TransactionType)){
				log.fine("Formula Cache used =]");
				return formula;
			}
		}

		s_formula.clear(); //Clear formulas cache
		log.fine("Formula Cache clear =[");

		String sql = "SELECT LBR_TaxName_ID, lbr_Formula, lbr_FormulaNetWorth, lbr_ServiceFactor " +
					 "FROM LBR_TaxFormula " +
					 "WHERE lbr_TransactionType = ? " +
					 "AND AD_Client_ID = ? AND IsActive='Y'";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setString(1, TransactionType);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				formula = new TaxFormula(rs.getInt("LBR_TaxName_ID"), rs.getString("lbr_Formula"),
						rs.getString("lbr_FormulaNetWorth"), rs.getString("lbr_ServiceFactor"), TransactionType);
				s_formula.put(rs.getInt("LBR_TaxName_ID"), formula);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		formula = s_formula.get(LBR_TaxName_ID);

		if (formula == null)
			formula = new TaxFormula(LBR_TaxName_ID,TransactionType);

		return formula;
	} //getlbr_Formula

	public String get_TrxName(){
		return trxName;
	}
	
	public void setTrxName(String TrxName){
		trxName = TrxName;
	}
	
	public MLBRTax getLBR_Tax(){
		return LBR_Tax;
	}
	
	public void setLBR_Tax(int taxLine_ID){
		X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),taxLine_ID,get_TrxName());
		LBR_Tax = new MLBRTax(Env.getCtx(),taxLine.getLBR_Tax_ID(),get_TrxName());
	}
	
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
		if (formula == null)
			formula = "";

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
		if (formula == null)
			formula = "";

		FormulaNetWorth = formula;
	}

	/**
	 * @return the service factor
	 */
	public String getServiceFactor() {
		return ServiceFactor;
	}

	/**
	 * @param factor the factor to set
	 */
	public void setServiceFactor(String factor) {
		if (factor == null)
			factor = "";

		ServiceFactor = factor;
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
	 * @return the taxName
	 */
	public String getTaxName() {
		return TaxName;
	}

	/**
	 * @param taxName the taxName to set
	 */
	public void setTaxName(String taxName) {
		TaxName = taxName;
	}

	/**
	 * @return the taxRate
	 */
	public BigDecimal getTaxRate() {
		return TaxRate;
	}

	/**
	 * @param taxRate the taxRate to set
	 */
	public void setTaxRate(BigDecimal taxRate) {
		TaxRate = taxRate;
	}

	/**
	 * @return the taxBase
	 */
	public BigDecimal getTaxBase() {
		return TaxBase;
	}

	/**
	 * @param taxBase the taxBase to set
	 */
	public void setTaxBase(BigDecimal taxBase) {
		TaxBase = taxBase;
	}

	public String getTransactionType() {
		return TransactionType;
	}

	public void setTransactionType(String transactionType) {
		TransactionType = transactionType;
	}

} //MTaxBR

class TaxFormula{

	private int    LBR_TaxName_ID;
	private String lbr_TransactionType;
	private String lbr_Formula;
	private String lbr_FormulaNetWorth;
	private String lbr_ServiceFactor;

	public TaxFormula(int LBR_TaxName_ID, String lbr_Formula, String lbr_FormulaNetWorth,
			String lbr_ServiceFactor, String TransactionType){
		setLBR_TaxName_ID(LBR_TaxName_ID);
		setlbr_Formula(lbr_Formula);
		setlbr_FormulaNetWorth(lbr_FormulaNetWorth);
		setlbr_ServiceFactor(lbr_ServiceFactor);
		setlbr_TransactionType(TransactionType);
	}

	public TaxFormula(int LBR_TaxName_ID, String TransactionType){
		this(LBR_TaxName_ID,"","","",TransactionType);
	}

	public int getLBR_TaxName_ID(){
		return LBR_TaxName_ID;
	}

	public void setLBR_TaxName_ID(int LBR_TaxName_ID){
		this.LBR_TaxName_ID = LBR_TaxName_ID;
	}

	public String getlbr_TransactionType(){
		return lbr_TransactionType;
	}

	public void setlbr_TransactionType(String TransactionType){
		this.lbr_TransactionType = TransactionType;
	}

	public String getlbr_Formula() {
		return lbr_Formula;
	}

	public void setlbr_Formula(String lbrFormula) {
		if (lbrFormula != null)
			lbr_Formula = lbrFormula.trim();

		lbr_Formula = lbrFormula;
	}

	public String getlbr_FormulaNetWorth() {
		return lbr_FormulaNetWorth;
	}

	public void setlbr_FormulaNetWorth(String lbrFormulaNetWorth) {
		if (lbrFormulaNetWorth != null)
			lbr_FormulaNetWorth = lbrFormulaNetWorth.trim();

		lbr_FormulaNetWorth = lbrFormulaNetWorth;
	}

	public String getlbr_ServiceFactor() {
		return lbr_ServiceFactor;
	}

	public void setlbr_ServiceFactor(String lbrServiceFactor) {
		if (lbrServiceFactor != null)
			lbr_ServiceFactor = lbrServiceFactor.trim();

		lbr_ServiceFactor = lbrServiceFactor;
	}
	
} //taxFormula