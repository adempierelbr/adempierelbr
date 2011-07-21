package org.adempierelbr.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRDE;
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
import org.adempierelbr.sped.efd.beans.R0300;
import org.adempierelbr.sped.efd.beans.R0500;
import org.adempierelbr.sped.efd.beans.R0600;
import org.adempierelbr.sped.efd.beans.R0990;
import org.adempierelbr.sped.efd.beans.R1001;
import org.adempierelbr.sped.efd.beans.R1100;
import org.adempierelbr.sped.efd.beans.R1105;
import org.adempierelbr.sped.efd.beans.R1990;
import org.adempierelbr.sped.efd.beans.R9001;
import org.adempierelbr.sped.efd.beans.R9900;
import org.adempierelbr.sped.efd.beans.R9990;
import org.adempierelbr.sped.efd.beans.R9999;
import org.adempierelbr.sped.efd.beans.RC001;
import org.adempierelbr.sped.efd.beans.RC100;
import org.adempierelbr.sped.efd.beans.RC120;
import org.adempierelbr.sped.efd.beans.RC170;
import org.adempierelbr.sped.efd.beans.RC172;
import org.adempierelbr.sped.efd.beans.RC190;
import org.adempierelbr.sped.efd.beans.RC500;
import org.adempierelbr.sped.efd.beans.RC510;
import org.adempierelbr.sped.efd.beans.RC590;
import org.adempierelbr.sped.efd.beans.RC990;
import org.adempierelbr.sped.efd.beans.RD001;
import org.adempierelbr.sped.efd.beans.RD100;
import org.adempierelbr.sped.efd.beans.RD110;
import org.adempierelbr.sped.efd.beans.RD190;
import org.adempierelbr.sped.efd.beans.RD500;
import org.adempierelbr.sped.efd.beans.RD510;
import org.adempierelbr.sped.efd.beans.RD590;
import org.adempierelbr.sped.efd.beans.RD990;
import org.adempierelbr.sped.efd.beans.RE001;
import org.adempierelbr.sped.efd.beans.RE100;
import org.adempierelbr.sped.efd.beans.RE111;
import org.adempierelbr.sped.efd.beans.RE200;
import org.adempierelbr.sped.efd.beans.RE210;
import org.adempierelbr.sped.efd.beans.RE250;
import org.adempierelbr.sped.efd.beans.RE500;
import org.adempierelbr.sped.efd.beans.RE510;
import org.adempierelbr.sped.efd.beans.RE530;
import org.adempierelbr.sped.efd.beans.RE990;
import org.adempierelbr.sped.efd.beans.RG001;
import org.adempierelbr.sped.efd.beans.RG125;
import org.adempierelbr.sped.efd.beans.RG990;
import org.adempierelbr.sped.efd.beans.RH001;
import org.adempierelbr.sped.efd.beans.RH005;
import org.adempierelbr.sped.efd.beans.RH010;
import org.adempierelbr.sped.efd.beans.RH990;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAsset;
import org.compiere.model.MAssetGroupAcct;
import org.compiere.model.MBPartner;
import org.compiere.model.MElementValue;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.X_M_Product_Acct;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

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
	
	/** Organização */
	private int p_AD_Org_ID = 0;
	
	/** Controle para saber se existe registros no bloco **/
	private boolean hasC = false;
	private boolean hasD = false;
	private boolean hasG = false;
	private boolean hasH = false;
	
	private RH005 rh005 = null; //TOTAIS DO INVENTÁRIO
	
	private Set<R0150> _R0150 = new LinkedHashSet<R0150>();
	private Set<R0190> _R0190 = new LinkedHashSet<R0190>();
	private Set<R0200> _R0200 = new LinkedHashSet<R0200>();
	private Set<R0300> _R0300 = new LinkedHashSet<R0300>();
	private Set<R0500> _R0500 = new LinkedHashSet<R0500>();
	private Set<R0600> _R0600 = new LinkedHashSet<R0600>();
	private Set<RG125> _RG125 = new LinkedHashSet<RG125>();
	
	private List<RegSped> _RE110 = new ArrayList<RegSped>(); //List de beans para saldo do icms
	private List<RH010>   _RH010 = new ArrayList<RH010>();
	
	private Map<Integer,RC100> _RC100 = new HashMap<Integer,RC100>();
	private Map<Integer,RC500> _RC500 = new HashMap<Integer,RC500>();
	private Map<Integer,RD100> _RD100 = new HashMap<Integer,RD100>();
	private Map<Integer,RD500> _RD500 = new HashMap<Integer,RD500>();
	
	private Map<Integer,ArrayList<RC120>>  _RC120 = new HashMap<Integer,ArrayList<RC120>>();
	private Map<Integer,ArrayList<RC172>>  _RC172 = new HashMap<Integer,ArrayList<RC172>>();
	private Map<String,List<RegSped>>      _RE210 = new HashMap<String,List<RegSped>>(); //List de beans para saldo do icms st (por UF)
	
	private Map<Integer,Set<RC170>> _RC170 = new HashMap<Integer,Set<RC170>>();
	private Map<Integer,Set<RC510>> _RC510 = new HashMap<Integer,Set<RC510>>();
	private Map<Integer,Set<RD110>> _RD110 = new HashMap<Integer,Set<RD110>>();
	private Map<Integer,Set<RD510>> _RD510 = new HashMap<Integer,Set<RD510>>();
	
	private Map<R1100,Set<R1105>> _R1100 = new HashMap<R1100,Set<R1105>>();	
	
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
		EFDUtil.setEnv(getCtx(),get_TrxName(),p_AD_Org_ID);
		CounterSped.clear();
				
		//Notas Fiscais Período
		MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get(dateFrom,dateTo,p_AD_Org_ID,get_TrxName());
		
		int count = nfs.length;
		int aux   = 1;
		for (MLBRNotaFiscal nf : nfs){
			
			log.info("Notas Fiscais - Processado: " + String.format("%,.5f",(((double)aux/(double)count)*100)) + "%");
			aux++;
			
			String COD_MOD  = nf.get_ValueAsString("lbr_NFModel").isEmpty() ? "01" : nf.get_ValueAsString("lbr_NFModel");
			String IND_EMIT = nf.islbr_IsOwnDocument() ? "0" : "1"; //0 = Própria, 1 = Terceiros
			String nfReg    = EFDUtil.getNFHeaderReg(COD_MOD); //Cabeçalho da NFe
			
			if (!(nfReg.startsWith("C") || nfReg.startsWith("D"))){
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
			
			//Cabeçalho do Documento Fiscal
			RegSped fiscalHeader = createFiscalHeader(nf, nfReg, COD_PART, COD_MOD, IND_EMIT);
			
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
				
				//Detalhes do Documento Fiscal
				createFiscalDetail(nfLine,fiscalHeader,COD_ITEM,TIPO_ITEM,UNID);
					
			} //loop Linhas da Nota Fiscal
				
		} //loop Nota Fiscal
		
		//BLOCO G: CIAP
		createCIAPInfo(dateFrom,dateTo);
		
		//BLOCO H: INVENTÁRIO
		createINVInfo(dateFrom);
		
		//BLOCO 1: OUTRAS INFORMAÇÕES
		createDEInfo(dateFrom,dateTo);
	
		//BLOCOS SPED EFD		
		StringBuilder BLOCO0 = montaBLOCO0(count,dateFrom,dateTo); //Abertura, Identificação e Referências
		StringBuilder BLOCOC = montaBLOCOC(); //Documentos Fiscais I – Mercadorias (ICMS/IPI)
		StringBuilder BLOCOD = montaBLOCOD(); //Documentos Fiscais II – Serviços (ICMS)
		StringBuilder BLOCOE = montaBLOCOE(dateFrom,dateTo); //Apuração do ICMS e do IPI
		StringBuilder BLOCOG = montaBLOCOG(dateFrom,dateTo); //Controle do Crédito de ICMS do Ativo Permanente – CIAP
		StringBuilder BLOCOH = montaBLOCOH(dateFrom); //Inventário Físico
		StringBuilder BLOCO1 = montaBLOCO1(); //Outras Informações
		StringBuilder BLOCO9 = montaBLOCO9(); //Controle e Encerramento do Arquivo Digital
		
		//Monta string final
		StringBuilder result = BLOCO0.append(BLOCOC).append(BLOCOD).append(BLOCOE)
		               .append(BLOCOG).append(BLOCOH).append(BLOCO1).append(BLOCO9);
		
		return result;
	}	//	runEFD
	
	private RegSped createFiscalHeader(MLBRNotaFiscal nf, String nfReg, String COD_PART, 
			String COD_MOD, String IND_EMIT){
		
		//REGISTROS C100
		if (nfReg.equals("C100")){
			RC100 rc100 = EFDUtil.createRC100(nf, COD_PART, COD_MOD, IND_EMIT);
			if (_RC100.containsKey(rc100.hashCode())){
				RC100 oldRC100 = _RC100.get(rc100.hashCode());
				rc100.addValues(oldRC100);
				rc100.subtractCounter();
			}
			_RC100.put(rc100.hashCode(),rc100);
			hasC = true;
			return rc100;
		} //FIM C100
		
		else
		
		//REGISTROS C500
		if (nfReg.equals("C500")){
			RC500 rc500 = EFDUtil.createRC500(nf, COD_PART, COD_MOD, IND_EMIT);
			if (_RC500.containsKey(rc500.hashCode())){
				RC500 oldRC500 = _RC500.get(rc500.hashCode());
				rc500.addValues(oldRC500);
				rc500.subtractCounter();
			}
			_RC500.put(rc500.hashCode(),rc500);
			hasC = true;
			return rc500;
		} //FIM C500
		
		else
			
		//REGISTROS D100
		if (nfReg.equals("D100")){
			RD100 rd100 = EFDUtil.createRD100(nf, COD_PART, COD_MOD, IND_EMIT);
			if (_RD100.containsKey(rd100.hashCode())){
				RD100 oldRD100 = _RD100.get(rd100.hashCode());
				rd100.addValues(oldRD100);
				rd100.subtractCounter();
			}
			_RD100.put(rd100.hashCode(),rd100);
			hasD = true;
			return rd100;
		} //FIM D100
		
		else
			
		//REGISTROS D500
		if (nfReg.equals("D500")){
			RD500 rd500 = EFDUtil.createRD500(nf, COD_PART, COD_MOD, IND_EMIT);
			if (_RD500.containsKey(rd500.hashCode())){
				RD500 oldRD500 = _RD500.get(rd500.hashCode());
				rd500.addValues(oldRD500);
				rd500.subtractCounter();
			}
			_RD500.put(rd500.hashCode(),rd500);
			hasD = true;
			return rd500;
		} //FIM D500
	
		return null;
	} //createFiscalHeader
	
	private void createFiscalDetail(MLBRNotaFiscalLine nfLine, RegSped fiscalHeader, 
			String COD_ITEM, String TIPO_ITEM, String UNID){
		
		if (fiscalHeader == null)
			return;
		
		//REGISTROS FILHOS DO C100
		if (fiscalHeader instanceof RC100){
			
			//INFORMACOES DE IMPORTACAO
			RC120 rc120 = EFDUtil.createRC120(nfLine);
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
			RC170 rc170 = EFDUtil.createRC170(nfLine, COD_ITEM, TIPO_ITEM, UNID, line);
			setRC170.add(rc170);
			_RC170.put(fiscalHeader.hashCode(), setRC170);
			//FIM C170
			
			//DETALHES SERVICO
			RC172 rc172 = EFDUtil.createRC172(rc170,nfLine);
			if (rc172 != null){
				ArrayList<RC172> listRC172 = _RC172.get(fiscalHeader.hashCode());
				if (listRC172 == null)
					listRC172 = new ArrayList<RC172>();
				
				listRC172.add(rc172);
				_RC172.put(fiscalHeader.hashCode(),listRC172);
			}
			//FIM C172
		}
		
		else
		
		//REGISTROS FILHOS DO C500
		if (fiscalHeader instanceof RC500){
			
			//ITENS DO DOCUMENTO C510
			Set<RC510> setRC510 = _RC510.get(fiscalHeader.hashCode());
			if (setRC510 == null)
				setRC510 = new LinkedHashSet<RC510>();
		
			int line = setRC510.size() + 1;
			RC510 rc510 = EFDUtil.createRC510(nfLine, COD_ITEM, UNID, line);
			setRC510.add(rc510);
			_RC510.put(fiscalHeader.hashCode(), setRC510);
			//FIM C510
		}
		
		else
		
		//REGISTROS FILHOS DO D100
		if (fiscalHeader instanceof RD100){
			
			//ITENS DO DOCUMENTO D110
			Set<RD110> setRD110 = _RD110.get(fiscalHeader.hashCode());
			if (setRD110 == null)
				setRD110 = new LinkedHashSet<RD110>();
		
			int line = setRD110.size() + 1;
			RD110 rd110 = EFDUtil.createRD110(nfLine, COD_ITEM, line);
			setRD110.add(rd110);
			_RD110.put(fiscalHeader.hashCode(), setRD110);
			//FIM D110
		}
		
		else
			
		//REGISTROS FILHOS DO D500
		if (fiscalHeader instanceof RD500){
				
			//ITENS DO DOCUMENTO D510
			Set<RD510> setRD510 = _RD510.get(fiscalHeader.hashCode());
			if (setRD510 == null)
				setRD510 = new LinkedHashSet<RD510>();
			
			int line = setRD510.size() + 1;
			RD510 rd510 = EFDUtil.createRD510(nfLine, COD_ITEM, UNID, line);
			setRD510.add(rd510);
			_RD510.put(fiscalHeader.hashCode(), setRD510);
			//FIM D510
		}
	} //createFiscalDetail
	
	private void createDEInfo(Timestamp dateFrom, Timestamp dateTo){
		
		MLBRDE[] des = MLBRDE.get(dateFrom, dateTo, get_TrxName());
		for (MLBRDE de : des){
			
			Set<R1105> setR1105 = new LinkedHashSet<R1105>();
			
			MLBRNotaFiscal[] exps = de.getMLBRNotaFiscal();
			
			for (MLBRNotaFiscal exp : exps){
				
				MLBRNotaFiscalLine[] nfLines = exp.getLines("Line");
				for (MLBRNotaFiscalLine nfLine : nfLines){
					
					R0190 r0190 = EFDUtil.createR0190(nfLine);
					if (_R0190.contains(r0190))
						r0190.subtractCounter();
					else
						_R0190.add(r0190);
					
					R0200 r0200 = EFDUtil.createR0200(nfLine);
					if (_R0200.contains(r0200))
						r0200.subtractCounter();
					else
						_R0200.add(r0200);
					
					R1105 r1105 = new R1105(exp.getlbr_NFModel(),exp.getSerieNo(),
							exp.getDocNo(),exp.getlbr_NFeID(),exp.getDateDoc(),
							r0200.getCOD_ITEM());
					
					if (setR1105.contains(r1105))
						r1105.subtractCounter();
					else{
						setR1105.add(r1105);
					}
				} //loop linhas
			} //loop nf
			
			R1100 r1100 = EFDUtil.createR1100(de);
			_R1100.put(r1100, setR1105);
		} //loop DE
		
	} //createDEInfo
	
	private void createCIAPInfo(Timestamp dateFrom, Timestamp dateTo){
		
		MAsset[] assets = EFDUtil.getAtivosCIAP(dateFrom,dateTo);
		for (MAsset asset : assets){
			
			hasG = true;
			
			//Plano de Contas
			MAssetGroupAcct assetAcct = AdempiereLBR.getMAssetGroupAcct(getCtx(),asset.getA_Asset_Group_ID(),
					Env.getContextAsInt(getCtx(), "$C_AcctSchema_ID"));
			MElementValue ev = new MElementValue(getCtx(),assetAcct.getA_Asset_A().getAccount().getC_ElementValue_ID(),get_TrxName());
			R0500 r0500 = EFDUtil.createR0500(ev, dateTo);
			if (_R0500.contains(r0500))
				r0500.subtractCounter();
			else
				_R0500.add(r0500);
			
			//Cadastro de Centro de Custo
			R0600 r0600 = EFDUtil.createR0600(asset.getAD_Org_ID(),dateTo);
			if (_R0600.contains(r0600))
				r0600.subtractCounter();
			else
				_R0600.add(r0600);
			
			//Cadastro de Ativos
			R0300 r0300 = EFDUtil.createR0300(asset, r0500.getCOD_CTA(), r0600.getCOD_CCUS());
			if (_R0300.contains(r0300))
				r0300.subtractCounter();
			else
				_R0300.add(r0300);			

			//Movimentação de Ativos
			List<RG125> listRG125 = EFDUtil.createRG125(asset, dateFrom);
			for(RG125 rg125 : listRG125){
				_RG125.add(rg125);
			}
			
		} //loop asset
		
	} //createCIAPInfo
	
	private void createINVInfo(Timestamp dateFrom){
		
		Calendar cal = new GregorianCalendar();
		cal.setTime(dateFrom);
		
		if (cal.get(Calendar.MONTH) == 1){ //FEVEREIRO
			cal.add(Calendar.MONTH, -2);
			cal.set(Calendar.DAY_OF_MONTH, 31); //31/12 do ano anterior
			
			BigDecimal VL_INV = Env.ZERO;
			Timestamp invDate = new Timestamp(cal.getTimeInMillis());
			
			String sql = EFDUtil.getSQLInv();
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try
			{
				pstmt = DB.prepareStatement (sql, get_TrxName());
				pstmt.setTimestamp(1, invDate);
				pstmt.setInt(2, Env.getAD_Org_ID(getCtx()));
				rs = pstmt.executeQuery ();
				while (rs.next ())
				{
					int M_Product_ID = rs.getInt("M_Product_ID");
					BigDecimal QtyOnHand = rs.getBigDecimal("QtyOnHand");
					int C_BPartner_ID = rs.getInt("C_BPartner_ID");
					String lbr_WarehouseType = rs.getString("lbr_WarehouseType");

					MProduct product = new MProduct(getCtx(), M_Product_ID, get_TrxName());
					R0190 r0190 = EFDUtil.createR0190(product);
					if (_R0190.contains(r0190))
						r0190.subtractCounter();
					else
						_R0190.add(r0190);
					
					R0200 r0200 = EFDUtil.createR0200(product);
					if (_R0200.contains(r0200))
						r0200.subtractCounter();
					else
						_R0200.add(r0200);
					
					String COD_ITEM = r0200.getCOD_ITEM();
					String UNID     = r0190.getUNID();
					BigDecimal VL_UNIT = EFDUtil.getVL_UNIT(Env.getAD_Client_ID(getCtx()), M_Product_ID, invDate).setScale(6, RoundingMode.HALF_UP);
					BigDecimal VL_ITEM = QtyOnHand.multiply(VL_UNIT).setScale(2, RoundingMode.HALF_UP);;
					
					VL_INV = VL_INV.add(VL_ITEM);
					
					String IND_PROP = lbr_WarehouseType.equals("3RD") ? "2" :
									  lbr_WarehouseType.equals("3WN") ? "1" : "0"; 
					
					String COD_PART = "";
					if (IND_PROP.equals("1") || IND_PROP.equals("2")){
						R0150 r0150 = EFDUtil.createR0150(new MBPartner(getCtx(),C_BPartner_ID,get_TrxName()));
						if (r0150 != null){
							if (_R0150.contains(r0150))
								r0150.subtractCounter();
							else
								_R0150.add(r0150);
							
							COD_PART = r0150.getCOD_PART();
						}
					}
					
					X_M_Product_Acct productAcct = AdempiereLBR.getX_M_Product_Acct(getCtx(),M_Product_ID,
							Env.getContextAsInt(getCtx(), "$C_AcctSchema_ID"));
					MElementValue ev = new MElementValue(getCtx(),productAcct.getP_Asset_A().getAccount().getC_ElementValue_ID(),get_TrxName());
					R0500 r0500 = EFDUtil.createR0500(ev, dateFrom);
					if (_R0500.contains(r0500))
						r0500.subtractCounter();
					else
						_R0500.add(r0500);
					
					RH010 rh010 = new RH010(COD_ITEM,UNID,QtyOnHand,VL_UNIT,VL_ITEM,
							IND_PROP,COD_PART,"",r0500.getCOD_CTA());
					_RH010.add(rh010);
				} //loop linhas do inventário
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, "", e);
			}
			finally{
		       DB.close(rs, pstmt);
			}
			
			rh005 = new RH005(invDate,VL_INV);
		} //INVENTÁRIO NA ESCRITURACAO DE FEVEREITO
			
	} //createINVInfo
	
	private StringBuilder montaBLOCO0(int count, Timestamp dateFrom, Timestamp dateTo){
		
		StringBuilder BLOCO0 = new StringBuilder("");
		
		//MONTA BLOCO 0
		BLOCO0.append(EFDUtil.createR0000(dateFrom,dateTo));
		BLOCO0.append(new R0001(count > 0));
		BLOCO0.append(EFDUtil.createR0005());
		
		R0100 r0100 = EFDUtil.createR0100(); //CONTADOR
		if (r0100 != null)
			BLOCO0.append(r0100);
		
		for (R0150 r0150 : _R0150){ //PARCEIROS
			BLOCO0.append(r0150);
		}
		
		for (R0190 r0190 : _R0190){ //UDMS
			BLOCO0.append(r0190);
		}
		
		for (R0200 r0200 : _R0200){ //PRODUTOS
			BLOCO0.append(r0200);
		}
		
		for (R0300 r0300 : _R0300){ //ATIVO FIXO
			BLOCO0.append(r0300);
			if (r0300.getIDENT_MERC().equals("1")) //OBRIGATÓRIO QUANDO BEM
				BLOCO0.append(EFDUtil.createR0305(r0300));
		}
		
		for (R0500 r0500 : _R0500){ //PLANO DE CONTAS
			BLOCO0.append(r0500);
		}
		
		for (R0600 r0600 : _R0600){ //CENTRO DE CUSTO
			BLOCO0.append(r0600);
		}
		
		BLOCO0.append(new R0990());
		//FIM BLOCO 0
		
		return BLOCO0;
	} //montaBLOCO0
	
	private StringBuilder montaBLOCOC(){
		
		StringBuilder BLOCOC = new StringBuilder("");
	
		//MONTA BLOCO C
		BLOCOC.append(new RC001(hasC));
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
			
			if (_RC172.containsKey(rc100.hashCode())){
				BLOCOC.append(EFDUtil.createRC130(_RC172.get(rc100.hashCode())));
			}
			
			if (_RC170.containsKey(rc100.hashCode())){
				Set<RC170> setRC170 = _RC170.get(rc100.hashCode());
				RC170[] arrayRC170 = new RC170[setRC170.size()];
				setRC170.toArray(arrayRC170);
				Arrays.sort(arrayRC170);
				int index = 0;
				for(RC170 rc170 : arrayRC170){
					if (rc100.getCOD_MOD().equals("55") && 
						rc100.getIND_EMIT().equals("0")){ //NFe própria não informar C170
						rc170.subtractCounter();
					}
					else{
						BLOCOC.append(rc170);
					}
					
					if (_RC172.containsKey(rc100.hashCode())){
						if (index >= _RC172.get(rc100.hashCode()).size())
							continue;
						
						RC172 rc172 = _RC172.get(rc100.hashCode()).get(index);
						if (rc172.getRC170().equals(rc170)){
							BLOCOC.append(rc172);
							index++;
						}
					}
				}  //loop C170
				
				RC190[] arrayRC190 = EFDUtil.createRC190(setRC170);
				for(RC190 rc190 : arrayRC190){
					_RE110.add(rc190);
					
					if ((rc190.get_ValueAsBD("VL_ICMS_ST")).signum() == 1){
						List<RegSped> listRE210 = _RE210.get(rc100.getUF());
						if (listRE210 == null)
							listRE210 = new ArrayList<RegSped>();
						
						listRE210.add(rc190);
						_RE210.put(rc100.getUF(), listRE210);
					}
					
					BLOCOC.append(rc190);
				} //loop C190
				
			} // verifica se a NF possui itens
			
		} //loop C100
		
		RC500[] arrayRC500 = new RC500[_RC500.size()];
		_RC500.values().toArray(arrayRC500);
		Arrays.sort(arrayRC500);
		for (RC500 rc500 : arrayRC500){
			BLOCOC.append(rc500);
			
			if (_RC510.containsKey(rc500.hashCode())){
				Set<RC510> setRC510 = _RC510.get(rc500.hashCode());
				RC510[] arrayRC510 = new RC510[setRC510.size()];
				setRC510.toArray(arrayRC510);
				Arrays.sort(arrayRC510);
				for(RC510 rc510 : arrayRC510){
					if (rc500.getIND_EMIT().equals("1")) //Informar apenas saídas
						rc510.subtractCounter();
					else{
						BLOCOC.append(rc510);
					}
				}  //loop C510
				
				RC590[] arrayRC590 = EFDUtil.createRC590(setRC510);
				for(RC590 rc590 : arrayRC590){
					_RE110.add(rc590);
					
					if ((rc590.get_ValueAsBD("VL_ICMS_ST")).signum() == 1){
						List<RegSped> listRE210 = _RE210.get(rc500.getUF());
						if (listRE210 == null)
							listRE210 = new ArrayList<RegSped>();
						
						listRE210.add(rc590);
						_RE210.put(rc500.getUF(), listRE210);
					}
					
					BLOCOC.append(rc590);
				} //loop C590
				
			} // verifica se a NF possui itens
			
		} //loop C500
		
		BLOCOC.append(new RC990());
		//FIM BLOCO C
		
		return BLOCOC;
	} //montaBLOCOC
	
	private StringBuilder montaBLOCOD(){
		
		StringBuilder BLOCOD = new StringBuilder("");
	
		//MONTA BLOCO D
		BLOCOD.append(new RD001(hasD));
		RD100[] arrayRD100 = new RD100[_RD100.size()];
		_RD100.values().toArray(arrayRD100);
		Arrays.sort(arrayRD100);
		for (RD100 rd100 : arrayRD100){
			BLOCOD.append(rd100);
			
			if (_RD110.containsKey(rd100.hashCode())){
				Set<RD110> setRD110 = _RD110.get(rd100.hashCode());
				RD110[] arrayRD110 = new RD110[setRD110.size()];
				setRD110.toArray(arrayRD110);
				Arrays.sort(arrayRD110);
				for(RD110 rd110 : arrayRD110){
					if (rd100.getIND_EMIT().equals("1")) //Informar apenas saídas
						rd110.subtractCounter();
					else{
						BLOCOD.append(rd110);
					}
				}  //loop D110
				
				RD190[] arrayRD190 = EFDUtil.createRD190(setRD110);
				for(RD190 rd190 : arrayRD190){
					_RE110.add(rd190);
					BLOCOD.append(rd190);
				} //loop D190
				
			} // verifica se a NF possui itens
			
		} //loop D100
		
		//MONTA BLOCO D
		RD500[] arrayRD500 = new RD500[_RD500.size()];
		_RD500.values().toArray(arrayRD500);
		Arrays.sort(arrayRD500);
		for (RD500 rd500 : arrayRD500){
			BLOCOD.append(rd500);
			
			if (_RD510.containsKey(rd500.hashCode())){
				Set<RD510> setRD510 = _RD510.get(rd500.hashCode());
				RD510[] arrayRD510 = new RD510[setRD510.size()];
				setRD510.toArray(arrayRD510);
				Arrays.sort(arrayRD510);
				for(RD510 rd510 : arrayRD510){
					if (rd500.getIND_EMIT().equals("1")) //Informar apenas saídas
						rd510.subtractCounter();
					else{
						BLOCOD.append(rd510);
					}
				}  //loop D510
				
				RD590[] arrayRD590 = EFDUtil.createRD590(setRD510);
				for(RD590 rd590 : arrayRD590){
					_RE110.add(rd590);
					
					if ((rd590.get_ValueAsBD("VL_ICMS_ST")).signum() == 1){
						List<RegSped> listRE210 = _RE210.get(rd500.getUF());
						if (listRE210 == null)
							listRE210 = new ArrayList<RegSped>();
						
						listRE210.add(rd590);
						_RE210.put(rd500.getUF(), listRE210);
					}
					
					BLOCOD.append(rd590);
				} //loop D590
				
			} // verifica se a NF possui itens
				
		} //loop D500
		
		BLOCOD.append(new RD990());
		//FIM BLOCO D
		
		return BLOCOD;
	} //montaBLOCOD
	
	private StringBuilder montaBLOCOE(Timestamp dateFrom, Timestamp dateTo){
		
		StringBuilder BLOCOE = new StringBuilder("");
		
		//MONTA BLOCO E
		if (CounterSped.getBlockCounter("C") > 2 || CounterSped.getBlockCounter("D") > 2){
			BLOCOE.append(new RE001(true));
			BLOCOE.append(new RE100(dateFrom,dateTo));
			BLOCOE.append(EFDUtil.createRE110(dateFrom, _RE110));
			
			RE111[] arrayRE111 = EFDUtil.createRE111(dateFrom);
			for (RE111 re111 : arrayRE111){
				BLOCOE.append(re111);
			}
			
			Iterator<String> ufs = _RE210.keySet().iterator();
			while(ufs.hasNext()){
				String uf = ufs.next();
				List<RegSped> regs = _RE210.get(uf);
				
				if (regs != null && !regs.isEmpty()){
					BLOCOE.append(new RE200(uf,dateFrom,dateTo));
					
					RE210 re210 = EFDUtil.createRE210(regs);
					BLOCOE.append(re210);
				
					BigDecimal VL_TOTAL    = re210.getVL_ICMS_RECOL_ST();
					BigDecimal VL_TOTAL_OR = Env.ZERO;
					
					for (RegSped reg : regs){
						
						//DEVOLUCOES
						BigDecimal VL_OR  = reg.get_ValueAsBD("VL_ICMS_ST");
						VL_TOTAL_OR = VL_TOTAL_OR.add(VL_OR);
						if (VL_TOTAL_OR.compareTo(VL_TOTAL) == 1){
							VL_OR = VL_OR.subtract(VL_TOTAL_OR.subtract(VL_TOTAL));
							if (VL_OR.signum() != 1){
								break;
							}
						}
						
						RE250 re250 = EFDUtil.createRE250(reg,VL_OR,dateTo);
						if (re250 != null)
							BLOCOE.append(re250);
					}
				}
				
			} //loop UF
			
			BLOCOE.append(new RE500(dateFrom,dateTo));
			RE510[] arrayRE510 = EFDUtil.createRE510(_RC170);
			for(RE510 re510 : arrayRE510){
				BLOCOE.append(re510);
			} //loop E510
			
			BLOCOE.append(EFDUtil.createRE520(dateFrom, arrayRE510));
			RE530[] arrayRE530 = EFDUtil.createRE530(dateFrom);
			for (RE530 re530 : arrayRE530){
				BLOCOE.append(re530);
			}
		}
		else{
			BLOCOE.append(new RE001(false));
		}
		
		
		BLOCOE.append(new RE990());
		//FIM BLOCO E
		
		return BLOCOE;
	} //monteBLOCOE
	
	private StringBuilder montaBLOCOG(Timestamp dateFrom, Timestamp dateTo){
		
		StringBuilder BLOCOG = new StringBuilder("");
	
		//MONTA BLOCO G
		BLOCOG.append(new RG001(hasG));
		if (hasG){
			BLOCOG.append(EFDUtil.createRG110(dateFrom, dateTo, _RG125, _RC170));
			for(RG125 rg125 : _RG125){
				BLOCOG.append(rg125);
				if (rg125.getTIPO_MOV().equals("IM")){
					List<RegSped> listReg = EFDUtil.createRG130_RG140(rg125.getLBR_NotaFiscalLine_ID());
					for(RegSped reg : listReg){
						BLOCOG.append(reg);
					}
				}
			} //loop RG125
		}
		BLOCOG.append(new RG990());
		//FIM BLOCO G
		
		return BLOCOG;
	} //montaBLOCOG
	
	private StringBuilder montaBLOCOH(Timestamp dateFrom){
		
		StringBuilder BLOCOH = new StringBuilder("");
	
		if (rh005 != null)
			hasH = true;
		
		//MONTA BLOCO H
		BLOCOH.append(new RH001(hasH));
		if (hasH){
			BLOCOH.append(rh005);
			for(RH010 rh010 : _RH010){
				BLOCOH.append(rh010);
			}
		}
		BLOCOH.append(new RH990());
		//FIM BLOCO H
		
		return BLOCOH;
	} //montaBLOCOH
	
	private StringBuilder montaBLOCO1(){
		
		StringBuilder BLOCO1 = new StringBuilder("");
	
		//MONTA BLOCO 1
		BLOCO1.append(new R1001(_R1100.size() > 0));
		Iterator<R1100> listR1100 = _R1100.keySet().iterator();
		while(listR1100.hasNext()){
			R1100 r1100 = listR1100.next();
			BLOCO1.append(r1100);
			Set<R1105> setR1105 = _R1100.get(r1100);
			for (R1105 r1105 : setR1105){
				BLOCO1.append(r1105);
			}
		}
		
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
		
		R9900[] contRegistros = EFDUtil.createR9900();
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