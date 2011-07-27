package org.adempierelbr.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRApuracaoICMS;
import org.adempierelbr.model.X_LBR_ApuracaoICMS;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Apuracao ICMS
 *  Process to create data for Modelo 9 - Apuracao ICMS
 *	
 *  @author Mario Grigioni
 *  @version $Id: ProcApuracaoICMS.java, 14/06/2010 10:55 mgrigioni Exp $
 */
public class ProcApuracaoICMS extends SvrProcess
{
		
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		Properties ctx = getCtx();
		String     trx = get_TrxName();

		int Record_ID  = getRecord_ID();
		if (Record_ID == 0)
			throw new IllegalArgumentException("LBR_ApuracaoICMS_ID = 0");
		
		X_LBR_ApuracaoICMS apuracao = new X_LBR_ApuracaoICMS(ctx,Record_ID,trx);
		MPeriod period = new MPeriod(ctx,apuracao.getC_Period_ID(),trx);
		
		BigDecimal credit      = getCredit(period.getStartDate(),period.getEndDate());
		BigDecimal otherCredit = getOtherCredit(Record_ID);
		
		BigDecimal debit       = getDebit(period.getStartDate(),period.getEndDate());
		BigDecimal otherDebit  = getOtherDebit(Record_ID);
		
		BigDecimal cumulatedAmt = MLBRApuracaoICMS.getCumulatedAmt(getCtx(),period.get_ID());
		
		apuracao.setTotalCr(credit.setScale(2, RoundingMode.HALF_UP));
		apuracao.setTotalDr(debit.setScale(2, RoundingMode.HALF_UP));	
		
		//cumulatedAmt + (credit+otherCredit)-(debit+otherDebit)
		BigDecimal totalAmt = cumulatedAmt.add((apuracao.getTotalCr().add(otherCredit)).subtract(apuracao.getTotalDr().add(otherDebit)));
		
		apuracao.setTotalAmt(totalAmt.setScale(2, RoundingMode.HALF_UP));
		apuracao.save(trx);
		
		return "Processo Concluído";
	}	//	doIt
	
	private BigDecimal getCredit(Timestamp dateFrom, Timestamp dateTo){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(ValorICMS) as ValorCredito " +
				     "FROM lbr_SitICMS_v " +
				     "WHERE DataEntrada BETWEEN ? AND ? " +
				     "AND (CFOP LIKE '1%' OR CFOP LIKE '2%' OR CFOP LIKE '3%') " +
				     "AND IsCancelled ='N' AND AD_Client_ID = ?";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, 
				new Object[]{dateFrom,dateTo,Env.getAD_Client_ID(getCtx())});
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getCredit
	
	private BigDecimal getOtherCredit(int LBR_ApuracaoICMS_ID){
		
		BigDecimal amt = null;
		
		String sql = "(SELECT SUM(al.Amt) " +
				     "FROM LBR_ApuracaoICMSLine al " +
				     "INNER JOIN LBR_ICMSBasis ba ON (al.LBR_ICMSBasis_ID = ba.LBR_ICMSBasis_ID) " +
				     "WHERE al.LBR_ApuracaoICMS_ID = ? AND al.Type IN ('006','007')  AND ba.Type='P')";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_ApuracaoICMS_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherCredit
	
	private BigDecimal getDebit(Timestamp dateFrom, Timestamp dateTo){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(ValorICMS) as ValorDebito " +
				     "FROM lbr_SitICMS_v " +
				     "WHERE DataEntrada BETWEEN ? AND ? " +
				     "AND (CFOP LIKE '5%' OR CFOP LIKE '6%' OR CFOP LIKE '7%') " +
				     "AND IsCancelled ='N' AND AD_Client_ID = ?";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, 
				new Object[]{dateFrom,dateTo,Env.getAD_Client_ID(getCtx())});
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //geDebit
	
	private BigDecimal getOtherDebit(int LBR_ApuracaoICMS_ID){
		
		BigDecimal amt = null;
		
		String sql = "(SELECT SUM(al.Amt) " +
				     "FROM LBR_ApuracaoICMSLine al " +
				     "INNER JOIN LBR_ICMSBasis ba ON (al.LBR_ICMSBasis_ID = ba.LBR_ICMSBasis_ID) " +
				     "WHERE al.LBR_ApuracaoICMS_ID = ? AND al.Type IN ('002','003') AND ba.Type='P')";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_ApuracaoICMS_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherDebit
		
} //ProcApuracaoICMS