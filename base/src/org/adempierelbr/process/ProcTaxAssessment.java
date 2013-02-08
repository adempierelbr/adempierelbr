package org.adempierelbr.process;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRTaxAssessment;
import org.adempierelbr.model.MLBRTaxName;
import org.adempierelbr.model.X_LBR_TaxAssessment;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Apuração de Impostos
 *  Processo de apuração de impostos genérico para IPI e ICMS
 *	
 *  @author Pablo Boff Pigozzo
 *  @version $Id: ProcTaxAssessment.java, 28/08/2012 10:37 pablobp $
 */
public class ProcTaxAssessment extends SvrProcess
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
		//
		MathContext mc = new MathContext(12);
		
		// validar record ID
		int Record_ID  = getRecord_ID();
		if (Record_ID == 0)
			throw new IllegalArgumentException("LBR_Assessment_ID = 0");

		
		// carregar apuração
		X_LBR_TaxAssessment m_taxassesment = new X_LBR_TaxAssessment(getCtx(), Record_ID, get_TrxName());
		
		
		// Fatos Fiscais
		MLBRFactFiscal[] factFiscals = MLBRFactFiscal.get(getCtx(), 
				m_taxassesment.getC_Period().getStartDate(), 
				m_taxassesment.getC_Period().getEndDate(), 
				m_taxassesment.getAD_Org_ID(), 
				null, get_TrxName());
		
		
		// 
		BigDecimal IPIAmtCredit = Env.ZERO;
		BigDecimal IPIAmtDebit = Env.ZERO;
		BigDecimal ICMSAmtCredit = Env.ZERO;
		BigDecimal ICMSAmtDebit = Env.ZERO;
		
		// 
		BigDecimal Credit = Env.ZERO;
		BigDecimal Debit = Env.ZERO;
		
		
		// loop fatos fiscais
		for (MLBRFactFiscal m_factfiscal : factFiscals)
		{
			
			/** Conjunto de regras iniciais que não gerão valores de apuração */
			
			/*
			 * CFOP - 5/6.929 - NF emitida em substituição do CUPOM FISCAL
			 */
			if (m_factfiscal.getlbr_CFOPName()!=null && (m_factfiscal.getlbr_CFOPName().equals("5.929")
					|| m_factfiscal.getlbr_CFOPName().equals("6.929")))
				continue;
			
			/*
			 * NF cancelada
			 */
			if(m_factfiscal.isCancelled())
				continue;
			
			
			/*
			 * Se a empresa não apura IPI e ST e tem ST na linha, não se creditar do ICMS
			 * pois esse já foi pago anteriormente
			 * 
			 * Obs.: Ver regra no RC100
			 */
			if ((!m_factfiscal.getlbr_IndAtividade().equals("0") && !m_factfiscal.isSOTrx()))
			{
				
				// se não tiver ST na linha, se creditar do ICMS
				if (m_factfiscal.getICMSST_TaxAmt().signum() < 1)
					ICMSAmtCredit = ICMSAmtCredit.add(m_factfiscal.getICMS_TaxAmt(), mc);
				
				// continuar e não se creditar de IPI
				continue;
			}
			
			
			
			// débitos
			if(m_factfiscal.isSOTrx())
			{
				ICMSAmtDebit = ICMSAmtDebit.add(m_factfiscal.getICMS_TaxAmt(), mc);
				IPIAmtDebit = IPIAmtDebit.add(m_factfiscal.getIPI_TaxAmt(), mc);
			}
			
			// crédito
			else
			{
				ICMSAmtCredit = ICMSAmtCredit.add(m_factfiscal.getICMS_TaxAmt(), mc);
				IPIAmtCredit = IPIAmtCredit.add(m_factfiscal.getIPI_TaxAmt(), mc);
			}
			
		}
		
		// nome do imposto (ICMS/IPI)
		String taxName = new MLBRTaxName(getCtx(), m_taxassesment.getLBR_TaxName_ID(), get_TrxName()).getName();
		
		// outros crédito/débitos
		BigDecimal otherCredit = getOtherCredit(Record_ID);
		BigDecimal otherDebit  = getOtherDebit(Record_ID);
		
		// valor acumulado do mês anterior
		BigDecimal cumulatedAmt = MLBRTaxAssessment.getCumulatedAmt(getCtx(), 
				m_taxassesment.getC_Period_ID(),
				m_taxassesment.getAD_Org_ID(),
				m_taxassesment.getLBR_TaxName_ID());
		
		// definir imposto que se está apurando
		if(taxName.contains("IPI"))
		{
			Credit = IPIAmtCredit;
			Debit = IPIAmtDebit;
		} 
		else if (taxName.contains("ICMS"))
		{
			Credit = ICMSAmtCredit;
			Debit = ICMSAmtDebit;
		}
		
		// crédito e débito
		m_taxassesment.setTotalCr(Credit.setScale(2, RoundingMode.HALF_UP));
		m_taxassesment.setTotalDr(Debit.setScale(2, RoundingMode.HALF_UP));	
		
		// valor total = cumulatedAmt + (credit+otherCredit)-(debit+otherDebit)
		BigDecimal totalAmt = cumulatedAmt.add((m_taxassesment.getTotalCr().add(otherCredit)).subtract(m_taxassesment.getTotalDr().add(otherDebit)));
		
		// salvar total
		if(totalAmt.signum() == 1)
		{
			m_taxassesment.setLBR_SaldoCredorTrasnportar(Env.ZERO);
			m_taxassesment.setTotalAmt(totalAmt.setScale(2, RoundingMode.HALF_UP));
		}
		else
		{
			m_taxassesment.setLBR_SaldoCredorTrasnportar(totalAmt.abs().setScale(2, RoundingMode.HALF_UP));
			m_taxassesment.setTotalAmt(Env.ZERO);
		}
		
		// 
		m_taxassesment.save();
		
		
		//
		return "";
	}
	
	
	/**
	 * Outros créditos da apuração.
	 * 
	 * Ajustes e outros
	 * 
	 * @param LBR_TaxAssessment_ID
	 * @return
	 */
	private BigDecimal getOtherCredit(int LBR_TaxAssessment_ID){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(al.Amt) 					" +
				     "  FROM LBR_TaxAssessmentLine al 		" +
				     " WHERE al.LBR_TaxAssessment_ID = ? 	" +
				     "   AND al.Type IN ('006','007') 		";
		
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_TaxAssessment_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherCredit
	

	/**
	 * Outros débitos da apuração
	 * 
	 * Ajustes e outros.
	 * 
	 * @param LBR_TaxAssessment_ID
	 * @return
	 */
	private BigDecimal getOtherDebit(int LBR_TaxAssessment_ID){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(al.Amt) 					" +
				     "  FROM LBR_TaxAssessmentLine al 		" +
				     " WHERE al.LBR_TaxAssessment_ID = ? 	" +
				     "   AND al.Type IN ('002','003')		";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, LBR_TaxAssessment_ID);
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getOtherDebit
		
} //ProcApuracaoICMS