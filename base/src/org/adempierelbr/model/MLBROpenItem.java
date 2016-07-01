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
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MOpenItem
 *
 *	Model for View RV_OpenItem
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MOpenItem.java, 30/10/2007 10:47:00 mgrigioni
 */
public class MLBROpenItem
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBROpenItem.class);

	private int AD_Org_ID;
	private int C_BPartner_ID;
	private int C_Invoice_ID;
	private int C_InvoicePaySchedule_ID;
	private int C_PaymentTerm_ID;
	private int NetDays;
	private Timestamp DateInvoiced;
	private Timestamp DueDate;
	private Timestamp DiscountDate;
	private BigDecimal DiscountAmt;
	private BigDecimal DiscountRate;
	private BigDecimal InterestAmt;
	private BigDecimal GrandTotal;
	
	/**
	 * 
	 * @param rs
	 * @throws SQLException 
	 */
	private MLBROpenItem (ResultSet rs) throws SQLException
	{
		setAD_Org_ID(rs.getInt("AD_Org_ID"));
		setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
		setC_Invoice_ID(rs.getInt("C_Invoice_ID"));
		setNetDays(rs.getInt("NetDays"));
		setDateInvoiced(rs.getTimestamp("DateInvoiced"));
		setDueDate(rs.getTimestamp("DueDate"));
		setDiscountDate(rs.getTimestamp("DiscountDate"));
		setDiscountAmt(rs.getBigDecimal("DiscountAmt"));
		setGrandTotal(rs.getBigDecimal("OpenAmt"));
		setC_InvoicePaySchedule_ID(rs.getInt("C_InvoicePaySchedule_ID"));
		setC_PaymentTerm_ID(rs.getInt("C_PaymentTerm_ID"));
		//
		setDiscountRate(GrandTotal, DiscountAmt);
		setInterestAmt(GrandTotal);
	}	//	MLBROpenItem

	/**
	 * 	Get all open items
	 * @param where
	 * @param trxName
	 * @return
	 */
	public static MLBROpenItem[] getOpenItem (String where, String trxName)
	{
		return getOpenItem (where, "DueDate", null, trxName);
	}	//	getOpenItem
	
	/**
	 * 	Get all open items
	 * @param where
	 * @param trxName
	 * @return
	 */
	public static MLBROpenItem[] getOpenItem (String where, Object[] params, String trxName)
	{
		return getOpenItem (where, "DueDate", params, trxName);
	}	//	getOpenItem
	
	/**
	 * 	Get all open items
	 * @param where
	 * @param orderBy
	 * @param trxName
	 * @return
	 */
	public static MLBROpenItem[] getOpenItem (String where, String orderBy, Object[] params, String trxName)
	{
		String sql = "SELECT C_Invoice_ID, C_BPartner_ID, DateInvoiced, " + 	//	1..3
				     "NetDays, DueDate, DiscountDate, DiscountAmt, OpenAmt, " +	//	4..8
				     "C_InvoicePaySchedule_ID, C_PaymentTerm_ID, AD_Org_ID " + 	//	9..11
					 "FROM " + MSysConfig.getValue ("LBR_GENBILLING_TABLE", "RV_InvoicePaySchedule", Env.getAD_Client_ID(Env.getCtx()));
		
		if (where != null)
			sql += " WHERE " + where;
		
		if (orderBy != null)
			sql += " ORDER BY " + orderBy;

		List<MLBROpenItem> list = new ArrayList<MLBROpenItem>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			DB.setParameters(pstmt, params);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MLBROpenItem (rs));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
		       DB.close(rs, pstmt);
		}

		MLBROpenItem[] retValue = new MLBROpenItem[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getOpenItem
	
	/**
	 * 	Get all open items for sales transactions of this invoice
	 * @param C_Invoice_ID
	 * @param trxName
	 * @return
	 */
	public static MLBROpenItem[] getOpenItem (Integer C_Invoice_ID, String trxName)
	{
		return getOpenItem ("IsSOTrx='Y' AND C_Invoice_ID=?", new Object[]{C_Invoice_ID}, trxName);
	}	//	getOpenItem

	/**
	 * 	Get all open items for sales transactions of this date
	 * @param C_Invoice_ID
	 * @param trxName
	 * @return
	 */
	public static MLBROpenItem[] getOpenItem (Timestamp dateInvoiced, String trxName)
	{
		return getOpenItem ("IsSOTrx='Y' AND DateInvoiced=" + DB.TO_DATE (dateInvoiced), trxName);
	} 	//	getOpenItem

	/**
	 * 	Check if Business Partner has open invoices
	 * @param C_BPartner_ID
	 * @param trx
	 * @return
	 */
	@Deprecated
	public static boolean hasOpenItem (Integer C_BPartner_ID, String trx)
	{
		String sql = "SELECT * " + //1
					 "FROM RV_OpenItem " +
				     "WHERE IsSOTrx='Y' AND DaysDue > 0 " +
					 "AND C_BPartner_ID = ?"; //*1

		boolean hasOpenItem = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasOpenItem = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return hasOpenItem;
	} //hasOpenItem

	@Deprecated
	public static MInvoicePaySchedule[] getInvoicePaySchedule(Properties ctx, int C_Invoice_ID, String trx)
	{
		String whereClause = "C_Invoice_ID=?";

		MTable table = MTable.get(ctx, MInvoicePaySchedule.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_Invoice_ID});

		List<MInvoicePaySchedule> list = query.list();

		return list.toArray(new MInvoicePaySchedule[list.size()]);
	}	//	getInvoicePaySchedule

	@Deprecated
	public static boolean hasPaySchedule(Integer C_Invoice_ID, String trx)
	{
		String sql = "SELECT * " + //1
					 "FROM C_InvoicePaySchedule " +
					 "WHERE C_Invoice_ID=?"; //*1

		boolean hasPaySchedule = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasPaySchedule = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return hasPaySchedule;
	} //hasPaySchedule

	private void setC_BPartner_ID(int value){
		C_BPartner_ID = value;
	}

	public int getC_BPartner_ID(){
		return C_BPartner_ID;
	}

	private void setC_Invoice_ID(int value){
		C_Invoice_ID = value;
	}

	public int getC_Invoice_ID(){
		return C_Invoice_ID;
	}

	public void setC_PaymentTerm_ID(int value){
		C_PaymentTerm_ID = value;
	}

	public int getC_PaymentTerm_ID(){
		return C_PaymentTerm_ID;
	}

	private void setC_InvoicePaySchedule_ID(int value){
		C_InvoicePaySchedule_ID = value;
	}

	public int getC_InvoicePaySchedule_ID(){
		return C_InvoicePaySchedule_ID;
	}

	private void setNetDays(int value){
		NetDays = value;
	}

	public int getNetDays(){
		return NetDays;
	}

	private void setDateInvoiced(Timestamp value){
		DateInvoiced = value;
	}

	public Timestamp getDateInvoiced(){
		return DateInvoiced;
	}

	private void setDueDate(Timestamp value){
		DueDate = value;
	}

	public Timestamp getDueDate(){
		return DueDate;
	}

	private void setDiscountDate(Timestamp value){
		DiscountDate = value;
	}

	public Timestamp getDiscountDate(){
		return DiscountDate;
	}

	private void setDiscountAmt(BigDecimal value){
		DiscountAmt = value;
	}

	public BigDecimal getDiscountAmt(){
		return DiscountAmt;
	}

	private void setGrandTotal(BigDecimal value){
		GrandTotal = value;
	}

	public BigDecimal getGrandTotal(){
		return GrandTotal;
	}

	private void setAD_Org_ID(int value){
		AD_Org_ID = value;
	}

	public int getAD_Org_ID(){
		return AD_Org_ID;
	}
	
	public void setDiscountRate(BigDecimal amt, BigDecimal discountamt){
		//(discountamt/amt)*100
		DiscountRate = (discountamt.divide(amt, 12, RoundingMode.HALF_UP)).multiply(Env.ONEHUNDRED);
		DiscountRate = DiscountRate.setScale(2, RoundingMode.HALF_UP);
	}

	public BigDecimal getDiscountRate(){
		return DiscountRate;
	}

	public void setInterestAmt(BigDecimal amt){

		MOrgInfo orgInfo     = MOrgInfo.get(Env.getCtx(), AD_Org_ID,null);
		BigDecimal interest  = (BigDecimal)orgInfo.get_Value("lbr_Interest");
		if (interest == null)
			interest = Env.ZERO;

		//((interest/30)/100)*amt
		InterestAmt = ((interest.divide(new BigDecimal("30"), 12, RoundingMode.HALF_UP)).
				        divide(Env.ONEHUNDRED, 12, RoundingMode.HALF_UP)).multiply(amt);

		InterestAmt = InterestAmt.setScale(2, RoundingMode.HALF_UP);
	}

	public BigDecimal getInterestAmt(){
		return InterestAmt;
	}

} 	//	MLBROpenItem