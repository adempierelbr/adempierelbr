package org.kenos.bank;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRBSSetup;
import org.adempierelbr.model.MLBRBSSetupLine;
import org.adempierelbr.model.MLBROpenItem;
import org.compiere.impexp.BankStatementMatchInfo;
import org.compiere.impexp.BankStatementMatcherInterface;
import org.compiere.model.MBankStatementLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.model.Query;
import org.compiere.model.X_I_BankStatement;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;

/**
 * 		Bank Statement Matcher
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BankStatementMatcher.java, v1.0 2016/06/21 10:00:02 AM, ralexsander Exp $
 */
public class BankStatementMatcher  implements BankStatementMatcherInterface
{
	private Properties m_Ctx;
	private String m_TrxName;
	
	private int m_AD_Org_ID;
	private int m_C_Currency_ID;
	private int m_C_BankAccount_ID;
	private int m_C_Payment_ID;

	private Timestamp m_DateAcct;
	private BigDecimal m_StmtAmt;
	private String m_EftMemo;
	
	/**
	 * 	Try to find an Invoice or Payment to match this Bank Statement Line
	 */
	@Override
	public BankStatementMatchInfo findMatch (MBankStatementLine bsl)
	{
		if (bsl == null)
			return null;
		
		m_Ctx 				= bsl.getCtx();
		m_TrxName 			= bsl.get_TrxName();
		//
		m_C_BankAccount_ID 	= bsl.getC_BankStatement().getC_BankAccount_ID();
		m_C_Payment_ID 		= bsl.getC_Payment_ID();
		//
		m_DateAcct 			= bsl.getDateAcct();
		m_StmtAmt 			= bsl.getStmtAmt();
		m_EftMemo			= bsl.getEftMemo();
		
		return findMatch();
	}	//	findMatch

	/**
	 * 	Try to find an Invoice or Payment to match this Bank Statement Line (Import)
	 */
	@Override
	public BankStatementMatchInfo findMatch (X_I_BankStatement ibs)
	{
		if (ibs == null)
			return null;
		
		m_Ctx 				= ibs.getCtx();
		m_TrxName 			= ibs.get_TrxName();
		//
		m_C_BankAccount_ID 	= ibs.getC_BankAccount_ID();
		m_C_Payment_ID 		= ibs.getC_Payment_ID();
		//
		m_DateAcct 			= ibs.getDateAcct();
		m_StmtAmt 			= ibs.getStmtAmt();
		m_EftMemo			= ibs.getEftMemo();
		
		return findMatch ();
	}	//	findMatch
	
	/**
	 * 	Try to find an Invoice or Payment to match this Bank Statement Line
	 */
	private BankStatementMatchInfo findMatch ()
	{
		MLBRBSSetup setup = MLBRBSSetup.get (m_C_BankAccount_ID);
		//
		if (m_C_Payment_ID > 0 || m_DateAcct == null || m_StmtAmt == null || setup == null)
			return null;
		
		//	Always use the Organization of Bank Account 
		m_AD_Org_ID = setup.getC_BankAccount().getAD_Org_ID();
		m_C_Currency_ID = setup.getC_BankAccount().getC_Currency_ID();
		
		//	Receipt / Payment
		boolean isReceipt = m_StmtAmt.signum() == 1;
		
		BigDecimal minAmt =  m_StmtAmt.abs().subtract(setup.getPriceMatchDifference());
		BigDecimal maxAmt =  m_StmtAmt.abs().add(setup.getPriceMatchDifference());
		
		Timestamp minDueDate = TimeUtil.addDays (m_DateAcct, setup.getPeriod_OpenHistory().negate().intValue());
		Timestamp maxDueDate = TimeUtil.addDays (m_DateAcct, setup.getPeriod_OpenFuture().intValue());
		
		//	Try to find payment
		if (MLBRBSSetup.LBR_BSMATCHERTYPE_PaymentsThenInvoices.equals(setup.getLBR_BSMatcherType())
				|| MLBRBSSetup.LBR_BSMATCHERTYPE_PaymentsOnly.equals(setup.getLBR_BSMatcherType()))
		{
			String where = "C_BankAccount_ID=? AND IsReceipt=? AND DocStatus IN ('CL','CO') "
					+ "AND IsReconciled='N' AND PayAmt=? AND TRUNC (DateTrx)=" + DB.TO_DATE (m_DateAcct);
			List<MPayment> payments = new Query (m_Ctx, MPayment.Table_Name, where, m_TrxName)
				.setParameters(new Object[]{m_C_BankAccount_ID, isReceipt, m_StmtAmt.abs()})
				.list();

			//	Found exactly match
			if (payments.size() == 1)
			{
				MPayment payment = payments.get(0);
				//
				if (paymentOnOpenStatement (payment.getC_Payment_ID()))
					return null;
				//
				BankStatementMatchInfo bsi = new BankStatementMatchInfo();
				bsi.setC_BPartner_ID(payment.getC_BPartner_ID());
				bsi.setC_Invoice_ID(payment.getC_Invoice_ID());
				bsi.setC_Payment_ID(payment.getC_Payment_ID());
				return bsi;
			}
		}
		
		//	Try to find the Invoice
		if (MLBRBSSetup.LBR_BSMATCHERTYPE_PaymentsThenInvoices.equals(setup.getLBR_BSMatcherType())
				|| MLBRBSSetup.LBR_BSMATCHERTYPE_InvoicesOnly.equals(setup.getLBR_BSMatcherType()))
		{
			//	Try to find the exactly match
			String where = "AD_Org_ID=? AND IsSOTrx=? AND OpenAmt=? AND TRUNC (DueDate)=" + DB.TO_DATE (m_DateAcct);
			Object[] params = new Object[]{m_AD_Org_ID, isReceipt, m_StmtAmt.abs()};
			//
			MLBROpenItem[] items = MLBROpenItem.getOpenItem (where, params, m_TrxName);
			
			//	Found exactly match
			if (items.length == 1)
			{
				int C_Invoice_ID = items[0].getC_Invoice_ID();
				//
				BankStatementMatchInfo bsi = new BankStatementMatchInfo();
				bsi.setC_BPartner_ID(items[0].getC_BPartner_ID());
				bsi.setC_Invoice_ID(C_Invoice_ID);
				bsi.setC_Payment_ID(createPayment(C_Invoice_ID));
				return bsi;
			}
			
			//	Try to find from the range
			where = "AD_Org_ID=? AND IsSOTrx=? AND OpenAmt BETWEEN ? AND ? AND TRUNC (DueDate) BETWEEN " 
						+ DB.TO_DATE (minDueDate) + " AND " + DB.TO_DATE (maxDueDate);
			params = new Object[]{m_AD_Org_ID, isReceipt, minAmt, maxAmt};
			//
			items = MLBROpenItem.getOpenItem (where, params, m_TrxName);
			
			//	Found match(es) using range
			if (items.length == 1)
			{
				int C_Invoice_ID = items[0].getC_Invoice_ID();
				//
				BankStatementMatchInfo bsi = new BankStatementMatchInfo();
				bsi.setC_BPartner_ID(items[0].getC_BPartner_ID());
				bsi.setC_Invoice_ID(C_Invoice_ID);
				bsi.setC_Payment_ID(createPayment(C_Invoice_ID, items[0].getGrandTotal().subtract(m_StmtAmt.abs()), setup.isOverUnderPayment()));
				return bsi;
			}
		}
		
		//	Try to find the configured pattern
		if (m_EftMemo != null)
		{
			m_EftMemo = m_EftMemo.trim().replaceAll("\\s+", " ");
			if (m_EftMemo.length() == 0)
				return null;
			
			try
			{
				MLBRBSSetupLine line = setup.getMatch (m_EftMemo, m_StmtAmt);
				//
				if (line != null)
				{
					BankStatementMatchInfo bsi = new BankStatementMatchInfo();
					bsi.setC_BPartner_ID(line.getC_BPartner_ID());
					bsi.setC_Charge_ID(line.getC_Charge_ID());
					//
					return bsi;
				}
			}
			catch (Exception e){}
		}
		
		return null;
	}	//	findMatch
	
	/**
	 * 	Check if this payment is already allocated to 
	 * 		a Bank Statement that is no completed yet
	 * @param C_Payment_ID
	 * @return
	 */
	private boolean paymentOnOpenStatement (int C_Payment_ID)
	{
		String sql = "SELECT COUNT(*) "
				    +  "FROM C_BankStatementLine bsl, C_BankStatement bs "
				    + "WHERE bsl.C_BankStatement_ID=bs.C_BankStatement_ID "
				    +   "AND bs.Processed='N' "
				    +   "AND bsl.C_Payment_ID=?";
		
		return DB.getSQLValue (m_TrxName, sql, C_Payment_ID) > 0;
	}	//	paymentOnOpenStatement

	/**
	 * 	Create Payment
	 * 	@param C_Invoice_ID
	 * 	@return
	 */
	private int createPayment (int C_Invoice_ID)
	{
		return createPayment(C_Invoice_ID, Env.ZERO, false);
	}	//	createPayment
	
	/**
	 * 	Create Payment
	 * 	@param C_Invoice_ID
	 * 	@return
	 */
	private int createPayment (int C_Invoice_ID, BigDecimal diff, boolean overUnderPayment)
	{
		MPayment p = new MPayment (m_Ctx, 0, m_TrxName);
		//
		MInvoice invoice = new MInvoice (Env.getCtx(), C_Invoice_ID, null);
		p.setC_Invoice_ID(C_Invoice_ID);
		p.setC_BPartner_ID(invoice.getC_BPartner_ID());
		p.setTenderType(MPayment.TENDERTYPE_DirectDeposit);
		p.setDateAcct(m_DateAcct);
		p.setDateTrx(m_DateAcct);
		p.setBankAccountDetails(m_C_BankAccount_ID);
		p.setC_DocType_ID(invoice.isSOTrx());
		p.setC_Currency_ID(m_C_Currency_ID);
		p.setPayAmt(m_StmtAmt.abs());

		//	Has Difference
		if (diff.signum() != 0)
		{
			//	Set if the difference should written off or considered as under/over payment
			p.setIsOverUnderPayment(overUnderPayment);
			
			//	Write off
			if (!overUnderPayment)
				p.setWriteOffAmt(diff);
			
			//	Over/Under Payment
			else
				p.setOverUnderAmt(diff);
		}
		p.save();
		
		if (p.processIt(MPayment.ACTION_Complete))
		{
			p.setDocStatus(MPayment.DOCSTATUS_Completed);
			if (p.save())
				return p.getC_Payment_ID();
		}
		return -1;
	}	//	createPayment
}	//	BankStatementMatcher
