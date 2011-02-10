package org.adempierelbr.sped.efd;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.process.ProcApuracaoICMS;
import org.adempierelbr.process.ProcApuracaoIPI;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.efd.beans.R9900;
import org.adempierelbr.sped.efd.beans.R0000;
import org.adempierelbr.sped.efd.beans.R0005;
import org.adempierelbr.sped.efd.beans.R0100;
import org.adempierelbr.sped.efd.beans.R0150;
import org.adempierelbr.sped.efd.beans.R0190;
import org.adempierelbr.sped.efd.beans.R0200;
import org.adempierelbr.sped.efd.beans.RC100;
import org.adempierelbr.sped.efd.beans.RC170;
import org.adempierelbr.sped.efd.beans.RC190;
import org.adempierelbr.sped.efd.beans.RE110;
import org.adempierelbr.sped.efd.beans.RE510;
import org.adempierelbr.sped.efd.beans.RE520;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class EFDUtil{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	private static Properties ctx = null;
	private static String     trx = null;
	
	private static int AD_Org_ID = 0;

	public static void setEnv(Properties ctx, String trx){
		EFDUtil.AD_Org_ID = Env.getAD_Org_ID(ctx);
		EFDUtil.ctx = ctx;
		EFDUtil.trx = trx;
	}

	public static Properties getCtx(){
		return ctx;
	}

	public static String get_TrxName(){
		return trx;
	}
	
	public static String getCOD_VERSAO(Timestamp dateFrom){
		
		if (dateFrom == null){
			log.severe("DATA INVÁLIDA");
			return null;
		}
		
		if (dateFrom.before(TextUtil.stringToTime("01/01/2011", "dd/MM/yyyy"))){
			return "003"; //ANTES DE 2011 - VERSAO 003
		}
		else{
			return "004"; //A PARTIR DE 2011 - VERSAO 004
		}
	}
	
	public static String getNFHeaderReg(String nfModel){
		
		String nfReg = "";
		
		//BLOCO C100 - Nota Fiscal Produto
		if (nfModel.equals("01") || nfModel.equals("1B") ||
			nfModel.equals("04") || nfModel.equals("55")){
			nfReg = "C100";
		}
		//BLOCO C500 - Nota Fiscal Energia Elétrica
		else if (nfModel.equals("06") || nfModel.equals("28") ||
				 nfModel.equals("29")){
			nfReg = "C500";
		}
		//BLOCO D100 - Serviço de Transporte
		else if (nfModel.equals("07") || nfModel.equals("08") ||
				 nfModel.equals("8B") || nfModel.equals("09") ||
				 nfModel.equals("10") || nfModel.equals("11") ||
				 nfModel.equals("26") || nfModel.equals("27") ||
				 nfModel.equals("57")){
			nfReg = "D100";
		}
		//BLOCO D500 - Serviço de Telecomunicações
		else if (nfModel.equals("21") || nfModel.equals("22")){
			nfReg = "D500";
		}
		
		return nfReg;
	} //getNFHeaderReg
	
	public static R0000 createR0000(Timestamp dateFrom, Timestamp dateTo){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(), get_TrxName());

		String COD_VER    = getCOD_VERSAO(dateFrom);
		String COD_FIN    = "0"; //REMESSA ORIGINAL //FIXME
		String NOME       = orgInfo.get_ValueAsString("lbr_LegalEntity");
		String CNPJ       = orgInfo.get_ValueAsString("lbr_CNPJ");
		String UF         = orgLoc.getC_Region().getName();
		String IE         = orgInfo.get_ValueAsString("lbr_IE");
		String COD_MUN    = BPartnerUtil.getCityCode(orgLoc);
		String IM         = orgInfo.get_ValueAsString("lbr_CCM");
		String SUFRAMA    = orgInfo.get_ValueAsString("lbr_Suframa");
		String IND_PERFIL = orgInfo.get_ValueAsString("lbr_IndPerfil");
		String IND_ATIV   = orgInfo.get_ValueAsString("lbr_IndAtividade");

		return new R0000(COD_VER, COD_FIN, dateFrom, dateTo, NOME, CNPJ, null, UF,
				IE, COD_MUN, IM, SUFRAMA, IND_PERFIL, IND_ATIV);
	} //createR0000
	
	public static R0005 createR0005(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(), get_TrxName());

		String FANTASIA = orgInfo.get_ValueAsString("lbr_Fantasia");
		String CEP      = orgLoc.getPostal();
		String END      = orgLoc.getAddress1();
		String NUM      = orgLoc.getAddress2();
		String COMPL    = orgLoc.getAddress4();
		String BAIRRO   = orgLoc.getAddress3();
		String FONE     = orgInfo.get_ValueAsString("Phone"); 
		String FAX      = orgInfo.get_ValueAsString("Fax"); 
		String EMAIL    = ""; //TODO EMAIL DE CONTATO

		return new R0005(FANTASIA,CEP,END,NUM,COMPL,BAIRRO,FONE,FAX,EMAIL);
	} //createR0005
	
	public static R0100 createR0100(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		
		int BPAccountant_ID = orgInfo.get_ValueAsInt("LBR_BP_Accountant_ID");
		if (BPAccountant_ID <= 0){
			log.severe("EFD R0100 - CONTADOR NAO CADASTRADO");
			return null;
		}
		
		MBPartner bpContador = new MBPartner(getCtx(),BPAccountant_ID,get_TrxName());
		MBPartnerLocation bpcontLoc = bpContador.getPrimaryC_BPartner_Location();
		if (bpcontLoc == null){
			log.severe("EFD R0100 - CONTADOR SEM ENDERECO CADASTRADO");
			return null;
		}
				
		MLocation contLoc = new MLocation(getCtx(),bpcontLoc.getC_Location_ID(),get_TrxName());

		String NOME = bpContador.getName();
		String CPF  = bpContador.get_ValueAsString("lbr_CPF");
		String CRC  = bpContador.get_ValueAsString("lbr_CRC");
		String CNPJ = "";
		if (bpContador.get_ValueAsString("lbr_BPTypeBR").equals("PJ")){
			CNPJ = BPartnerUtil.getCNPJ(bpContador, bpcontLoc);
		}
		
		String CEP      = contLoc.getPostal();
		String END      = contLoc.getAddress1();
		String NUM      = contLoc.getAddress2();
		String COMPL    = contLoc.getAddress4();
		String BAIRRO   = contLoc.getAddress3();
		String FONE     = bpcontLoc.getPhone();
		String FAX      = bpcontLoc.getFax(); 
		String EMAIL    = "";
		
		int contact_ID = bpContador.getPrimaryAD_User_ID();
		if (contact_ID > 0){
			MUser contact = new MUser(getCtx(),contact_ID,get_TrxName());
			EMAIL = contact.getEMail();
		}
		else
			log.warning("EFD R0100 - CONTADOR SEM USUARIO DE CONTATO");
		
		String COD_MUN  = BPartnerUtil.getCityCode(contLoc);

		return new R0100(NOME,CPF,CRC,CNPJ,CEP,END,NUM,COMPL,BAIRRO,FONE,FAX,EMAIL,COD_MUN);
	} //createR0100
	
	public static R0150 createR0150(MLBRNotaFiscal nf){
		
		if (nf.isCancelled())
			return null;
		
		String COD_PART  = TextUtil.toNumeric(nf.getlbr_BPCNPJ());
		if (COD_PART == null || COD_PART.trim().equals("")){
			MBPartner bp = new MBPartner(getCtx(),nf.getC_BPartner_ID(),get_TrxName());
			COD_PART = TextUtil.toNumeric(bp.getValue());
		}

		String NOME     = nf.getBPName();
		String CNPJ     = nf.getlbr_BPCNPJ();
		String IE       = nf.getlbr_BPIE();
		String SUFRAMA  = nf.getlbr_BPSuframa();
		String END      = nf.getlbr_BPAddress1();
		String NUM      = nf.getlbr_BPAddress2();
		String COMPL    = nf.getlbr_BPAddress4();
		String BAIRRO   = nf.getlbr_BPAddress3();

		String COD_MUN  = "";
		String COD_PAIS = "01058"; //BRASIL
		if (nf.getC_BPartner_Location_ID() != 0){
			MBPartnerLocation bpl = new MBPartnerLocation(getCtx(),nf.getC_BPartner_Location_ID(),null);
			MLocation loc = new MLocation(getCtx(),bpl.getC_Location_ID(),null);
			MCountry bpCountry = new MCountry(getCtx(),loc.getC_Country_ID(),null);

			COD_MUN  = BPartnerUtil.getCityCode(loc);
			COD_PAIS = bpCountry.get_ValueAsString("lbr_CountryCode");
		}
		else{
			log.severe("EFD R0150 - PARCEIRO SEM ENDEREDO. " +
					   "Parceiro: " + nf.getBPName() + " NF: " + nf.getDocumentNo() + 
					   " Data: " + nf.getDateDoc());
			return null; //SEM ENDERECO
		}

		return new R0150(COD_PART,NOME,COD_PAIS,CNPJ,IE,COD_MUN,
				SUFRAMA,END,NUM,COMPL,BAIRRO);
	} //createR0150
	
	public static R0190 createR0190(MLBRNotaFiscalLine nfLine){
		
		String UNID  = nfLine.getlbr_UOMName();
		String DESCR = AdempiereLBR.getUOMDesc_trl(new MUOM(getCtx(),nfLine.getC_UOM_ID(),get_TrxName()));
		
		return new R0190(UNID,DESCR);
	} //createR0190
	
	public static R0200 createR0200(MLBRNotaFiscalLine nfLine){
		
		MProduct product = new MProduct(getCtx(),nfLine.getM_Product_ID(),get_TrxName());
		
		String COD_ITEM      = nfLine.getProductValue();
		String DESCR_ITEM    = product.getName();
		String COD_BARRA     = product.getUPC();
		String COD_ANT_ITEM  = ""; //CODIGO ANTERIOR //TODO ???
		String UNID_INV      = nfLine.getlbr_UOMName();
		String TIPO_ITEM     = product.get_ValueAsString("lbr_ItemTypeBR");
		if (nfLine.islbr_IsService())
			TIPO_ITEM = "09"; //SERVICO
		
		String COD_NCM       = nfLine.getlbr_NCMName();
		String EX_IPI        = ""; //EXCECAO TABELA TIPI //TODO ???
		String COD_LST       = ""; //COD SERVIDO //TODO ???
		BigDecimal ALIQ_ICMS = Env.ZERO; //ALIQ ICMS //TODO ???
		
		return new R0200(COD_ITEM,DESCR_ITEM,COD_BARRA,COD_ANT_ITEM,UNID_INV,TIPO_ITEM,
				COD_NCM,EX_IPI,COD_LST,ALIQ_ICMS);
	} //createR0200
	
	public static RC100 createRC100(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String IND_OPER   = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT    = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER        = nf.getSerieNo();
		String NUM_DOC    = nf.getDocNo();
		String CHV_NFE    = nf.getlbr_NFeID();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_E_S  = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal();
		String IND_PAG    = nf.getIndPag();
		if (IND_PAG.equals("2")) // 2 é usado na NFe
			IND_PAG = "1";
		
		BigDecimal VL_DESC = nf.getDiscountAmt();
		BigDecimal VL_ABAT_NT  = Env.ZERO; //TODO ???
		BigDecimal VL_MERC = nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt());
		String IND_FRT = nf.getFreightCostRule() == null ? "9" : (nf.getFreightCostRule().equals("E") ? "2" : "1");
		BigDecimal VL_FRT = nf.getFreightAmt();
		BigDecimal VL_SEG = nf.getlbr_InsuranceAmt();
		BigDecimal VL_OUT_DA = Env.ZERO; //TODO ???
		BigDecimal VL_BC_ICMS = nf.getICMSBase();
		BigDecimal VL_ICMS = nf.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nf.getTaxBaseAmt("ICMSST");
		BigDecimal VL_ICMS_ST = nf.getTaxAmt("ICMSST");
		BigDecimal VL_IPI = nf.getIPIAmt();
		BigDecimal VL_PIS = nf.getPISAmt();
		BigDecimal VL_COFINS = nf.getCOFINSAmt();
		BigDecimal VL_PIS_ST = Env.ZERO; //TODO ???
		BigDecimal VL_COFINS_ST = Env.ZERO; //TODO ???
	
		return new RC100(IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,NUM_DOC,CHV_NFE,
				DT_DOC,DT_E_S,VL_DOC,IND_PAG,VL_DESC,VL_ABAT_NT,VL_MERC,IND_FRT,VL_FRT,
				VL_SEG,VL_OUT_DA,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_IPI,
				VL_PIS,VL_COFINS,VL_PIS_ST,VL_COFINS_ST);
	} //createRC100
	
	public static RC170 createRC170(MLBRNotaFiscalLine nfLine, String COD_ITEM, String TIPO_ITEM, 
			String UNID, int line){
		
		String DESCR_COMPL = nfLine.getDescription();
		BigDecimal QTD = nfLine.getQty();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		BigDecimal VL_DESC = nfLine.getDiscountAmt();
		String     IND_MOV = TIPO_ITEM.equals("09") ? "1" : "0"; //1=SEM MOV, 0=COM MOV
		String CST_ICMS = nfLine.getCST_ICMS();
		String CFOP     = nfLine.getCFOP();
		String COD_NAT  = ""; //TODO ???
		BigDecimal VL_BC_ICMS = nfLine.getICMSBase();
		BigDecimal ALIQ_ICMS  = nfLine.getICMSRate();
		BigDecimal VL_ICMS    = nfLine.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nfLine.getTaxBase("ICMSST");
		BigDecimal ALIQ_ST       = nfLine.getTaxRate("ICMSST");
		BigDecimal VL_ICMS_ST    = nfLine.getTaxAmt("ICMSST");
		String IND_APUR = "0"; //APURACAO MENSAL
		String CST_IPI = nfLine.getCST_IPI();
		String COD_ENQ = ""; //TODO ???
		BigDecimal VL_BC_IPI = nfLine.getIPIBase();
		BigDecimal ALIQ_IPI  = nfLine.getIPIRate();
		BigDecimal VL_IPI    = nfLine.getIPIAmt();
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_BC_PIS = nfLine.getTaxBase("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal QUANT_BC_PIS = Env.ZERO; //TODO ???
		BigDecimal V_ALIQ_PIS = Env.ZERO; //TODO
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_BC_COFINS = nfLine.getTaxBase("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal QUANT_BC_COFINS = Env.ZERO; //TODO ???
		BigDecimal V_ALIQ_COFINS = Env.ZERO; //TODO
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		
		//INFORMAÇÕES PARA O REGISTRO C190
		BigDecimal PERC_BC_ICMS = nfLine.getICMSBaseReduction();
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RC170(line,COD_ITEM,DESCR_COMPL,QTD,UNID,VL_ITEM,VL_DESC,IND_MOV,CST_ICMS,
				CFOP,COD_NAT,VL_BC_ICMS,ALIQ_ICMS,VL_ICMS,VL_BC_ICMS_ST,ALIQ_ST,VL_ICMS_ST,
				IND_APUR,CST_IPI,COD_ENQ,VL_BC_IPI,ALIQ_IPI,VL_IPI,CST_PIS,VL_BC_PIS,V_ALIQ_PIS,
				QUANT_BC_PIS,ALIQ_PIS,VL_PIS,CST_COFINS,VL_BC_COFINS,ALIQ_COFINS,QUANT_BC_COFINS,
				V_ALIQ_COFINS,VL_COFINS,COD_CTA,PERC_BC_ICMS,VL_OPR);
	} //createRC170
	
	public static RC190[] createRC190(Set<RC170> setRC170){
		
		Map<Integer,RC190> _RC190 = new HashMap<Integer,RC190>();
		
		for (RC170 rc170 : setRC170){
		
			RC190 rc190 = new RC190(rc170.getCST_ICMS(), rc170.getCFOP(), rc170.getALIQ_ICMS(),
					                rc170.getVL_OPR(), rc170.getVL_BC_ICMS(), rc170.getVL_ICMS(),
					                rc170.getVL_BC_ICMS_ST(), rc170.getVL_ICMS_ST(), 
					                rc170.getVL_RED_BC_ICMS(), rc170.getVL_IPI(),"");
			
			if (_RC190.containsKey(rc190.hashCode())){
				RC190 oldRC190 = _RC190.get(rc190.hashCode());
				rc190.addValues(oldRC190);
				rc190.subtractCounter();
			}
			_RC190.put(rc190.hashCode(),rc190);
			
		} //loop C170
		
		RC190[] arrayRC190 = new RC190[_RC190.size()];
		_RC190.values().toArray(arrayRC190);
		Arrays.sort(arrayRC190);
				
		return arrayRC190;
	} //createRC190
	
	public static RE110 createRE110(Timestamp dateFrom, List<RegSped> regs){
		
		/*FIXME: 
		 * Necessário fazer ajustes dos registroc C197.
		 * Site da Receita ainda não tem as tabelas 5.3 dos estados para criar os registros
		*/
		
		BigDecimal VL_TOT_DEBITOS     = Env.ZERO;
		BigDecimal VL_AJ_DEBITOS      = Env.ZERO;
		BigDecimal VL_TOT_AJ_DEBITOS  = Env.ZERO;
		BigDecimal VL_ESTORNOS_CRED   = Env.ZERO;
		BigDecimal VL_TOT_CREDITOS    = Env.ZERO;
		BigDecimal VL_AJ_CREDITOS     = Env.ZERO;
		BigDecimal VL_TOT_AJ_CREDITOS = Env.ZERO;
		BigDecimal VL_ESTORNOS_DEB    = Env.ZERO;
		BigDecimal VL_SLD_CREDOR_ANT  = getVL_SLD_CREDOR_ANT(dateFrom);
		BigDecimal VL_SLD_APURADO     = Env.ZERO;
		BigDecimal VL_TOT_DED         = Env.ZERO;
		BigDecimal VL_ICMS_RECOLHER   = Env.ZERO;
		BigDecimal VL_SLD_CREDOR_TRSP = Env.ZERO;
		BigDecimal DEB_ESP            = Env.ZERO;
		
		for (RegSped reg : regs){
			//ENTRADA GERA CRÉDITO
			if (!reg.get_ValueAsBoolean("isSOTrx")){
				VL_TOT_CREDITOS = VL_TOT_CREDITOS.add(reg.get_ValueAsBD("VL_ICMS"));
			}
			//SAÍDA GERA DÉBITO
			else{
				VL_TOT_DEBITOS = VL_TOT_DEBITOS.add(reg.get_ValueAsBD("VL_ICMS"));
			}
		}
		
		//SALDO = DEBITOS - (CREDITOS + SALDO ANTERIOR)
		BigDecimal saldo = (VL_TOT_DEBITOS.add(VL_AJ_DEBITOS)
		                                  .add(VL_TOT_AJ_DEBITOS)
		                                  .add(VL_ESTORNOS_CRED))
		          .subtract((VL_TOT_CREDITOS.add(VL_AJ_CREDITOS)
		        		                    .add(VL_TOT_AJ_CREDITOS)
		        		                    .add(VL_ESTORNOS_DEB)
		        		                    .add(VL_SLD_CREDOR_ANT)));
		
		if (saldo.signum() == 1){
			VL_SLD_APURADO = saldo;
		}
		else{
			VL_SLD_CREDOR_TRSP = saldo.abs();
		}
	
		return new RE110(VL_TOT_DEBITOS,VL_AJ_DEBITOS,VL_TOT_AJ_DEBITOS,VL_ESTORNOS_CRED,
				VL_TOT_CREDITOS,VL_AJ_CREDITOS,VL_TOT_AJ_CREDITOS,VL_ESTORNOS_DEB,
				VL_SLD_CREDOR_ANT,VL_SLD_APURADO,VL_TOT_DED,VL_ICMS_RECOLHER,
				VL_SLD_CREDOR_TRSP,DEB_ESP);
	} //createRE110
	
	public static RE510[] createRE510(Map<Integer,Set<RC170>> mapRC170){
		
		Map<Integer,RE510> _RE510 = new HashMap<Integer,RE510>();
		
		Iterator<Integer> notas = mapRC170.keySet().iterator();
		while(notas.hasNext()){
			Integer nota = notas.next();
			Set<RC170> setRC170 = mapRC170.get(nota);
			for (RC170 rc170 : setRC170){
				RE510 re510 = new RE510(rc170.getCFOP(), rc170.getCST_IPI(),
		                rc170.getVL_OPR(), rc170.getVL_BC_IPI(), rc170.getVL_IPI());

				if (_RE510.containsKey(re510.hashCode())){
					RE510 oldRE510 = _RE510.get(re510.hashCode());
					re510.addValues(oldRE510);
					re510.subtractCounter();
				}
				_RE510.put(re510.hashCode(),re510);
			} //loop C170
			
		} //loop notas
		
		RE510[] arrayRE510 = new RE510[_RE510.size()];
		_RE510.values().toArray(arrayRE510);
		Arrays.sort(arrayRE510);
				
		return arrayRE510;
	} //createRE510
	
	public static RE520 createRE520(Timestamp dateFrom, RE510[] arrayRE510){
		
		/*FIXME: 
		 * Necessário fazer ajustes dos registroc E530
		*/
		
		BigDecimal VL_SD_ANT_IPI  = getVL_SD_ANT_IPI(dateFrom);
		BigDecimal VL_DEB_IPI  = Env.ZERO;
		BigDecimal VL_CRED_IPI = Env.ZERO;
		BigDecimal VL_OD_IPI   = Env.ZERO;
		BigDecimal VL_OC_IPI   = Env.ZERO;
		BigDecimal VL_SC_IPI   = Env.ZERO;
		BigDecimal VL_SD_IPI   = Env.ZERO;
		
		
		for (RE510 re510 : arrayRE510){
			//ENTRADA GERA CRÉDITO
			if (!re510.isSOTrx()){
				VL_CRED_IPI = VL_CRED_IPI.add(re510.getVL_IPI());
			}
			//SAÍDA GERA DÉBITO
			else{
				VL_DEB_IPI = VL_DEB_IPI.add(re510.getVL_IPI());
			}
		}
		
		//SALDO = DEBITOS - (CREDITOS + SALDO ANTERIOR)
		BigDecimal saldo = (VL_DEB_IPI.add(VL_OD_IPI))
		          .subtract((VL_CRED_IPI.add(VL_OC_IPI).add(VL_SD_ANT_IPI)));
		
		if (saldo.signum() == 1){
			VL_SD_IPI = saldo;
		}
		else{
			VL_SC_IPI = saldo.abs();
		}
		
		return new RE520(VL_SD_ANT_IPI,VL_DEB_IPI,VL_CRED_IPI,VL_OD_IPI,VL_OC_IPI,
				VL_SC_IPI,VL_SD_IPI);
	} //createRE520
	
	public static R9900[] createR9900(){

		String regName = "9900";
		
		ArrayList<R9900> list = new ArrayList<R9900>();
		String[] regs = CounterSped.getRegsSped();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSped.getCounter(reg);
			list.add(new R9900(reg,""+qtd));
		}

		list.add(new R9900(regName,String.valueOf(CounterSped.getCounter(regName)+1)));
		
		return list.toArray(new R9900[list.size()]);
	} //createR9900
	
	private static BigDecimal getVL_SLD_CREDOR_ANT(Timestamp dateFrom){
		@SuppressWarnings("deprecation")
		MPeriod period = MPeriod.get(ctx, AdempiereLBR.addDays(dateFrom, -1));
		BigDecimal saldo = ProcApuracaoICMS.getCumulatedAmt(ctx, period.get_ID());
		
		if (saldo.signum() == -1){ //saldo devedor no mês anterior
			return Env.ZERO;
		}
		
		return saldo;
	}
	
	private static BigDecimal getVL_SD_ANT_IPI(Timestamp dateFrom){
		@SuppressWarnings("deprecation")
		MPeriod period = MPeriod.get(ctx, AdempiereLBR.addDays(dateFrom, -1));
		BigDecimal saldo = ProcApuracaoIPI.getCumulatedAmt(ctx, period.get_ID());
		
		if (saldo.signum() == -1){ //saldo devedor no mês anterior
			return Env.ZERO;
		}
		
		return saldo;
	}
	
} //EFDUtil