package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.simp.SacredSimpUtil;
import org.adempierelbr.sacred.simp.beans.B0R0001;
import org.adempierelbr.sacred.simp.beans.B0R0150;
import org.adempierelbr.sacred.simp.beans.B0R0300;
import org.adempierelbr.sacred.simp.beans.B0R0990;
import org.adempierelbr.sacred.simp.beans.B5R5001;
import org.adempierelbr.sacred.simp.beans.B5R5315;
import org.adempierelbr.sacred.simp.beans.B5R5325;
import org.adempierelbr.sacred.simp.beans.B5R5330;
import org.adempierelbr.sacred.simp.beans.B5R5335;
import org.adempierelbr.sacred.simp.beans.B5R5350;
import org.adempierelbr.sacred.simp.beans.B5R5990;
import org.adempierelbr.sacred.simp.beans.B9R9001;
import org.adempierelbr.sacred.simp.beans.B9R9900;
import org.adempierelbr.sacred.simp.beans.B9R9990;
import org.adempierelbr.sacred.simp.beans.B9R9999;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 * Sistema Simplificado de Apuração do Crédito Acumulado
 * 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateSacredSimp, 14/04/2010, 15:01, mgrigioni
 */
public class ProcGenerateSacredSimp extends SvrProcess
{
	/** Arquivo   */
	private String p_FilePath = null;
	
	/** Período   */
	private int p_C_Period_ID = 0;
	
	private BigDecimal IVA          = Env.ZERO;
	private BigDecimal medICMS      = Env.ZERO;
	private BigDecimal valorSaida   = Env.ZERO;
	private BigDecimal icmsSaida    = Env.ZERO;
	private BigDecimal valorEntrada = Env.ZERO;
	private BigDecimal icmsEntrada  = Env.ZERO;
	
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
			else if (name.equals("C_Period_ID"))
				p_C_Period_ID = para[i].getParameterAsInt();
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
		if (p_C_Period_ID == 0)
			throw new IllegalArgumentException("Período == 0");
		
		MPeriod period = new MPeriod(getCtx(),p_C_Period_ID,null);
		Timestamp dateFrom = period.getStartDate();
		Timestamp dateTo   = period.getEndDate();
		
		String fileName = p_FilePath;
		StringBuffer result = runSACRED(dateFrom,dateTo);
		
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();
		
		fileName += "SACRED_SPL_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
		TextUtil.generateFile(result.toString(), fileName);
		
		//
		long end = System.currentTimeMillis();
		
		String tempoDecorrido = AdempiereLBR.executionTime(start, end);
		
		return "Arquivo(s) Gerado(s) com Sucesso: " + fileName + 
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>" +
		       " <font color=\"000000\">" +
		       " <br>** IVA = " + TextUtil.bigdecimalFormat(IVA) + 
		       " <br>** MED ICMS = " + TextUtil.bigdecimalFormat(medICMS) +
		       " <br>** CUSTO = " + TextUtil.bigdecimalFormat(SacredSimpUtil.custo) +
		       " <br>** SAIDAS = " + TextUtil.bigdecimalFormat(valorSaida) + ", ICMS = " + TextUtil.bigdecimalFormat(icmsSaida) +
		       " <br>** ENTRADAS = " + TextUtil.bigdecimalFormat(valorEntrada) + ", ICMS = " + TextUtil.bigdecimalFormat(icmsEntrada) +
		       " </font>";

	}	//	doIt
	
	/**
	 * @param ctx
	 * @return
	 * @throws Exception
	 */
	private StringBuffer runSACRED (Timestamp dateFrom, Timestamp dateTo) throws Exception
	{
		log.fine("init");
		StringBuffer result = new StringBuffer();
		SacredSimpUtil.setEnv(getCtx(),get_TrxName());
		CounterSacred.clear();
		//Notas Fiscais Período
		MLBRNotaFiscal[] nfs = SacredSimpUtil.getNotaFiscal(dateFrom, dateTo, true);
		
		IVA          = SacredSimpUtil.getIVA(dateFrom, dateTo); //IVA Período
		medICMS      = SacredSimpUtil.getMedICMS(dateFrom, dateTo); //Média ICMS Compras Período
		valorSaida   = SacredSimpUtil.getValor(dateFrom, dateTo, true); //Valor Contábil Saída
		icmsSaida    = SacredSimpUtil.getValorICMS(dateFrom, dateTo, true); // Valor ICMS Saída
		valorEntrada = SacredSimpUtil.getValor(dateFrom, dateTo, false); //Valor Contábil Entrada
		icmsEntrada  = SacredSimpUtil.getValorICMS(dateFrom, dateTo, false); //Valor ICMS Entrada
		
	//START BLOCO 0
		result.append(SacredSimpUtil.createR0000(dateFrom));
		
		if (nfs.length > 0)
			result.append(new B0R0001("0")); //BLOCO COM DADOS
		
		//REGISTRO 0150 - CADASTRO PARCEIROS - NIVEL 2
		for(MLBRNotaFiscal nf : nfs){
			if (nf.isCancelled())
				continue; //NAO LANCAR DOCUMENTOS CANCELADOS
			
			B0R0150 r0150 = SacredSimpUtil.createR0150(nf);
			if (r0150 != null)
				result.append(r0150);
		}
		
		//REGISTRO 0300 - ENQUADRAMENTO LEGAL - NIVEL 2
		ArrayList<B0R0300> r0300s = SacredSimpUtil.createR0300();
		for(B0R0300 r0300 : r0300s){
			result.append(r0300);
		}
		
		result.append(new B0R0990());
	//END BLOCO 0
		
	//START BLOCO 5
		
		if (nfs.length > 0)
			result.append(new B5R5001("0")); //BLOCO COM DADOS
		
		//REGISTRO 5315 - OPERAÇÕES DE SAÍDA - NIVEL 2
		for(MLBRNotaFiscal nf : nfs){
			if (nf.isCancelled())
				continue; //NAO LANCAR DOCUMENTOS CANCELADOS
			
			B5R5315 r5315 = SacredSimpUtil.createR5315(nf);
			if (r5315 != null){
				result.append(r5315);
				
				//REGISTRO 5325 - OPERACOES GERADORAS DE CREDITO - NIVEL 3
				B5R5325 r5325 = SacredSimpUtil.createR5325(nf,IVA,medICMS);
				if (r5325 != null){
					result.append(r5325);
					
					//REGISTRO 5330 - OPERACOES GERADORAS - NIVEL 4
					//FICHAS 6A e 6B
					if (r5325.getCOD_LEGAL().equals("0001") || // FORA 7%
						r5325.getCOD_LEGAL().equals("0002") || // FORA 12%	
						r5325.getCOD_LEGAL().equals("0003") || // INTERNO 7 %
						r5325.getCOD_LEGAL().equals("0004") || // INTERNO OUTROS
						r5325.getCOD_LEGAL().equals("0006")){  // RED. BASE CALCULO
						
						B5R5330 r5330 = SacredSimpUtil.createR5330(nf);
						if (r5330 != null)
							result.append(r5330);
						
					} //6A e 6B
					
					//REGISTRO 5335 - OPERACOES GERADORAS - NIVEL 4
					//FICHAS 6C e 6D
					if (r5325.getCOD_LEGAL().equals("0007") || // EXPORTACAO
						r5325.getCOD_LEGAL().equals("0009")){  // ZONA FRANCA
						
						B5R5335 r5335 = SacredSimpUtil.createR5335(nf);
						if (r5335 != null)
							result.append(r5335);
							
					} //6C e 6D
					
				} //B5R5325
				else{
					//REGISTRO 5350 - OPERACOES NAO GERADORAS DE CREDITO - NIVEL 3
					B5R5350 r5350 = SacredSimpUtil.createR5350(nf);
					if (r5350 != null)
						result.append(r5350);
				} //B5R5350
				
			} //B5R5315
			
		} //loop NF
		
		result.append(new B5R5990());
	//END BLOCO 5
		
		
	//START BLOCO 9
		result.append(new B9R9001());
		
		B9R9900[] contRegistros = SacredSimpUtil.createR9900();
		for(B9R9900 registro : contRegistros){
			result.append(registro);
		}
		
		result.append(new B9R9990());
		result.append(new B9R9999());
	//END BLOCO 9
		
		return result;
	}	//	runSACRED
				
}	//	ProcGenerateSacredSimp