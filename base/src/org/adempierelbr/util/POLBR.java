package org.adempierelbr.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	POLBR
 *
 *	PO AdempiereLBR
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MPOLBR.java, 01/11/2007 10:13:00 mgrigioni
 */
public class POLBR{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(POLBR.class);
	
	public static int getAD_Reference_ID(String Name){
		
		int AD_Reference_ID = -1;
		String sql = "SELECT AD_Reference_ID " +
				     "FROM AD_Reference " +
				     "WHERE Name = ?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, Name);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				AD_Reference_ID = rs.getInt(1);
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
		
		return AD_Reference_ID;
		
	} //getAD_Reference_ID
	
	public static int getC_Invoice_ID(String DocumentNo,String trx)
	{
		int C_Invoice_ID = -1;
		String sql = "SELECT C_Invoice_ID " +
				     "FROM C_Invoice " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_Invoice_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
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
		
		return C_Invoice_ID;
		
	}	//	getC_Invoice_ID
	
	public static int getLBR_Bank_ID(String RoutingNo){
		
		int LBR_Bank_ID = -1; 
		String sql = "SELECT LBR_Bank_ID " +
				     "FROM LBR_Bank " +
				     "WHERE RoutingNo = ?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, RoutingNo);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Bank_ID = rs.getInt(1);
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
		
		return LBR_Bank_ID;
		
	} //getLBR_Bank_ID
	
	public static String getVendorProductNo(int M_Product_ID, int C_BPartner_ID){
		
		String VendorProductNo = null;
		
		String sql = "SELECT VendorProductNo " +
				     "FROM C_BPartner_Product " +
				     "WHERE M_Product_ID = ? " + //1
				     "AND C_BPartner_ID = ? " + //2
				     "AND AD_Client_ID = ?"; //3
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, C_BPartner_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(Env.getCtx()));
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				VendorProductNo = rs.getString(1);
			}
			rs.close();
			pstmt.close();
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
		
		return VendorProductNo;
	
	}//getVendorProductNo
	
	public static int getARReceipt()
	{
		int C_DocType_ID = -1;
		String sql = "SELECT C_DocType_ID " +
				     "FROM C_DocType " +
				     "WHERE DocBaseType = 'ARR' " +
				     "AND AD_Client_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_DocType_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
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
		
		return C_DocType_ID;
		
	}	//	getARReceipt
	
	public static int getDocTypeAcct(int C_DocType_ID){
		
		Integer LBR_DocType_Acct_ID = null;
		
		String sql = "SELECT LBR_DocType_Acct_ID " +
					 "FROM LBR_DocType_Acct " +
					 "WHERE C_DocType_ID = ? " + //1
					 "AND AD_Client_ID = ?"; //2

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, C_DocType_ID);
			pstmt.setInt (2, Env.getAD_Client_ID(Env.getCtx()));
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_DocType_Acct_ID = rs.getInt(1);
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
		
		if (LBR_DocType_Acct_ID == null) LBR_DocType_Acct_ID = 0;
		
		return LBR_DocType_Acct_ID.intValue();
		
	} //getDocTypeAcct
	
	public static boolean get_ValueAsBoolean(Object oo){
		
		boolean value = false;
		
		if (oo != null) 
		{
		 if (oo instanceof Boolean){
			 value = ((Boolean)oo).booleanValue();
		 }
		 else value = "Y".equals(oo);
		}
		
		return value;
	}
	
	public static String getOsName(){
		
		String osname = System.getProperty("os.name");
		
		return osname.toLowerCase();
	}
	
	public static String getFileSeparator(){
		
		String FileSeparator = System.getProperty("file.separator");
		
		return FileSeparator;
	}
	
	public static String getPath(){
		
		String Path = System.getProperty("user.dir");
		
		return Path + getFileSeparator();
	}
	
	/**************************************************************************
	 * 	StringToDate
	 *  Convert String to Timestamp
	 *  @param String dataFormatada
	 *  @param String dateFormat
	 * 	@return Timestamp
	 */
	public static Timestamp stringTodate(String data,String dateFormat) {
		
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		ParsePosition pos = new ParsePosition(0);
		java.util.Date date = null;
		Timestamp timestamp = null;
	
		date = formatter.parse(data,pos);
		timestamp = new Timestamp(date.getTime()); 
		return timestamp; 
	}
	
	/**************************************************************************
	 * 	DateToString
	 *  Convert Timestamp to String
	 *  @param Timestamp dt
	 *  @param String dateFormat
	 * 	@return String dataFormatada
	 */
	public static String dateTostring(Timestamp dt, String dateFormat)
	{
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		String dataFormatada = formatter.format(dt); 
		return dataFormatada;
	}
	
} //MPOLBR