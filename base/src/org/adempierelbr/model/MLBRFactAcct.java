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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRFactAcct
 *
 *	Model for View LBR_Fact_Acct
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRFactAcct.java, 29/11/2010 09:20:00 mgrigioni
 */
public class MLBRFactAcct{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRFactAcct.class);

	private int AD_Table_ID;
	private int Record_ID;
	private int Line_ID;
	private int Fact_Acct_ID;
	private int Account_ID;
	private int AD_Client_ID;
	private int AD_Org_ID;
	
	private String DocStatus;
	private String Description;
	
	private Timestamp DateAcct;
	
	private BigDecimal AmtAcctDr;
	private BigDecimal AmtAcctCr;

	private MLBRFactAcct(Properties ctx, ResultSet rs, int ID, String trxName){
		
		if (rs != null)
			try {
				load(rs);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		else{
			
			String sql = "SELECT * FROM LBR_Fact_Acct WHERE Fact_Acct_ID = ?";
			PreparedStatement pstmt = null;
			
			try
			{
				pstmt = DB.prepareStatement (sql, trxName);
				pstmt.setInt(1, ID);
				rs = pstmt.executeQuery ();
				if (rs.next())
					load(rs);
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, "", e);
			}
			finally{
			       DB.close(rs, pstmt);
			}
		}
	} //constructor
	
	public MLBRFactAcct(Properties ctx, ResultSet rs, String trxName){
		this (ctx,rs,0,trxName);
	}
	
	public MLBRFactAcct(Properties ctx, int Fact_Acct_ID, String trxName){
		this (ctx,null,Fact_Acct_ID,trxName);
	}
	
	private void load(ResultSet rs) throws SQLException{
		setAD_Table_ID(rs.getInt("AD_Table_ID"));
		setRecord_ID(rs.getInt("Record_ID"));
		setLine_ID(rs.getInt("Line_ID"));
		setFact_Acct_ID(rs.getInt("Fact_Acct_ID"));
		setAccount_ID(rs.getInt("Account_ID"));
		setAD_Client_ID(rs.getInt("AD_Client_ID"));
		setAD_Org_ID(rs.getInt("AD_Org_ID"));
		
		setDocStatus(rs.getString("DocStatus"));
		setDescription(rs.getString("Description"));
		
		setDateAcct(rs.getTimestamp("DateAcct"));
		
		setAmtAcctDr(rs.getBigDecimal("AmtAcctDr"));
		setAmtAcctCr(rs.getBigDecimal("AmtAcctCr"));
	} //load
	
	public static MLBRFactAcct[] getFactAcct(Properties ctx, Timestamp DateFrom, Timestamp DateTo, String trxName){
		
		String sql = "SELECT * FROM LBR_Fact_Acct WHERE DateAcct BETWEEN ? AND ? AND AD_Client_ID = ? " +
				     "ORDER BY DateAcct, Record_ID";
		
		ArrayList<MLBRFactAcct> list = new ArrayList<MLBRFactAcct>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setTimestamp(1, DateFrom);
			pstmt.setTimestamp(2, DateTo);
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery();
			while (rs.next()){
				list.add(new MLBRFactAcct(ctx,rs,trxName));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		MLBRFactAcct[] retValue = new MLBRFactAcct[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getFactAcct
	
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	@Override
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MLBRFactAcct[");
		sb.append(get_ID()).append("-Acct=").append(getAccount_ID())
			.append(",Dr=").append(getAmtAcctDr())
			.append(",Cr=").append(getAmtAcctCr())
			.append ("]");
		return sb.toString ();
	}	//	toString
	
	/**
	 * @return the ID
	 */
	public int get_ID(){
		return Fact_Acct_ID;
	}

	/**
	 * @return the aD_Table_ID
	 */
	public int getAD_Table_ID() {
		return AD_Table_ID;
	}

	/**
	 * @param aD_Table_ID the aD_Table_ID to set
	 */
	private void setAD_Table_ID(int aD_Table_ID) {
		AD_Table_ID = aD_Table_ID;
	}

	/**
	 * @return the record_ID
	 */
	public int getRecord_ID() {
		return Record_ID;
	}

	/**
	 * @param record_ID the record_ID to set
	 */
	private void setRecord_ID(int record_ID) {
		Record_ID = record_ID;
	}

	/**
	 * @return the lIne_ID
	 */
	public int getLine_ID() {
		return Line_ID;
	}

	/**
	 * @param lIne_ID the lIne_ID to set
	 */
	private void setLine_ID(int lIne_ID) {
		Line_ID = lIne_ID;
	}

	/**
	 * @return the fact_Acct_ID
	 */
	public int getFact_Acct_ID() {
		return Fact_Acct_ID;
	}

	/**
	 * @param fact_Acct_ID the fact_Acct_ID to set
	 */
	private void setFact_Acct_ID(int fact_Acct_ID) {
		Fact_Acct_ID = fact_Acct_ID;
	}

	/**
	 * @return the account_ID
	 */
	public int getAccount_ID() {
		return Account_ID;
	}

	/**
	 * @param account_ID the account_ID to set
	 */
	private void setAccount_ID(int account_ID) {
		Account_ID = account_ID;
	}

	/**
	 * @return the aD_Client_ID
	 */
	public int getAD_Client_ID() {
		return AD_Client_ID;
	}

	/**
	 * @param aD_Client_ID the aD_Client_ID to set
	 */
	private void setAD_Client_ID(int aD_Client_ID) {
		AD_Client_ID = aD_Client_ID;
	}

	/**
	 * @return the aD_Org_ID
	 */
	public int getAD_Org_ID() {
		return AD_Org_ID;
	}

	/**
	 * @param aD_Org_ID the aD_Org_ID to set
	 */
	private void setAD_Org_ID(int aD_Org_ID) {
		AD_Org_ID = aD_Org_ID;
	}

	/**
	 * @return the docStatus
	 */
	public String getDocStatus() {
		return DocStatus;
	}

	/**
	 * @param docStatus the docStatus to set
	 */
	private void setDocStatus(String docStatus) {
		DocStatus = docStatus;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return Description;
	}

	/**
	 * @param description the description to set
	 */
	private void setDescription(String description) {
		Description = description;
	}

	/**
	 * @return the dateAcct
	 */
	public Timestamp getDateAcct() {
		return DateAcct;
	}

	/**
	 * @param dateAcct the dateAcct to set
	 */
	private void setDateAcct(Timestamp dateAcct) {
		DateAcct = dateAcct;
	}

	/**
	 * @return the amtAcctDR
	 */
	public BigDecimal getAmtAcctDr() {
		return AmtAcctDr;
	}

	/**
	 * @param amtAcctDR the amtAcctDR to set
	 */
	private void setAmtAcctDr(BigDecimal amtAcctDr) {
		AmtAcctDr = amtAcctDr;
	}

	/**
	 * @return the amtAcctCR
	 */
	public BigDecimal getAmtAcctCr() {
		return AmtAcctCr;
	}

	/**
	 * @param amtAcctCR the amtAcctCR to set
	 */
	private void setAmtAcctCr(BigDecimal amtAcctCr) {
		AmtAcctCr = amtAcctCr;
	}

} //MLBRFactAcct