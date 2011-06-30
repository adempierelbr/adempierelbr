package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRFactAcct;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.ecd.ECDBalance;
import org.adempierelbr.sped.ecd.ECDUtil;
import org.adempierelbr.sped.ecd.beans.R0000;
import org.adempierelbr.sped.ecd.beans.R0001;
import org.adempierelbr.sped.ecd.beans.R0007;
import org.adempierelbr.sped.ecd.beans.R0990;
import org.adempierelbr.sped.ecd.beans.R9001;
import org.adempierelbr.sped.ecd.beans.R9900;
import org.adempierelbr.sped.ecd.beans.R9990;
import org.adempierelbr.sped.ecd.beans.R9999;
import org.adempierelbr.sped.ecd.beans.RI001;
import org.adempierelbr.sped.ecd.beans.RI010;
import org.adempierelbr.sped.ecd.beans.RI030;
import org.adempierelbr.sped.ecd.beans.RI050;
import org.adempierelbr.sped.ecd.beans.RI051;
import org.adempierelbr.sped.ecd.beans.RI150;
import org.adempierelbr.sped.ecd.beans.RI155;
import org.adempierelbr.sped.ecd.beans.RI250;
import org.adempierelbr.sped.ecd.beans.RI990;
import org.adempierelbr.sped.ecd.beans.RJ001;
import org.adempierelbr.sped.ecd.beans.RJ900;
import org.adempierelbr.sped.ecd.beans.RJ930;
import org.adempierelbr.sped.ecd.beans.RJ990;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MElementValue;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 * 	Generate ECD (ESCRITURAÇÃO CONTÁBIL DIGITAL) Files
 *
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @contributor Mario Grigioni, mgrigioni
 * @version $Id: ProcGenerateECD.java, 22/12/2010, 10:52:00, mgrigioni
 */
public class ProcGenerateECD extends SvrProcess {
	
	/** Arquivo 							*/
	private String p_FilePath = null;

	/** Periodo a ser pesquisado 			*/
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;

	/** Organização 						*/
	private int p_AD_Org_ID = 0;
	
	/** Número da Ordem de Escrituração     */
	private int p_NUM_ORD = 0;

	/**	Contador de Registros	*/
	private Map<String, ArrayList<RI250>> _I250 = new HashMap<String, ArrayList<RI250>>();

	/**	Arrays					*/
	private ArrayList<Integer>   _AccountUnq  = new ArrayList<Integer> ();

	/** Tipo de Escrituração	*/
	private String p_Type = ECDUtil.DIARIO_GERAL[0]; //G

	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp) para[i].getParameter();
				p_DateTo = (Timestamp) para[i].getParameter_To();
			}
			else if (name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("lbr_IndEscC"))
				p_Type = para[i].getParameter().toString();
			else if (name.equals("NUM_ORD"))
				p_NUM_ORD = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}	//	for
	}	//	prepare

	/**
	 * Do It
	 */
	protected String doIt () throws Exception
	{	
		//
		long start = System.currentTimeMillis();
		//
		Properties ctx = Env.getCtx();

		if (p_AD_Org_ID == 0)
			throw new Exception("@AD_Org_ID@ @Mandatory@");
		if (p_DateFrom == null || p_DateTo == null)
			throw new Exception("@lbr_DocDate@ @Mandatory@");

		String fileName = p_FilePath;
		StringBuffer result = runSPED (ctx);

		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();

		fileName += "ECD_" + TextUtil.timeToString(p_DateFrom, "ddMMyyyy")
				+ TextUtil.timeToString(p_DateTo, "ddMMyyyy") + ".txt";

		TextUtil.generateFile(result.toString(), fileName);

		//
		long end = System.currentTimeMillis();

		String tempoDecorrido = AdempiereLBR.executionTime(start, end);

		return "Arquivo(s) Gerado(s) com Sucesso: " + fileName +
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>";
	}	//	doIt

	/**
	 * @param ctx
	 * @return
	 * @throws Exception
	 */
	private StringBuffer runSPED (Properties ctx) throws Exception {
		
		String trxName = get_TrxName();
		ECDUtil.setEnv(ctx, trxName);
		//
		int count = 0;
		int aux   = 1;
		//
		MOrgInfo oi = new MOrg(Env.getCtx(), p_AD_Org_ID, null).getInfo();
		MLocation lOrg = new MLocation(ctx, oi.getC_Location_ID(), trxName);
		//
		//		Results	
		StringBuffer result_B0 = new StringBuffer("");
		StringBuffer result_BI_1 = new StringBuffer("");
		StringBuffer result_BI_2 = new StringBuffer("");
		StringBuffer result_BI_3 = new StringBuffer("");
		StringBuffer result_BI_2A = new StringBuffer("");
		StringBuffer result = new StringBuffer("");
		//
		String orgCityCode = BPartnerUtil.getCityCode(lOrg);

		R0000 r0000 = new R0000 (p_DateFrom, p_DateTo, (String)
				oi.get_Value("lbr_LegalEntity"), (String) oi.get_Value("lbr_CNPJ"),
				lOrg.getRegionName(), (String) oi.get_Value("lbr_IE"),
				orgCityCode, (String) oi.get_Value("lbr_CCM"), null);
		//
		R0007 r0007 = new R0007 (lOrg.getRegionName(), (String) oi.get_Value("lbr_IE"));
		result_B0.append(r0007);
		//
		RI010 rI010 = new RI010 (p_Type);
		result_BI_1.append(rI010);

		MLBRFactAcct[] facts = MLBRFactAcct.getFactAcct(ctx,p_DateFrom, p_DateTo,trxName);
		count = facts.length;
		for (MLBRFactAcct fact : facts) {
			//
			String ident = ""+fact.getAD_Table_ID()+fact.getRecord_ID();
			BigDecimal valor = fact.getAmtAcctDr().subtract(fact.getAmtAcctCr());
			MElementValue ev = new MElementValue (getCtx(), fact.getAccount_ID(), null);
			//
			if (valor == null || valor.compareTo(Env.ZERO) == 0
					|| fact.getDocStatus() == null || !fact.getDocStatus().equals("CO"))
				continue;

			log.info("Processado: " + String.format("%,.5f",(((double)aux/(double)count)*100)) + "%");
			aux++;
			
			result_BI_2.append(uniqAccount(ev, p_DateTo));

			RI250 rI250 = new RI250 (ev.getValue(), null, valor,
					String.valueOf(fact.getFact_Acct_ID()), null, fact.getDescription(),
					null, fact.getDateAcct(), ident);
			//
			ArrayList<RI250> list = _I250.get(ident);
			if (list == null)
				list = new ArrayList<RI250>();
			list.add(rI250);
			_I250.put(ident, list);
		}	//	for FactAcct

		for (Object key : _I250.keySet().toArray())
		{
			if (key instanceof String)
			{
				ArrayList<RI250> list = _I250.get((String) key);
				result_BI_3.append(RI250.getRI200 ((String) key));
				//
				for (RI250 rI250 : list)
				{
					result_BI_3.append(rI250);
				}
			}
		}
		//
		RI150 rI150 = new RI150 (p_DateFrom, p_DateTo);
		result_BI_2A.append(rI150);
		//
		ECDBalance[] balances = ECDBalance.getBalances (p_DateFrom, p_DateTo, _AccountUnq);
		for (ECDBalance balance : balances)
		{
			BigDecimal totDebit;
			BigDecimal totCredit;
			BigDecimal[] saldos = ECDBalance.getBalance(balance.getAccount().getValue());
			//
			if (saldos != null)
			{
				totDebit  = saldos[0];
				totCredit = saldos[1];
			}
			else
			{
				totDebit  = Env.ZERO;
				totCredit = Env.ZERO;
			}
			//	Todos valores zerados não considerar
			if (totDebit.compareTo(Env.ZERO) == 0
					&& totCredit.compareTo(Env.ZERO) == 0
					&& balance.getBeginBalance().compareTo(Env.ZERO) == 0)
				continue;
			//
			result_BI_2.append(uniqAccount(balance.getAccount(),p_DateTo));
			//
			RI155 rI155 = new RI155 (balance, totDebit, totCredit);
			result_BI_2A.append(rI155);
		}	//	for
		//	Contas superiores
		result_BI_2.append(RI050.getAccountParent());
		//	Adiciona os saldos
		result_BI_2.append(result_BI_2A);
		
		String NIRE = oi.get_ValueAsString("lbr_NIRE");
		Timestamp dtArq = (Timestamp)oi.get_Value("lbr_DtArq");

		RI030 rI030 = new RI030 (p_NUM_ORD, "DIARIO GERAL",
				(String) oi.get_Value("lbr_LegalEntity"),
				NIRE, (String) oi.get_Value("lbr_CNPJ"), dtArq, dtArq, lOrg.getCity());
		result_BI_1.append(rI030);

		
		// Montagem do Resultado
		Boolean has0 = false;
		Boolean hasI = false;

		//
		if (result_B0.length() > 0)	has0 = true;
		if (result_BI_1.length() > 0
				|| result_BI_3.length() > 0)
			hasI = true;
		//
		
		result.append(r0000);
		result.append(new R0001 (has0));
		result.append(result_B0);
		result.append(new R0990());
		//
		result.append(new RI001 (hasI));
		result.append(result_BI_1);
		result.append(result_BI_2);
		result.append(result_BI_3);
		result.append(new RI990());
		//
		RJ900 rJ900 = new RJ900 (p_NUM_ORD, p_Type,
				(String) oi.get_Value("lbr_LegalEntity"), p_DateFrom, p_DateTo);

		MBPartner bpCont = new MBPartner (ctx, (Integer) oi.get_Value("LBR_BP_Accountant_ID"), null);
		result.append(new RJ001(true));
		result.append(rJ900);
		RJ930 rJ930 = new RJ930 (bpCont.getName(), bpCont.get_ValueAsString("lbr_CPF"), "Contador", "900", bpCont.get_ValueAsString("lbr_CRC"));
		result.append(rJ930);
		bpCont = new MBPartner (ctx, (Integer) oi.get_Value("LBR_BP_Director_ID"), null);
		rJ930 = new RJ930 (bpCont.getName(), bpCont.get_ValueAsString("lbr_CPF"), "Diretor", "203", null);
		result.append(rJ930);
		result.append(new RJ990());
		//
		result.append(new R9001(true));
		//
		R9990 r9990 = new R9990();
		R9999 r9999 = new R9999();
		
		R9900[] contRegistros = ECDUtil.createR9900();
		for(R9900 registro : contRegistros){
			result.append(registro);
		}
		//
		result.append(r9990);
		result.append(r9999);
		//
		return new StringBuffer(result.toString().replace("XXXXQtdTotalDeLinhasXXXX",Long.toString(CounterSped.getTotalCounter())));
	}	//	runSPED
	
	private String uniqAccount(MElementValue ev, Timestamp DT_FIN){
		
		StringBuffer result = new StringBuffer("");
		if (!_AccountUnq.contains(ev.getC_ElementValue_ID()))
		{
			RI050 rI050 = new RI050 (DT_FIN, ev.getCreated(), ev.getAccountType(), "A", ev.getValue(), ev.getName());
			RI051 rI051 = new RI051 (null, ev.get_ValueAsString("Description2"));
			//
			result.append(rI050);
			result.append(rI051);
			//
			_AccountUnq.add(ev.getC_ElementValue_ID());
		}
		
		return result.toString();
	} //uniqAccount
	
}	//	ProcGenerateECD