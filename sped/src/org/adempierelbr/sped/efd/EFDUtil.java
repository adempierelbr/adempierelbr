package org.adempierelbr.sped.efd;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.efd.bean.R0000;
import org.adempierelbr.sped.efd.bean.R0001;
import org.adempierelbr.sped.efd.bean.R0005;
import org.adempierelbr.sped.efd.bean.R0100;
import org.adempierelbr.sped.efd.bean.R0150;
import org.adempierelbr.sped.efd.bean.R0190;
import org.adempierelbr.sped.efd.bean.R0200;
import org.adempierelbr.sped.efd.bean.R0460;
import org.adempierelbr.sped.efd.bean.R0500;
import org.adempierelbr.sped.efd.bean.R0990;
import org.adempierelbr.sped.efd.bean.R1001;
import org.adempierelbr.sped.efd.bean.R1990;
import org.adempierelbr.sped.efd.bean.R9001;
import org.adempierelbr.sped.efd.bean.R9900;
import org.adempierelbr.sped.efd.bean.R9990;
import org.adempierelbr.sped.efd.bean.R9999;
import org.adempierelbr.sped.efd.bean.RC001;
import org.adempierelbr.sped.efd.bean.RC100;
import org.adempierelbr.sped.efd.bean.RC120;
import org.adempierelbr.sped.efd.bean.RC170;
import org.adempierelbr.sped.efd.bean.RC195;
import org.adempierelbr.sped.efd.bean.RC990;
import org.adempierelbr.sped.efd.bean.RD001;
import org.adempierelbr.sped.efd.bean.RD100;
import org.adempierelbr.sped.efd.bean.RD110;
import org.adempierelbr.sped.efd.bean.RD990;
import org.adempierelbr.sped.efd.bean.RE001;
import org.adempierelbr.sped.efd.bean.RE100;
import org.adempierelbr.sped.efd.bean.RE110;
import org.adempierelbr.sped.efd.bean.RE111;
import org.adempierelbr.sped.efd.bean.RE200;
import org.adempierelbr.sped.efd.bean.RE210;
import org.adempierelbr.sped.efd.bean.RE250;
import org.adempierelbr.sped.efd.bean.RE500;
import org.adempierelbr.sped.efd.bean.RE510;
import org.adempierelbr.sped.efd.bean.RE520;
import org.adempierelbr.sped.efd.bean.RE990;
import org.adempierelbr.sped.efd.bean.RG001;
import org.adempierelbr.sped.efd.bean.RG990;
import org.adempierelbr.sped.efd.bean.RH001;
import org.adempierelbr.sped.efd.bean.RH005;
import org.adempierelbr.sped.efd.bean.RH010;
import org.adempierelbr.sped.efd.bean.RH990;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MElementValue;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
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
	private static final String COD_VER = "006";	// A Partir de Jan/12
	private static final String COD_FIN = "0"; 		// Remessa do Arquivo Original
	private static final String IND_PERFIL = "A"; 	// Perfil A
	private static final String COD_DOC_IMP = "0"; 	// Declaração de Importacao
	private static final String IND_APUR = "0"; 	// Mensal (IPI - RC170)

	//Código da natureza da conta/grupo de contas
	public static final String CONTA_ATIVO        = "01";
	public static final String CONTA_PASSIVO      = "02";
	public static final String PATRIMONIO_LIQUIDO = "03";
	public static final String CONTA_RESULTADO    = "04";
	public static final String CONTA_COMPENSACAO  = "05";
	public static final String OUTRAS             = "09";
	
	
	
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
		
		// regime especial ou norma específica: conhecimento de tranporte de terceiros
		else if(getBlocoNFModel(getCOD_MOD(factFiscal)).startsWith("D")
				&& !factFiscal.islbr_IsOwnDocument())
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
	 * Retornar o código de natureza da conta de acordo com o tipo no sistema
	 * 
	 * Código da natureza da conta/grupo de contas: 
	 * 01 - Contas de ativo;
	 * 02 - Contas de passivo;
	 * 03 - Patrimônio líquido;
	 * 04 - Contas de resultado;
	 * 05 - Contas de compensação; 
	 * 09 - Outras.
	 * 
	 * @param accountType
	 * @return
	 */
	public static String getCOD_NAT(String accountType){
		
		if (accountType == null || accountType.isEmpty())
			return OUTRAS;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Asset))
			return CONTA_ATIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Liability))
			return CONTA_PASSIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_OwnerSEquity))
			return PATRIMONIO_LIQUIDO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Revenue))
			return CONTA_RESULTADO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Expense))
			return CONTA_RESULTADO;
		
		return OUTRAS;
	} //getCOD_NAT
	
	
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
		reg.setDT_FIN(dateTo);
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
	 * REGISTRO 0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL
	 * 
	 * @param rc100 Registro C100
	 * @param COD_OBS código sequencial da observação
	 * @return
	 * @throws Exception
	 */
	public static R0460 createR0460(RC100 rc100, int COD_OBS) throws Exception 
	{
		
		//
		String obs = "";
		
		//
		if(rc100.getVL_ICMS_ST().signum() == 1)
			obs += "VALOR DO ICMS ST: " + TextUtil.toNumeric(rc100.getVL_ICMS_ST()) + (rc100.getVL_IPI().signum() == 1 ? " / " : "");

		//
		if(rc100.getVL_IPI().signum() == 1)
			obs += "VALOR DO IPI: " + TextUtil.toNumeric(rc100.getVL_IPI());
		
		// criar obs
		R0460 reg = new R0460();
		reg.setCOD_OBS(String.valueOf(COD_OBS));
		reg.setTXT(obs);
		
		return reg;
	}
	
	
	public static R0500 createR0500(MElementValue ev, Timestamp dateTo) throws Exception 
	{
		//
		R0500 reg = new R0500();
		
		// verificar se a data de alteração é posterior a data final do período
		Timestamp DT_ALT = ev.getUpdated();
		if (DT_ALT.after(dateTo))
			DT_ALT = dateTo;
		reg.setDT_ALT(DT_ALT);
		reg.setCOD_NAT_CC(getCOD_NAT(ev.getAccountType()));
		reg.setIND_CTA(ev.isSummary() ? "S" : "A");

		// somente pontos('.') + 1 
		reg.setNIVEL(ev.getValue().replaceAll("[^.]","").length() + 1);
		reg.setCOD_CTA(ev.getValue());
		reg.setNOME_CTA(ev.getName());
				
		return reg;
		
	} //createR0500
	
	
	/**
	 * REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R0990 createR0990() throws Exception 
	{
		R0990 reg = new R0990();
		reg.setQTD_LIN_0(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO C001: ABERTURA DO BLOCO C
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RC001 createRC001(boolean hasInfo) throws Exception
	{
		RC001 reg = new RC001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
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
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setCHV_NFE(factFiscal.getlbr_NFeID());

		reg.setCOD_PART(getCOD_PART(factFiscal));
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
		
		/*
		 * Preencher a variável IND_ATIV para 
		 * posterior verificação e definição se deve-se
		 * ou não apurar alguns impostos bem como 
		 * IPI e ST
		 */
		reg.setIND_ATIV(factFiscal.getlbr_IndAtividade().equals("0") ? "0" : "1");
		
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
	
	/**
	 * REGISTRO C195: OBSERVAÇOES DO LANÇAMENTO FISCAL (CÓDIGO 01, 1B E 55)
	 * 
	 * @param r0460
	 * @return
	 * @throws Exception
	 */
	public static RC195 createRC195(R0460 r0460) throws Exception
	{
		// se não tiver OBS nos registros zero, então não criar nos registros C195
		if(r0460 == null)
			return null;
		
		RC195 reg = new RC195();
		reg.setCOD_OBS(r0460.getCOD_OBS());
		reg.setTXT("");
		
		return reg;
	}
	
	/**
	 * REGISTRO C990: ENCERRAMENTO DO BLOCO C
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RC990 createRC990() throws Exception 
	{
		RC990 reg = new RC990();
		reg.setQTD_LIN_C(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO D001: ABERTURA DO BLOCO D
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RD001 createRD001(boolean hasInfo) throws Exception
	{
		RD001 reg = new RD001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	
	/**
	 * REGISTRO D100: NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E 
	 * CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE CARGAS (CÓDIGO 08), 
	 * CONHECIMENTOS DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B), 
	 * AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE CARGAS (CÓDIGO 11) 
	 * E MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE TRANSPORTE 
	 * FERROVIÁRIO DE CARGA ( CÓDIGO 27) E CONHECIMENTO DE TRANSPORTE 
	 * ELETRÔNICO – CT-e (CÓDIGO 57).
	 * 
	 * @param rD100
	 * @return
	 * @throws Exception
	 */
	public static RD100 createRD100(MLBRFactFiscal factFiscal) throws Exception
	{
		
		//
		RD100 reg = new RD100();
		reg.setIND_OPER(factFiscal.isSOTrx() ? "1" : "0");
		reg.setIND_EMIT(factFiscal.islbr_IsOwnDocument() ? "0" : "1");
		reg.setCOD_PART(getCOD_PART(factFiscal));
		reg.setCOD_MOD(getCOD_MOD(factFiscal));
		reg.setCOD_SIT(getCOD_SIT(factFiscal));
		reg.setSER(getSER(factFiscal));
		
		// TODO ??
		reg.setSUB(""); 
		
		reg.setNUM_DOC(factFiscal.getDocumentNo());
		reg.setCHV_CTE(factFiscal.getlbr_NFeID());
		reg.setDT_DOC(factFiscal.getDateDoc());
		reg.setDT_A_P(factFiscal.getlbr_DateInOut());
		
		// TODO - ??
		reg.setTP_CT_e("");
		
		// TODO ??
		reg.setCHV_CTE_REF("");
		
		//
		reg.setVL_DOC(factFiscal.getGrandTotal());
		reg.setVL_DESC(factFiscal.getDiscountAmt());
		reg.setIND_FRT(getIND_FRT(factFiscal));
		
		// Total dos Itens + Total dos Serviços - ??
		reg.setVL_SERV(factFiscal.getTotalLines());
		
		//
		reg.setVL_BC_ICMS(factFiscal.getICMS_NFTaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_NFTaxAmt());
		reg.setVL_NT(reg.getVL_SERV().subtract(reg.getVL_BC_ICMS()));
		
		// 
		reg.setCOD_INF(null);
		reg.setCOD_CTA(null);
		
		//
		return reg;
	}
	
	
	/**
	 * REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE 
	 * SERVIÇOS DE TRANSPORTE (CÓDIGO 07)
	 * 
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	public static RD110 createRD110(MLBRFactFiscal factFiscal) throws Exception
	{
		//
		RD110 reg = new RD110();
		reg.setNUM_ITEM(factFiscal.getLine());
		reg.setCOD_ITEM(factFiscal.getProductValue());
		
		// Valor bruto
		reg.setVL_SERV(factFiscal.getLineNetAmt());
		
		// TODO - ??
		reg.setVL_OUT(null);
		
		/*
		 * Valores auxiliares somente utilizados para apurar
		 * o registro D190
		 */
		reg.setCST_ICMS(factFiscal.getICMS_TaxStatus());
		reg.setCFOP(factFiscal.getlbr_CFOPName());
		reg.setALIQ_ICMS(factFiscal.getICMS_TaxRate());
		reg.setVL_BC_ICMS(factFiscal.getICMS_TaxBaseAmt());
		reg.setVL_ICMS(factFiscal.getICMS_TaxAmt());
		reg.setVL_OPR(factFiscal.getLineTotalAmt());
		reg.setPERCENT_REDUCAO_BC(factFiscal.getICMS_TaxBase());
		

		//
		return reg;
	}
	
	/**
	 * REGISTRO C990: ENCERRAMENTO DO BLOCO D
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RD990 createRD990() throws Exception 
	{
		RD990 reg = new RD990();
		reg.setQTD_LIN_D(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	/**
	 * REGISTRO H001: ABERTURA DO BLOCO H
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RH001 createRH001(boolean hasInfo) throws Exception
	{
		RH001 reg = new RH001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	/**
	 * REGISTRO H005: TOTAIS DO INVENTÁRIO
	 * 
	 * @param dtInv
	 * @return
	 * @throws Exception
	 */
	public static RH005 createRH005(Timestamp dtInv) throws Exception 
	{
		RH005 reg = new RH005();
		reg.setDT_INV(dtInv);
		
		// fazer soma do total ao adicionar as linhas do inventário
		reg.setVL_INV(Env.ZERO);
		
		// TODO: Motivo do Inventário - 01 – No final no período;
		reg.setMOT_INV("01");
		
		return reg;
	
	}
	
	
	/**
	 * REGISTRO H010: INVENTÁRIO.
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RH010 createRH010(String COD_ITEM, String UNID, BigDecimal QTD, 
			BigDecimal VL_UNIT, BigDecimal VL_ITEM, String IND_PROP, String COD_CTA) throws Exception 
	{
		
		RH010 reg = new RH010();
		reg.setCOD_ITEM(COD_ITEM);
		reg.setUNID(UNID);
		reg.setQTD(QTD);
		reg.setVL_UNIT(VL_UNIT);
		reg.setVL_ITEM(VL_ITEM);
		reg.setIND_PROP(IND_PROP);
		reg.setCOD_CTA(COD_CTA);
		reg.setCOD_PART(null);
		reg.setTXT_COMPL(null);
		
		return reg;
	}
	
	

	
	
	
	/**
	 * REGISTRO C990: ENCERRAMENTO DO BLOCO H
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RH990 createRH990() throws Exception 
	{
		RH990 reg = new RH990();
		reg.setQTD_LIN_H(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO E001: ABERTURA DO BLOCO E
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RE001 createRE001(boolean hasInfo) throws Exception
	{
		RE001 reg = new RE001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	

	/**
	 * REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE100 createRE100(Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		RE100 reg = new RE100();
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	/**
	 * REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE110 createRE110() throws Exception
	{
		
		RE110 reg = new RE110();
		reg.setVL_TOT_DEBITOS(Env.ZERO);
		reg.setVL_AJ_DEBITOS(Env.ZERO);
		reg.setVL_TOT_AJ_DEBITOS(Env.ZERO);
		reg.setVL_ESTORNOS_CRED(Env.ZERO);
		reg.setVL_TOT_CREDITOS(Env.ZERO);
		reg.setVL_AJ_CREDITOS(Env.ZERO);
		reg.setVL_TOT_AJ_CREDITOS(Env.ZERO);
		reg.setVL_ESTORNOS_DEB(Env.ZERO);
		reg.setVL_SLD_CREDOR_ANT(Env.ZERO);
		reg.setVL_SLD_APURADO(Env.ZERO);
		reg.setVL_ICMS_RECOLHER(Env.ZERO);
		reg.setVL_TOT_DED(Env.ZERO);
		reg.setVL_SLD_CREDOR_TRANSPORTAR(Env.ZERO);
		reg.setDEB_ESP(Env.ZERO);

		return reg;
		
	}
	
	
	/**
	 * REGISTRO E111: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE111 createRE111() throws Exception
	{
		RE111 reg = new RE111();
		reg.setCOD_AJ_APUR("");
		reg.setDESCR_COMPL_AJ("");
		reg.setVL_AJ_APUR(Env.ZERO);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E200: PERÍODO DA APURAÇÃO DO ICMS - SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param UF
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE200 createRE200(String UF, Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		
		RE200 reg = new RE200();
		reg.setUF(UF);
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E210: APURAÇÃO DO ICMS – SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE210 createRE210() throws Exception
	{
		RE210 reg = new RE210();
		reg.setIND_MOV_ST("");
		reg.setVL_SLD_CRED_ANT_ST(Env.ZERO);
		reg.setVL_DEVOL_ST(Env.ZERO);
		reg.setVL_RESSARC_ST(Env.ZERO);
		reg.setVL_OUT_CRED_ST(Env.ZERO);
		reg.setVL_AJ_CREDITOS_ST(Env.ZERO);
		reg.setVL_RETENÇAO_ST(Env.ZERO);
		reg.setVL_OUT_DEB_ST(Env.ZERO);
		reg.setVL_AJ_DEBITOS_ST(Env.ZERO);
		reg.setVL_SLD_DEV_ANT_ST(Env.ZERO);
		reg.setVL_DEVOL_ST(Env.ZERO);
		reg.setVL_ICMS_RECOL_ST(Env.ZERO);
		reg.setVL_SLD_CRED_ST_TRANSPORTAR(Env.ZERO);
		reg.setDEB_ESP_ST(Env.ZERO);
		
		return reg;		
	}
	
	
	/**
	 * REGISTRO E250: OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – SUBSTITUIÇÃO TRIBUTÁRIA.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE250 createRE250() throws Exception
	{
		RE250 reg = new RE250();
		reg.setCOD_OR("");
		reg.setVL_OR(Env.ZERO);
		reg.setDT_VCTO(null);
		reg.setCOD_REC("");
		reg.setNUM_PROC("");
		reg.setIND_PROC("");
		reg.setPROC("");
		reg.setTXT_COMPL("");
		reg.setMES_REF(null);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E500: PERÍODO DE APURAÇÃO DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE500 createRE500(Timestamp dtIni, Timestamp dtFin) throws Exception
	{
		RE500 reg = new RE500();
		reg.setDT_INI(dtIni);
		reg.setDT_FIN(dtFin);
		
		return reg;
	}
	
	
	/**
	 * REGISTRO E510: CONSOLIDAÇÃO DOS VALORES DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE510 createRE510() throws Exception
	{
		RE510 reg = new RE510();
		reg.setCFOP("");
		reg.setCST_IPI("");
		reg.setVL_CONT_IPI(Env.ZERO);
		reg.setVL_BC_IPI(Env.ZERO);
		reg.setVL_IPI(Env.ZERO);
		
		return reg;
	}
	
	/**
	 * REGISTRO E520: APURAÇÃO DO IPI.
	 * 
	 * TODO: Origem dos Dados?
	 * 
	 * @param dtIni
	 * @param dtFin
	 * @return
	 * @throws Exception
	 */
	public static RE520 createRE520() throws Exception
	{
		RE520 reg = new RE520();
		reg.setVL_SD_ANT_IPI(Env.ZERO);
		reg.setVL_DEB_IPI(Env.ZERO);
		reg.setVL_CRED_IPI(Env.ZERO);
		reg.setVL_OD_IPI(Env.ZERO);
		reg.setVL_OC_IPI(Env.ZERO);
		reg.setVL_SC_IPI(Env.ZERO);
		reg.setVL_SD_IPI(Env.ZERO);
		
		return reg;
	}
	
	/**
	 * REGISTRO E990: ENCERRAMENTO DO BLOCO E
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RE990 createRE990() throws Exception 
	{
		RE990 reg = new RE990();
		reg.setQTD_LIN_E(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO G001: ABERTURA DO BLOCO G
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static RG001 createRG001(boolean hasInfo) throws Exception
	{
		RG001 reg = new RG001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	/**
	 * REGISTRO G990: ENCERRAMENTO DO BLOCO G
	 * 
	 * @return
	 * @throws Exception
	 */
	public static RG990 createRG990() throws Exception 
	{
		RG990 reg = new RG990();
		reg.setQTD_LIN_G(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	
	/**
	 * REGISTRO 9001: ABERTURA DO BLOCO 9
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static R9001 createR9001(boolean hasInfo) throws Exception
	{
		R9001 reg = new R9001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	
	/**
	 * REGISTRO 9900: REGISTROS DO ARQUIVO.
	 * 
	 * Obs.: Cria todos e retorna uma lista com estes
	 * 
	 * @return
	 * @exception Exception
	 */
	public static List<R9900> createR9900() throws Exception
	{


		//
		List<R9900> list = new ArrayList<R9900>();
		
		//
		String[] regs = CounterSped.getRegsSped();

		
		// para todos os registros do sped
		for(int i=0; i<regs.length; i++)
		{
			// criar totalizador
			R9900 reg = new R9900();
			reg.setREG_BLC(regs[i]);
			reg.setQTD_REG_BLC(String.valueOf(CounterSped.getCounter(regs[i])));

			// add a lista 
			list.add(reg);
		}
		

		
		
		// totalizador do R9900 o +1 é pq depoisa desse registro, será criado o totalizador do 9900
		R9900 reg = new R9900();
		reg.setREG_BLC("9900");
		reg.setQTD_REG_BLC(String.valueOf(CounterSped.getCounter("9900") + 1));
		
		// add à lista também
		list.add(reg);
		
		
		// totalizador do R999
		reg = new R9900();
		reg.setREG_BLC("9999");
		reg.setQTD_REG_BLC(String.valueOf("1"));
		
		// add à lista também
		list.add(reg);
		
		//
		return list;
		
		
	} //createR9900
	
	
	
	/**
	 * REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R9990 createR9990() throws Exception 
	{
		R9990 reg = new R9990();
		reg.setQTD_LIN_9(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	
	
	/**
	 * REGISTRO 9999: ENCERRAMENTO DO ARQUIVO
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R9999 createR9999() throws Exception 
	{
		R9999 reg = new R9999();
		reg.setQTD_LIN(String.valueOf(CounterSped.getTotalCounter()));
	
		return reg;
	}
	
	/**
	 * REGISTRO 1001: ABERTURA DO BLOCO 1
	 * 
	 * @param hasInfo
	 * @return
	 * @throws Exception
	 */
	public static R1001 createR1001(boolean hasInfo) throws Exception
	{
		R1001 reg = new R1001();
		reg.setIND_MOV(hasInfo ? "0" : "1");
		
		return reg;
	}
	
	
	
	/**
	 * REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
	 * 
	 * @return
	 * @throws Exception
	 */
	public static R1990 createR1990() throws Exception 
	{
		R1990 reg = new R1990();
		reg.setQTD_LIN_1(String.valueOf(CounterSped.getBlockCounter(reg.getReg())));
	
		return reg;
	}
	

	
	
	
	/**
	 * Retornar a conta do produto
	 * 
	 * @param C_ElementValue_ID ID do Elemento de Contas
	 */
	public static int getProductAsseAcct(int M_Product_ID, String trxName) throws Exception
	{
	
		// sql
		String sql = " SELECT C_ElementValue_ID 																" +
					 "   FROM C_ElementValue 																	" +
					 "  WHERE C_ElementValue_ID = (SELECT Account_ID 											" +
					 "								 FROM C_ValidCombination									" +
					 "								WHERE C_ValidCombination_ID = (SELECT P_Asset_Acct			" +
					 "						  								         FROM M_Product_Acct 		" +
					 "																WHERE M_Product_ID = ?))	" +
					 "   AND IsActive = 'Y' 																	";
		
		// buscar valor
		int ret =  DB.getSQLValue(trxName, sql, M_Product_ID);
		
		// 
		if(ret == -1)
			return 0;
		
		// 
		return ret;
	}
	
	
	/**
	 * Retornar a query para buscar as informações do inventário
	 * 
	 * Parametros do SQL
	 * 
	 * #1 - C_Period_ID
	 * #2 - CostingMethod
	 * #3 - AD_Client_ID
	 * #4 - AD_Org_ID
	 * #5 - MovementDate
	 * 
	 * 
	 * @return Sql String
	 */
	public static String getSQLInv()  throws Exception
	{
		// sql
		String sql = " SELECT 																			" +
				" 	mt.M_Product_ID,																	" +
				"   ROUND(SUM(MovementQty), 4) AS QtyOnHand, 											" +
				"	MAX(wh.lbr_WarehouseType) AS lbr_WarehouseType,										" +
				"	getCurrentCost(mt.AD_Client_ID, mt.M_Product_ID, ?, ?) AS CurrentCostPrice			" + // # 1, 2
				" FROM M_Transaction mt																	" +
				"	INNER JOIN M_Product p ON mt.M_Product_id = p.M_Product_id							" +
				"	INNER JOIN M_Locator l ON mt.M_Locator_id = l.M_Locator_id 							" +
				"	INNER JOIN M_Warehouse wh ON wh.M_Warehouse_id = l.M_Warehouse_id					" +
				" WHERE mt.AD_Client_ID = ? 															" + // # 3
				"   AND mt.AD_Org_ID = ?																" + // # 4
				"	AND mt.MovementDate <= ?															" +	// # 5
				"	AND wh.AD_Org_ID = mt.AD_Org_ID 													" +
				" GROUP BY																				" +
				" 	mt.AD_Client_ID, 																	" +
				"	mt.M_Product_ID																		" +
				" HAVING SUM(MovementQty) > 0															" +
				" ORDER BY mt.M_Product_ID																";

		//
		return sql;
	}
	
} // EFDUtil