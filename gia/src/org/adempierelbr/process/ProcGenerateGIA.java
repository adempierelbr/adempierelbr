package org.adempierelbr.process;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.beans.CR01;
import org.adempierelbr.gia.beans.CR10;
import org.adempierelbr.gia.beans.CR14;
import org.adempierelbr.gia.beans.CR20;
import org.adempierelbr.gia.util.GIAUtil;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * Geração Arquivo NOVA GIA - 0208a
 *
 * @author Mario Grigioni
 * @version $Id: ProcGenerateGIA, 16/06/2010, 14:50, mgrigioni
 */
public class ProcGenerateGIA extends SvrProcess
{
	/** Arquivo   */
	private String p_FilePath = null;

	/** Período   */
	private int p_C_Period_ID = 0;

	private CR10[] _CR10; //CFOPS
	private CR20[] _CR20; //OCORRENCIAS

	private Map<String,CR14[]> _CR14 = new HashMap<String,CR14[]>(); //DETALHES POR ESTADO

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
			else if (name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else if (name.equals("C_Period_ID")){
				p_C_Period_ID = para[i].getParameterAsInt();
			}
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
		MPeriod period = new MPeriod(getCtx(),p_C_Period_ID,get_TrxName());

		String fileName = p_FilePath;
		StringBuffer result = runGIA(p_C_Period_ID);

		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();

		fileName += "GIA_" + TextUtil.timeToString(period.getStartDate(), "ddMMyyyy")
		                   + TextUtil.timeToString(period.getEndDate(), "ddMMyyyy") + ".prf";

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
	private StringBuffer runGIA (int C_Period_ID) throws Exception
	{
		log.fine("init");
		StringBuffer result = new StringBuffer();
		GIAUtil.setEnv(getCtx(), get_TrxName(), C_Period_ID);
		CounterGIA.clear();

		_CR10 = GIAUtil.createCR10();
		_CR20 = GIAUtil.createCR20();

		result.append(new CR01());
		result.append(GIAUtil.createCR05());

		//DETALHES CFOP
		if(_CR10 != null){
			Arrays.sort(_CR10);
			for(CR10 cfop : _CR10){
				//CRIA DETALHES POR ESTADO - CFOPS 2.XXX e 6.XXX
				if (cfop.getCFOP().charAt(0) == '2' || cfop.getCFOP().charAt(0) == '6'){
					_CR14.put(cfop.getCFOP(), GIAUtil.createCR14(cfop.getCFOP()));
				}

				result.append(cfop);

				if (_CR14.containsKey(cfop.getCFOP())){ //DETALHES INTERESTADUAIS
					CR14[] estados = _CR14.get(cfop.getCFOP());
					Arrays.sort(estados);
					for(CR14 estado : estados){
						result.append(estado);
					} //LOOP ESTADOS
				}
			} //LOOP CFOPS
		}

		if (_CR20 != null){
			for(CR20 ocorrencia : _CR20){
				result.append(ocorrencia);
			}
		}

		return result;
	}	//	runGIA

}	//	ProcGenerateGIA