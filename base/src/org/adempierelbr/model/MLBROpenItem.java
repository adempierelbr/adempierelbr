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
public class MLBROpenItem{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBROpenItem.class);

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

	private MLBROpenItem(ResultSet rs){

		try
		{
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

			setDiscountRate(GrandTotal,DiscountAmt);
			setInterestAmt(GrandTotal);

		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "" + e);
		}



	}

	public static MLBROpenItem[] getOpenItem(Integer C_Invoice_ID, String trx){

		String sql = "SELECT C_Invoice_ID, " + //1
				     "C_BPartner_ID, " + //2
				     "DateInvoiced, " + //3
				     "NetDays, " + //4
				     "DueDate, " + //5
				     "DiscountDate, " + //6
				     "DiscountAmt, " + //7
				     "OpenAmt, " + //8
				     "C_InvoicePaySchedule_ID, " + //9
				     "C_PaymentTerm_ID " + //10
					 "FROM RV_OpenItem " +
				     "WHERE IsSOTrx='Y' " +
					 "AND C_Invoice_ID = ? order by DueDate"; //*1

		ArrayList<MLBROpenItem> list = new ArrayList<MLBROpenItem>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MLBROpenItem(rs));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		MLBROpenItem[] retValue = new MLBROpenItem[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getOpenItem

	public static MLBROpenItem[] getOpenItem(Timestamp DateInvoiced, String trx){

		String sql = "SELECT C_Invoice_ID, " + //1
				     "C_BPartner_ID, " + //2
				     "DateInvoiced, " + //3
				     "NetDays, " + //4
				     "DueDate, " + //5
				     "DiscountDate, " + //6
				     "DiscountAmt, " + //7
				     "OpenAmt, " + //8
				     "C_InvoicePaySchedule_ID, " + //9
				     "C_PaymentTerm_ID " + //10
					 "FROM RV_OpenItem " +
				     "WHERE IsSOTrx='Y' " +
					 "AND DateInvoiced = ? " + //*1
					 "AND AD_Client_ID = ? order by DueDate"; //*2

		ArrayList<MLBROpenItem> list = new ArrayList<MLBROpenItem>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setTimestamp(1, DateInvoiced);
			pstmt.setInt(2, Env.getContextAsInt(Env.getCtx(), "#AD_Client_ID"));
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MLBROpenItem(rs));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		MLBROpenItem[] retValue = new MLBROpenItem[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getOpenItem

	public static boolean hasOpenItem(Integer C_BPartner_ID, String trx){

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

	public static MInvoicePaySchedule[] getInvoicePaySchedule(Properties ctx, int C_Invoice_ID, String trx)
	{

		String whereClause = "C_Invoice_ID=?";

		MTable table = MTable.get(ctx, MInvoicePaySchedule.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_Invoice_ID});

		List<MInvoicePaySchedule> list = query.list();

		return list.toArray(new MInvoicePaySchedule[list.size()]);
	}	//	getInvoicePaySchedule

	public static boolean hasPaySchedule(Integer C_Invoice_ID, String trx){

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

	public void setDiscountRate(BigDecimal amt, BigDecimal discountamt){
		//(discountamt/amt)*100
		DiscountRate = (discountamt.divide(amt, 12, RoundingMode.HALF_UP)).multiply(Env.ONEHUNDRED);
		DiscountRate = DiscountRate.setScale(2, RoundingMode.HALF_UP);
	}

	public BigDecimal getDiscountRate(){
		return DiscountRate;
	}

	public void setInterestAmt(BigDecimal amt){

		MOrgInfo orgInfo     = MOrgInfo.get(Env.getCtx(), Env.getAD_Org_ID(Env.getCtx()),null);
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

} //MOpenItem