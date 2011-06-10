package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.efd.piscofins.EFDUtil_PC;
import org.adempierelbr.sped.efd.piscofins.beans.R0001;
import org.adempierelbr.sped.efd.piscofins.beans.R0100;
import org.adempierelbr.sped.efd.piscofins.beans.R0150;
import org.adempierelbr.sped.efd.piscofins.beans.R0190;
import org.adempierelbr.sped.efd.piscofins.beans.R0200;
import org.adempierelbr.sped.efd.piscofins.beans.R0990;
import org.adempierelbr.sped.efd.piscofins.beans.R1001;
import org.adempierelbr.sped.efd.piscofins.beans.R1990;
import org.adempierelbr.sped.efd.piscofins.beans.R9001;
import org.adempierelbr.sped.efd.piscofins.beans.R9900;
import org.adempierelbr.sped.efd.piscofins.beans.R9990;
import org.adempierelbr.sped.efd.piscofins.beans.R9999;
import org.adempierelbr.sped.efd.piscofins.beans.RA001;
import org.adempierelbr.sped.efd.piscofins.beans.RA100;
import org.adempierelbr.sped.efd.piscofins.beans.RA170;
import org.adempierelbr.sped.efd.piscofins.beans.RA990;
import org.adempierelbr.sped.efd.piscofins.beans.RC001;
import org.adempierelbr.sped.efd.piscofins.beans.RC100;
import org.adempierelbr.sped.efd.piscofins.beans.RC120;
import org.adempierelbr.sped.efd.piscofins.beans.RC170;
import org.adempierelbr.sped.efd.piscofins.beans.RC500;
import org.adempierelbr.sped.efd.piscofins.beans.RC501;
import org.adempierelbr.sped.efd.piscofins.beans.RC505;
import org.adempierelbr.sped.efd.piscofins.beans.RC990;
import org.adempierelbr.sped.efd.piscofins.beans.RD001;
import org.adempierelbr.sped.efd.piscofins.beans.RD100;
import org.adempierelbr.sped.efd.piscofins.beans.RD101;
import org.adempierelbr.sped.efd.piscofins.beans.RD105;
import org.adempierelbr.sped.efd.piscofins.beans.RD500;
import org.adempierelbr.sped.efd.piscofins.beans.RD501;
import org.adempierelbr.sped.efd.piscofins.beans.RD505;
import org.adempierelbr.sped.efd.piscofins.beans.RD990;
import org.adempierelbr.sped.efd.piscofins.beans.RF001;
import org.adempierelbr.sped.efd.piscofins.beans.RF990;
import org.adempierelbr.sped.efd.piscofins.beans.RM001;
import org.adempierelbr.sped.efd.piscofins.beans.RM990;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 * ESCRITURAÇÃO FISCAL DIGITAL - EFD (PIS/COFINS)
 * 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateEFD, 17/02/2011, 11:44, mgrigioni
 */
public class ProcGenerateEFD_PC extends SvrProcess
{
	/** Arquivo   */
	private String p_FilePath = null;
	
	/** Período   */
	private int p_C_Period_ID = 0;
	
	/** Organização */
	private int p_AD_Org_ID = 0;
	
	/** Controle para saber se existe registros no bloco **/
	private boolean hasA = false;
	private boolean hasC = false;
	private boolean hasD = false;
	
	private Set<R0150> _R0150 = new LinkedHashSet<R0150>();
	private Set<R0190> _R0190 = new LinkedHashSet<R0190>();
	private Set<R0200> _R0200 = new LinkedHashSet<R0200>();
		
	private Map<Integer,RA100> _RA100 = new HashMap<Integer,RA100>();
	private Map<Integer,RC100> _RC100 = new HashMap<Integer,RC100>();
	private Map<Integer,RC500> _RC500 = new HashMap<Integer,RC500>();
	private Map<Integer,RD100> _RD100 = new HashMap<Integer,RD100>();
	private Map<Integer,RD500> _RD500 = new HashMap<Integer,RD500>();
	
	private Map<Integer,ArrayList<RC120>> _RC120 = new HashMap<Integer,ArrayList<RC120>>();
	
	private Map<Integer,Set<RA170>> _RA170 = new HashMap<Integer,Set<RA170>>();
	private Map<Integer,Set<RC170>> _RC170 = new HashMap<Integer,Set<RC170>>();
	private Map<Integer,Set<RC501>> _RC501 = new HashMap<Integer,Set<RC501>>();
	private Map<Integer,Set<RC505>> _RC505 = new HashMap<Integer,Set<RC505>>();
	private Map<Integer,Set<RD101>> _RD101 = new HashMap<Integer,Set<RD101>>();
	private Map<Integer,Set<RD105>> _RD105 = new HashMap<Integer,Set<RD105>>();
	private Map<Integer,Set<RD501>> _RD501 = new HashMap<Integer,Set<RD501>>();
	private Map<Integer,Set<RD505>> _RD505 = new HashMap<Integer,Set<RD505>>();
	
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
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
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
		if (p_AD_Org_ID == 0)
			p_AD_Org_ID = Env.getAD_Org_ID(getCtx());
		
		if (p_C_Period_ID == 0)
			throw new IllegalArgumentException("@C_Period_ID@ @Mandatory@");
		
		MPeriod period = new MPeriod(getCtx(),p_C_Period_ID,null);
		Timestamp dateFrom = period.getStartDate();
		Timestamp dateTo   = period.getEndDate();
		
		String fileName = p_FilePath;
		StringBuilder result = runEFD(dateFrom,dateTo);
		
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();
		
		fileName += "EFDpiscofins_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
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
		EFDUtil_PC.setEnv(getCtx(),get_TrxName(),p_AD_Org_ID);
		CounterSped.clear();
				
		//Notas Fiscais Período
		MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(dateFrom,dateTo,p_AD_Org_ID,get_TrxName());
		
		int count = nfs.length;
		int aux   = 1;
		for (MLBRNotaFiscal nf : nfs){
			
			log.info("Processado: " + String.format("%,.5f",(((double)aux/(double)count)*100)) + "%");
			aux++;
			
			String COD_MOD  = nf.get_ValueAsString("lbr_NFModel").isEmpty() ? "01" : nf.get_ValueAsString("lbr_NFModel");
			String IND_EMIT = nf.islbr_IsOwnDocument() ? "0" : "1"; //0 = Própria, 1 = Terceiros
			String nfReg    = EFDUtil_PC.getNFHeaderReg(COD_MOD); //Cabeçalho da NFe
			
			if (!(nfReg.startsWith("C") || nfReg.startsWith("D"))){
				continue; //NAO PERTENCE AOS BLOCOS C OU D
			}
			
			//Cadastro de Parceiros de Negócios
			R0150 r0150 = EFDUtil_PC.createR0150(nf);
			if (r0150 != null){
				if (_R0150.contains(r0150))
					r0150.subtractCounter();
				else
					_R0150.add(r0150);
			}
			
			String COD_PART = r0150 == null ? "" : r0150.getCOD_PART(); 
			
			//Cabeçalho do Documento Fiscal
			List<RegSped> fiscalHeader = createFiscalHeader(nf, nfReg, COD_PART, COD_MOD, IND_EMIT);
			
			if (nf.isCancelled()) //NF Cancelada não precisa de registros detalhados
				continue;
			
			MLBRNotaFiscalLine[] nfLines = nf.getLines("Line");
			for (MLBRNotaFiscalLine nfLine : nfLines){
				
				//UDM
				R0190 r0190 = EFDUtil_PC.createR0190(nfLine);
				if (_R0190.contains(r0190))
					r0190.subtractCounter();
				else
					_R0190.add(r0190);
				
				//PRODUTO
				R0200 r0200 = EFDUtil_PC.createR0200(nfLine);
				if (_R0200.contains(r0200))
					r0200.subtractCounter();
				else
					_R0200.add(r0200);
				
				String COD_ITEM  = r0200 == null ? "SEM CODIGO" : r0200.getCOD_ITEM();
				String TIPO_ITEM = r0200 == null ? "99" : r0200.getTIPO_ITEM();
				String UNID      = r0190 == null ? "UN" : r0190.getUNID();
				
				//Detalhes do Documento Fiscal
				createFiscalDetail(nfLine,fiscalHeader,COD_ITEM,TIPO_ITEM,UNID);
					
			} //loop Linhas da Nota Fiscal
				
		} //loop Nota Fiscal
			
		//BLOCOS SPED EFD		
		StringBuilder BLOCO0 = montaBLOCO0(count,dateFrom,dateTo); //Abertura, Identificação e Referências
		StringBuilder BLOCOA = montaBLOCOA(); //Documentos Fiscais - Serviços (ISS)
		StringBuilder BLOCOC = montaBLOCOC(); //Documentos Fiscais I – Mercadorias (ICMS/IPI)
		StringBuilder BLOCOD = montaBLOCOD(); //Documentos Fiscais II – Serviços (ICMS)
		StringBuilder BLOCOF = montaBLOCOF(); //Demais Documentos e Operações
		StringBuilder BLOCOM = montaBLOCOM(); //Apuração da Contribuição e Crédito de PIS/PASEP e da COFINS
		StringBuilder BLOCO1 = montaBLOCO1(); //Outras Informações
		StringBuilder BLOCO9 = montaBLOCO9(); //Controle e Encerramento do Arquivo Digital
		
		//Monta string final
		StringBuilder result = BLOCO0.append(BLOCOA).append(BLOCOC).append(BLOCOD)
		               .append(BLOCOF).append(BLOCOM).append(BLOCO1).append(BLOCO9);
		
		return result;
	}	//	runEFD
	
	private List<RegSped> createFiscalHeader(MLBRNotaFiscal nf, String nfReg, String COD_PART, 
			String COD_MOD, String IND_EMIT){
		
		List<RegSped> list = new ArrayList<RegSped>();
		
		//REGISTROS A100 ou C100
		if (nfReg.equals("C100")){
			
			boolean hasService = true;
			boolean hasProduct = true;
			
			if (nf.getTotalLines().signum() != 1){ //Nota somente com serviços
				hasProduct = false;
			}
			
			if (nf.getlbr_ServiceTotalAmt().signum() != 1){ //Nota somente com produtos
				hasService = false;
			}
			
			if (hasProduct){
				RC100 rc100 = EFDUtil_PC.createRC100(nf, COD_PART, COD_MOD, IND_EMIT);
				if (_RC100.containsKey(rc100.hashCode())){
					RC100 oldRC100 = _RC100.get(rc100.hashCode());
					rc100.addValues(oldRC100);
					rc100.subtractCounter();
				}
				_RC100.put(rc100.hashCode(),rc100);
				hasC = true;
				list.add(rc100);
			}
			
			if (hasService){
				RA100 ra100 = EFDUtil_PC.createRA100(nf, COD_PART, IND_EMIT);
				if (_RA100.containsKey(ra100.hashCode())){
					RA100 oldRA100 = _RA100.get(ra100.hashCode());
					ra100.addValues(oldRA100);
					ra100.subtractCounter();
				}
				_RA100.put(ra100.hashCode(),ra100);
				hasA = true;
				list.add(ra100);
			}
			
		} //FIM C100
		
		else
			
		//REGISTROS C500
		if (nfReg.equals("C500")){
				
			RC500 rc500 = EFDUtil_PC.createRC500(nf, COD_PART, COD_MOD);
			if (rc500 != null){
				if (_RC500.containsKey(rc500.hashCode())){
					RC500 oldRC500 = _RC500.get(rc500.hashCode());
					rc500.addValues(oldRC500);
					rc500.subtractCounter();
				}
				_RC500.put(rc500.hashCode(),rc500);
				hasC = true;
				list.add(rc500);
			}
		}
		
		else
		
		//REGISTROS D100
		if (nfReg.equals("D100")){
			RD100 rd100 = EFDUtil_PC.createRD100(nf, COD_PART, COD_MOD, IND_EMIT);
			if (rd100 != null){
				if (_RD100.containsKey(rd100.hashCode())){
					RD100 oldRD100 = _RD100.get(rd100.hashCode());
					rd100.addValues(oldRD100);
					rd100.subtractCounter();
				}
				_RD100.put(rd100.hashCode(),rd100);
				hasD = true;
				list.add(rd100);
			}
		} //FIM D100
		
		else
			
		//REGISTROS D500
		if (nfReg.equals("D500")){
			RD500 rd500 = EFDUtil_PC.createRD500(nf, COD_PART, COD_MOD, IND_EMIT);
			if (rd500 != null){
				if (_RD500.containsKey(rd500.hashCode())){
					RD500 oldRD500 = _RD500.get(rd500.hashCode());
					rd500.addValues(oldRD500);
					rd500.subtractCounter();
				}
				_RD500.put(rd500.hashCode(),rd500);
				hasD = true;
				list.add(rd500);
			}
		} //FIM D500
						
		return list;
	} //createFiscalHeader
	
	private void createFiscalDetail(MLBRNotaFiscalLine nfLine, List<RegSped> listHeader, 
			String COD_ITEM, String TIPO_ITEM, String UNID){
		
		if (listHeader == null || listHeader.isEmpty())
			return;
		
		
		for(RegSped fiscalHeader : listHeader){
		
			//REGISTROS FILHOS DO A100
			if (fiscalHeader instanceof RA100){
						
				if (!nfLine.islbr_IsService()) //Produto é no bloco C
					return;
				
				//ITENS DO DOCUMENTO A170
				Set<RA170> setRA170 = _RA170.get(fiscalHeader.hashCode());
				if (setRA170 == null)
					setRA170 = new LinkedHashSet<RA170>();
			
				int line = setRA170.size() + 1;
				
				RA170 ra170 = EFDUtil_PC.createRA170(nfLine, COD_ITEM, line);
				setRA170.add(ra170);
				_RA170.put(fiscalHeader.hashCode(), setRA170);
				//FIM A170
				
			} //A100
			
			else
			
			//REGISTROS FILHOS DO C100
			if (fiscalHeader instanceof RC100){
				
				if (nfLine.islbr_IsService()) //Serviço é no bloco A
					return;
				
				//INFORMACOES DE IMPORTACAO
				RC120 rc120 = EFDUtil_PC.createRC120(nfLine);
				if (rc120 != null){
					
					ArrayList<RC120> listRC120 = _RC120.get(fiscalHeader.hashCode());
					if (listRC120 == null)
						listRC120 = new ArrayList<RC120>();
					
					if (listRC120.contains(rc120)){
						RC120 oldRC120 = listRC120.get(listRC120.indexOf(rc120));
						rc120.addValues(oldRC120);
						
						listRC120.remove(rc120);
						listRC120.add(rc120);
						rc120.subtractCounter();
					}
					else{
						listRC120.add(rc120);
					}
					
					_RC120.put(fiscalHeader.hashCode(),listRC120);
				}
						
				//ITENS DO DOCUMENTO C170
				Set<RC170> setRC170 = _RC170.get(fiscalHeader.hashCode());
				if (setRC170 == null)
					setRC170 = new LinkedHashSet<RC170>();
			
				int line = setRC170.size() + 1;
								
				RC170 rc170 = EFDUtil_PC.createRC170(nfLine, COD_ITEM, TIPO_ITEM, UNID, line);
				setRC170.add(rc170);
				_RC170.put(fiscalHeader.hashCode(), setRC170);
				//FIM C170
				
			} //C100
			
			else
				
			//REGISTROS FILHOS DO C500
			if (fiscalHeader instanceof RC500){
					
				//ITENS DO DOCUMENTO C501 e C505
				Set<RC501> setRC501 = _RC501.get(fiscalHeader.hashCode());
				if (setRC501 == null)
					setRC501 = new LinkedHashSet<RC501>();
				
				RC501 rc501 = EFDUtil_PC.createRC501(nfLine);
				
				if (setRC501.contains(rc501)){
					Iterator<RC501> values = setRC501.iterator();
					while(values.hasNext()){
						RC501 oldRC501 = values.next();
						if (rc501.equals(oldRC501)){
							rc501.addValues(oldRC501);
							rc501.subtractCounter();
						}
					}
				}
				setRC501.add(rc501);
				_RC501.put(fiscalHeader.hashCode(), setRC501);
				//FIM C501
				
				Set<RC505> setRC505 = _RC505.get(fiscalHeader.hashCode());
				if (setRC505 == null)
					setRC505 = new LinkedHashSet<RC505>();
				
				RC505 rc505 = EFDUtil_PC.createRC505(nfLine);
				
				if (setRC505.contains(rc505)){
					Iterator<RC505> values = setRC505.iterator();
					while(values.hasNext()){
						RC505 oldRC505 = values.next();
						if (rc505.equals(oldRC505)){
							rc505.addValues(oldRC505);
							rc505.subtractCounter();
						}
					}
				}
				setRC505.add(rc505);
				_RC505.put(fiscalHeader.hashCode(), setRC505);
				//FIM C505
					
			} //C500
			
			else
				
			//REGISTROS FILHOS DO D100
			if (fiscalHeader instanceof RD100){
						
				//ITENS DO DOCUMENTO D101 e D105
				Set<RD101> setRD101 = _RD101.get(fiscalHeader.hashCode());
				if (setRD101 == null)
					setRD101 = new LinkedHashSet<RD101>();
					
				RD101 rd101 = EFDUtil_PC.createRD101(nfLine);
					
				if (setRD101.contains(rd101)){
					Iterator<RD101> values = setRD101.iterator();
					while(values.hasNext()){
						RD101 oldRD101 = values.next();
						if (rd101.equals(oldRD101)){
							rd101.addValues(oldRD101);
							rd101.subtractCounter();
						}
					}
				}
				setRD101.add(rd101);
				_RD101.put(fiscalHeader.hashCode(), setRD101);
				//FIM D101
					
				Set<RD105> setRD105 = _RD105.get(fiscalHeader.hashCode());
				if (setRD105 == null)
					setRD105 = new LinkedHashSet<RD105>();
					
				RD105 rd105 = EFDUtil_PC.createRD105(nfLine);
					
				if (setRD105.contains(rd105)){
					Iterator<RD105> values = setRD105.iterator();
					while(values.hasNext()){
						RD105 oldRD105 = values.next();
						if (rd105.equals(oldRD105)){
							rd105.addValues(oldRD105);
							rd105.subtractCounter();
						}
					}
				}
				setRD105.add(rd105);
				_RD105.put(fiscalHeader.hashCode(), setRD105);
				//FIM D105
						
			} //D100

			else
				
			//REGISTROS FILHOS DO D500
			if (fiscalHeader instanceof RD500){
						
				//ITENS DO DOCUMENTO D501 e D505
				Set<RD501> setRD501 = _RD501.get(fiscalHeader.hashCode());
				if (setRD501 == null)
					setRD501 = new LinkedHashSet<RD501>();
					
				RD501 rd501 = EFDUtil_PC.createRD501(nfLine);
					
				if (setRD501.contains(rd501)){
					Iterator<RD501> values = setRD501.iterator();
					while(values.hasNext()){
						RD501 oldRD501 = values.next();
						if (rd501.equals(oldRD501)){
							rd501.addValues(oldRD501);
							rd501.subtractCounter();
						}
					}
				}
				setRD501.add(rd501);
				_RD501.put(fiscalHeader.hashCode(), setRD501);
				//FIM D501
					
				Set<RD505> setRD505 = _RD505.get(fiscalHeader.hashCode());
				if (setRD505 == null)
					setRD505 = new LinkedHashSet<RD505>();
					
				RD505 rd505 = EFDUtil_PC.createRD505(nfLine);
					
				if (setRD505.contains(rd505)){
					Iterator<RD505> values = setRD505.iterator();
					while(values.hasNext()){
						RD505 oldRD505 = values.next();
						if (rd505.equals(oldRD505)){
							rd505.addValues(oldRD505);
							rd505.subtractCounter();
						}
					}
				}
				setRD505.add(rd505);
				_RD505.put(fiscalHeader.hashCode(), setRD505);
				//FIM D505
						
			} //D500
			
		} //loop listHeader
			
	} //createFiscalDetail
		
	private StringBuilder montaBLOCO0(int count, Timestamp dateFrom, Timestamp dateTo){
		
		StringBuilder BLOCO0 = new StringBuilder("");
		
		//MONTA BLOCO 0
		BLOCO0.append(EFDUtil_PC.createR0000(dateFrom,dateTo));
		BLOCO0.append(new R0001(count > 0));
		
		R0100 r0100 = EFDUtil_PC.createR0100(); //CONTADOR
		if (r0100 != null)
			BLOCO0.append(r0100);
		
		BLOCO0.append(EFDUtil_PC.createR0110());
		BLOCO0.append(EFDUtil_PC.createR0111(_RC170));
		BLOCO0.append(EFDUtil_PC.createR0140());
		
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
		
		return BLOCO0;
	} //montaBLOCO0
	
	private StringBuilder montaBLOCOA(){
		
		StringBuilder BLOCOA = new StringBuilder("");
		
		//MONTA BLOCO A
		BLOCOA.append(new RA001(hasA));
		
		if (hasA)
			BLOCOA.append(EFDUtil_PC.createRA010());
		
		RA100[] arrayRA100 = new RA100[_RA100.size()];
		_RA100.values().toArray(arrayRA100);
		Arrays.sort(arrayRA100);
		for (RA100 ra100 : arrayRA100){
			BLOCOA.append(ra100);
						
			if (_RA170.containsKey(ra100.hashCode())){
				Set<RA170> setRA170 = _RA170.get(ra100.hashCode());
				RA170[] arrayRA170 = new RA170[setRA170.size()];
				setRA170.toArray(arrayRA170);
				Arrays.sort(arrayRA170);
				for(RA170 ra170 : arrayRA170){
					BLOCOA.append(ra170);	
				}  //loop A170
				
			} // verifica se a NF possui itens
			
		} //loop A100
		
		
		BLOCOA.append(new RA990());
		//FIM BLOCO A
		
		return BLOCOA;
	} //monteBLOCOA
	
	private StringBuilder montaBLOCOC(){
		
		StringBuilder BLOCOC = new StringBuilder("");
	
		//MONTA BLOCO C
		BLOCOC.append(new RC001(hasC));
		
		if (hasC) 
			BLOCOC.append(EFDUtil_PC.createRC010());
		
		RC100[] arrayRC100 = new RC100[_RC100.size()];
		_RC100.values().toArray(arrayRC100);
		Arrays.sort(arrayRC100);
		for (RC100 rc100 : arrayRC100){
			BLOCOC.append(rc100);
			
			if (_RC120.containsKey(rc100.hashCode())){
				List<RC120> listRC120 = _RC120.get(rc100.hashCode());
				for(RC120 rc120 : listRC120){
					BLOCOC.append(rc120);
				}
			}
			
			if (_RC170.containsKey(rc100.hashCode())){
				Set<RC170> setRC170 = _RC170.get(rc100.hashCode());
				RC170[] arrayRC170 = new RC170[setRC170.size()];
				setRC170.toArray(arrayRC170);
				Arrays.sort(arrayRC170);
				for(RC170 rc170 : arrayRC170){
					BLOCOC.append(rc170);	
				}  //loop C170
				
			} // verifica se a NF possui itens
			
		} //loop C100
		
		RC500[] arrayRC500 = new RC500[_RC500.size()];
		_RC500.values().toArray(arrayRC500);
		Arrays.sort(arrayRC500);
		for (RC500 rc500 : arrayRC500){
			BLOCOC.append(rc500);
			
			if (_RC501.containsKey(rc500.hashCode())){
				Set<RC501> setRC501 = _RC501.get(rc500.hashCode());
				RC501[] arrayRC501 = new RC501[setRC501.size()];
				setRC501.toArray(arrayRC501);
				Arrays.sort(arrayRC501);
				for(RC501 rc501 : arrayRC501){
					BLOCOC.append(rc501);	
				}  //loop C501
			}
			
			if (_RC505.containsKey(rc500.hashCode())){
				Set<RC505> setRC505 = _RC505.get(rc500.hashCode());
				RC505[] arrayRC505 = new RC505[setRC505.size()];
				setRC505.toArray(arrayRC505);
				Arrays.sort(arrayRC505);
				for(RC505 rc505 : arrayRC505){
					BLOCOC.append(rc505);	
				}  //loop C505
			}
			
		} //loop C500
		
		BLOCOC.append(new RC990());
		//FIM BLOCO C
		
		return BLOCOC;
	} //montaBLOCOC
	
	private StringBuilder montaBLOCOD(){
		
		StringBuilder BLOCOD = new StringBuilder("");
	
		//MONTA BLOCO D
		BLOCOD.append(new RD001(hasD));
		
		if (hasD)
			BLOCOD.append(EFDUtil_PC.createRD010());
		
		RD100[] arrayRD100 = new RD100[_RD100.size()];
		_RD100.values().toArray(arrayRD100);
		Arrays.sort(arrayRD100);
		for (RD100 rd100 : arrayRD100){
			BLOCOD.append(rd100);
			
			if (_RD101.containsKey(rd100.hashCode())){
				Set<RD101> setRD101 = _RD101.get(rd100.hashCode());
				RD101[] arrayRD101 = new RD101[setRD101.size()];
				setRD101.toArray(arrayRD101);
				Arrays.sort(arrayRD101);
				for(RD101 rd101 : arrayRD101){
					BLOCOD.append(rd101);	
				}  //loop D101
			}
			
			if (_RD105.containsKey(rd100.hashCode())){
				Set<RD105> setRD105 = _RD105.get(rd100.hashCode());
				RD105[] arrayRD105 = new RD105[setRD105.size()];
				setRD105.toArray(arrayRD105);
				Arrays.sort(arrayRD105);
				for(RD105 rd105 : arrayRD105){
					BLOCOD.append(rd105);	
				}  //loop D105
			}
			
		} //loop D100
		
		RD500[] arrayRD500 = new RD500[_RD500.size()];
		_RD500.values().toArray(arrayRD500);
		Arrays.sort(arrayRD500);
		for (RD500 rd500 : arrayRD500){
			BLOCOD.append(rd500);
			
			if (_RD501.containsKey(rd500.hashCode())){
				Set<RD501> setRD501 = _RD501.get(rd500.hashCode());
				RD501[] arrayRD501 = new RD501[setRD501.size()];
				setRD501.toArray(arrayRD501);
				Arrays.sort(arrayRD501);
				for(RD501 rd501 : arrayRD501){
					BLOCOD.append(rd501);	
				}  //loop D501
			}
			
			if (_RD505.containsKey(rd500.hashCode())){
				Set<RD505> setRD505 = _RD505.get(rd500.hashCode());
				RD505[] arrayRD505 = new RD505[setRD505.size()];
				setRD505.toArray(arrayRD505);
				Arrays.sort(arrayRD505);
				for(RD505 rd505 : arrayRD505){
					BLOCOD.append(rd505);	
				}  //loop D505
			}
			
		} //loop D500
		
		BLOCOD.append(new RD990());
		//FIM BLOCO D
		
		return BLOCOD;
	} //montaBLOCOD
	
	private StringBuilder montaBLOCOF(){
		
		StringBuilder BLOCOF = new StringBuilder("");
		
		//MONTA BLOCO F
		BLOCOF.append(new RF001(false));
		BLOCOF.append(new RF990());
		//FIM BLOCO F
		
		return BLOCOF;
	} //monteBLOCOF
	
	private StringBuilder montaBLOCOM(){
		
		StringBuilder BLOCOM = new StringBuilder("");
	
		//MONTA BLOCO M
		BLOCOM.append(new RM001(false));
		BLOCOM.append(new RM990());
		//FIM BLOCO M
		
		return BLOCOM;
	} //montaBLOCOM
	
	private StringBuilder montaBLOCO1(){
		
		StringBuilder BLOCO1 = new StringBuilder("");
	
		//MONTA BLOCO 1
		BLOCO1.append(new R1001(false));
		BLOCO1.append(new R1990());
		//FIM BLOCO 1
		
		return BLOCO1;
	} //montaBLOCO1
	
	private StringBuilder montaBLOCO9(){
		
		StringBuilder BLOCO9 = new StringBuilder("");
	
		//MONTA BLOCO 9
		BLOCO9.append(new R9001(true));
		R9990 r9990 = new R9990();
		R9999 r9999 = new R9999();
		
		R9900[] contRegistros = EFDUtil_PC.createR9900();
		for(R9900 registro : contRegistros){
			BLOCO9.append(registro);
		}
		//
		BLOCO9.append(r9990);
		BLOCO9.append(r9999);
		//FIM BLOCO 9
		
		return BLOCO9;
	} //montaBLOCO9
				
}	//	ProcGenerateEFD