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
	
	public static int getC_City_ID(String Name, int C_Region_ID, String trx)
	{
		int C_City_ID = -1;
		String sql = "SELECT C_City_ID " +
				     "FROM C_City " +
				     "WHERE Name LIKE ? " +
				     "AND C_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, Name);
			pstmt.setInt(2, C_Region_ID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_City_ID = rs.getInt(1);
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
		
		return C_City_ID;
		
	}	//	getC_City_ID
	
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
	
	public static int getNFB(int AD_Org_ID)
	{
		int C_DocType_ID = -1;
		String sql = "SELECT C_DocType_ID " +
				     "FROM C_DocType " +
				     "WHERE DocBaseType = 'NFB' " +
				     "AND AD_Client_ID = ? " +
				     "AND AD_Org_ID IN (0,?) " +
				     "order by C_DocType_ID, AD_Org_ID desc";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setInt(2, AD_Org_ID);
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
	
	public static String get_BooleanAsString(boolean oo){
		return oo ? "Y" : "N";
	}
	
	public static String getOsName(){
		
		String osname = System.getProperty("os.name");
		
		return osname.toLowerCase();
	}
	
	public static String getFileSeparator(){
		
		String FileSeparator = System.getProperty("file.separator");
		
		return FileSeparator;
	}
	
	public static String getLineSeparator(){
		
		String LineSeparator = System.getProperty("line.separator");
		
		return LineSeparator;
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