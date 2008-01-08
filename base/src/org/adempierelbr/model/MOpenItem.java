package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

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
public class MOpenItem{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MOpenItem.class);
	
	private int C_BPartner_ID;
	private int C_Invoice_ID;
	private int C_InvoicePaySchedule_ID;
	private int NetDays;
	private Timestamp DateInvoiced;
	private Timestamp DueDate;
	private Timestamp DiscountDate;
	private BigDecimal DiscountAmt;
	private BigDecimal DiscountRate;
	private BigDecimal GrandTotal;

	public MOpenItem(ResultSet rs){
		
		try
		{
			setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
			setC_Invoice_ID(rs.getInt("C_Invoice_ID"));
			setNetDays(rs.getInt("NetDays"));
			setDateInvoiced(rs.getTimestamp("DateInvoiced"));
			setDueDate(rs.getTimestamp("DueDate"));
			setDiscountDate(rs.getTimestamp("DiscountDate"));
			setDiscountAmt(rs.getBigDecimal("DiscountAmt"));
			setGrandTotal(rs.getBigDecimal("GrandTotal"));
			setC_InvoicePaySchedule_ID(rs.getInt("C_InvoicePaySchedule_ID"));
			
			setDiscountRate(GrandTotal,DiscountAmt);
			
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "" + e);
		}
		
	}
	
	public static MOpenItem[] getOpenItem(Integer C_Invoice_ID, String trx){
		
		String sql = "SELECT C_Invoice_ID, " + //1
				     "C_BPartner_ID, " + //2
				     "DateInvoiced, " + //3
				     "NetDays, " + //4
				     "DueDate, " + //5
				     "DiscountDate, " + //6
				     "DiscountAmt, " + //7
				     "GrandTotal, " + //8
				     "C_InvoicePaySchedule_ID " + //9
					 "FROM RV_OpenItem " +
				     "WHERE IsSOTrx='Y' " +
					 "AND C_Invoice_ID = ?"; //*1
		
		ArrayList<MOpenItem> list = new ArrayList<MOpenItem>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MOpenItem(rs));
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
		
		MOpenItem[] retValue = new MOpenItem[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getOpenItem
	
	public static MOpenItem[] getOpenItem(Timestamp DateInvoiced, String trx){
		
		String sql = "SELECT C_Invoice_ID, " + //1
				     "C_BPartner_ID, " + //2
				     "DateInvoiced, " + //3
				     "NetDays, " + //4
				     "DueDate, " + //5
				     "DiscountDate, " + //6
				     "DiscountAmt, " + //7
				     "GrandTotal, " + //8
				     "C_InvoicePaySchedule_ID " + //9
					 "FROM RV_OpenItem " +
				     "WHERE IsSOTrx='Y' " +
					 "AND DateInvoiced = ? " + //*1
					 "AND AD_Client_ID = ?"; //*2
		
		ArrayList<MOpenItem> list = new ArrayList<MOpenItem>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setTimestamp(1, DateInvoiced);
			pstmt.setInt(2, Env.getContextAsInt(Env.getCtx(), "#AD_Client_ID"));
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MOpenItem(rs));
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
		
		MOpenItem[] retValue = new MOpenItem[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getOpenItem
	
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
		
		double amount    = amt.doubleValue();
		double disamount = discountamt.doubleValue();
		
		DiscountRate = (new BigDecimal((disamount/amount)*100)).setScale(2, BigDecimal.ROUND_HALF_UP);
	}
	
	public BigDecimal getDiscountRate(){
		return DiscountRate;
	}
	
} //MOpenItem