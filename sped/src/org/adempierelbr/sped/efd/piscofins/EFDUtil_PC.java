/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.sped.efd.piscofins;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.efd.piscofins.beans.R0000;
import org.adempierelbr.sped.efd.piscofins.beans.R0100;
import org.adempierelbr.sped.efd.piscofins.beans.R0110;
import org.adempierelbr.sped.efd.piscofins.beans.R0111;
import org.adempierelbr.sped.efd.piscofins.beans.R0140;
import org.adempierelbr.sped.efd.piscofins.beans.R0150;
import org.adempierelbr.sped.efd.piscofins.beans.R0190;
import org.adempierelbr.sped.efd.piscofins.beans.R0200;
import org.adempierelbr.sped.efd.piscofins.beans.R9900;
import org.adempierelbr.sped.efd.piscofins.beans.RA010;
import org.adempierelbr.sped.efd.piscofins.beans.RA100;
import org.adempierelbr.sped.efd.piscofins.beans.RA170;
import org.adempierelbr.sped.efd.piscofins.beans.RC010;
import org.adempierelbr.sped.efd.piscofins.beans.RC100;
import org.adempierelbr.sped.efd.piscofins.beans.RC120;
import org.adempierelbr.sped.efd.piscofins.beans.RC170;
import org.adempierelbr.sped.efd.piscofins.beans.RC500;
import org.adempierelbr.sped.efd.piscofins.beans.RC501;
import org.adempierelbr.sped.efd.piscofins.beans.RC505;
import org.adempierelbr.sped.efd.piscofins.beans.RD010;
import org.adempierelbr.sped.efd.piscofins.beans.RD100;
import org.adempierelbr.sped.efd.piscofins.beans.RD101;
import org.adempierelbr.sped.efd.piscofins.beans.RD105;
import org.adempierelbr.sped.efd.piscofins.beans.RD500;
import org.adempierelbr.sped.efd.piscofins.beans.RD501;
import org.adempierelbr.sped.efd.piscofins.beans.RD505;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 *	Utilitarios para o EFD (Pis/Cofins)
 *
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 */
public class EFDUtil_PC
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EFDUtil_PC.class);

	private static Properties ctx = null;
	private static String     trx = null;
	
	private static int AD_Org_ID = 0;
	
	public static void setEnv(Properties ctx, String trx, int AD_Org_ID){
		EFDUtil_PC.AD_Org_ID = AD_Org_ID;
		EFDUtil_PC.ctx = ctx;
		EFDUtil_PC.trx = trx;
	}

	public static Properties getCtx(){
		return ctx;
	}

	public static String get_TrxName(){
		return trx;
	}
	
	public static String getCOD_VERSAO(Timestamp dateFrom){
		return "002"; //ADE Cofis nº 34/2010, atualizado pelo ADE Cofis nº 37/2010
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

		String COD_VER     = getCOD_VERSAO(dateFrom);
		String TIP_ESCRIT  = "0"; //REMESSA ORIGINAL //FIXME
		String IND_SIT_ESP = "0"; //ABERTURA //FIXME
		String NUM_REC_ANTERIOR = ""; //FIXME
		String NOME        = orgInfo.get_ValueAsString("lbr_LegalEntity");
		String CNPJ        = orgInfo.get_ValueAsString("lbr_CNPJ");
		String UF          = orgLoc.getC_Region().getName();
		String COD_MUN     = BPartnerUtil.getCityCode(orgLoc);
		String SUFRAMA     = orgInfo.get_ValueAsString("lbr_Suframa");
		String IND_NAT_PJ  = "00"; //SOCIEDADE EMPRESARIAL //FIXME
		String IND_ATIV    = orgInfo.get_ValueAsString("lbr_IndAtividade");

		return new R0000(COD_VER, TIP_ESCRIT, IND_SIT_ESP, NUM_REC_ANTERIOR, 
				dateFrom, dateTo, NOME, CNPJ, UF, COD_MUN, SUFRAMA, IND_NAT_PJ, IND_ATIV);
	} //createR0000
	
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
	
	public static R0110 createR0110(){
		
		String COD_INC_TRIB  = "1"; //FIXME
		String IND_APRO_CRED = "2"; //FIXME
		String COD_TIPO_CONT = "1"; //FIXME
		
		return new R0110(COD_INC_TRIB,IND_APRO_CRED,COD_TIPO_CONT);
	} //createR0110
	
	public static R0111 createR0111(Map<Integer,Set<RC170>> _RC170){
		
		BigDecimal REC_BRU_NCUM_TRIB_MI = Env.ZERO;
		BigDecimal REC_BRU_NCUM_NT_MI   = Env.ZERO;
		BigDecimal REC_BRU_NCUM_EXP     = Env.ZERO;
		BigDecimal REC_BRU_CUM          = Env.ZERO;
		BigDecimal REC_BRU_TOTAL        = Env.ZERO;
				
		//PRODUTO
		Iterator<Integer> listRC100 = _RC170.keySet().iterator();
		while(listRC100.hasNext()){
			Set<RC170> setRC170 = _RC170.get(listRC100.next());
			for (RC170 rc170 : setRC170){
				Integer CFOP = Integer.parseInt(rc170.getCFOP().substring(0, 1));
				if (CFOP.intValue() > 4){ //SAIDAS
					if (rc170.getVL_PIS().signum() == 1){
						REC_BRU_NCUM_TRIB_MI = REC_BRU_NCUM_TRIB_MI.add(rc170.getVL_OPR());
					}
					else if (CFOP == 7){
						REC_BRU_NCUM_EXP = REC_BRU_NCUM_EXP.add(rc170.getVL_OPR());
					}
					else{
						REC_BRU_NCUM_NT_MI = REC_BRU_NCUM_NT_MI.add(rc170.getVL_OPR());
					}
				}
			}
		}
		
		REC_BRU_TOTAL = REC_BRU_NCUM_TRIB_MI.add(REC_BRU_NCUM_NT_MI).add(REC_BRU_NCUM_EXP)
		            .add(REC_BRU_CUM);
		
		return new R0111(REC_BRU_NCUM_TRIB_MI,REC_BRU_NCUM_NT_MI,REC_BRU_NCUM_EXP,REC_BRU_CUM,REC_BRU_TOTAL);
	} //createR0111
	
	public static R0140 createR0140(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(), get_TrxName());

		String COD_EST     = TextUtil.toNumeric(orgInfo.get_ValueAsString("lbr_CNPJ"));
		String NOME        = orgInfo.get_ValueAsString("lbr_LegalEntity");
		String CNPJ        = orgInfo.get_ValueAsString("lbr_CNPJ");
		String UF          = orgLoc.getC_Region().getName();
		String IE         = orgInfo.get_ValueAsString("lbr_IE");
		String COD_MUN     = BPartnerUtil.getCityCode(orgLoc);
		String IM         = orgInfo.get_ValueAsString("lbr_CCM");
		String SUFRAMA     = orgInfo.get_ValueAsString("lbr_Suframa");

		return new R0140(COD_EST,NOME,CNPJ,UF,IE,COD_MUN,IM,SUFRAMA);
	} //createR0140
	
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
	
	public static RA010 createRA010(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());

		String CNPJ      = orgInfo.get_ValueAsString("lbr_CNPJ");
		
		return new RA010(CNPJ);
	} //createRA010
	
	public static RA100 createRA100(MLBRNotaFiscal nf, String COD_PART, String IND_EMIT){
		
		String IND_OPER   = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT    = nf.isCancelled() ? "02" : "00";
		String SER        = nf.getSerieNo();
		String SUB        = ""; //TODO
		String NUM_DOC    = nf.getDocNo();
		String CHV_NFSE   = nf.getlbr_NFeID();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_EXE_SERV = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal().subtract(nf.getTotalLines());
		String IND_PAG    = nf.getIndPag();
		if (IND_PAG.equals("2")) // 2 é usado na NFe
			IND_PAG = "1";
		
		BigDecimal VL_DESC = nf.getDiscountAmt(nf.getlbr_ServiceTotalAmt());
		BigDecimal VL_BC_PIS = nf.getTaxBaseAmtService("PIS", true);
		BigDecimal VL_PIS = nf.getTaxAmtService("PIS", true);
		BigDecimal VL_BC_COFINS = nf.getTaxBaseAmtService("COFINS", true);
		BigDecimal VL_COFINS = nf.getTaxAmtService("COFINS", true);
		BigDecimal VL_PIS_RET = nf.getTaxAmt("PISRT").abs();
		BigDecimal VL_COFINS_RET = nf.getTaxAmt("COFINSRT").abs();
		BigDecimal VL_ISS = nf.getTaxAmt("ISS").abs();
	
		return new RA100(IND_OPER,IND_EMIT,COD_PART,COD_SIT,SER,SUB,NUM_DOC,
				CHV_NFSE,DT_DOC,DT_EXE_SERV,VL_DOC,IND_PAG,VL_DESC,VL_BC_PIS,
				VL_PIS,VL_BC_COFINS,VL_COFINS,VL_PIS_RET,VL_COFINS_RET,VL_ISS);
	} //createRA100
	
	public static RA170 createRA170(MLBRNotaFiscalLine nfLine, String COD_ITEM, int line){
		
		String DESCR_COMPL = nfLine.getDescription();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		BigDecimal VL_DESC = nfLine.getDiscountAmt();
		String NAT_BC_CRED = "13"; //Outros Créditos //FIXME
		String IND_ORIG_CRED = "0";
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_BC_PIS = nfLine.getTaxBaseAmt("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		String COD_CCUS = ""; //TODO ???
		
		String CFOP = nfLine.getCFOP();
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RA170(line,COD_ITEM,DESCR_COMPL,VL_ITEM,VL_DESC,NAT_BC_CRED,IND_ORIG_CRED,
				CST_PIS,VL_BC_PIS,ALIQ_PIS,VL_PIS,CST_COFINS,VL_BC_COFINS,ALIQ_COFINS,
				VL_COFINS,COD_CTA,COD_CCUS,CFOP,VL_OPR);
	} //createRA170
	
	public static RC010 createRC010(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());

		String CNPJ      = orgInfo.get_ValueAsString("lbr_CNPJ");
		String IND_ESCRI = "2"; //Apuração com base no registro individualizado de NF-e (C100 e C170)

		return new RC010(CNPJ,IND_ESCRI);
	} //createRC010
	
	public static RC100 createRC100(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		String IND_OPER   = nf.isSOTrx() ? "1" : "0"; //0 = Entrada, 1 = Saída
		String COD_SIT    = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER        = nf.getSerieNo();
		String NUM_DOC    = nf.getDocNo();
		String CHV_NFE    = nf.getlbr_NFeID();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_E_S  = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal().subtract(nf.getlbr_ServiceTotalAmt());
		String IND_PAG    = nf.getIndPag();
		if (IND_PAG.equals("2")) // 2 é usado na NFe
			IND_PAG = "1";
		
		BigDecimal VL_DESC = nf.getDiscountAmt(nf.getTotalLines());
		BigDecimal VL_ABAT_NT  = Env.ZERO; //TODO ???
		BigDecimal VL_MERC = nf.getTotalLines();
		String IND_FRT = nf.getFreightCostRule() == null ? "9" : (nf.getFreightCostRule().equals("E") ? "2" : "1");
		BigDecimal VL_FRT = nf.getFreightAmt();
		BigDecimal VL_SEG = nf.getlbr_InsuranceAmt();
		BigDecimal VL_OUT_DA = Env.ZERO; //TODO ???
		
		BigDecimal[] assetAmt = nf.getAssetTaxAmt();
		BigDecimal VL_BC_ICMS = nf.getICMSBase().subtract(assetAmt[0]);
		BigDecimal VL_ICMS = nf.getICMSAmt().subtract(assetAmt[1]);
		
		BigDecimal VL_BC_ICMS_ST = nf.getTaxBaseAmt("ICMSST");
		BigDecimal VL_ICMS_ST = nf.getTaxAmt("ICMSST");
		BigDecimal VL_IPI = nf.getIPIAmt();
		BigDecimal VL_PIS = nf.getTaxAmtService("PIS", false);
		BigDecimal VL_COFINS = nf.getTaxAmtService("COFINS", false);
		BigDecimal VL_PIS_ST = Env.ZERO; //TODO ???
		BigDecimal VL_COFINS_ST = Env.ZERO; //TODO ???
	
		return new RC100(IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,NUM_DOC,CHV_NFE,
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
		BigDecimal QUANT_BC_PIS = null; //TODO ???
		BigDecimal V_ALIQ_PIS = null; //TODO
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal QUANT_BC_COFINS = null; //TODO ???
		BigDecimal V_ALIQ_COFINS = null; //TODO
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		
		BigDecimal VL_OPR = nfLine.getTotalOperationAmt();
		
		return new RC170(line,COD_ITEM,DESCR_COMPL,QTD,UNID,VL_ITEM,VL_DESC,IND_MOV,CST_ICMS,
				CFOP,COD_NAT,VL_BC_ICMS,ALIQ_ICMS,VL_ICMS,VL_BC_ICMS_ST,ALIQ_ST,VL_ICMS_ST,
				IND_APUR,CST_IPI,COD_ENQ,VL_BC_IPI,ALIQ_IPI,VL_IPI,CST_PIS,VL_BC_PIS,V_ALIQ_PIS,
				QUANT_BC_PIS,ALIQ_PIS,VL_PIS,CST_COFINS,VL_BC_COFINS,ALIQ_COFINS,QUANT_BC_COFINS,
				V_ALIQ_COFINS,VL_COFINS,COD_CTA,VL_OPR);
	} //createRC170
	
	public static RC500 createRC500(MLBRNotaFiscal nf, String COD_PART, String COD_MOD){
		
		if (nf.isSOTrx()) //SOMENTE ENTRADA
			return null;
		
		String COD_SIT    = nf.isCancelled() ? "02" : ("2".equals(nf.getlbr_FinNFe()) ? "06" : "00");
		String SER        = nf.getSerieNo();
		String SUB        = ""; //TODO
		String NUM_DOC    = nf.getDocNo();
		Timestamp DT_DOC  = nf.getDateDoc();
		Timestamp DT_ENT  = nf.getlbr_DateInOut() == null ? nf.getDateDoc() : nf.getlbr_DateInOut();
		BigDecimal VL_DOC = nf.getGrandTotal();
		BigDecimal VL_ICMS = nf.getICMSAmt();
		String COD_INF = ""; //TODO ???
		BigDecimal VL_PIS = nf.getTaxAmt("PIS");
		BigDecimal VL_COFINS = nf.getTaxAmt("COFINS");
	
		return new RC500(COD_PART,COD_MOD,COD_SIT,SER,SUB,NUM_DOC,DT_DOC,DT_ENT,
				VL_DOC,VL_ICMS,COD_INF,VL_PIS,VL_COFINS);
	} //createRC500
	
	public static RC501 createRC501(MLBRNotaFiscalLine nfLine){
		
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "04"; //Energia elétrica utilizada pela pessoa jurídica
		BigDecimal VL_BC_PIS = nfLine.getTaxBaseAmt("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String COD_CTA = ""; //TODO ???
		
		if (ALIQ_PIS.compareTo(new BigDecimal("1.65")) != 0) //ALIQ. DIFERENCIADA
			CST_PIS = "98";
		
		return new RC501(CST_PIS,VL_ITEM,NAT_BC_CRED,VL_BC_PIS,ALIQ_PIS,VL_PIS,COD_CTA);
	} //createRC501
	
	public static RC505 createRC505(MLBRNotaFiscalLine nfLine){
		
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "04"; //Energia elétrica utilizada pela pessoa jurídica
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		
		if (ALIQ_COFINS.compareTo(new BigDecimal("7.60")) != 0) //ALIQ. DIFERENCIADA
			CST_COFINS = "98";
		
		return new RC505(CST_COFINS,VL_ITEM,NAT_BC_CRED,VL_BC_COFINS,ALIQ_COFINS,
				VL_COFINS,COD_CTA);
	} //createRC505
	
	public static RD010 createRD010(){
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());

		String CNPJ      = orgInfo.get_ValueAsString("lbr_CNPJ");
		
		return new RD010(CNPJ);
	} //createRD010
	
	public static RD100 createRD100(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		if (nf.isSOTrx()) //SOMENTE ENTRADA
			return null;
		
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
		return new RD100(IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,SUB,NUM_DOC,
				CHV_CTE,DT_DOC,DT_A_P,TP_CT_e,CHV_CTE_REF,VL_DOC,VL_DESC,IND_FRT,VL_SERV,
				VL_BC_ICMS, VL_ICMS, VL_NT, COD_INF, COD_CTA);
	} //createRD100
	
	public static RD101 createRD101(MLBRNotaFiscalLine nfLine){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(nfLine.getCtx(),nfLine.getLBR_NotaFiscal_ID(),nfLine.get_TrxName());
		String IND_FRT    = nf.getFreightCostRule() == null ? "9" : (nf.getFreightCostRule().equals("E") ? "2" : "1");
		String IND_NAT_FRT = "9"; //OUTRAS //TODO
		
		if (IND_FRT.equals("1"))
			IND_NAT_FRT = "0";
		else if (IND_FRT.equals("2"))
			IND_NAT_FRT = "1";
		
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "14"; //Atividade de Transporte de Cargas – Subcontratação
		BigDecimal VL_BC_PIS = nfLine.getTaxBaseAmt("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String COD_CTA = ""; //TODO ???
		
		if (VL_PIS.signum() == 0) //ISENTO
			IND_NAT_FRT = "9";
		
		return new RD101(IND_NAT_FRT,CST_PIS,VL_ITEM,NAT_BC_CRED,VL_BC_PIS,
				ALIQ_PIS,VL_PIS,COD_CTA);
	} //createRD101
	
	public static RD105 createRD105(MLBRNotaFiscalLine nfLine){
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(nfLine.getCtx(),nfLine.getLBR_NotaFiscal_ID(),nfLine.get_TrxName());
		String IND_FRT    = nf.getFreightCostRule() == null ? "9" : (nf.getFreightCostRule().equals("E") ? "2" : "1");
		String IND_NAT_FRT = "9"; //OUTRAS //TODO
		
		if (IND_FRT.equals("1"))
			IND_NAT_FRT = "0";
		else if (IND_FRT.equals("2"))
			IND_NAT_FRT = "1";
		
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "14"; //Atividade de Transporte de Cargas – Subcontratação
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		
		if (VL_COFINS.signum() == 0) //ISENTO
			IND_NAT_FRT = "9";
		
		return new RD105(IND_NAT_FRT,CST_COFINS,VL_ITEM,NAT_BC_CRED,
				VL_BC_COFINS,ALIQ_COFINS,VL_COFINS,COD_CTA);
	} //createRD105
	
	public static RD500 createRD500(MLBRNotaFiscal nf, String COD_PART, String COD_MOD, String IND_EMIT){
		
		if (nf.isSOTrx()) //SOMENTE ENTRADA
			return null;
		
		if (nf.getPISAmt().signum() != 1 &&  //OPERACAO SEM PIS e COFINS
			nf.getCOFINSAmt().signum() != 1)
			return null;
		
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
	
		return new RD500(IND_OPER,IND_EMIT,COD_PART,COD_MOD,COD_SIT,SER,SUB,NUM_DOC,
				DT_DOC,DT_A_P,VL_DOC,VL_DESC,VL_SERV,VL_SERV_NT,VL_TERC,VL_DA,
				VL_BC_ICMS, VL_ICMS, COD_INF, VL_PIS, VL_COFINS);
	} //createRD500
	
	public static RD501 createRD501(MLBRNotaFiscalLine nfLine){
		
		String CST_PIS = nfLine.getCST_PIS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "13"; //Outras operações com direito a crédito
		BigDecimal VL_BC_PIS = nfLine.getTaxBaseAmt("PIS");
		BigDecimal ALIQ_PIS = nfLine.getTaxRate("PIS");
		BigDecimal VL_PIS = nfLine.getTaxAmt("PIS");
		String COD_CTA = ""; //TODO ???
		
		return new RD501(CST_PIS,VL_ITEM,NAT_BC_CRED,VL_BC_PIS,ALIQ_PIS,VL_PIS,COD_CTA);
	} //createRD501
	
	public static RD505 createRD505(MLBRNotaFiscalLine nfLine){
		
		String CST_COFINS = nfLine.getCST_COFINS();
		BigDecimal VL_ITEM = nfLine.getLineTotalAmt();
		String NAT_BC_CRED = "13"; //Outras operações com direito a crédito
		BigDecimal VL_BC_COFINS = nfLine.getTaxBaseAmt("COFINS");
		BigDecimal ALIQ_COFINS = nfLine.getTaxRate("COFINS");
		BigDecimal VL_COFINS = nfLine.getTaxAmt("COFINS");
		String COD_CTA = ""; //TODO ???
		
		return new RD505(CST_COFINS,VL_ITEM,NAT_BC_CRED,VL_BC_COFINS,ALIQ_COFINS,
				VL_COFINS,COD_CTA);
	} //createRD505
	
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
	
} //EFDUtil_PC