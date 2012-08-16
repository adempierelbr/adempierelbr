package org.adempierelbr.sped.efd;

import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.sped.efd.bean.R0000;
import org.adempierelbr.sped.efd.bean.R0001;
import org.adempierelbr.sped.efd.bean.R0005;
import org.adempierelbr.sped.efd.bean.R0100;
import org.adempierelbr.sped.efd.bean.R0150;
import org.adempierelbr.sped.efd.bean.R0190;
import org.adempierelbr.sped.efd.bean.R0200;
import org.adempierelbr.sped.efd.bean.R0990;
import org.adempierelbr.sped.efd.bean.RC100;
import org.adempierelbr.sped.efd.bean.RC120;
import org.adempierelbr.sped.efd.bean.RC170;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * Utilitarios para o EFD
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 * 
 * @author Pablo Boff Pigozzo
 * @version $ 08/08/2012, 15:30 pablobp4 $
 */
public class EFDUtil {

	/**
	 * Logger
	 */
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	/**
	 * TODO: ALTERAR E DEIXAR DINAMICO
	 */
	private static final String COD_VER = "005"; // A Partir de Jan/12
	private static final String COD_FIN = "0"; // Remessa do Arquivo Original
	private static final String IND_PERFIL = "A"; // Perfil A
	private static final String COD_DOC_IMP = "0"; // Declaração de Importacao
	private static final String IND_APUR = "0"; // Mensal (IPI - RC170)

	
	/**
	 * Retornar o bloco de registro ao qual o modelo de documento pertence
	 * 
	 * @param nfModel
	 * @return C100, C400, C500, D100, D500
	 */
	public static String getBlocoNFModel(String nfModel) {

		//
		String nfReg = "";
		
		/*
		 * BLOCO C100 - Nota Fiscal Produto
		 */
		if (nfModel.equals("01") || nfModel.equals("1B")
				|| nfModel.equals("04") || nfModel.equals("55")) {
			nfReg = "C100";
		}

		/*
		 * BLOCO C400 - Cupom Fiscal
		 */
		else if (nfModel.equals("02") || nfModel.equals("2D")) {
			nfReg = "C400";
		}

		/*
		 * BLOCO C500 - Nota Fiscal Energia Elétrica
		 */
		else if (nfModel.equals("06") || nfModel.equals("28")
				|| nfModel.equals("29")) {
			nfReg = "C500";
		}

		/*
		 * BLOCO D100 - Serviço de Transporte
		 */
		else if (nfModel.equals("07") || nfModel.equals("08")
				|| nfModel.equals("8B") || nfModel.equals("09")
				|| nfModel.equals("10") || nfModel.equals("11")
				|| nfModel.equals("26") || nfModel.equals("27")
				|| nfModel.equals("57")) {
			nfReg = "D100";
		}

		/*
		 * BLOCO D500 - Serviço de Telecomunicações
		 */
		else if (nfModel.equals("21") || nfModel.equals("22")) {
			nfReg = "D500";
		}

		return nfReg;

	} // getNFHeaderReg
	
	
	
	/**
	 * Tratar NF Model. 
	 * 
	 * Obs: Se o modelo do documento fiscal é null ou vazio, então
	 * verificar se é NF-e, se sim, colocar 55 NF-e, senão, colocar 01 NF Normal  
	 * 
	 * @param nfModel
	 * @param nfID
	 * @return
	 */
	public static String getCOD_MOD(MLBRFactFiscal factFiscal)
	{
		//
		String nfModel = factFiscal.getlbr_NFModel();
		
		//
		if (nfModel == null || nfModel.isEmpty())
		{
			if(factFiscal.getlbr_NFeID() != null && !factFiscal.getlbr_NFeID().isEmpty())
				nfModel = "55"; // NF-e
			else
				nfModel = "01"; // NF
		}
		
		return nfModel;
	}

	
	/**
	 * Retornar Código do Participante
	 * 
	 * TODO: VERIFICAR FORMA DE DEIXÁ-LO UNICO MESMO COM MAIS DE UM ENDERECO
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getCOD_PART(MLBRFactFiscal factFiscal) throws Exception
	{
		
		// Código do PN
		return TextUtil.retiraEspecial(factFiscal.getC_BPartner().getValue());
		
	}
	
	
	/**
	 * Retornar Código da Situação do Documento
	 * 
	 * Tabela 4.1.2
	 * 
	 * Utilizado o código '08' para regime especial ou norma específica 
	 * de acordo com o manual do SPED, descrição do registro C100. 
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getCOD_SIT(MLBRFactFiscal factFiscal) throws Exception
	{
		// documento regular
		String cod_sit = "00";
		
		// cancelada = 02
		if(factFiscal.isCancelled())
			cod_sit = "02";
		
		// regime especial ou norma especifica. CFOP 5/6.929
		else if(factFiscal.getlbr_CFOPName().equals("5.929")
				|| factFiscal.getlbr_CFOPName().equals("6.929"))
			cod_sit = "08";
		
		//
		return cod_sit;
	}
	
	
	/**
	 * Retornar o Indicador de Frete
	 * 
	 * Obs.: A partir de 01/01/2012 passará a ser: Indicador do tipo do frete:
	 * 0- Por conta do emitente;
	 * 1- Por conta do destinatário/remetente;
	 * 2- Por conta de terceiros; 
	 * 9- Sem cobrança de frete.
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getIND_FRT(MLBRFactFiscal factFiscal) throws Exception
	{
		// null = sem frete
		if(factFiscal.getFreightCostRule() == null)
			return "9";
		
		// incluso na nota (corpo da NF)
		if(factFiscal.getFreightCostRule().equals("I"))
			return "0";
		
		// excluso (conhecimento de frete)
		else if(factFiscal.getFreightCostRule().equals("E"))
			return "1";
		
		// por conta de terceiros
		else if(factFiscal.getFreightCostRule().equals("T"))
			return "2";
		
		// sem frete
		else 
			return "9";
		
	}
	
	
	/**
	 * Retornar o Indicador de Pgto
	 * 
	 * 0- À vista;
	 * 1- A prazo;
	 * 2 - Outros
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getIND_PGTO(MLBRFactFiscal factFiscal) throws Exception
	{
		// sem fatura - ???
		if(factFiscal.getC_Invoice_ID() <= 0)
			return "2";
		
		// condição de pgto da fatura
		MPaymentTerm pt = new MPaymentTerm(factFiscal.getCtx(), 
				factFiscal.getC_Invoice().getC_PaymentTerm_ID(), 
				factFiscal.get_TrxName());
		MPaySchedule[] pts = pt.getSchedule(false);
		
		// se tiver dias devidos e/ou parcelas, então é a prazo
		if (pt.getNetDays() > 0	|| (pts != null && pts.length > 0))
			return "1";
		
		//
		return "0";
		
	}
	
	
	/**
	 * Retornar a Série da NF
	 * 
	 * Somente retornar a série de NF-e's de emissão própria, pois 
	 * não está tendo entrada de séries de NF-e's de terceiros. 
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static String getSER(MLBRFactFiscal factFiscal) throws Exception
	{
		if(factFiscal.islbr_IsOwnDocument() 
				&& factFiscal.getlbr_NFeProt() != null 
				&& !factFiscal.getlbr_NFeProt().isEmpty())
			return factFiscal.getlbr_NFSerie();
		else
			return "";
	}
	
	
	
	/**
	 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
	 * 
	 * @param dateFrom
	 * @param dateTo
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */

	public static R0000 createR0000(Properties ctx, Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, String trxName) throws Exception {

		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, trxName);
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		
		
		//
		R0000 reg = new R0000();
		reg.setCOD_VER(COD_VER);
		reg.setCOD_FIN(COD_FIN);
		reg.setDT_INI(dateFrom);
		reg.setDT_INI(dateTo);
		reg.setNOME(oiW.getlbr_LegalEntity());
		reg.setCNPJ(oiW.getlbr_CNPJ());
		reg.setCPF(null);
		reg.setUF(oiW.getC_Location().getC_Region().getName());
		reg.setIE(oiW.getlbr_IE());
		
		//
		MCity city = new MCity(ctx, oiW.getC_Location().getC_City_ID(), trxName);
		reg.setCOD_MUN(city.get_ValueAsString("lbr_CityCode"));
		
		//
		reg.setIM(oiW.getlbr_CCM());
		reg.setSUFRAMA(oiW.getlbr_Suframa());
		reg.setIND_PERFIL(IND_PERFIL);

		// 0 - Industria ou equiparado a Industrial / 1 - Outros
		reg.setIND_ATIV(oi.get_ValueAsString("lbr_IndAtividade").equals("0") ? "0" : "1");

		// return
		return reg;
	}

	/**
	 * REGISTRO 0001: ABERTURA DO BLOCO 0
	 * 
	 * @param hasInfo tem informação ou não
	 * @return
	 * @throws Exception
	 */
	public static R0001 createR0001(boolean hasInfo) throws Exception
	{
		R0001 reg = new R0001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	/**
	 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
	 * 
	 * @param factFiscal
	 * @return
	 */
	public static R0005 createR0005(Properties ctx, int AD_Org_ID, String trxName) throws Exception
	{
		// 
		I_W_AD_OrgInfo oiW = POWrapper.create(MOrgInfo.get(ctx, AD_Org_ID, trxName), I_W_AD_OrgInfo.class);
		
		//
		R0005 reg = new R0005();
		reg.setFANTASIA(oiW.getlbr_Fantasia());
		reg.setCEP(oiW.getC_Location().getPostal());
		reg.setEND(oiW.getC_Location().getAddress1());
		reg.setNUM(oiW.getC_Location().getAddress2());
		reg.setCOMPL(oiW.getC_Location().getAddress4());
		reg.setBAIRRO(oiW.getC_Location().getAddress3());
		reg.setFONE(oiW.getPhone());
		reg.setFONE(oiW.getEMail());
		
		// return
		return reg;			
	}

	
	
	/**
	 * REGISTRO 0100: DADOS DO CONTABILISTA
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0100 createR0100(Properties ctx, int AD_Org_ID, String trxName) throws Exception
	{

		// carregar contador e endereço
		MBPartner bpContador = new MBPartner(ctx, MOrgInfo.get(ctx, AD_Org_ID, trxName).get_ValueAsInt("LBR_BP_Accountant_ID"),	trxName);
		MBPartnerLocation bpcontLoc = bpContador.getPrimaryC_BPartner_Location();
		MLocation contLoc = new MLocation(ctx, bpcontLoc.getC_Location_ID(), trxName);
	
		// se não tiver, então deixar o erro para o annotation
		if (bpContador == null || bpcontLoc == null || contLoc == null) 
			return null;

		// 
		R0100 reg = new R0100();
		reg.setNOME(bpContador.getName());
		reg.setCPF(bpContador.get_ValueAsString("lbr_CPF"));
		reg.setCRC(bpContador.get_ValueAsString("lbr_CRC"));
		reg.setCNPJ(bpContador.get_ValueAsString("lbr_CNPJ"));
		reg.setCEP(contLoc.getPostal());
		reg.setEND(contLoc.getAddress1());
		reg.setNUM(contLoc.getAddress2());
		reg.setCOMPL(contLoc.getAddress4());
		reg.setBAIRRO(contLoc.getAddress3());
		reg.setFONE(bpcontLoc.getPhone());
		reg.setFAX(bpcontLoc.getFax());
		
		// email
		if (bpContador.getPrimaryAD_User_ID() > 0) 
			reg.setEMAIL(MUser.get(ctx, bpContador.getPrimaryAD_User_ID()).getEMail());

		// código do municipio do IBGE
		reg.setCOD_MUN(BPartnerUtil.getCityCode(contLoc));

		//
		return reg;				
				
	} // createR0100
	
	
	
	/**
	 * REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
	 * 
	 * @param factFiscal
	 * @return
	 * 
	 * @throws Exception
	 */
	public static R0150 createR0150(MLBRFactFiscal factFiscal) throws Exception
	{

		R0150 reg = new R0150();
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setNOME(factFiscal.getBPName());
		reg.setCOD_PAIS(String.valueOf(factFiscal.getBPCountryCode()));
		
		// CPF/CNPJ
		if(TextUtil.toNumeric(factFiscal.getlbr_BPCNPJ()).length() == 11)
			reg.setCPF(factFiscal.getlbr_BPCNPJ());
		else
			reg.setCNPJ(factFiscal.getlbr_BPCNPJ());
		
		reg.setIE(factFiscal.getlbr_BPIE());
		reg.setCOD_MUN(String.valueOf(factFiscal.getBPCityCode()));
		reg.setSUFRAMA(factFiscal.getlbr_BPSuframa());
		reg.setEND(factFiscal.getlbr_BPAddress1());
		reg.setNUM(factFiscal.getlbr_BPAddress2());
		reg.setCOMPL(factFiscal.getlbr_BPAddress4());
		reg.setBAIRRO(factFiscal.getlbr_BPAddress3());

		return reg;
		
	} // createR0150

	

	/**
	 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0190 createR0190(MLBRFactFiscal factFiscal) throws Exception
	{

		R0190 reg = new R0190();

		reg.setUNID(factFiscal.getlbr_UOMName() == null ? "un" : factFiscal.getlbr_UOMName());
		reg.setDESCR(factFiscal.getLBR_UOMDescription() == null ? "un" : factFiscal.getLBR_UOMDescription());
		
		
		return reg;
		
	} 

	
	/**
	 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
	 * 
	 * @param product
	 * @return
	 * @throws Exception
	 */
	public static R0190 createR0190(MProduct product) {

		//
		MUOM uom = new MUOM(product.getCtx(), product.getC_UOM_ID(), product.get_TrxName());

		//
		R0190 reg = new R0190();
		reg.setUNID(AdempiereLBR.getUOM_trl(uom));
		reg.setDESCR(AdempiereLBR.getUOMName_trl(uom));
	
		//
		return reg;
	} // createR0190
	

	/**
	 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0200 createR0200(MLBRFactFiscal factFiscal) throws Exception
	{

		//
		R0200 reg = new R0200();
		reg.setCOD_ITEM(factFiscal.getProductValue());
		reg.setDESCR_ITEM(factFiscal.getProductName());
		reg.setCOD_BARRA(factFiscal.getUPC());
		reg.setCOD_ANT_ITEM(null); // TODO
		reg.setUNID_INV(factFiscal.getlbr_UOMName() == null ? "un" : factFiscal.getlbr_UOMName());
		reg.setTIPO_ITEM(factFiscal.getlbr_ItemTypeBR());
		
		// serviço na linha
		if(factFiscal.islbr_IsService())
			reg.setTIPO_ITEM(factFiscal.getlbr_ItemTypeBR());
		
		//
		reg.setCOD_NCM(factFiscal.getlbr_NCMName());
		reg.setEX_IPI(null); // TODO
		reg.setCOD_GEN(null); // TODO
		reg.setCOD_LST(null); // TODO
		reg.setALIQ_ICMS(null);// TODO
		
		return reg;
				
	} // createR0200

	
	/**
	 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static R0200 createR0200(MProduct product) throws Exception
	{

		
		//
		R0200 reg = new R0200();
		reg.setCOD_ITEM(product.getValue());
		reg.setDESCR_ITEM(product.getName());
		reg.setCOD_BARRA(product.getUPC());
		reg.setCOD_ANT_ITEM(null); // TODO
		
		// unidade
		reg.setUNID_INV(AdempiereLBR.getUOM_trl(new MUOM(product.getCtx(), product.getC_UOM_ID(), product.get_TrxName())));
		
		// tipo do item
		reg.setTIPO_ITEM(product.get_ValueAsString("lbr_ItemTypeBR"));
		
		// ncm
		Integer LBR_NCM_ID = (Integer) product.get_Value("LBR_NCM_ID");
		if (LBR_NCM_ID != null && LBR_NCM_ID > 0)
			reg.setCOD_NCM(new MLBRNCM(product.getCtx(), LBR_NCM_ID, product.get_TrxName()).getValue());
		else {
			reg.setCOD_NCM(null);
		}
		
		// 
		reg.setEX_IPI(null); // TODO
		reg.setCOD_GEN(null); // TODO
		reg.setCOD_LST(null); // TODO
		reg.setALIQ_ICMS(null);// TODO
		
		//
		return reg;
	} 
	
	
	/**
	 * REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R0990 createR0990() throws Exception 
	{
		R0990 reg = new R0990();
		reg.setQTD_LIN_0(String.valueOf(reg.getClass().getName()));
	
		return reg;
	}

	/**
	 * REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) E NF-e (CÓDIGO 55).
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC100 createRC100(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RC100 reg = new RC100();
		reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0"); // Entrada = 0 | Saida = 1
		reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setCHV_NFE(factFiscal.getlbr_NFeID());
		reg.setDT_DOC(factFiscal.getDateDoc());
		reg.setDT_E_S(factFiscal.getlbr_DateInOut());
		reg.setVL_DOC(factFiscal.getGrandTotal());
		reg.setIND_PGTO(getIND_PGTO(factFiscal));
		reg.setVL_DESC(factFiscal.getDiscountAmt());
		
		// Abatimento da ZF - TODO
		reg.setVL_ABAT_NT(factFiscal.getDiscountAmt());
		
		// vlr mercadorias, frete e seguro
		reg.setVL_MERC(factFiscal.getTotalLines());
		reg.setIND_FRT(getIND_FRT(factFiscal));
		reg.setVL_FRT(factFiscal.getFreightAmt());
		reg.setVL_SEG(factFiscal.getlbr_InsuranceAmt());
		
		// outras despesas acessórias - TODO
		reg.setVL_OUT_DA(Env.ZERO);
		
		// impostos - somatório das linha
		reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
		reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_NFTaxBaseAmt());
		reg.setVL_ICMS_ST(factFiscal.getICMSST_NFTaxAmt());
		reg.setVL_IPI(factFiscal.getIPI_NFTaxAmt());
		reg.setVL_PIS(factFiscal.getPIS_NFTaxAmt());
		reg.setVL_COFINS(factFiscal.getCOFINS_NFTaxAmt());
		reg.setVL_PIS_ST(Env.ZERO);
		reg.setVL_COFINS_ST(Env.ZERO);
		
		//
		return reg;
		
	} //createRC100
	
	
	/**
	 * REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC120 createRC120(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RC120 reg = new RC120();
		reg.setCOD_DOC_IMP(COD_DOC_IMP);
		reg.setNUM_DOC_IMP(factFiscal.getLBR_NFDI().getlbr_DI());

		// valore preenchidos ao adicionar itens no RC100
		reg.setPIS_IMP(factFiscal.getPIS_NFTaxAmt());
		reg.setCOFINS_IMP(factFiscal.getCOFINS_NFTaxAmt());
		
		// TODO - verificar valor a preencher
		reg.setNUM_ACDRAW("");
		
		//
		return reg;
	}
	
	
	/**
	 * REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RC170 createRC170(MLBRFactFiscal factFiscal) throws Exception
	{

		RC170 reg = new RC170();
		reg.setNUM_ITEM(factFiscal.getLine());
		reg.setCOD_ITEM(factFiscal.getProductValue());
		
		// TODO - descrição da linha da NF
		reg.setDESCR_COMPL("");
		
		reg.setQTD(factFiscal.getQty());
		reg.setUNID(factFiscal.getlbr_UOMName());
		reg.setVL_ITEM(factFiscal.getLineNetAmt());
		
		// TODO - verificar possibilidades de desconto
		reg.setVL_DESC(Env.ZERO);
		
		// TODO - se for serviço não movimenta, senão movimenta
		reg.setIND_MOV(factFiscal.islbr_IsService() ? "0" : "1");
		
		//
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setCOD_NAT(factFiscal.getlbr_NCMName());
		
		// icms
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		
		
		// st
		reg.setVL_BC_ICMS_ST(factFiscal.getICMSST_TaxBaseAmt());
		reg.setALIQ_ST(factFiscal.getICMSST_TaxRate());
		reg.setVL_ICMS_ST(factFiscal.getICMSST_TaxAmt());
		
		// ipi
		reg.setIND_APUR(IND_APUR);
		reg.setCST_IPI(factFiscal.getIPI_TaxStatus());
		
		// TODO - ??
		reg.setCOD_ENQ("");
		reg.setVL_BC_IPI(factFiscal.getIPI_TaxBaseAmt());
		reg.setALIQ_IPI(factFiscal.getIPI_TaxRate());
		reg.setVL_IPI(factFiscal.getIPI_TaxAmt());
		
		// pis
		reg.setCST_PIS(factFiscal.getPIS_TaxStatus());
		reg.setVL_BC_PIS(factFiscal.getPIS_TaxBaseAmt());
		reg.setALIQ_PIS(factFiscal.getPIS_TaxRate());
		
		// TODO: BC e Aliq por Qtde
		reg.setQUANT_BC_PIS(null);
		reg.setALIQ_PIS_REAIS(null);
		
		//
		reg.setVL_PIS(factFiscal.getPIS_TaxAmt());
		
		// cofins
		reg.setCST_COFINS(factFiscal.getCOFINS_TaxStatus());
		reg.setVL_BC_COFINS(factFiscal.getCOFINS_TaxBaseAmt());
		reg.setALIQ_COFINS(factFiscal.getCOFINS_TaxRate());
		
		// TODO: BC e Aliq por Qtde
		reg.setQUANT_BC_COFINS(null);
		reg.setALIQ_COFINS_REAIS(null);
		
		//
		reg.setVL_COFINS(factFiscal.getCOFINS_TaxAmt());

		// TODO: Código da conta contábil
		reg.setCOD_CTA("");
		
		
		/*
		 * Definir valor da operação no registro C170 para
		 * depois utilizar na geração do C190
		 */
		reg.setVL_OPER(factFiscal.getLineTotalAmt());
	
		//
		return reg;
	}
	
	
	
	
} // EFDUtil