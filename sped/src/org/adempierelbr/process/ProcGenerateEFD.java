package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.efd.EFDUtil;
import org.adempierelbr.sped.efd.beans.R0001;
import org.adempierelbr.sped.efd.beans.R0100;
import org.adempierelbr.sped.efd.beans.R0150;
import org.adempierelbr.sped.efd.beans.R0190;
import org.adempierelbr.sped.efd.beans.R0200;
import org.adempierelbr.sped.efd.beans.R0990;
import org.adempierelbr.sped.efd.beans.R1001;
import org.adempierelbr.sped.efd.beans.R1990;
import org.adempierelbr.sped.efd.beans.R9001;
import org.adempierelbr.sped.efd.beans.R9900;
import org.adempierelbr.sped.efd.beans.R9990;
import org.adempierelbr.sped.efd.beans.R9999;
import org.adempierelbr.sped.efd.beans.RC001;
import org.adempierelbr.sped.efd.beans.RC100;
import org.adempierelbr.sped.efd.beans.RC170;
import org.adempierelbr.sped.efd.beans.RC190;
import org.adempierelbr.sped.efd.beans.RC990;
import org.adempierelbr.sped.efd.beans.RD001;
import org.adempierelbr.sped.efd.beans.RD990;
import org.adempierelbr.sped.efd.beans.RE001;
import org.adempierelbr.sped.efd.beans.RE100;
import org.adempierelbr.sped.efd.beans.RE500;
import org.adempierelbr.sped.efd.beans.RE510;
import org.adempierelbr.sped.efd.beans.RE990;
import org.adempierelbr.sped.efd.beans.RG001;
import org.adempierelbr.sped.efd.beans.RG990;
import org.adempierelbr.sped.efd.beans.RH001;
import org.adempierelbr.sped.efd.beans.RH990;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * ESCRITURAÇÃO FISCAL DIGITAL - EFD
 * 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateEFD, 07/02/2011, 09:43, mgrigioni
 */
public class ProcGenerateEFD extends SvrProcess
{
	/** Arquivo   */
	private String p_FilePath = null;
	
	/** Período   */
	private int p_C_Period_ID = 0;
	
	private Set<R0150> _R0150 = new LinkedHashSet<R0150>();
	private Set<R0190> _R0190 = new LinkedHashSet<R0190>();
	private Set<R0200> _R0200 = new LinkedHashSet<R0200>();
	
	private List<RegSped> _RE110 = new ArrayList<RegSped>(); //List de beans para saldo do icms
	
	private Map<Integer,RC100>      _RC100 = new HashMap<Integer,RC100>();
	private Map<Integer,Set<RC170>> _RC170 = new HashMap<Integer,Set<RC170>>();
	
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
			throw new IllegalArgumentException("@C_Period_ID@ @Mandatory@");
		
		MPeriod period = new MPeriod(getCtx(),p_C_Period_ID,null);
		Timestamp dateFrom = period.getStartDate();
		Timestamp dateTo   = period.getEndDate();
		
		String fileName = p_FilePath;
		StringBuilder result = runEFD(dateFrom,dateTo);
		
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();
		
		fileName += "EFD_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
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
	private StringBuilder runEFD(Timestamp dateFrom, Timestamp dateTo) throws Exception
	{
		log.fine("init");
		EFDUtil.setEnv(getCtx(),get_TrxName());
		CounterSped.clear();
		
		//Blocos do SPED
		StringBuilder BLOCO0 = new StringBuilder(""); //Abertura, Identificação e Referências
		StringBuilder BLOCOC = new StringBuilder(""); //Documentos Fiscais I – Mercadorias (ICMS/IPI)
		StringBuilder BLOCOD = new StringBuilder(""); //Documentos Fiscais II – Serviços (ICMS)
		StringBuilder BLOCOE = new StringBuilder(""); //Apuração do ICMS e do IPI
		StringBuilder BLOCOG = new StringBuilder(""); //Controle do Crédito de ICMS do Ativo Permanente – CIAP
		StringBuilder BLOCOH = new StringBuilder(""); //Inventário Físico
		StringBuilder BLOCO1 = new StringBuilder(""); //Outras Informações
		StringBuilder BLOCO9 = new StringBuilder(""); //Controle e Encerramento do Arquivo Digital
		
		//Notas Fiscais Período
		MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(dateFrom,dateTo,get_TrxName());
		
		BLOCO0.append(EFDUtil.createR0000(dateFrom,dateTo));
		BLOCO0.append(new R0001(nfs.length > 0));
		BLOCO0.append(EFDUtil.createR0005());
		
		R0100 r0100 = EFDUtil.createR0100(); //CONTADOR
		if (r0100 != null)
			BLOCO0.append(r0100);

		int count = nfs.length;
		int aux   = 1;
		for (MLBRNotaFiscal nf : nfs){
			
			log.info("Processado: " + String.format("%,.5f",(((double)aux/(double)count)*100)) + "%");
			aux++;
			
			String COD_MOD  = nf.get_ValueAsString("lbr_NFModel").isEmpty() ? "01" : nf.get_ValueAsString("lbr_NFModel");
			String IND_EMIT = nf.islbr_IsOwnDocument() ? "0" : "1"; //0 = Própria, 1 = Terceiros
			String nfReg    = EFDUtil.getNFHeaderReg(COD_MOD); //Cabeçalho da NFe
			
			if (!(nfReg.startsWith("C") /*|| nfReg.startsWith("D")*/)){
				continue; //NAO PERTENCE AOS BLOCOS C OU D
			}
			
			//Cadastro de Parceiros de Negócios
			R0150 r0150 = EFDUtil.createR0150(nf);
			if (r0150 != null){
				if (_R0150.contains(r0150))
					r0150.subtractCounter();
				else
					_R0150.add(r0150);
			}
			
			String COD_PART = r0150 == null ? "" : r0150.getCOD_PART(); 
			
			RC100 rc100 = null;
			
			if (nfReg.startsWith("C")){
				if (BLOCOC.length() == 0) //INICIA BLOCO C
					BLOCOC.append(new RC001(true));
				
				//REGISTROS C100
				if (nfReg.equals("C100")){
					rc100 = EFDUtil.createRC100(nf, COD_PART, COD_MOD, IND_EMIT);
					if (_RC100.containsKey(rc100.hashCode())){
						RC100 oldRC100 = _RC100.get(rc100.hashCode());
						rc100.addValues(oldRC100);
						rc100.subtractCounter();
					}
					_RC100.put(rc100.hashCode(),rc100);
				} //FIM C100
				
			}
			else {
				if (BLOCOD.length() == 0) //INICIA BLOCO D
					BLOCOD.append(new RD001(true));
			}
			
			if (nf.isCancelled()) //NF Cancelada não precisa de registros detalhados
				continue;
			
			MLBRNotaFiscalLine[] nfLines = nf.getLines("Line");
			for (MLBRNotaFiscalLine nfLine : nfLines){
				
				R0190 r0190 = null; //UDM
				R0200 r0200 = null; //PRODUTO
				
				//BF: Não criar detalhes quando for NFe de emissão própria
				if (!(COD_MOD.equals("55") && IND_EMIT.equals("0"))){ 
				
					r0190 = EFDUtil.createR0190(nfLine);
					if (_R0190.contains(r0190))
						r0190.subtractCounter();
					else
						_R0190.add(r0190);
					
					r0200 = EFDUtil.createR0200(nfLine);
					if (_R0200.contains(r0200))
						r0200.subtractCounter();
					else
						_R0200.add(r0200);
				}
				
				String COD_ITEM  = r0200 == null ? "SEM CODIGO" : r0200.getCOD_ITEM();
				String TIPO_ITEM = r0200 == null ? "99" : r0200.getTIPO_ITEM();
				String UNID      = r0190 == null ? "UN" : r0190.getUNID();
				
				//REGISTROS FILHOS DO C100
				if (nfReg.equals("C100")){
					
					//ITENS DO DOCUMENTO C170
					Set<RC170> setRC170 = _RC170.get(rc100.hashCode());
					if (setRC170 == null)
						setRC170 = new LinkedHashSet<RC170>();
				
					int line = setRC170.size() + 1;
					RC170 rc170 = EFDUtil.createRC170(nfLine, COD_ITEM, TIPO_ITEM, UNID, line);
					setRC170.add(rc170);
					_RC170.put(rc100.hashCode(), setRC170);
					//FIM C170
				}
					
			} //loop Linhas da Nota Fiscal
			
			
		} //loop Nota Fiscal
		
		//MONTA BLOCO 0
		for (R0150 r0150 : _R0150){ //PARCEIROS
			BLOCO0.append(r0150);
		}
		
		for (R0190 r0190 : _R0190){ //UDMS
			BLOCO0.append(r0190);
		}
		
		for (R0200 r0200 : _R0200){ //PRODUTOS
			BLOCO0.append(r0200);
		}
		
		BLOCO0.append(new R0990());
		//FIM BLOCO 0
		
		//MONTA BLOCO C
		RC100[] arrayRC100 = new RC100[_RC100.size()];
		_RC100.values().toArray(arrayRC100);
		Arrays.sort(arrayRC100);
		for (RC100 rc100 : arrayRC100){
			BLOCOC.append(rc100);
			
			if (_RC170.containsKey(rc100.hashCode())){
				Set<RC170> setRC170 = _RC170.get(rc100.hashCode());
				RC170[] arrayRC170 = new RC170[setRC170.size()];
				setRC170.toArray(arrayRC170);
				Arrays.sort(arrayRC170);
				for(RC170 rc170 : arrayRC170){
					if (rc100.getCOD_MOD().equals("55") && 
						rc100.getIND_EMIT().equals("0")) //NFe própria não informar C170
						rc170.subtractCounter();
					else{
						BLOCOC.append(rc170);
					}
				}  //loop C170
				
				RC190[] arrayRC190 = EFDUtil.createRC190(setRC170);
				for(RC190 rc190 : arrayRC190){
					_RE110.add(rc190);
					BLOCOC.append(rc190);
				} //loop C190
				
			} // verifica se a NF possui itens
			
		} //loop C100
		
		BLOCOC.append(new RC990());
		//FIM BLOCO C
		
		//MONTA BLOCO D
		BLOCOD.append(new RD001(false));
		BLOCOD.append(new RD990());
		//FIM BLOCO D
		
		//MONTA BLOCO E
		if (CounterSped.getBlockCounter("C") > 2 || CounterSped.getBlockCounter("D") > 2){
			BLOCOE.append(new RE001(true));
			BLOCOE.append(new RE100(dateFrom,dateTo));
			BLOCOE.append(EFDUtil.createRE110(dateFrom, _RE110));
			BLOCOE.append(new RE500(dateFrom,dateTo));
			
			RE510[] arrayRE510 = EFDUtil.createRE510(_RC170);
			for(RE510 re510 : arrayRE510){
				BLOCOE.append(re510);
			} //loop E510
			
			BLOCOE.append(EFDUtil.createRE520(dateFrom, arrayRE510));
			BLOCOE.append(new RE990());
		}
		//FIM BLOCO E
		
		//MONTA BLOCO G
		BLOCOG.append(new RG001(false));
		BLOCOG.append(new RG990());
		//FIM BLOCO G
		
		//MONTA BLOCO H
		BLOCOH.append(new RH001(false));
		BLOCOH.append(new RH990());
		//FIM BLOCO H
		
		//MONTA BLOCO 1
		BLOCO1.append(new R1001(false));
		BLOCO1.append(new R1990());
		//FIM BLOCO 1
		
		//MONTA BLOCO 9
		BLOCO9.append(new R9001(true));
		R9990 r9990 = new R9990();
		R9999 r9999 = new R9999();
		
		R9900[] contRegistros = EFDUtil.createR9900();
		for(R9900 registro : contRegistros){
			BLOCO9.append(registro);
		}
		//
		BLOCO9.append(r9990);
		BLOCO9.append(r9999);
		//FIM BLOCO 9
		
		//Monta string final
		StringBuilder result = BLOCO0.append(BLOCOC).append(BLOCOD).append(BLOCOE)
		               .append(BLOCOG).append(BLOCOH).append(BLOCO1).append(BLOCO9);
		
		return result;
	}	//	runEFD
				
}	//	ProcGenerateEFD