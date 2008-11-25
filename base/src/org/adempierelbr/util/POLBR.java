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
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MOrgInfo;
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
		
		int index = DocumentNo.indexOf('/'); 
		if (index != -1)
			DocumentNo = DocumentNo.substring(0, index);
		
		String sql = "SELECT C_Invoice_ID " +
				     "FROM C_Invoice " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_Invoice_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_Invoice_ID;
		
	}	//	getC_Invoice_ID
	
	public static MInvoicePaySchedule[] getInvoicePaySchedule(Properties ctx, int C_Invoice_ID, String trx)
	{
		String sql = "SELECT * FROM C_InvoicePaySchedule WHERE C_Invoice_ID=?";
		ArrayList<MInvoicePaySchedule> list = new ArrayList<MInvoicePaySchedule>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MInvoicePaySchedule ps = new MInvoicePaySchedule(ctx, rs, trx);
				list.add (ps);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "getInvoicePaySchedule", e); 
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		MInvoicePaySchedule[] m_schedule = new MInvoicePaySchedule[list.size()];
		list.toArray(m_schedule);
		return m_schedule;
	}	//	getInvoicePaySchedule
	
	public static int getLBR_NotaFiscal_ID(String DocumentNo,boolean IsSOTrx, String trx)
	{
		int LBR_NotaFiscal_ID = -1;
				
		String sql = "SELECT LBR_NotaFiscal_ID " +
				     "FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setString(3, IsSOTrx ? "Y" : "N");
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 LBR_NotaFiscal_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return LBR_NotaFiscal_ID;
		
	}	//	getLBR_NotaFiscal_ID
	
	public static int getLBR_DocPrint_ID(Properties ctx){
		
		MOrgInfo orgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		Integer LBR_DocPrint_ID = (Integer)orgInfo.get_Value("LBR_DocPrint_ID");
		if (LBR_DocPrint_ID == null){
			LBR_DocPrint_ID = 0;
		}
		
		return LBR_DocPrint_ID.intValue();
		
	} // getLBR_DocPrint_ID
	
	public static int getLBR_Boleto_ID(String DocumentNo, int C_Invoice_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		int index = 1;
		
		String sql = "SELECT LBR_Boleto_ID " +
				     "FROM LBR_Boleto " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ? ";
				     
		if (C_Invoice_ID > 0){
			sql += "AND C_Invoice_ID = ? ";
			index++;
		}
		
		sql += " ORDER BY LBR_Boleto_ID DESC";
				     
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			if (index > 1){
				pstmt.setInt(3, C_Invoice_ID);
			}
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 LBR_Boleto_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return LBR_Boleto_ID;
		
	}	//	getLBR_Boleto_ID
	
	public static int getC_City_ID(String Name, int C_Region_ID, String trx)
	{
		int C_City_ID = -1;
		String sql = "SELECT C_City_ID " +
				     "FROM C_City " +
				     "WHERE Name LIKE ? " +
				     "AND C_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, Name);
			pstmt.setInt(2, C_Region_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_City_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_City_ID;
		
	}	//	getC_City_ID
	
	public static int getLBR_Bank_ID(String RoutingNo){
		
		int LBR_Bank_ID = -1; 
		String sql = "SELECT LBR_Bank_ID " +
				     "FROM LBR_Bank " +
				     "WHERE RoutingNo = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, RoutingNo);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Bank_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, C_BPartner_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				VendorProductNo = rs.getString(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_DocType_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_DocType_ID;
		
	}	//	getARReceipt
	
	public static int getNFB(int AD_Org_ID)
	{
		return POLBR.getNFB(AD_Org_ID,true);
	}
	
	public static int getNFB(int AD_Org_ID, boolean isSOTrx)
	{
		int C_DocType_ID = -1;
		String sql = "SELECT C_DocType_ID " +
				     "FROM C_DocType " +
				     "WHERE DocBaseType = 'NFB' " +
				     "AND AD_Client_ID = ? " +
				     "AND AD_Org_ID IN (0,?) " +
				     "AND IsSOTrx = ? " +
				     "order by C_DocType_ID, AD_Org_ID desc";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setInt(2, AD_Org_ID);
			pstmt.setString(3, isSOTrx ? "Y" : "N");
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_DocType_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, C_DocType_ID);
			pstmt.setInt (2, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_DocType_Acct_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
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
	
	/**
	 * Date Utils
	 */
	public static Timestamp addDays (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.DAY_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addDays
	
	public static Timestamp addWeeks (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.WEEK_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addWeeks
	
	public static Timestamp addMonths (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.MONTH, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addMonths
	
	public static Timestamp addYears (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addYears
	
} //MPOLBR