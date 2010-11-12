package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.comp.SacredCompUtil;
import org.adempierelbr.sacred.comp.beans.B0R0001;
import org.adempierelbr.sacred.comp.beans.B0R0150;
import org.adempierelbr.sacred.comp.beans.B0R0200;
import org.adempierelbr.sacred.comp.beans.B0R0300;
import org.adempierelbr.sacred.comp.beans.B0R0990;
import org.adempierelbr.sacred.comp.beans.B5R5001;
import org.adempierelbr.sacred.comp.beans.B5R5310;
import org.adempierelbr.sacred.comp.beans.B5R5315;
import org.adempierelbr.sacred.comp.beans.B5R5325;
import org.adempierelbr.sacred.comp.beans.B5R5330;
import org.adempierelbr.sacred.comp.beans.B5R5335;
import org.adempierelbr.sacred.comp.beans.B5R5350;
import org.adempierelbr.sacred.comp.beans.B5R5990;
import org.adempierelbr.sacred.comp.beans.B9R9001;
import org.adempierelbr.sacred.comp.beans.B9R9900;
import org.adempierelbr.sacred.comp.beans.B9R9990;
import org.adempierelbr.sacred.comp.beans.B9R9999;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 * Sistema de Apuração do ICMS Relativo ao Custo 
 * das Saídas de Mercadorias e Prestações de Serviços
 * 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateSacredComp, 28/10/2010, 12:18, mgrigioni
 */
public class ProcGenerateSacredComp extends SvrProcess
{
	/** Arquivo   */
	private String p_FilePath = null;
	
	/** Período   */
	private int p_C_Period_ID = 0;
		
	private BigDecimal medICMS_INI = Env.ZERO;
	private BigDecimal medICMS_FIM = Env.ZERO;
	
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
		
		fileName += "SACRED_CPL_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
		TextUtil.generateFile(result.toString(), fileName);
		
		//
		long end = System.currentTimeMillis();
		
		String tempoDecorrido = AdempiereLBR.executionTime(start, end);
		
		return "Arquivo(s) Gerado(s) com Sucesso: " + fileName + 
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>" +
		       " <font color=\"000000\">" +
		       " <br>** CREDITO GERADO = " + TextUtil.bigdecimalFormat(SacredCompUtil.credito) +
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
		SacredCompUtil.setEnv(getCtx(),get_TrxName());
		CounterSacred.clear();
		//Notas Fiscais Período
		MLBRNotaFiscal[] nfs = SacredCompUtil.getNotaFiscal(dateFrom, dateTo, true);
		
		MPeriod previous = MPeriod.get(getCtx(), AdempiereLBR.getPreviousPeriod_ID(getCtx(), p_C_Period_ID));
		medICMS_INI = SacredCompUtil.getMedICMS(previous.getStartDate(), previous.getEndDate()); //Média ICMS Compras Período Anterior
		medICMS_FIM = SacredCompUtil.getMedICMS(dateFrom, dateTo); //Média ICMS Compras Período Atual
		
	//START BLOCO 0
		result.append(SacredCompUtil.createR0000(dateFrom));
		
		if (nfs.length > 0)
			result.append(new B0R0001("0")); //BLOCO COM DADOS
		
		StringBuffer b0r0200 = new StringBuffer("");
		
		//REGISTRO 0150 - CADASTRO PARCEIROS - NIVEL 2
		for(MLBRNotaFiscal nf : nfs){
			if (nf.isCancelled())
				continue; //NAO LANCAR DOCUMENTOS CANCELADOS
			
			B0R0150 r0150 = SacredCompUtil.createR0150(nf);
			if (r0150 != null)
				result.append(r0150);
			
			MLBRNotaFiscalLine[] lines = nf.getLines("Line");
			for (MLBRNotaFiscalLine line : lines){
				B0R0200 r0200 = SacredCompUtil.createR0200(line);
				if (r0200 != null)
					b0r0200.append(r0200);
			}
		}
		
		//REGISTRO 0200 - CADASTRO DE ITENS - NIVEL 2
		result.append(b0r0200);
		
		//REGISTRO 0300 - ENQUADRAMENTO LEGAL - NIVEL 2
		ArrayList<B0R0300> r0300s = SacredCompUtil.createR0300();
		for(B0R0300 r0300 : r0300s){
			result.append(r0300);
		}
		
		result.append(new B0R0990());
	//END BLOCO 0
		
	//START BLOCO 5
		
		if (nfs.length > 0)
			result.append(new B5R5001("0")); //BLOCO COM DADOS
		
		//REGISTRO 5310 - ABERTURA FICHA 3A - NIVEL 2
		Map<Integer,ArrayList<Integer>> nflines = SacredCompUtil.getLines(); //ArrayList - LBR_NotaFiscalLine por Produto
		Iterator<Integer> products = nflines.keySet().iterator(); //Iterator dos Produtos
		while(products.hasNext()){
			int M_Product_ID = products.next();
			B5R5310 r5310 = SacredCompUtil.createR5310(M_Product_ID, p_C_Period_ID, medICMS_INI, medICMS_FIM);
			if (r5310 != null){
				result.append(r5310);
				
				ArrayList<Integer> plines = nflines.get(M_Product_ID); //retorna as LBR_NotaFiscalLine associados ao produto
				int numLanc = 0;
				for(Integer pline : plines){
					//REGISTRO 5315 - MOVIMENTACAO DE ITENS - NIVEL 3
					numLanc++;
					B5R5315 r5315 = SacredCompUtil.createR5315(numLanc,p_C_Period_ID,pline); 
					if (r5315 != null){
						result.append(r5315);
						
						if (!r5315.getCOD_LANC().equals("317776")){ // LANCAMENTOS COM CREDITO ACUMULADO
							//REGISTRO 5325 - OPERAÇÕES GERADORAS DE CRÉDITO ACUMULADO - NIVEL 4
							B5R5325 r5325 = SacredCompUtil.createR5325(p_C_Period_ID,medICMS_FIM,r5315.getCOD_LEGAL(),pline);
							if (r5325 != null){
								result.append(r5325);
								
								//REGISTRO 5330 - OPERACOES GERADORAS - NIVEL 5
								//FICHAS 6A e 6B
								if (r5315.getCOD_LEGAL().equals("0001") || // FORA 7%
									r5315.getCOD_LEGAL().equals("0002") || // FORA 12%	
									r5315.getCOD_LEGAL().equals("0003") || // INTERNO 7 %
									r5315.getCOD_LEGAL().equals("0004") || // INTERNO OUTROS
									r5315.getCOD_LEGAL().equals("0006")){  // RED. BASE CALCULO
									
									B5R5330 r5330 = SacredCompUtil.createR5330(pline);
									if (r5330 != null)
										result.append(r5330);
									
								} //6A e 6B
								
								//REGISTRO 5335 - OPERACOES GERADORAS - NIVEL 5
								//FICHAS 6C e 6D
								if (r5315.getCOD_LEGAL().equals("0007") || // EXPORTACAO
									r5315.getCOD_LEGAL().equals("0009")){  // ZONA FRANCA
									
									B5R5335 r5335 = SacredCompUtil.createR5335(pline);
									if (r5335 != null)
										result.append(r5335);
										
								} //6C e 6D
								
								
							}
							
						} //B5R5325
						
						else {
							//REGISTRO 5350 - OPERAÇÕES NÃO GERADORAS DE CRÉDITO ACUMULADO – NIVEL 4
							B5R5350 r5350 = SacredCompUtil.createR5350(pline);
							if (r5350 != null)
								result.append(r5350);
							
						} //B5R5350
						
					} //B5R5315
					
				} // loop Linhas da Nota Fiscal
	
			} //B5R5310
			
		} // loop Produtos
		
		
		result.append(new B5R5990());
	//END BLOCO 5
		
		
	//START BLOCO 9
		result.append(new B9R9001());
		
		B9R9900[] contRegistros = SacredCompUtil.createR9900();
		for(B9R9900 registro : contRegistros){
			result.append(registro);
		}
		
		result.append(new B9R9990());
		result.append(new B9R9999());
	//END BLOCO 9
		
		return result;
	}	//	runSACRED
				
}	//	ProcGenerateSacredComp