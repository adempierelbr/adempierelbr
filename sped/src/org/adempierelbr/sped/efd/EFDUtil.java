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

import org.adempierelbr.model.MLBRApuracaoICMS;
import org.adempierelbr.model.MLBRApuracaoIPI;
import org.adempierelbr.model.MLBRDE;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_ApuracaoICMSLine;
import org.adempierelbr.model.X_LBR_ApuracaoIPILine;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDUtil;
import org.adempierelbr.sped.efd.beans.R0000;
import org.adempierelbr.sped.efd.beans.R0005;
import org.adempierelbr.sped.efd.beans.R0100;
import org.adempierelbr.sped.efd.beans.R0150;
import org.adempierelbr.sped.efd.beans.R0190;
import org.adempierelbr.sped.efd.beans.R0200;
import org.adempierelbr.sped.efd.beans.R0300;
import org.adempierelbr.sped.efd.beans.R0305;
import org.adempierelbr.sped.efd.beans.R0500;
import org.adempierelbr.sped.efd.beans.R0600;
import org.adempierelbr.sped.efd.beans.R1100;
import org.adempierelbr.sped.efd.beans.R9900;
import org.adempierelbr.sped.efd.beans.RC100;
import org.adempierelbr.sped.efd.beans.RC120;
import org.adempierelbr.sped.efd.beans.RC130;
import org.adempierelbr.sped.efd.beans.RC170;
import org.adempierelbr.sped.efd.beans.RC172;
import org.adempierelbr.sped.efd.beans.RC190;
import org.adempierelbr.sped.efd.beans.RC500;
import org.adempierelbr.sped.efd.beans.RC510;
import org.adempierelbr.sped.efd.beans.RC590;
import org.adempierelbr.sped.efd.beans.RD100;
import org.adempierelbr.sped.efd.beans.RD110;
import org.adempierelbr.sped.efd.beans.RD190;
import org.adempierelbr.sped.efd.beans.RD500;
import org.adempierelbr.sped.efd.beans.RD510;
import org.adempierelbr.sped.efd.beans.RD590;
import org.adempierelbr.sped.efd.beans.RE110;
import org.adempierelbr.sped.efd.beans.RE111;
import org.adempierelbr.sped.efd.beans.RE210;
import org.adempierelbr.sped.efd.beans.RE250;
import org.adempierelbr.sped.efd.beans.RE510;
import org.adempierelbr.sped.efd.beans.RE520;
import org.adempierelbr.sped.efd.beans.RE530;
import org.adempierelbr.sped.efd.beans.RG110;
import org.adempierelbr.sped.efd.beans.RG125;
import org.adempierelbr.sped.efd.beans.RG130;
import org.adempierelbr.sped.efd.beans.RG140;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAsset;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MElementValue;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MTable;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Utilitarios para o EFD
 *
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 */
public class EFDUtil{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	private static Properties ctx = null;
	private static String     trx = null;
	
	private static int AD_Org_ID = 0;

	public static void setEnv(Properties ctx, String trx, int AD_Org_ID){
		EFDUtil.AD_Org_ID = AD_Org_ID;
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
		
		String COD_PART  = TextUtil.toNumeric(nf.getlbr_BPCNPJ()) + TextUtil.toNumeric(nf.getlbr_BPIE());
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
			if (bpCountry.get_ID() != BPartnerUtil.BRASIL){
				CNPJ     = "";
				IE       = "";
				SUFRAMA  = "";
			}
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
	
	public static R0150 createR0150(MBPartner bp){
		
		MBPartnerLocation bpLoc = bp.getPrimaryC_BPartner_Location();
		MLocation loc = new MLocation(getCtx(),bpLoc.getC_Location_ID(),null);
		
		String COD_PART  = TextUtil.toNumeric(BPartnerUtil.getCNPJ(bp, bpLoc));
		if (COD_PART == null || COD_PART.trim().equals("")){
			COD_PART = TextUtil.toNumeric(bp.getValue());
		}

		String NOME     = bp.getName();
		String CNPJ     = BPartnerUtil.getCNPJ(bp, bpLoc);
		String IE       = BPartnerUtil.getIE(bp, bpLoc);
		String SUFRAMA  = BPartnerUtil.getSuframa(bp, bpLoc);
		
		String END      = loc.getAddress1();
		String NUM      = loc.getAddress2();
		String COMPL    = loc.getAddress4();
		String BAIRRO   = loc.getAddress3();

		String COD_MUN  = "";
		String COD_PAIS = "01058"; //BRASIL
		if (bpLoc.getC_BPartner_Location_ID() != 0){
			MCountry bpCountry = new MCountry(getCtx(),loc.getC_Country_ID(),null);

			COD_MUN  = BPartnerUtil.getCityCode(loc);
			COD_PAIS = bpCountry.get_ValueAsString("lbr_CountryCode");
			if (bpCountry.get_ID() != BPartnerUtil.BRASIL){
				CNPJ     = "";
				IE       = "";
				SUFRAMA  = "";
			}
		}
		else{
			log.severe("EFD R0150 - PARCEIRO SEM ENDEREDO. Parceiro: " + bp.getName());
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
	
	public static R0190 createR0190(MProduct product){
		
		MUOM uom = new MUOM(getCtx(),product.getC_UOM_ID(),get_TrxName());
		
		String UNID  = AdempiereLBR.getUOM_trl(uom);
		String DESCR = AdempiereLBR.getUOMDesc_trl(uom);
		
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
		
		String COD_NCM = nfLine.getlbr_NCMName();
		if (COD_NCM == null || COD_NCM.trim().isEmpty())
			COD_NCM = nfLine.getLBR_NCM().getValue();
		
		if (COD_NCM == null || COD_NCM.trim().isEmpty())
			COD_NCM = new MLBRNCM(getCtx(),product.get_ValueAsInt("LBR_NCM_ID"),null).getValue();
		
		String EX_IPI        = ""; //EXCECAO TABELA TIPI //TODO ???
		String COD_LST       = ""; //COD SERVIDO //TODO ???
		BigDecimal ALIQ_ICMS = Env.ZERO; //ALIQ ICMS //TODO ???
		
		return new R0200(COD_ITEM,DESCR_ITEM,COD_BARRA,COD_ANT_ITEM,UNID_INV,TIPO_ITEM,
				COD_NCM,EX_IPI,COD_LST,ALIQ_ICMS);
	} //createR0200
	
	public static R0200 createR0200(MProduct product){
		
		String COD_ITEM      = product.getValue();
		String DESCR_ITEM    = product.getName();
		String COD_BARRA     = product.getUPC();
		String COD_ANT_ITEM  = ""; //CODIGO ANTERIOR //TODO ???
		String UNID_INV      = AdempiereLBR.getUOM_trl(new MUOM(getCtx(),product.getC_UOM_ID(),get_TrxName()));
		String TIPO_ITEM     = product.get_ValueAsString("lbr_ItemTypeBR");
		
		String COD_NCM = "";
		int LBR_NCM_ID = product.get_ValueAsInt("LBR_NCM_ID");
		if (LBR_NCM_ID > 0)
			COD_NCM = new MLBRNCM(getCtx(),LBR_NCM_ID,get_TrxName()).getValue();
		else{
			TIPO_ITEM = ""; //SEM NCM, DEIXAR COMO OUTROS
		}
		
		String EX_IPI        = ""; //EXCECAO TABELA TIPI //TODO ???
		String COD_LST       = ""; //COD SERVIDO //TODO ???
		BigDecimal ALIQ_ICMS = Env.ZERO; //ALIQ ICMS //TODO ???
		
		return new R0200(COD_ITEM,DESCR_ITEM,COD_BARRA,COD_ANT_ITEM,UNID_INV,TIPO_ITEM,
				COD_NCM,EX_IPI,COD_LST,ALIQ_ICMS);
	} //createR0200
	
	public static R0305 createR0305(R0300 r0300){		
		return new R0305(r0300.getCOD_CCUS(),r0300.getHELP(),r0300.getNR_PARC());
	} //createR0305
	
	public static R0300 createR0300(MAsset asset, String COD_CTA, String COD_CCUS){
		
		String COD_IND_BEM = asset.getValue();
		String IDENT_MERC  = asset.getA_Parent_Asset_ID() <= 0 ? "1" : "2";
		String DESCR_ITEM  = asset.getName();
		String HELP        = asset.getHelp();
		String COD_PRNC    = asset.getA_Parent_Asset().getValue();
		int NR_PARC = 48;
		
		return new R0300(COD_IND_BEM,IDENT_MERC,DESCR_ITEM,COD_PRNC,COD_CTA,NR_PARC,COD_CCUS,HELP);
	} //createR0300
	
	public static R0500 createR0500(MElementValue ev, Timestamp dateTo){
		
		Timestamp DT_ALT = ev.getUpdated();
		if (DT_ALT.after(dateTo)){
			DT_ALT = dateTo;
		}
		
		String COD_NAT_CC = ECDUtil.getCOD_NAT(ev.getAccountType());
		String IND_CTA    = ev.isSummary() ? "S" : "A";
		String COD_CTA    = ev.getValue();
		String NOME_CTA   = ev.getName();
		
		return new R0500(DT_ALT,COD_NAT_CC,IND_CTA,COD_CTA,NOME_CTA);
	} //createR0500
	
	public static R0600 createR0600(int AD_Org_ID, Timestamp dateTo){
		
		MOrg org = MOrg.get(ctx, AD_Org_ID);
		
		Timestamp DT_ALT = org.getUpdated();
		if (DT_ALT.after(dateTo)){
			DT_ALT = dateTo;
		}
		
		String COD_CCUS = org.getValue();
		String CCUS = org.getName();
		
		return new R0600(DT_ALT,COD_CCUS,CCUS);
	} //createR0600
	
	public static RC100 createRC100(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String UF         = nf.getlbr_BPRegion();
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
		
		//BF: Para ativos fixo, lançar o crédito no bloco G
		BigDecimal[] assetAmt = nf.getAssetTaxAmt();
		BigDecimal VL_BC_ICMS = nf.getICMSBase().subtract(assetAmt[0]);
		BigDecimal VL_ICMS = nf.getICMSAmt().subtract(assetAmt[1]);
		
		BigDecimal VL_BC_ICMS_ST = nf.getTaxBaseAmt("ICMSST");
		BigDecimal VL_ICMS_ST = nf.getTaxAmt("ICMSST");
		BigDecimal VL_IPI = nf.getIPIAmt();
		BigDecimal VL_PIS = nf.getPISAmt();
		BigDecimal VL_COFINS = nf.getCOFINSAmt();
		BigDecimal VL_PIS_ST = Env.ZERO; //TODO ???
		BigDecimal VL_COFINS_ST = Env.ZERO; //TODO ???
	
		return new RC100(UF, IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,NUM_DOC,CHV_NFE,
				DT_DOC,DT_E_S,VL_DOC,IND_PAG,VL_DESC,VL_ABAT_NT,VL_MERC,IND_FRT,VL_FRT,
				VL_SEG,VL_OUT_DA,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_IPI,
				VL_PIS,VL_COFINS,VL_PIS_ST,VL_COFINS_ST);
	} //createRC100
	
	public static RC120 createRC120(MLBRNotaFiscalLine nfLine){
		
		if (!nfLine.getCFOP().startsWith("3"))
			return null;
		
		X_LBR_NFDI di = nfLine.getDI();
		if (di != null){
			String COD_DOC_IMP = di.getType();
			String NUM_DOC_IMP = di.getlbr_DI();
			BigDecimal PIS_IMP = nfLine.getTaxAmt("PIS");
			BigDecimal COFINS_IMP = nfLine.getTaxAmt("COFINS");
			String NUM_ACDRAW = di.getlbr_Drawback();
			
			return new RC120(COD_DOC_IMP,NUM_DOC_IMP,PIS_IMP,COFINS_IMP,NUM_ACDRAW);
		}
		
		return null;
	} //createRC120
	
	public static RC130 createRC130(ArrayList<RC172> listRC172){
		
		BigDecimal VL_SERV_NT = Env.ZERO;
		BigDecimal VL_BC_ISSQN = Env.ZERO;
		BigDecimal VL_ISSQN = Env.ZERO;
		BigDecimal VL_BC_IRRF = Env.ZERO;
		BigDecimal VL_IRRF = Env.ZERO;
		BigDecimal VL_BC_PREV = Env.ZERO;
		BigDecimal VL_PREV = Env.ZERO;
		
		for(RC172 rc172 : listRC172){
			VL_SERV_NT  = VL_SERV_NT.add(rc172.getVL_SERV_NT());
			VL_BC_ISSQN = VL_BC_ISSQN.add(rc172.getVL_BC_ISSQN());
			VL_ISSQN    = VL_ISSQN.add(rc172.getVL_ISSQN());
			VL_BC_IRRF  = VL_BC_IRRF.add(rc172.getVL_BC_IRRF());
			VL_IRRF     = VL_IRRF.add(rc172.getVL_IRRF());
			VL_BC_PREV  = VL_BC_PREV.add(rc172.getVL_BC_PREV());
			VL_PREV     = VL_PREV.add(rc172.getVL_PREV());
		}
		
		return new RC130(VL_SERV_NT,VL_BC_ISSQN,VL_ISSQN,VL_BC_IRRF,
				VL_IRRF,VL_BC_PREV,VL_PREV);
	} //createRC130
	
	public static RC170 createRC170(MLBRNotaFiscalLine nfLine, String COD_ITEM, String TIPO_ITEM, 
			String UNID, int line){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),nfLine.getLBR_NotaFiscal_ID(),get_TrxName());
		String NUM_DOC   = nf.getDocNo();
		Timestamp DT_DOC = nf.getDateDoc();
		
		String DESCR_COMPL = nfLine.getDescription();
		BigDecimal QTD = nfLine.getQty();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		BigDecimal VL_DESC = nfLine.getDiscountAmt();
		String     IND_MOV = TIPO_ITEM.equals("09") ? "1" : "0"; //1=SEM MOV, 0=COM MOV
		String CST_ICMS = nfLine.getCST_ICMS();
		String CFOP     = nfLine.getCFOP();
		String COD_NAT  = ""; //TODO ???		
		BigDecimal VL_BC_ICMS    = nfLine.isAsset() ? Env.ZERO : nfLine.getICMSBaseAmt();
		BigDecimal ALIQ_ICMS     = nfLine.isAsset() ? Env.ZERO : nfLine.getICMSRate();
		BigDecimal VL_ICMS       = nfLine.isAsset() ? Env.ZERO : nfLine.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nfLine.getTaxBaseAmt("ICMSST");
		BigDecimal ALIQ_ST       = nfLine.getTaxRate("ICMSST");
		BigDecimal VL_ICMS_ST    = nfLine.getTaxAmt("ICMSST");
		String IND_APUR = "0"; //APURACAO MENSAL
		String CST_IPI = nfLine.getCST_IPI();
		String COD_ENQ = ""; //TODO ???
		BigDecimal VL_BC_IPI = nfLine.getIPIBaseAmt();
		BigDecimal ALIQ_IPI  = nfLine.getIPIRate();
		BigDecimal VL_IPI    = nfLine.getIPIAmt();
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_BC_PIS = nfLine.getTaxBaseAmt("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal QUANT_BC_PIS = Env.ZERO; //TODO ???
		BigDecimal V_ALIQ_PIS = Env.ZERO; //TODO
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
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
				V_ALIQ_COFINS,VL_COFINS,COD_CTA,PERC_BC_ICMS,VL_OPR,NUM_DOC,DT_DOC);
	} //createRC170
	
	public static RC172 createRC172(RC170 rc170, MLBRNotaFiscalLine nfLine){
		
		if (!(nfLine.getCFOP().equals("5933") ||
			  nfLine.getCFOP().equals("6933") ||
			  nfLine.getCFOP().equals("7933")))
			return null;
		
		BigDecimal VL_SERV_NT = nfLine.getTotalOperationAmt().subtract(nfLine.getICMSAmt());
		BigDecimal VL_BC_ISSQN = nfLine.getTaxBaseAmt("ISS");
		BigDecimal ALIQ_ISSQN = nfLine.getTaxRate("ISS");
		BigDecimal VL_ISSQN = nfLine.getTaxAmt("ISS");
		BigDecimal VL_BC_IRRF = nfLine.getTaxBaseAmt("IR").abs();
		BigDecimal VL_IRRF = nfLine.getTaxAmt("IR").abs();
		BigDecimal VL_BC_PREV = nfLine.getTaxBaseAmt("INSS").abs();
		BigDecimal VL_PREV = nfLine.getTaxAmt("INSS"); 
		
		return new RC172(rc170,VL_SERV_NT,VL_BC_ISSQN,ALIQ_ISSQN,VL_ISSQN,
				VL_BC_IRRF,VL_IRRF,VL_BC_PREV,VL_PREV);
	} //createRC172
	
	public static RC190[] createRC190(Set<RC170> setRC170){
		
		Map<Integer,RC190> _RC190 = new HashMap<Integer,RC190>();
		
		for (RC170 rc170 : setRC170){
		
			RC190 rc190 = new RC190(rc170.getCST_ICMS(), rc170.getCFOP(), rc170.getALIQ_ICMS(),
					                rc170.getVL_OPR(), rc170.getVL_BC_ICMS(), rc170.getVL_ICMS(),
					                rc170.getVL_BC_ICMS_ST(), rc170.getVL_ICMS_ST(), 
					                rc170.getVL_RED_BC_ICMS(), rc170.getVL_IPI(),"",
					                rc170.getNUM_DOC(),rc170.getDT_DOC());
			
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
	
	public static RC500 createRC500(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String UF         = nf.getlbr_BPRegion();
		String IND_OPER   = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT    = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER        = nf.getSerieNo();
		String SUB        = ""; //TODO ???
		String COD_CONS   = ""; //Opcional - Só informa na saída
		String NUM_DOC    = nf.getDocNo();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_E_S  = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal();	
		BigDecimal VL_DESC = nf.getDiscountAmt();
		BigDecimal VL_FORN = nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt());
		BigDecimal VL_TERC = Env.ZERO; //TODO ???
		BigDecimal VL_DA = Env.ZERO; //TODO ???
		BigDecimal VL_BC_ICMS = nf.getICMSBase();
		BigDecimal VL_ICMS = nf.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nf.getTaxBaseAmt("ICMSST");
		BigDecimal VL_ICMS_ST = nf.getTaxAmt("ICMSST");
		BigDecimal VL_PIS = nf.getPISAmt();
		BigDecimal VL_COFINS = nf.getCOFINSAmt();
		BigDecimal VL_SERV_NT = VL_FORN.subtract(VL_BC_ICMS);
		String COD_INF = ""; //TODO ???
		String TP_LIGACAO = ""; //TODO ???
		String COD_GRUPO_TENSAO = ""; //TODO ???
	
		return new RC500(UF,IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,SUB,COD_CONS,
				NUM_DOC,DT_DOC,DT_E_S,VL_DOC,VL_DESC,VL_FORN,VL_SERV_NT,VL_TERC,VL_DA,
				VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS, 
				TP_LIGACAO, COD_GRUPO_TENSAO);
	} //createRC500
	
	public static RC510 createRC510(MLBRNotaFiscalLine nfLine, String COD_ITEM, String UNID, int line){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),nfLine.getLBR_NotaFiscal_ID(),get_TrxName());
		String NUM_DOC   = nf.getDocNo();
		Timestamp DT_DOC = nf.getDateDoc();
		
		String COD_CLASS = ""; //TODO ??? (para saída apenas)
		BigDecimal QTD = nfLine.getQty();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		BigDecimal VL_DESC = nfLine.getDiscountAmt();
		String CST_ICMS = nfLine.getCST_ICMS();
		String CFOP     = nfLine.getCFOP();
		BigDecimal VL_BC_ICMS = nfLine.getICMSBaseAmt();
		BigDecimal ALIQ_ICMS  = nfLine.getICMSRate();
		BigDecimal VL_ICMS    = nfLine.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nfLine.getTaxBaseAmt("ICMSST");
		BigDecimal ALIQ_ST       = nfLine.getTaxRate("ICMSST");
		BigDecimal VL_ICMS_ST    = nfLine.getTaxAmt("ICMSST");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		String IND_REC = "0"; //TODO ??? (para saída apenas)
		String COD_PART = ""; //TODO ??? (para saída apenas)
		
		//INFORMAÇÕES PARA O REGISTRO C590
		BigDecimal PERC_BC_ICMS = nfLine.getICMSBaseReduction();
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RC510(line,COD_ITEM,COD_CLASS,QTD,UNID,VL_ITEM,VL_DESC,CST_ICMS,
				CFOP,VL_BC_ICMS,ALIQ_ICMS,VL_ICMS,VL_BC_ICMS_ST,ALIQ_ST,VL_ICMS_ST,
				IND_REC,COD_PART,VL_PIS,VL_COFINS,COD_CTA,PERC_BC_ICMS,VL_OPR,NUM_DOC,DT_DOC);
	} //createRC510
	
	public static RC590[] createRC590(Set<RC510> setRC510){
		
		Map<Integer,RC590> _RC590 = new HashMap<Integer,RC590>();
		
		for (RC510 rc510 : setRC510){
		
			RC590 rc590 = new RC590(rc510.getCST_ICMS(), rc510.getCFOP(), rc510.getALIQ_ICMS(),
					                rc510.getVL_OPR(), rc510.getVL_BC_ICMS(), rc510.getVL_ICMS(),
					                rc510.getVL_BC_ICMS_ST(), rc510.getVL_ICMS_ST(), 
					                rc510.getVL_RED_BC_ICMS(),"",rc510.getNUM_DOC(),rc510.getDT_DOC());
			
			if (_RC590.containsKey(rc590.hashCode())){
				RC590 oldRC590 = _RC590.get(rc590.hashCode());
				rc590.addValues(oldRC590);
				rc590.subtractCounter();
			}
			_RC590.put(rc590.hashCode(),rc590);
			
		} //loop D510
		
		RC590[] arrayRC590 = new RC590[_RC590.size()];
		_RC590.values().toArray(arrayRC590);
		Arrays.sort(arrayRC590);
				
		return arrayRC590;
	} //createRC590
	
	public static RD100 createRD100(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String UF          = nf.getlbr_BPRegion();
		String IND_OPER    = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT     = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER         = nf.getSerieNo();
		String SUB         = ""; //TODO ???
		String NUM_DOC     = nf.getDocNo();
		String CHV_CTE     = (IND_EMIT.equals("0")) ? nf.getlbr_NFeID() : "";
		Timestamp DT_DOC   = nf.getDateDoc();
		Timestamp DT_A_P   = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		String TP_CT_e     = ""; //TODO (só para saída)
		String CHV_CTE_REF = ""; //TODO (só para saída)
		BigDecimal VL_DOC = nf.getGrandTotal();	
		BigDecimal VL_DESC = nf.getDiscountAmt();
		String IND_FRT = nf.getFreightCostRule() == null ? "9" : (nf.getFreightCostRule().equals("E") ? "2" : "1");
		BigDecimal VL_SERV = nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt());
		BigDecimal VL_BC_ICMS = nf.getICMSBase();
		BigDecimal VL_ICMS = nf.getICMSAmt();
		BigDecimal VL_NT = VL_SERV.subtract(VL_BC_ICMS);
		String COD_INF = ""; //TODO ???
		String COD_CTA = ""; //TODO ???
		return new RD100(UF, IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,SUB,NUM_DOC,
				CHV_CTE,DT_DOC,DT_A_P,TP_CT_e,CHV_CTE_REF,VL_DOC,VL_DESC,IND_FRT,VL_SERV,
				VL_BC_ICMS, VL_ICMS, VL_NT, COD_INF, COD_CTA);
	} //createRD100
	
	public static RD110 createRD110(MLBRNotaFiscalLine nfLine, String COD_ITEM, int line){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),nfLine.getLBR_NotaFiscal_ID(),get_TrxName());
		String NUM_DOC   = nf.getDocNo();
		Timestamp DT_DOC = nf.getDateDoc();
		
		BigDecimal VL_SERV = nfLine.getLineTotalAmt();
		BigDecimal VL_OUT  = Env.ZERO; //TODO Outros Valores
		String CST_ICMS = nfLine.getCST_ICMS();
		String CFOP     = nfLine.getCFOP();
		BigDecimal VL_BC_ICMS = nfLine.getICMSBaseAmt();
		BigDecimal ALIQ_ICMS  = nfLine.getICMSRate();
		BigDecimal VL_ICMS    = nfLine.getICMSAmt();
		
		//INFORMAÇÕES PARA O REGISTRO D190
		BigDecimal PERC_BC_ICMS = nfLine.getICMSBaseReduction();
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RD110(line,COD_ITEM,VL_SERV,VL_OUT,CST_ICMS,CFOP,VL_BC_ICMS,
				ALIQ_ICMS,VL_ICMS,PERC_BC_ICMS,VL_OPR,NUM_DOC,DT_DOC);
	} //createRD110
	
	public static RD190[] createRD190(Set<RD110> setRD110){
		
		Map<Integer,RD190> _RD190 = new HashMap<Integer,RD190>();
		
		for (RD110 rd110 : setRD110){
		
			RD190 rd190 = new RD190(rd110.getCST_ICMS(), rd110.getCFOP(), rd110.getALIQ_ICMS(),
					                rd110.getVL_OPR(), rd110.getVL_BC_ICMS(), rd110.getVL_ICMS(),
					                rd110.getVL_RED_BC_ICMS(),"",rd110.getNUM_DOC(),rd110.getDT_DOC());
			
			if (_RD190.containsKey(rd190.hashCode())){
				RD190 oldRD190 = _RD190.get(rd190.hashCode());
				rd190.addValues(oldRD190);
				rd190.subtractCounter();
			}
			_RD190.put(rd190.hashCode(),rd190);
			
		} //loop D110
		
		RD190[] arrayRD190 = new RD190[_RD190.size()];
		_RD190.values().toArray(arrayRD190);
		Arrays.sort(arrayRD190);
				
		return arrayRD190;
	} //createRD190
	
	public static RD500 createRD500(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String UF         = nf.getlbr_BPRegion();
		String IND_OPER   = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT    = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER        = nf.getSerieNo();
		String SUB        = ""; //TODO ???
		String NUM_DOC    = nf.getDocNo();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_A_P  = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal();	
		BigDecimal VL_DESC = nf.getDiscountAmt();
		BigDecimal VL_SERV = nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt());
		BigDecimal VL_TERC = Env.ZERO; //TODO ???
		BigDecimal VL_DA = Env.ZERO; //TODO ???
		BigDecimal VL_BC_ICMS = nf.getICMSBase();
		BigDecimal VL_ICMS = nf.getICMSAmt();
		BigDecimal VL_PIS = nf.getPISAmt();
		BigDecimal VL_COFINS = nf.getCOFINSAmt();
		BigDecimal VL_SERV_NT = VL_SERV.subtract(VL_BC_ICMS);
		String COD_INF = ""; //TODO ???
		String COD_CTA = ""; //TODO ???
		String TP_ASSINANTE = ""; //TODO ???
	
		return new RD500(UF, IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,SUB,NUM_DOC,
				DT_DOC,DT_A_P,VL_DOC,VL_DESC,VL_SERV,VL_SERV_NT,VL_TERC,VL_DA,
				VL_BC_ICMS, VL_ICMS, COD_INF, VL_PIS, VL_COFINS, COD_CTA, TP_ASSINANTE);
	} //createRD500
	
	public static RD510 createRD510(MLBRNotaFiscalLine nfLine, String COD_ITEM, String UNID, int line){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),nfLine.getLBR_NotaFiscal_ID(),get_TrxName());
		String NUM_DOC   = nf.getDocNo();
		Timestamp DT_DOC = nf.getDateDoc();
		
		String COD_CLASS = ""; //TODO ??? (para saída apenas)
		BigDecimal QTD = nfLine.getQty();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		BigDecimal VL_DESC = nfLine.getDiscountAmt();
		String CST_ICMS = nfLine.getCST_ICMS();
		String CFOP     = nfLine.getCFOP();
		BigDecimal VL_BC_ICMS = nfLine.getICMSBaseAmt();
		BigDecimal ALIQ_ICMS  = nfLine.getICMSRate();
		BigDecimal VL_ICMS    = nfLine.getICMSAmt();
		BigDecimal VL_BC_ICMS_ST = nfLine.getTaxBaseAmt("ICMSST");
		BigDecimal VL_ICMS_ST    = nfLine.getTaxAmt("ICMSST");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		String IND_REC = "0"; //TODO ??? (para saída apenas)
		String COD_PART = ""; //TODO ??? (para saída apenas)
		
		//INFORMAÇÕES PARA O REGISTRO D590
		BigDecimal PERC_BC_ICMS = nfLine.getICMSBaseReduction();
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RD510(line,COD_ITEM,COD_CLASS,QTD,UNID,VL_ITEM,VL_DESC,CST_ICMS,
				CFOP,VL_BC_ICMS,ALIQ_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST, IND_REC,
				COD_PART,VL_PIS,VL_COFINS,COD_CTA,PERC_BC_ICMS,VL_OPR,NUM_DOC,DT_DOC);
	} //createRD510
	
	public static RD590[] createRD590(Set<RD510> setRD510){
		
		Map<Integer,RD590> _RD590 = new HashMap<Integer,RD590>();
		
		for (RD510 rd510 : setRD510){
		
			RD590 rd590 = new RD590(rd510.getCST_ICMS(), rd510.getCFOP(), rd510.getALIQ_ICMS(),
					                rd510.getVL_OPR(), rd510.getVL_BC_ICMS(), rd510.getVL_ICMS(),
					                rd510.getVL_BC_ICMS_ST(), rd510.getVL_ICMS_ST(), 
					                rd510.getVL_RED_BC_ICMS(),"",rd510.getNUM_DOC(),rd510.getDT_DOC());
			
			if (_RD590.containsKey(rd590.hashCode())){
				RD590 oldRD590 = _RD590.get(rd590.hashCode());
				rd590.addValues(oldRD590);
				rd590.subtractCounter();
			}
			_RD590.put(rd590.hashCode(),rd590);
			
		} //loop D510
		
		RD590[] arrayRD590 = new RD590[_RD590.size()];
		_RD590.values().toArray(arrayRD590);
		Arrays.sort(arrayRD590);
				
		return arrayRD590;
	} //createRD590
	
	public static RE110 createRE110(Timestamp dateFrom, List<RegSped> regs){
		
		MPeriod period = MPeriod.get(getCtx(),dateFrom,AD_Org_ID);
		MLBRApuracaoICMS apICMS = MLBRApuracaoICMS.get(getCtx(), period.get_ID(), AD_Org_ID);
		
		BigDecimal VL_TOT_DEBITOS     = Env.ZERO; //cálculo abaixo
		BigDecimal VL_AJ_DEBITOS      = Env.ZERO;
		BigDecimal VL_TOT_AJ_DEBITOS  = apICMS.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_OutrosDébitos);
		BigDecimal VL_ESTORNOS_CRED   = apICMS.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_EstornosDeCréditos);
		BigDecimal VL_TOT_CREDITOS    = Env.ZERO; //cálculo abaixo
		BigDecimal VL_AJ_CREDITOS     = Env.ZERO;
		BigDecimal VL_TOT_AJ_CREDITOS = apICMS.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_OutrosCréditos);
		BigDecimal VL_ESTORNOS_DEB    = apICMS.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_EstornoDeDébitos);
		BigDecimal VL_SLD_CREDOR_ANT  = MLBRApuracaoICMS.getCumulatedAmt(getCtx(),period.get_ID());
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
	
	public static RE111[] createRE111(Timestamp dateFrom){
		MPeriod period = MPeriod.get(getCtx(),dateFrom,AD_Org_ID);
		MLBRApuracaoICMS apICMS = MLBRApuracaoICMS.get(getCtx(), period.get_ID(), AD_Org_ID);
		X_LBR_ApuracaoICMSLine[] lines = apICMS.getLines();
		
		List<RE111> list = new ArrayList<RE111>();
		
		for (X_LBR_ApuracaoICMSLine line :lines){
			
			boolean isST = false;
			if (line.getLBR_ICMSBasis().getType().equals("S"))
				isST = true;
			
			String COD_AJ_APUR = getCOD_AJ_APUR(line.getType(),isST);
			String DESCR_COMPL_AJ = line.getDescription();
			BigDecimal VL_AJ_APUR = line.getAmt();
			list.add(new RE111(COD_AJ_APUR,DESCR_COMPL_AJ,VL_AJ_APUR));
		}
		
		RE111[] retValue = new RE111[list.size()];
		list.toArray(retValue);
		return retValue;
	} //createRE111
	
	public static RE210 createRE210(List<RegSped> regs){
		
		BigDecimal VL_SLD_CRED_ANT_ST = Env.ZERO;
		BigDecimal VL_DEVOL_ST = Env.ZERO; // Devoluções ST CFOP (1410, 1411, 1414, 1415, 1660, 1661, 1662, 2410, 2411, 2414, 2415, 2660, 2661 ou 2662)
		BigDecimal VL_RESSARC_ST = Env.ZERO; //TODO CFOP (1603 ou 2603)
		BigDecimal VL_OUT_CRED_ST = Env.ZERO; //TODO Registro RE220
		BigDecimal VL_AJ_CREDITOS_ST = Env.ZERO; //TODO Registro C197
		BigDecimal VL_RETENÇAO_ST = Env.ZERO; //cálculo abaixo
		BigDecimal VL_OUT_DEB_ST = Env.ZERO; //TODO Registro RE220;
		BigDecimal VL_AJ_DEBITOS_ST  = Env.ZERO; //TODO Registro C197
		BigDecimal VL_SLD_DEV_ANT_ST = Env.ZERO;
		BigDecimal VL_DEDUÇÕES_ST = Env.ZERO; //TODO Registro C197
		BigDecimal VL_ICMS_RECOL_ST = Env.ZERO; 
		BigDecimal VL_SLD_CRED_ST_TRANSPORTAR = Env.ZERO;
		BigDecimal DEB_ESP_ST = Env.ZERO; //TODO
		
		for (RegSped reg : regs){
			//ENTRADA GERA CRÉDITO
			if (reg.get_ValueAsBoolean("isSOTrx")){
				VL_RETENÇAO_ST = VL_RETENÇAO_ST.add(reg.get_ValueAsBD("VL_ICMS_ST"));
			}
			else{
				if (reg.get_ValueAsBoolean("isReversal"))
					VL_DEVOL_ST = VL_DEVOL_ST.add(reg.get_ValueAsBD("VL_ICMS_ST"));
			}
		}
		
		//SALDO = DEBITOS - (CREDITOS + SALDO ANTERIOR)
		BigDecimal saldo = (VL_RETENÇAO_ST.add(VL_OUT_DEB_ST)
				                           .add(VL_AJ_DEBITOS_ST))
				   .subtract(VL_SLD_CRED_ANT_ST.add(VL_DEVOL_ST)
						                       .add(VL_RESSARC_ST)
						                       .add(VL_OUT_CRED_ST)
						                       .add(VL_AJ_CREDITOS_ST));
		
		if (saldo.signum() == 1){
			VL_SLD_DEV_ANT_ST = saldo;
		}
		else{
			VL_SLD_CRED_ST_TRANSPORTAR = saldo.abs();
		}
		
		VL_ICMS_RECOL_ST = VL_SLD_DEV_ANT_ST.subtract(VL_DEDUÇÕES_ST);
		
		return new RE210(VL_SLD_CRED_ANT_ST,VL_DEVOL_ST,VL_RESSARC_ST,VL_OUT_CRED_ST,
				VL_AJ_CREDITOS_ST, VL_RETENÇAO_ST, VL_OUT_DEB_ST, VL_AJ_DEBITOS_ST, VL_SLD_DEV_ANT_ST, 
				VL_DEDUÇÕES_ST, VL_ICMS_RECOL_ST, VL_SLD_CRED_ST_TRANSPORTAR, DEB_ESP_ST);
	} //createRE210
	
	public static RE250 createRE250(RegSped reg, BigDecimal VL_OR, Timestamp dateTo){
		
		if (!reg.get_ValueAsBoolean("isSOTrx"))
			return null;
		
		String COD_OR = "002"; //Revenda dentro do Estado
		
		if (!reg.get_ValueAsBoolean("isSameregion")){
			COD_OR = "003"; //Dif. de Alíquota
			if (reg.get_ValueAsBD("VL_BC_ICMS").compareTo(reg.get_ValueAsBD("VL_BC_ICMS_ST")) < 0){
				COD_OR = "999"; //Revenda fora do Estado
			}
		}
		
		//BigDecimal VL_OR  = reg.get_ValueAsBD("VL_ICMS_ST");
		Timestamp DT_VCTO = reg.get_ValueAsTS("DT_DOC");
		String COD_REC    = "10009-9"; //FIXME
		String NUM_PROC   = ""; //TODO
		String IND_PROC   = ""; //TODO
		String PROC       = ""; //TODO
		String TXT_COMPL  = reg.get_ValueAsString("NUM_DOC");
		
		return new RE250(COD_OR,VL_OR,DT_VCTO,COD_REC,NUM_PROC,IND_PROC,PROC,TXT_COMPL,dateTo);
	} //createRE250
	
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
		
		MPeriod period = MPeriod.get(getCtx(),dateFrom,AD_Org_ID);
		MLBRApuracaoIPI apIPI = MLBRApuracaoIPI.get(getCtx(), period.get_ID(), AD_Org_ID);
		
		BigDecimal VL_SD_ANT_IPI  = MLBRApuracaoIPI.getCumulatedAmt(getCtx(), period.get_ID());
		BigDecimal VL_DEB_IPI  = Env.ZERO;
		BigDecimal VL_CRED_IPI = Env.ZERO;
		
		BigDecimal VL_OD_IPI   = apIPI.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_OutrosDébitos)
		                        .add(apIPI.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_EstornosDeCréditos));
		
		BigDecimal VL_OC_IPI   = apIPI.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_OutrosCréditos)
                                .add(apIPI.getAmtByType(X_LBR_ApuracaoICMSLine.TYPE_EstornoDeDébitos));
		
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
	
	public static RE530[] createRE530(Timestamp dateFrom){
		MPeriod period = MPeriod.get(getCtx(),dateFrom,AD_Org_ID);
		MLBRApuracaoIPI apIPI = MLBRApuracaoIPI.get(getCtx(), period.get_ID(), AD_Org_ID);
		X_LBR_ApuracaoIPILine[] lines = apIPI.getLines();
		
		List<RE530> list = new ArrayList<RE530>();
		
		for (X_LBR_ApuracaoIPILine line :lines){
			
			String IND_AJ = "0"; //Ajuste a débito
			if (line.getType().equals(X_LBR_ApuracaoIPILine.TYPE_OutrosCréditos) ||
				line.getType().equals(X_LBR_ApuracaoIPILine.TYPE_EstornoDeDébitos))
				IND_AJ = "1"; //Ajuste a crédito
			
			BigDecimal VL_AJ = line.getAmt();
			String COD_AJ = getCOD_AJ(line.getType());
			String IND_DOC = ""; //TODO
			String NUM_DOC = ""; //TODO
			String DESCR_AJ = line.getDescription();
			list.add(new RE530(IND_AJ,VL_AJ,COD_AJ,IND_DOC,NUM_DOC,DESCR_AJ));
		}
		
		RE530[] retValue = new RE530[list.size()];
		list.toArray(retValue);
		return retValue;
	} //createRE530
	
	public static RG110 createRG110(Timestamp dateFrom, Timestamp dateTo, 
			Set<RG125> _RG125, Map<Integer,Set<RC170>> _RC170){
		
		Timestamp DT_INI = dateFrom;
		Timestamp DT_FIN = dateTo;
		
		BigDecimal SALDO_IN_ICMS = Env.ZERO;
		BigDecimal SOM_PARC = Env.ZERO;
		for(RG125 rg125 : _RG125){
			if (rg125.getTIPO_MOV().equals("SI")){
				SALDO_IN_ICMS = SALDO_IN_ICMS.add(rg125.getVL_IMOB_ICMS_OP().add(rg125.getVL_IMOB_ICMS_DIF()));
			}
			SOM_PARC = SOM_PARC.add(rg125.getVL_PARC_PASS());
		}
		
		BigDecimal VL_TRIB_EXP = Env.ZERO;
		BigDecimal VL_TOTAL = Env.ZERO;
		
		Iterator<Integer> listRC100 = _RC170.keySet().iterator();
		while(listRC100.hasNext()){
			Set<RC170> setRC170 = _RC170.get(listRC100.next());
			for (RC170 rc170 : setRC170){
				Integer CFOP = Integer.parseInt(rc170.getCFOP().substring(0, 1));
				if (CFOP.intValue() > 4){ //SAIDAS
					VL_TOTAL = VL_TOTAL.add(rc170.getVL_OPR());
					if (CFOP.intValue() == 7 || rc170.getVL_ICMS().signum() == 1){
						VL_TRIB_EXP = VL_TRIB_EXP.add(rc170.getVL_OPR());
					}
				}
			}
		}
		
		BigDecimal IND_PER_SAI = VL_TRIB_EXP.divide(VL_TOTAL,TaxBR.MCROUND);
		BigDecimal ICMS_APROP = SOM_PARC.multiply(IND_PER_SAI);
		BigDecimal SOM_ICMS_OC = Env.ZERO;
		
		return new RG110(DT_INI,DT_FIN,SALDO_IN_ICMS,SOM_PARC,VL_TRIB_EXP,VL_TOTAL,IND_PER_SAI,ICMS_APROP,SOM_ICMS_OC);
	} //createRG110
	
	public static List<RG125> createRG125(MAsset asset, Timestamp dateFrom){
		
		List<RG125> listRG125 = new ArrayList<RG125>();
		
		MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(),asset.get_ValueAsInt("LBR_NotaFiscalLine_ID"),get_TrxName());
		
		String COD_IND_BEM  = asset.getValue();
		Timestamp DT_MOV    = asset.getA_Asset_CreateDate();
		String TIPO_MOV     = "IM";
		
		if (DT_MOV.before(dateFrom)){
			DT_MOV = dateFrom;
			TIPO_MOV = "SI";
		}
		
		BigDecimal VL_IMOB_ICMS_OP = nfLine.getICMSAmt().divide(nfLine.getQty(), TaxBR.MCROUND);
		BigDecimal VL_IMOB_ICMS_ST = nfLine.getTaxAmt("ICMSST").divide(nfLine.getQty(), TaxBR.MCROUND);;
		BigDecimal VL_IMOB_ICMS_FRT = Env.ZERO; //FIXME
		BigDecimal VL_IMOB_ICMS_DIF = Env.ZERO; //FIXME
		
		int NUM_PARC = AdempiereLBR.getCountMonths(
				asset.getA_Asset_CreateDate().after(dateFrom) ? dateFrom : asset.getA_Asset_CreateDate(), dateFrom);
		
		BigDecimal VL_PARC_PASS = (VL_IMOB_ICMS_OP.add(VL_IMOB_ICMS_DIF)).divide(new BigDecimal("48"), TaxBR.MCROUND);

		listRG125.add(new RG125(COD_IND_BEM,DT_MOV,TIPO_MOV,VL_IMOB_ICMS_OP,VL_IMOB_ICMS_ST,
				VL_IMOB_ICMS_FRT,VL_IMOB_ICMS_DIF,NUM_PARC,VL_PARC_PASS,nfLine.get_ID()));
		
		//SE É A ULTIMA PARCELA, CRIAR UM REGISTRO DE BAIXA
		if (NUM_PARC == 48){
			listRG125.add(new RG125(COD_IND_BEM,DT_MOV,"BA",null,null,null,null,0,null,0));
		}
		
		return listRG125;
	} //createRG125
	
	public static List<RegSped> createRG130_RG140(int LBR_NotaFiscalLine_ID){
		
		List<RegSped> listReg = new ArrayList<RegSped>();
		
		MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(),LBR_NotaFiscalLine_ID,get_TrxName());
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),nfLine.getLBR_NotaFiscal_ID(),get_TrxName());
		
		//RG130
		String IND_EMIT = nf.islbr_IsOwnDocument() ? "0" : "1";
		String COD_PART  = TextUtil.toNumeric(nf.getlbr_BPCNPJ());
		if (COD_PART == null || COD_PART.trim().equals("")){
			MBPartner bp = new MBPartner(getCtx(),nf.getC_BPartner_ID(),get_TrxName());
			COD_PART = TextUtil.toNumeric(bp.getValue());
		}
		String COD_MOD     = nf.get_ValueAsString("lbr_NFModel").isEmpty() ? "01" : nf.get_ValueAsString("lbr_NFModel");
		String SER         = nf.getSerieNo();
		String NUM_DOC     = nf.getDocNo();
		String CHV_NFE_CTE = nf.getlbr_NFeID();
		Timestamp DT_DOC   = nf.getDateDoc();
		
		listReg.add(new RG130(IND_EMIT,COD_PART,COD_MOD,SER,NUM_DOC,CHV_NFE_CTE,DT_DOC));
		
		//RG140
		String COD_ITEM = nfLine.getProductValue();
		int NUM = nfLine.getLine();
		listReg.add(new RG140(NUM,COD_ITEM));
		
		return listReg;
	} //createRG130_RG140
		
	public static R1100 createR1100(MLBRDE de){
		
		String IND_DOC    = de.getType();
		String NRO_DE     = de.getlbr_DE();
		Timestamp DT_DE   = de.getDateDoc();
		String NRO_RE     = de.getlbr_RE();
		Timestamp DT_RE   = de.getlbr_DateRE();
		String CHC_EMB    = de.getlbr_CHCEmb();
		Timestamp DT_CHC  = de.getlbr_DateCHCEmb();
		Timestamp DT_AVB  = de.getDateTrx();
		String TP_CHC     = de.getlbr_CHCType();
		
		if (DT_RE == null)
			DT_RE = DT_AVB;
		
		MCountry country = new MCountry(getCtx(),de.getC_Country_ID(),null);
		String PAIS = country.get_ValueAsString("lbr_CountryCode");
		if (!PAIS.trim().isEmpty() && PAIS.length() > 3)
			PAIS = PAIS.substring(1, PAIS.length()-1); //PAIS SISCOMEX são só 3 dígitos
		
		return new R1100(IND_DOC,NRO_DE,DT_DE,NRO_RE,DT_RE,CHC_EMB,
				DT_CHC,DT_AVB,TP_CHC,PAIS);
	} //createR1100
		
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
	
	public static MAsset[] getAtivosCIAP(Timestamp dateFrom, Timestamp dateTo){
		
		String whereClause = "AD_Client_ID=? AND AD_Org_ID IN (0,?) " +
				             "AND IsDepreciated='Y' " +
				             "AND ADD_MONTHS(TRUNC(A_Asset_CreateDate,'MM'),47) >= ? " +
				             "AND A_Asset_CreateDate <= ?";
		 
		String orderBy = "Value";

		MTable table = MTable.get(Env.getCtx(), MAsset.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), null);
              q.setOrderBy(orderBy);
              q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),Env.getAD_Org_ID(Env.getCtx()),dateFrom,dateTo});

        List<MAsset> list = q.list();
        MAsset[] nfs = new MAsset[list.size()];
        return list.toArray(nfs);
	} //getAtivoCIAP
	
	public static String getSQLInv(){
		String sql = "SELECT M_Product_ID, QtyOnHand, C_BPartner_ID, lbr_WarehouseType " +
	                 "FROM (SELECT Aux.AD_Client_ID, Aux.AD_Org_ID, Aux.M_Product_ID, SUM(Aux.QtyOnHand) AS QtyOnHand, Aux.C_BPartner_ID, Aux.lbr_WarehouseType " +
	                       "FROM (SELECT DISTINCT '1', w.AD_Client_ID, w.AD_Org_ID, s.M_Product_ID, SUM(s.QtyOnHand) AS QtyOnHand, l.C_BPartner_ID, w.lbr_WarehouseType " +
	                                "FROM M_Storage s " +
	                                "INNER JOIN M_Locator l ON s.M_Locator_ID = l.M_Locator_ID " +
	                                "INNER JOIN M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID " +
	                             "GROUP BY w.AD_Client_ID, w.AD_Org_ID, s.M_Product_ID, l.C_BPartner_ID, w.lbr_WarehouseType " +
	                             "UNION ALL " +
	                             "SELECT '2', w.AD_Client_ID, w.AD_Org_ID, t.M_Product_ID, SUM(t.MovementQty) * -1 AS QtyOnHand, l.C_BPartner_ID, w.lbr_WarehouseType " +
	                                "FROM M_Transaction t " +
	                                "INNER JOIN M_Locator l ON t.M_Locator_ID = l.M_Locator_ID " +
	                                "INNER JOIN M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID " +
	                             "WHERE TRUNC(t.MovementDate, 'DD') > TRUNC(?, 'DD') " +
	                             "GROUP BY w.AD_Client_ID, w.AD_Org_ID, t.M_Product_ID, l.C_BPartner_ID, w.lbr_WarehouseType) Aux " +
	                       "GROUP BY AD_Client_ID, AD_Org_ID, M_Product_ID, C_BPartner_ID, lbr_WarehouseType) " +
	                 "WHERE QtyOnHand > 0 AND AD_Org_ID = ? ORDER BY M_Product_ID";
		
		return sql;
	} //getSQLInv
	
	public static BigDecimal getVL_UNIT(int AD_Client_ID, int M_Product_ID, Timestamp invDate){
		String sql = "SELECT getCurrentCost(?,?,getPeriod(?,TRUNC(?,'MM'))) FROM AD_Client";
		return DB.getSQLValueBD(null, sql, new Object[]{AD_Client_ID,M_Product_ID,AD_Client_ID,invDate});
	} //getVL_UNIT
	
	private static String getCOD_AJ_APUR(String type, boolean isST){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(), get_TrxName());
		
		String UF = orgLoc.getC_Region().getName();
		String TIPO_OPR = isST ? "1" : "0"; //ST = Substituição Tributária
		
		String UTILIZACAO = "";	
		if (type.equals(X_LBR_ApuracaoICMSLine.TYPE_OutrosDébitos))
			UTILIZACAO = "0";
		else if (type.equals(X_LBR_ApuracaoICMSLine.TYPE_EstornosDeCréditos))
			UTILIZACAO = "1";
		else if (type.equals(X_LBR_ApuracaoICMSLine.TYPE_OutrosCréditos))
			UTILIZACAO = "2";
		else if (type.equals(X_LBR_ApuracaoICMSLine.TYPE_EstornoDeDébitos))
			UTILIZACAO = "3";
		else
			return null;
		
		return UF + TIPO_OPR + UTILIZACAO + "9999";
	} //getCOD_AJ_APUR
	
	private static String getCOD_AJ(String type){
		
		if (type.equals(X_LBR_ApuracaoIPILine.TYPE_OutrosDébitos))
			return "199";
		else if (type.equals(X_LBR_ApuracaoIPILine.TYPE_EstornosDeCréditos))
			return "101";
		else if (type.equals(X_LBR_ApuracaoIPILine.TYPE_OutrosCréditos))
			return "099";
		else if (type.equals(X_LBR_ApuracaoIPILine.TYPE_EstornoDeDébitos))
			return "001";
		
		return null;
	} //getCOD_AJ
	
} //EFDUtil