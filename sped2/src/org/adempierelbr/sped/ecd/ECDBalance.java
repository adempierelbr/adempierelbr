package org.adempierelbr.sped.ecd;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MElementValue;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Account Balances
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @contributor Mario Grigioni, mgrigioni
 * @version $Id: ECDBalance.java, 17/11/2010, 09:42:00, mgrigioni
 */
public class ECDBalance
{
	private static CLogger log = CLogger.getCLogger(ECDBalance.class);
	
	private BigDecimal 		beginBalance 	= Env.ZERO;
	private String 			indicator		= "";
	private MElementValue 	ev 				= null;
	private Timestamp 		dateAcct 		= null;
	
	private static Map<String, BigDecimal[]> _balance = new HashMap<String, BigDecimal[]>();
	
	public static BigDecimal[] getBalance (String accountName)
	{
		if (_balance.containsKey(accountName))
			return _balance.get(accountName);
		return null;
	}	//	getBalance
	
	/**
	 * 	Get balances for period
	 * @return
	 */
	public static ECDBalance[] getBalances(Timestamp dateFrom, Timestamp dateTo, ArrayList<Integer> accts) {
		
		ArrayList<ECDBalance> list = new ArrayList<ECDBalance> ();
		ArrayList<Integer> found = new ArrayList<Integer>();
		Properties ctx = Env.getCtx();

		String sql = "SELECT FABR.Account_ID AS C_ElementValue_ID, " +
				     " NVL(SUM(FABR.AmtAcctDr-FABR.AmtAcctCr), 0) AS Balance " +
		             " FROM LBR_Fact_Acct FABR " +
		             " WHERE FABR.AD_Client_ID=? " +
		             " AND FABR.DocStatus='CO'" +
		             " AND FABR.DateAcct < ? " +
		             " GROUP BY FABR.Account_ID ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setTimestamp(2, dateFrom);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MElementValue ev = new MElementValue (ctx, rs.getInt("C_ElementValue_ID"), null);
				ECDBalance bal = new ECDBalance (rs.getBigDecimal("Balance"), ev, dateFrom);
				list.add(bal);
				found.add(rs.getInt("C_ElementValue_ID"));
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

		for (Integer acct : accts)
		{
			if (!found.contains(acct))
			{
				MElementValue ev = new MElementValue (ctx, acct, null);
				ECDBalance bal = new ECDBalance (Env.ZERO, ev, dateFrom);
				list.add(bal);
			}
		}

		ECDBalance[] balances = new ECDBalance[list.size ()];
		list.toArray (balances);

		return balances;
	}//getBalances

	/**
	 * 	Adiciona valores para compor os saldos
	 */
	public static void addBalance (String accountName, BigDecimal amount)
	{
		if (amount == null)
			return;

		/**
		 * 	Array 0 = D, 1 = C.
		 */
		BigDecimal[] amt = new BigDecimal[2];
		if (!_balance.containsKey(accountName))
		{
			//	Debit
			if (amount.signum() == 1)
			{
				amt[0] = amount.abs();
				amt[1] = Env.ZERO;
			}
			//	Credit
			else
			{
				amt[0] = Env.ZERO;
				amt[1] = amount.abs();
			}
			_balance.remove(accountName);
		}
		else
		{
			amt = _balance.get(accountName);
			//	Debit
			if (amount.signum() == 1)
				amt[0] = amt[0].add(amount.abs());

			//	Credit
			else
				amt[1] = amt[1].add(amount.abs());
		}
		_balance.put(accountName, amt);
	}	//	addBalance
	
	public static void clear(){
		_balance.clear();
	} //clear
	
	/**
	 * 	Constructor
	 * 
	 * @param beginBalance
	 * @param ev
	 * @param dateAcct
	 */
	public ECDBalance (BigDecimal beginBalance, MElementValue ev, Timestamp dateAcct)
	{
		setBeginBalance (beginBalance);
		setAccount (ev);
		setDateAcct (dateAcct);
	}	//	SPEDBalance
	
	/**
	 * 	Get Begin Balance
	 * @return
	 */
	public BigDecimal getBeginBalance ()
	{
		return beginBalance;
	}	//	getBeginBalance
	
	/**
	 * 	Set Begin Balance
	 * @param beginBalance
	 */
	public void setBeginBalance (BigDecimal beginBalance)
	{
		this.beginBalance = beginBalance;
	}	//	setBeginBalance
	
	/**
	 * 	Get Account
	 * @return
	 */
	public MElementValue getAccount ()
	{
		return ev;
	}	//	getAccount
	
	/**
	 * 	Set Account
	 * @param ev
	 */
	public void setAccount (MElementValue ev)
	{
		this.ev = ev;
	}	//	setAccount
	
	/**
	 * 	Get Account Date
	 * @return
	 */
	public Timestamp getDateAcct ()
	{
		return dateAcct;
	}	//	getDateAcct
	
	/**
	 * 	Set Account Date
	 * @param dateAcct
	 */
	public void setDateAcct (Timestamp dateAcct)
	{
		this.dateAcct = dateAcct;
	}	//	setDateAcct
	
	/**
	 * 	Get Indicator (Debit or Credit)
	 * @return
	 */
	public String getIndicator ()
	{
		return indicator;
	}	//	getIndicator

	/**
	 * 	Set Indicator of Debit or Credit
	 * @param indicator
	 */
	public void setIndicator (String indicator)
	{
		this.indicator = indicator;
	}	//	setIndicator
	
}	//	ECDBalance