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
package org.adempierelbr.nfe;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.nfe.beans.AdicoesDI;
import org.adempierelbr.nfe.beans.COFINSBean;
import org.adempierelbr.nfe.beans.COFINSGrupoBean;
import org.adempierelbr.nfe.beans.ChaveNFE;
import org.adempierelbr.nfe.beans.Cobranca;
import org.adempierelbr.nfe.beans.CobrancaGrupoDuplicata;
import org.adempierelbr.nfe.beans.CobrancaGrupoFatura;
import org.adempierelbr.nfe.beans.DadosNFE;
import org.adempierelbr.nfe.beans.DeclaracaoDI;
import org.adempierelbr.nfe.beans.DetailsNFEBean;
import org.adempierelbr.nfe.beans.EnderDest;
import org.adempierelbr.nfe.beans.EnderEmit;
import org.adempierelbr.nfe.beans.ICMSBean;
import org.adempierelbr.nfe.beans.ICMSGrupoBean;
import org.adempierelbr.nfe.beans.IdentDest;
import org.adempierelbr.nfe.beans.IdentEmit;
import org.adempierelbr.nfe.beans.IdentFisco;
import org.adempierelbr.nfe.beans.IdentLocRetirada;
import org.adempierelbr.nfe.beans.IdentLocalEntrega;
import org.adempierelbr.nfe.beans.IdentNFE;
import org.adempierelbr.nfe.beans.ImpostoDIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIGrupoBean;
import org.adempierelbr.nfe.beans.InfAdiFisco;
import org.adempierelbr.nfe.beans.InfAssinatura;
import org.adempierelbr.nfe.beans.InfComex;
import org.adempierelbr.nfe.beans.Informacoes;
import org.adempierelbr.nfe.beans.InformacoesNFEReferenciadaBean;
import org.adempierelbr.nfe.beans.NFERefenciadaBean;
import org.adempierelbr.nfe.beans.PISBean;
import org.adempierelbr.nfe.beans.PISGrupoBean;
import org.adempierelbr.nfe.beans.ProdutosNFEBean;
import org.adempierelbr.nfe.beans.Transporte;
import org.adempierelbr.nfe.beans.TransporteGrupo;
import org.adempierelbr.nfe.beans.TransporteGrupoVeiculos;
import org.adempierelbr.nfe.beans.TransporteLacres;
import org.adempierelbr.nfe.beans.TransporteReboque;
import org.adempierelbr.nfe.beans.TransporteRetencao;
import org.adempierelbr.nfe.beans.TransporteVol;
import org.adempierelbr.nfe.beans.TributosInciBean;
import org.adempierelbr.nfe.beans.Valores;
import org.adempierelbr.nfe.beans.ValoresICMS;
import org.adempierelbr.nfe.beans.ValoresISSQN;
import org.adempierelbr.nfe.beans.ValoresRetTrib;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeTaxes;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.validator.ValidatorBPartner;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.gov.sp.fazenda.dsge.brazilutils.uf.UF;

import com.thoughtworks.xstream.XStream;

/**
 * Gera o arquivo XML
 *
 * @contributor Ricardo Santana
 * @contributor Mario Grigioni
 * @contributor Pablo Boff Pigozzo 
 * @version $Id: NFeXMLGenerator.java, 18/12/2009 10:45:00 mgrigioni
 */
@SuppressWarnings("unused")
public class NFeXMLGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFeXMLGenerator.class);

	/** XML             */
	private static final String FILE_EXT      = "-nfe.xml";
	
	/**	Indicação de Pagamento	*/
	private static final String IND_PAG_A_VISTA		=	"0";
	private static final String IND_PAG_A_PRAZO		=	"1";
	private static final String IND_PAG_OUTROS		=	"2";
	
	/**	Finalidade da NF-e		*/
	private static final String FIN_NFE_NORMAL			=	"1";
	private static final String FIN_NFE_COMPLEMENTAR	=	"2";
	private static final String FIN_NFE_AJUSTE			=	"3";
	
	/** Impostos						*/
	private static final String PIS				= "PIS";
	private static final String COFINS			= "COFINS";
	private static final String ICMS			= "ICMS";
	private static final String IPI				= "IPI";
	private static final String II				= "II";
	private static final String ISSQN			= "ISS";
	
	/** Código de Situaçnao Tributária	*/
	public static final String CST_ICMS_00		= "00";
	public static final String CST_ICMS_10		= "10";
	public static final String CST_ICMS_20		= "20";
	public static final String CST_ICMS_30		= "30";
	public static final String CST_ICMS_40		= "40";
	public static final String CST_ICMS_41		= "41";
	public static final String CST_ICMS_50		= "50";
	public static final String CST_ICMS_51		= "51";
	public static final String CST_ICMS_60		= "60";
	public static final String CST_ICMS_70		= "70";
	public static final String CST_ICMS_90		= "90";
	public static final String CST_ICMS_Part	= "Part";
	public static final String CST_ICMS_ST		= "ST";
	
	/** Código de Situaçnao Tributária	- IPI */
	public static final String CST_IPI_00		= "00";
	public static final String CST_IPI_01		= "01";
	public static final String CST_IPI_02		= "02";
	public static final String CST_IPI_03		= "03";
	public static final String CST_IPI_04		= "04";
	public static final String CST_IPI_49		= "49";
	public static final String CST_IPI_50		= "50";
	public static final String CST_IPI_51		= "51";
	public static final String CST_IPI_52		= "52";
	public static final String CST_IPI_53		= "53";
	public static final String CST_IPI_54		= "54";
	public static final String CST_IPI_55		= "55";
	public static final String CST_IPI_99		= "99";

	/** Código de Situaçnao Tributária	- PIS e COFINS */
	public static final String CST_PC_01		= "01";
	public static final String CST_PC_02		= "02";
	public static final String CST_PC_03		= "03";
	public static final String CST_PC_04		= "04";
	public static final String CST_PC_05		= "05";
	public static final String CST_PC_06		= "06";
	public static final String CST_PC_07		= "07";
	public static final String CST_PC_08		= "08";
	public static final String CST_PC_09		= "09";
	public static final String CST_PC_49  		= "49";
	public static final String CST_PC_50  		= "50";
	public static final String CST_PC_51  		= "51";
	public static final String CST_PC_52  		= "52";
	public static final String CST_PC_53  		= "53";
	public static final String CST_PC_54  		= "54";
	public static final String CST_PC_55  		= "55";
	public static final String CST_PC_56  		= "56";
	public static final String CST_PC_60  		= "60";
	public static final String CST_PC_61  		= "61";
	public static final String CST_PC_62  		= "62";
	public static final String CST_PC_63  		= "63";
	public static final String CST_PC_64  		= "64";
	public static final String CST_PC_65  		= "65";
	public static final String CST_PC_66  		= "66";
	public static final String CST_PC_67  		= "67";
	public static final String CST_PC_70  		= "70";
	public static final String CST_PC_71  		= "71";
	public static final String CST_PC_72  		= "72";
	public static final String CST_PC_73  		= "73";
	public static final String CST_PC_74  		= "74";
	public static final String CST_PC_75  		= "75";
	public static final String CST_PC_98  		= "98";
	public static final String CST_PC_99  		= "99";
	
	/**	Simples Nacional				*/
	public static final String CSOSN_101	= "101";
	public static final String CSOSN_102	= "102";
	public static final String CSOSN_103	= "103";
	public static final String CSOSN_300	= "300";
	public static final String CSOSN_400	= "400";
	public static final String CSOSN_201	= "201";
	public static final String CSOSN_202	= "202";
	public static final String CSOSN_203	= "203";
	public static final String CSOSN_500	= "500";
	public static final String CSOSN_900	= "900";
	
	/**	Modalidade de determinação da BC do ICMS		*/
	private static final String MOD_BC_MVA			= "0";
	private static final String MOD_BC_PAUTA		= "1";
	private static final String MOD_BC_TABELADO		= "2";
	private static final String MOD_BC_VALOR_OP		= "2";
	
	private static final String MOT_DESONERA_TAXI			= "1";
	private static final String MOT_DESONERA_DEFICIENTE		= "2";
	private static final String MOT_DESONERA_PRODUTOR		= "3";
	private static final String MOT_DESONERA_FROTISTA		= "4";
	private static final String MOT_DESONERA_DIPLOMAT		= "5";
	private static final String MOT_DESONERA_AREA_LIVRE_COM	= "6";
	private static final String MOT_DESONERA_SUFRAMA		= "7";
	private static final String MOT_DESONERA_ORGAO_PUBLICO	= "8";
	private static final String MOT_DESONERA_OUTROS			= "9";
	
	private static final String ENQ_IPI_999	= "999";

	/**
	 * Gera o corpo da NF
	 * 
	 * @param LBR_NotaFiscal_ID
	 * @param trxName Transação
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static String geraCorpoNFe (int LBR_NotaFiscal_ID, String trxName) throws Exception {
		
		log.fine("Gerando corpo NF-e");
		
		Properties ctx = Env.getCtx();
		
		//
		XStream xstream = new XStream();
		xstream.autodetectAnnotations(true);
		
		DadosNFE dados = new DadosNFE();
		NFERefenciadaBean nfereferencia = new NFERefenciadaBean();
		InformacoesNFEReferenciadaBean inforeferencia = new InformacoesNFEReferenciadaBean();
		IdentNFE identNFe = new IdentNFE();
		IdentEmit emitente = new IdentEmit();
		EnderEmit enderEmit = new EnderEmit();
		InfComex exporta = new InfComex();
		IdentFisco fisco = new IdentFisco();
		IdentDest destinatario = new IdentDest();
		EnderDest enderDest = new EnderDest();
		IdentLocRetirada retirada = new IdentLocRetirada();
		IdentLocalEntrega entrega = new IdentLocalEntrega();
		Valores valores = new Valores();
		ValoresICMS valoresicms = new ValoresICMS();
		ValoresISSQN valoresissq = new ValoresISSQN();
		ValoresRetTrib valoresret = new ValoresRetTrib();
		Transporte transporte = new Transporte();
		TransporteGrupo transgrupo = new TransporteGrupo();
		TransporteGrupoVeiculos transpveic = new TransporteGrupoVeiculos();
		TransporteLacres translacre = new TransporteLacres();
		TransporteReboque transreboque = new TransporteReboque();
		TransporteRetencao transretencao = new TransporteRetencao();
		TransporteVol transvol = new TransporteVol();
		Cobranca cobr = new Cobranca();
		CobrancaGrupoFatura cobrfat = null;
		CobrancaGrupoDuplicata cobrdup = null;
		InfAssinatura assinatura = new InfAssinatura();
		ChaveNFE chaveNFE = new ChaveNFE();

		//	Adicoes DI
		ArrayList<AdicoesDI> hAdi = new ArrayList<AdicoesDI>();

		// Dados da NFE
		xstream.alias("infNFe", DadosNFE.class);
		xstream.useAttributeFor(DadosNFE.class, "versao");
		dados.setVersao(NFeUtil.VERSAO);
		xstream.useAttributeFor(DadosNFE.class, "Id");

		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, LBR_NotaFiscal_ID, trxName);
		if (LBR_NotaFiscal_ID == 0)
			return "Nota fiscal inexistente";

		X_LBR_NFTax[] nfTaxes = nf.getTaxes();
		MLBRNotaFiscalLine[] nfLines = nf.getLines ();

		// DADOS DA ORG DE VENDA/COMPRA
		MOrg org = new MOrg(ctx, nf.getAD_Org_ID(), trxName);
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), trxName);

		//	Tipo de Documento
		MDocType docType = new MDocType(ctx, nf.getC_DocTypeTarget_ID(), trxName);

		MLocation orgLoc    = new MLocation(ctx, orgInfo.getC_Location_ID(), trxName);
		MRegion  orgRegion  = new MRegion(ctx, orgLoc.getC_Region_ID(), trxName);
		MCountry orgCountry = orgLoc.getCountry();
		X_C_City orgCity = BPartnerUtil.getX_C_City(ctx,orgLoc,trxName);

		// DADOS DO CLIENTE
		MBPartner bp = new MBPartner(ctx, nf.getC_BPartner_ID(), trxName);
		MBPartnerLocation bpartLoc = new MBPartnerLocation(ctx, nf.getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = bpartLoc.getLocation(false);
		if(bpLoc.getC_Country_ID() == 0){
			return "Erro Parceiro sem Pais Cadastrado";
		}

		MRegion bpRegion = bpLoc.getRegion();
		X_C_City bpCity = BPartnerUtil.getX_C_City(ctx,bpLoc,trxName);

		// Dados do documento da NF
		String modNF = docType.get_ValueAsString("lbr_NFModel");
		String serie = docType.get_ValueAsString("lbr_NFSerie");

		/**
		 * Indicador da forma de pagamento:
		 * 0 – pagamento à vista
		 * 1 – pagamento à prazo
		 * 2 – outros
		 */
		String indPag = "0"; //A VISTA
		MLBROpenItem[] openItems = MLBROpenItem.getOpenItem(nf.getC_Invoice_ID(), trxName);
		if (openItems.length > 1)
			indPag = "2"; //PARCELADO
		else {
			if (openItems.length == 1){
				if (openItems[0].getNetDays() > 0)
					indPag = "1"; //OUTROS
			}
		}

		/** Identificação do Ambiente (1 - Produção; 2 - Homologação) */
		String tpAmb = docType.get_ValueAsString("lbr_NFeEnv");

		/** Formato de impressão do DANFE (1 - Retrato; 2 - Paisagem) */
		String tpImp = docType.get_ValueAsString("lbr_DANFEFormat");

		/**
		 * Processo de emissão utilizado com a seguinte codificação:
		 * 0 - emissão de NF-e com aplicativo do contribuinte
		 * 1 - emissão de NF-e avulsa pelo Fisco
		 * 2 - emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco
		 * 3 - emissão de NF-e pelo contribuinte com aplicativo fornecido pelo Fisco
		 */
		String procEmi = "0";

		/** Versão do aplicativo utilizado no processo de emissão */
		String verProc = NFeUtil.VERSAO_APP;

		/**
		 * Forma de emissão da NF-e:
		 * 1 - Normal
		 * 2 - Contingência FS
		 * 3 - Contingência SCAN
		 * 4 - Contingência DPEC
		 * 5 - Contingência FSDA
		 */
		String tpEmis = "1";

		/**
		 * Finalidade da emissão da NF-e:
		 * 1 - NFe normal
		 * 2 - NFe complementar
		 * 3 - NFe de ajuste
		 */
		String FinNFE = nf.getlbr_FinNFe();
		
		// Identificação NFE
		if (FinNFE.equals("2"))
		{
			xstream.alias("NFref", NFERefenciadaBean.class);
			nfereferencia.setRefNFe(nf.getlbr_NFRefere().getlbr_NFeID());
			identNFe.setNFref(nfereferencia);
		}
		
		/**
		 * CRT
		 * 1 – Simples Nacional
		 * 2 – Simples Nacional – excesso de sublimite de receita bruta;
		 * 3 – Regime Normal
		 */
		String CRT = MSysConfig.getValue ("Z_CRT", "3", nf.getAD_Client_ID(), nf.getAD_Org_ID());

		Timestamp datedoc = nf.getDateDoc();
		Timestamp dateSaiEnt = nf.getlbr_DateInOut();
		String hSaiEnt    = nf.getlbr_TimeInOut();
		String aamm = TextUtil.timeToString(datedoc, "yyMM");
		String orgCPNJ = TextUtil.toNumeric(nf.getlbr_CNPJ());
		//
		chaveNFE.setAAMM(aamm);
		chaveNFE.setCUF(BPartnerUtil.getRegionCode(orgLoc));	//UF EMITENTE
		chaveNFE.setCNPJ(orgCPNJ);
		chaveNFE.setMod(modNF);
		chaveNFE.setSerie(TextUtil.lPad(serie, 3));
		chaveNFE.setTpEmis(tpEmis);
		chaveNFE.setNNF(TextUtil.lPad(nf.getDocumentNo(), 9));

		// Gera codigo fiscal para nota
		Random random = new Random();
		chaveNFE.setCNF(TextUtil.lPad("" + random.nextInt(99999999), 8));

		int digitochave = chaveNFE.gerarDigito();
		dados.setId("NFe" + chaveNFE.toString() + digitochave);

		String DEmi 	= TextUtil.timeToString(datedoc, "yyyy-MM-dd");
		String DSaiEnt 	= TextUtil.timeToString(dateSaiEnt, "yyyy-MM-dd");

		// Identificação NFE
		identNFe.setcUF(chaveNFE.getCUF());
		identNFe.setcNF(chaveNFE.getCNF());
		identNFe.setNatOp(RemoverAcentos.remover(TextUtil.checkSize(nf.getlbr_CFOPNote(), 1, 60)));
		identNFe.setIndPag(indPag);
		identNFe.setMod(chaveNFE.getMod());
		identNFe.setSerie(serie);
		identNFe.setnNF(nf.getDocumentNo());
		identNFe.setdEmi(DEmi);
		if (nf.getlbr_DateInOut() != null)
		{
			identNFe.setdSaiEnt(DSaiEnt);
			identNFe.sethSaiEnt(TextUtil.formatTimeString(hSaiEnt));
		}
		identNFe.setTpNF(nf.isSOTrx() ? "1" : "0");
		Integer orgCityCode = 0;

		if (orgCity != null  && orgCity.get_Value("lbr_CityCode") != null)	//	TODO: Copiar para LBR_NF
			orgCityCode = (Integer) orgCity.get_Value("lbr_CityCode");

		identNFe.setcMunFG(orgCityCode.toString());
		identNFe.setTpImp(tpImp);
		identNFe.setTpEmis(tpEmis);
		identNFe.setcDV("" + digitochave);
		identNFe.setTpAmb(tpAmb);
		identNFe.setFinNFe(FinNFE);
		identNFe.setProcEmi(procEmi);
		identNFe.setVerProc(verProc);

		dados.setIde(identNFe);

		//	Endereco do Emitente
		enderEmit.setxLgr(RemoverAcentos.remover(nf.getlbr_OrgAddress1()));
		enderEmit.setNro(nf.getlbr_OrgAddress2());
		enderEmit.setxBairro(RemoverAcentos.remover(nf.getlbr_OrgAddress3()));
		enderEmit.setcMun(orgCityCode.toString());
		enderEmit.setxMun(RemoverAcentos.remover(nf.getlbr_OrgCity()));
		enderEmit.setUF(orgRegion.getName());
		enderEmit.setCEP(TextUtil.toNumeric(orgLoc.getPostal()));
		enderEmit.setcPais((Integer.parseInt(orgCountry.get_ValueAsString("lbr_CountryCode"))) + "");
		enderEmit.setxPais(AdempiereLBR.getCountry_trl(orgCountry));

		// 	Dados do Emitente
		emitente.setCNPJ(chaveNFE.getCNPJ());
		String orgNome = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_LegalEntity")); //TODO: Copiar para NF
		emitente.setxNome(orgNome);
		String orgXFant = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_Fantasia"));  //TODO: Copiar para NF
		if (orgXFant == null || orgXFant.equals(""))
			orgXFant = orgNome;
		emitente.setxFant(orgXFant);
		//
		String orgIE = orgInfo.get_ValueAsString("lbr_IE");
		UF uf = UF.valueOf(orgRegion.getName());
		// VALIDACAO IE
		orgIE = ValidatorBPartner.validaIE(orgIE,uf);
		if ( orgIE == null ){
			return "IE do Emitente incorreto ";
		}
		//
		emitente.setIE(orgIE);
		String orgIM = TextUtil.formatStringCodes(orgInfo.get_ValueAsString("lbr_CCM"));
		if (orgIM == null || orgIM.equals(""))
			orgIM = "EM ANDAMENTO";
		emitente.setIM(orgIM);
		String orgCNAE = TextUtil.formatStringCodes(orgInfo.get_ValueAsString("lbr_CNAE"));
		emitente.setCNAE(orgCNAE);
		emitente.setCRT(CRT);
		emitente.setEnderEmit(enderEmit);

		//	Endereco do Destinatario
		enderDest.setXLgr(RemoverAcentos.remover(nf.getlbr_BPAddress1()));
		enderDest.setNro(RemoverAcentos.remover(nf.getlbr_BPAddress2()));
		if (nf.getlbr_BPAddress3() != null)
			enderDest.setXBairro(RemoverAcentos.remover(nf.getlbr_BPAddress3()));
		else
			return "Bairro Inválido";

		Integer bpCityCode = 0;
		if (bpCity == null && bpLoc.getC_Country_ID() == BPartnerUtil.BRASIL){
			log.log(Level.SEVERE, "Cidade do Parceiro de Negócios não encontrada");
			return "Cidade do Parceiro de Negócios não encontrada";
		}

		if (bpCity != null && bpCity.get_Value("lbr_CityCode") != null) {
			bpCityCode = (Integer) bpCity.get_Value("lbr_CityCode");
			if ((bpCityCode == null || bpCityCode.intValue() == 0) &
					bpLoc.getC_Country_ID() == BPartnerUtil.BRASIL){
				log.log(Level.SEVERE, "Código do cidade (IBGE) não cadastrado");
				return "Código da cidade (IBGE) não cadastrado";
			}

			enderDest.setXMun(RemoverAcentos.remover(nf.getlbr_BPCity()));
		}
		else {
			bpCityCode = Integer.valueOf(BPartnerUtil.EXTCOD);
			enderDest.setXMun(BPartnerUtil.EXTMUN);
		}
		enderDest.setCMun(bpCityCode.toString());
		if (bpCityCode.intValue() == Integer.valueOf(BPartnerUtil.EXTCOD)) {
			//enderDest.setCEP("00000000");
			enderDest.setUF(BPartnerUtil.EXTREG);
		}
		else {
			enderDest.setUF(nf.getlbr_BPRegion());
			//
			if (bpLoc.getPostal() != null)
				enderDest.setCEP(TextUtil.checkSize(TextUtil.formatStringCodes(nf.getlbr_BPPostal()),8,8,'0'));
			else
				return "CEP do destinatário inválido";
		}

		MCountry bpCountry = new MCountry(ctx,bpLoc.getC_Country_ID(),null);
		enderDest.setCPais((Integer.parseInt(bpCountry.get_ValueAsString("lbr_CountryCode"))) + "");
		enderDest.setXPais(AdempiereLBR.getCountry_trl(bpCountry));
		//enderDest.setFone(TextUtil.checkSizeN(nf.getlbr_BPPhone(),6,14));
		enderDest.setEmail(null); //TODO

		dados.setEmit(emitente);
		dados.setDest(destinatario);
		
		// Identificacao do Destinatario
		String bpCNPJ = TextUtil.formatStringCodes(nf.getlbr_BPCNPJ());
		if (bpCNPJ.length() == 11) {
			destinatario.setCPF(bpCNPJ);
		}
		else {
			destinatario.setCNPJ(bpCNPJ);
		}
		destinatario.setxNome(RemoverAcentos.remover(nf.getBPName()));

		String bpIE = nf.getlbr_BPIE();
		uf = UF.valueOf(nf.getlbr_BPRegion());

		// VALIDACAO IE
		bpIE = ValidatorBPartner.validaIE(bpIE,uf); 		// VALIDACAO IE
		if ( bpIE == null) {
			return "IE do Parceiro incorreto ";
		}
		
		// IE
		destinatario.setIE(bpIE);							
		
		// Suframa BF: 3056992
		String suframa = TextUtil.formatStringCodes(nf.getlbr_BPSuframa());
		if(!suframa.isEmpty())	
			destinatario.setISUF(suframa);					// Suframa BF: 3056992
		
		destinatario.setEnderDest(enderDest);

		if (tpAmb.equals("2")){
			if (uf != null){ //DENTRO DO BRASIL
				destinatario.setCPF(null);
				destinatario.setCNPJ("99999999000191");
			}
			destinatario.setxNome("NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
			destinatario.setIE("");
		}
		
		// Identificacao do Local de Entrega
		entrega.setxLgr(RemoverAcentos.remover(nf.getlbr_BPDeliveryAddress1()));
		entrega.setNro(RemoverAcentos.remover(nf.getlbr_BPDeliveryAddress2()));
		entrega.setxBairro(RemoverAcentos.remover(nf.getlbr_BPDeliveryAddress3()));
		entrega.setcMun(bpCityCode.toString());
		
		// Identificacao do Entrega
		String entCNPJ = TextUtil.formatStringCodes(nf.getlbr_BPDeliveryCNPJ());
		if (entCNPJ.length() == 11) {
			entrega.setCPF(entCNPJ);
		}
		else {
			entrega.setCNPJ(entCNPJ);
		}

		if (bpCityCode.intValue() == Integer.valueOf(BPartnerUtil.EXTCOD) ||
			bpRegion.getC_Country_ID() != BPartnerUtil.BRASIL) {
			entrega.setUF(BPartnerUtil.EXTREG);
			entrega.setxMun(BPartnerUtil.EXTMUN);
		}
		else {
			entrega.setUF(nf.getlbr_BPDeliveryRegion());
			entrega.setxMun(RemoverAcentos.remover(bpCity.getName()));
		}

		if (entrega.getUF().equals(BPartnerUtil.EXTREG) && nf.isSOTrx()){ //Somente Exportação
			exporta.setUFEmbarq(orgRegion.getName());
			exporta.setxLocEmbarq(RemoverAcentos.remover(nf.getlbr_OrgCity()));
			dados.setExporta(exporta);
		}
		else if (!entrega.getUF().equals(BPartnerUtil.EXTREG))
			dados.setEntrega(entrega);

		// TRANSPORTADORA - VOLUMES TRANSPORTADOS
		if (nf.getlbr_BPShipperCNPJ() != null && !nf.getlbr_BPShipperCNPJ().equals("")) {
			String shipperIE = nf.getlbr_BPShipperIE();
			UF shipperUF = UF.valueOf(nf.getlbr_BPShipperRegion());
			//
			if (shipperUF != null) {
				// VALIDACAO IE
				shipperIE = ValidatorBPartner.validaIE(shipperIE,shipperUF);
				if ( shipperIE == null){
					return "IE da Transportadora incorreto ";
				}
				//
				String end = nf.getlbr_BPShipperAddress1() + ", " + 	//	Rua
					nf.getlbr_BPShipperAddress2() + " - " + 			//	Número
					nf.getlbr_BPShipperAddress4() + " - " +				//	Complemento
					nf.getlbr_BPShipperAddress3();						//	Bairro
				//
				
				MShipper shipper = new MShipper(Env.getCtx(),nf.getM_Shipper_ID(), null);
				MBPartner bpshipper = MBPartner.get(Env.getCtx(), shipper.getC_BPartner_ID());
				if (bpshipper.get_Value("lbr_BPTypeBR").equals("PJ"))
					transgrupo.setCNPJ(TextUtil.toNumeric(nf.getlbr_BPShipperCNPJ()));
				else
					transgrupo.setCPF(TextUtil.toNumeric(nf.getlbr_BPShipperCNPJ()));
				transgrupo.setIE(shipperIE);
				transgrupo.setxNome(RemoverAcentos.remover(nf.getlbr_BPShipperName()));
				transgrupo.setxEnder(RemoverAcentos.remover(end));
				transgrupo.setxMun(RemoverAcentos.remover(nf.getlbr_BPShipperCity()));
				transgrupo.setUF(RemoverAcentos.remover(nf.getlbr_BPShipperRegion()));
				//
				transporte.setTransporta(transgrupo);
				dados.setTransp(transporte);
			}
		}
		//
		String freightCR = nf.getFreightCostRule();
		if (freightCR == null || freightCR.equals("") || freightCR.equals("I"))
			transporte.setModFrete("0");
		else
			transporte.setModFrete("1");
		//
		
		//DADOS DA ENTREGA
		transvol.setnVol(TextUtil.bigdecimalToString(nf.getNoPackages(),0));
		transvol.setqVol(TextUtil.bigdecimalToString(nf.getNoPackages(),0));
		transvol.setEsp(nf.getlbr_PackingType());
		transvol.setMarca(nf.getlbr_Brand());
		transvol.setPesoB(TextUtil.bigdecimalToString(nf.getlbr_GrossWeight(),3));
		transvol.setPesoL(TextUtil.bigdecimalToString(nf.getlbr_NetWeight(),3));
		transporte.setVol(transvol);
		dados.setTransp(transporte);

	    BigDecimal vDesc = nf.getDiscountAmt(); // Valor do Desconto total da NF
	    
		valoresicms.setvNF(TextUtil.bigdecimalToString(nf.getGrandTotal())); // vNF - Valor Total da NF-e
		valoresicms.setvProd(TextUtil.bigdecimalToString(nf.getTotalLines())); // vProd - Valor Total dos produtos e serviços
		valoresicms.setvFrete(TextUtil.bigdecimalToString(nf.getFreightAmt())); // vFrete - Valor Total do Frete
		valoresicms.setvSeg(TextUtil.bigdecimalToString(nf.getlbr_InsuranceAmt())); // vSeg - Valor Total do Seguro
		valoresicms.setvOutro(TextUtil.bigdecimalToString(nf.getLBR_OtherChargesAmt())); // vOutro - Despesa acessórias
		valoresicms.setvDesc(TextUtil.bigdecimalToString(vDesc)); // vDesc - Valor Total do Desconto
		valoresicms.setvBCST(TextUtil.ZERO_STRING); // vBCST - BC do ICMS ST
		valoresicms.setvST(TextUtil.ZERO_STRING); // vST - Valor Total do ICMS ST
		valoresicms.setvBC(TextUtil.ZERO_STRING); // vBC - BC do ICMS
		valoresicms.setvICMS(TextUtil.ZERO_STRING); // vICMS - Valor Total do ICMS
		valoresicms.setvPIS(TextUtil.ZERO_STRING); // vPIS - Valor do PIS
		valoresicms.setvCOFINS(TextUtil.ZERO_STRING); // vCOFINS - Valor do COFINS
		valoresicms.setvIPI(TextUtil.ZERO_STRING); // vIPI - Valor Total do IPI
		valoresicms.setvII(TextUtil.ZERO_STRING); // vII - Valor Total do II
						
		log.fine("Gerando linhas da NF-e");
		for (X_LBR_NFTax nfTax : nfTaxes){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(ctx, nfTax.getLBR_TaxGroup_ID(), null);
			if (taxGroup.getName().toUpperCase().equals("ICMSST")) {
				valoresicms.setvBCST(TextUtil.bigdecimalToString(nfTax.getlbr_TaxBaseAmt())); // vBCST - BC do ICMS ST
				valoresicms.setvST(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vST - Valor Total do ICMS ST
			}

			if (taxGroup.getName().toUpperCase().equals("ICMS")) {
				valoresicms.setvBC(TextUtil.bigdecimalToString(nfTax.getlbr_TaxBaseAmt())); // vBC - BC do ICMS
				valoresicms.setvICMS(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vICMS - Valor Total do ICMS
			}

			if (taxGroup.getName().toUpperCase().equals("PIS")) {
				valoresicms.setvPIS(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vPIS - Valor do PIS
			}

			if (taxGroup.getName().toUpperCase().equals("COFINS")) {
				valoresicms.setvCOFINS(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vCOFINS - Valor do COFINS
			}

			if (taxGroup.getName().toUpperCase().equals("IPI")) {
				valoresicms.setvIPI(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vIPI - Valor Total do IPI
			}

			if (taxGroup.getName().toUpperCase().equals("II")) {
				valoresicms.setvII(TextUtil.bigdecimalToString(nfTax.getlbr_TaxAmt())); // vII - Valor Total do II
			}

		} //for - nfTaxes

		valores.setICMSTot(valoresicms);
		dados.setTotal(valores);

		//Dados de Cobrança - Fatura
		if (nf.getC_Invoice_ID() > 0){
			MInvoice invoice = new MInvoice(ctx,nf.getC_Invoice_ID(),trxName);
			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());
			boolean HasOpenItems = dt.get_ValueAsBoolean("lbr_HasOpenItems");

			if ("1".equals (FinNFE) && HasOpenItems && nf.isSOTrx())
			{
				cobrfat = new CobrancaGrupoFatura();
				cobrfat.setnFat(invoice.getDocumentNo()); // Codigo NFE
				cobrfat.setvOrig(TextUtil.bigdecimalToString(nf.getGrandTotal())); // Valor Bruto
			    cobrfat.setvLiq(TextUtil.bigdecimalToString(nf.getGrandTotal())); // Valor Liquido
			    			    
			    if (vDesc != null && vDesc.compareTo(Env.ZERO) != 0)
			    	cobrfat.setvDesc(TextUtil.bigdecimalToString(vDesc.abs())); // Desconto
			    
			    cobr.setFat(cobrfat);

			    //	Adiciona as duplicatas da fatura
			    for(int i=0; i < openItems.length; i++)
			    {
					MLBROpenItem openItem = openItems[i];
					cobrdup = new CobrancaGrupoDuplicata();
					cobrdup.setdVenc(TextUtil.timeToString(openItem.getDueDate(),"yyyy-MM-dd"));
					cobrdup.setnDup(cobrfat.getnFat()+"/"+Integer.toString(i+1));
					cobrdup.setvDup(TextUtil.bigdecimalToString(openItem.getGrandTotal()));
					cobr.addDup(cobrdup);
				}
			    dados.setCobr(cobr);
			}
		}

		int linhaNF = 1;

		xstream.addImplicitCollection(Cobranca.class, "dups");
		xstream.alias("dup", CobrancaGrupoDuplicata.class);
		xstream.omitField(AdicoesDI.class, "nDI");
		xstream.alias("adi", AdicoesDI.class);
		xstream.addImplicitCollection(DeclaracaoDI.class, "adi");

		for (MLBRNotaFiscalLine nfLine : nfLines) {
			ProdutosNFEBean produtos = new ProdutosNFEBean();
			DeclaracaoDI declaracao = new DeclaracaoDI();

			//Importação - nDI Obrigatório
			if (nfLine.getlbr_CFOPName() != null &&
					nfLine.getlbr_CFOPName().startsWith("3")){
				if (nfLine.get_Value("LBR_NFDI_ID") == null)
					return "Linha: " + nfLine.getLine() + " CFOP Importação. " +
							"DI Obrigatório!";
			}

			//	DI e Adições
			if (nfLine.get_Value("LBR_NFDI_ID") != null) {
				X_LBR_NFDI di = new X_LBR_NFDI(Env.getCtx(), (Integer) nfLine.get_Value("LBR_NFDI_ID"), null);
				//
				declaracao.setcExportador(RemoverAcentos.remover(di.getlbr_CodExportador()));
				declaracao.setdDesemb(TextUtil.timeToString(di.getlbr_DataDesemb(), "yyyy-MM-dd"));
				declaracao.setdDI(TextUtil.timeToString(di.getDateTrx(), "yyyy-MM-dd"));
				declaracao.setnDI(di.getlbr_DI());
				declaracao.setUFDesemb(di.getlbr_BPRegion());
				declaracao.setxLocDesemb(RemoverAcentos.remover(di.getlbr_LocDesemb()));

				AdicoesDI adicao = new AdicoesDI();
				adicao.setcFabricante(RemoverAcentos.remover(nfLine.get_ValueAsString("Manufacturer")));
				adicao.setnAdicao(nfLine.get_ValueAsString("lbr_NumAdicao"));
				adicao.setnSeqAdic(nfLine.get_ValueAsString("lbr_NumSeqItem"));
			  //adicao.setVDescDI(Env.ZERO);	//TODO
				adicao.setnDI(di.getlbr_DI());
				declaracao.addAdi(adicao);
				produtos.setDI(declaracao);
			} //DI

			//
			ICMSBean icmsnfe = new ICMSBean(); // ICMS
			ICMSGrupoBean icmsgrupo = new ICMSGrupoBean(); // Grupo de ICMS
			ImpostoIPIBean ipinfe = new ImpostoIPIBean(); // IPI
			ImpostoIPIGrupoBean ipigrupo = new ImpostoIPIGrupoBean(); // Grupo IPI
			Informacoes informacoes = new Informacoes();
			// de
			// IPI
			ImpostoDIBean impostodi = new ImpostoDIBean(); // DI
			PISBean pisnfe = new PISBean(); // PIS
			PISGrupoBean pisgrupo = new PISGrupoBean(); // Grupo de PIS
			COFINSBean cofinsnfe = new COFINSBean(); // COFINS
			COFINSGrupoBean cofinsgrupo = new COFINSGrupoBean(); // Grupo de
			// COFINS
			TributosInciBean impostos = new TributosInciBean(); // Tributos

			MProduct prdt = new MProduct(ctx, nfLine.getM_Product_ID(), null);
			produtos.setcProd(RemoverAcentos.remover(nfLine.getProductValue()));
			produtos.setxProd(RemoverAcentos.remover(nfLine.getProductName()));
			if (prdt.getUPC() == null || (prdt.getUPC().length() < 12 || prdt.getUPC().length() > 14)) {
				produtos.setcEAN("");
			}
			else
				produtos.setcEAN(prdt.getUPC());

			produtos.setcEANTrib("");

			MLBRCFOP cfop = new MLBRCFOP(ctx, nfLine.getLBR_CFOP_ID(),null);
			String cfopName = nfLine.getlbr_CFOPName();
			if (cfopName == null || cfopName.equals(""))
				return "CFOP Linha: " + nfLine.getLine() + " Inválido";

			if (!cfop.validateCFOP(nf.isSOTrx(), orgLoc, bpLoc, false))
				return "CFOP Linha: " + nfLine.getLine() + " Inválido";

			produtos.setCFOP(TextUtil.formatStringCodes(cfopName));
			produtos.setqCom(TextUtil.bigdecimalToString(nfLine.getQty(),4));
			produtos.setqTrib(TextUtil.bigdecimalToString(nfLine.getQty(),4));
			produtos.setuCom(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setuTrib(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setvProd(TextUtil.bigdecimalToString(nfLine.getLineTotalAmt()));
			produtos.setvUnCom(TextUtil.bigdecimalToString(nfLine.getPrice(),10));
			produtos.setvUnTrib(TextUtil.bigdecimalToString(nfLine.getPrice(),10));
			
			if (nfLine.getLBR_OtherChargesAmt() != null && nfLine.getLBR_OtherChargesAmt().compareTo(Env.ZERO) != 0)
				produtos.setvOutro(TextUtil.bigdecimalToString(nfLine.getLBR_OtherChargesAmt()));
			
			if (nfLine.getDiscountAmt() != null && nfLine.getDiscountAmt().compareTo(Env.ZERO) != 0)
				produtos.setvDesc(TextUtil.bigdecimalToString(nfLine.getDiscountAmt().abs(),2));
			
			if (nf.getFreightAmt().signum() == 1 && nfLine.getFreightAmt(nf.getTotalLines(), nf.getFreightAmt()).compareTo(Env.ZERO) != 0) //FRETE
				produtos.setvFrete(TextUtil.bigdecimalToString(nfLine.getFreightAmt(nf.getTotalLines(), nf.getFreightAmt())));
			if (nf.getlbr_InsuranceAmt().signum() == 1) //SEGURO
				produtos.setvSeg(TextUtil.bigdecimalToString(nfLine.getInsuranceAmt(nf.getTotalLines(), nf.getlbr_InsuranceAmt())));

			/**
			 * 	Para NFs complementares, não considerar o valor da linha
			 */
			produtos.setIndTot("1".equals (FinNFE) ? "1" : "0");
			
			String ncm = nfLine.getlbr_NCMName();

			if (ncm == null && !nfLine.islbr_IsService())
				return "NCM Obrigatório. Linha: " + nfLine.getLine();

			if (nfLine.islbr_IsService())
				ncm = "99"; //SERVICO INFORMAR 99

			produtos.setNCM(TextUtil.toNumeric(ncm));
			
			// Adicionando Pedido de Compra e Itens do Pedido de Compra na NFe
			
			if (MSysConfig.getBooleanValue("LBR_ADD_XPED_NITEMPED_XML_NFE", false, nf.getAD_Client_ID(), nf.getAD_Org_ID()))
			{	
				MInvoiceLine invoiceline = null;
				
				if (nfLine.getC_InvoiceLine_ID() > 0)
					invoiceline = new MInvoiceLine(Env.getCtx(),nfLine.getC_InvoiceLine_ID(), null); 
				
				if (invoiceline != null && invoiceline.getC_OrderLine_ID() > 0)
				{
					MOrderLine orderline = new MOrderLine (Env.getCtx(), invoiceline.getC_OrderLine_ID(), null);
					
					//	Preenche o pedido referenciado (xPed)
					if (orderline.getParent().getPOReference() != null && !orderline.getParent().getPOReference().trim().isEmpty())
						produtos.setxPed(orderline.getParent().getPOReference());
	
					//	Preenche o item do pedido referenciado (nItemPed)
					if (orderline.get_ValueAsString("POReference") != null && !orderline.get_ValueAsString("POReference").trim().isEmpty())
						produtos.setnItemPed(orderline.get_ValueAsString("POReference"));
				}
			}
			
			String desc = RemoverAcentos.remover(TextUtil.removeEOL(nfLine.getDescription()));
			if (desc != null && !desc.equals("")) {
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++, desc));
			}
			else {
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++));
			}

			xstream.alias("det", DetailsNFEBean.class);
			xstream.useAttributeFor(DetailsNFEBean.class, "nItem");
			xstream.addImplicitCollection(DadosNFE.class, "det");
			//
			NFeTaxes[] lineTax = NFeTaxes.getTaxes(nfLine);
			//
			NFeTaxes taxST = null;
			for (NFeTaxes lt : lineTax)
			{
				if (lt.getTaxIndicator().contains("ICMS")
						&& lt.getTaxIndicator().contains("ST"))
					taxST = lt;
			}
			//
			for (NFeTaxes lt : lineTax) 
			{
				String taxIndicator = lt.getTaxIndicator();
				//
				String taxStatus = lt.getCST();
				
				if (taxStatus == null)
					throw new AdempiereException ("Invalid CST for Tax " + taxIndicator + " Line #" + nfLine.getLine());
				
				if (ICMS.equals (taxIndicator)) 
				{
					icmsgrupo.setOrig (prdt.get_ValueAsString("lbr_ProductSource"));
					
					if (taxST != null && taxST.getCST() != null)
						taxStatus = taxST.getCST();
					
					if (TextUtil.match (taxStatus, CST_ICMS_00, CST_ICMS_10, CST_ICMS_20, CST_ICMS_51, CST_ICMS_70, CST_ICMS_90, CST_ICMS_Part, CSOSN_900))
					{
						//	Modalidade de determinação da BC do ICMS
						icmsgrupo.setModBC (MOD_BC_MVA);

						//	Valor da BC do ICMS
						icmsgrupo.setvBC (TextUtil.bigdecimalToString (lt.getvBC()));
						
						//	Alíquota do imposto
						icmsgrupo.setpICMS (TextUtil.bigdecimalToString (lt.getpImposto()));
						
						//	Valor do ICMS
						icmsgrupo.setvICMS (TextUtil.bigdecimalToString (lt.getvImposto()));
					}
					
					if (TextUtil.match (taxStatus, CST_ICMS_40, CST_ICMS_41, CST_ICMS_50) && lt.getvImposto().signum() > 0)
					{
						//	Valor do ICMS
						icmsgrupo.setvICMS (TextUtil.bigdecimalToString (lt.getvImposto()));
						
						//	Motivo da desoneração do ICMS
						if (suframa != null && !suframa.trim().isEmpty())
							icmsgrupo.setMotDesICMS (MOT_DESONERA_SUFRAMA);
						
						//	FIXME: Criar condições para preencher outros valores
						else
							icmsgrupo.setMotDesICMS (MOT_DESONERA_OUTROS);
					}
					
					//	Percentual da Redução de BC
					if (TextUtil.match (taxStatus, CST_ICMS_20, CST_ICMS_51, CST_ICMS_70))
						icmsgrupo.setpRedBC (TextUtil.bigdecimalToString (lt.getpRedBC()));
					
					//	Percentual da Redução de BC
					if (TextUtil.match (taxStatus, CST_ICMS_90, CST_ICMS_Part, CSOSN_900))
						icmsgrupo.setpRedBC2 (TextUtil.bigdecimalToString (lt.getpRedBC()));
					
					//	Substituição Tributária
					if (TextUtil.match (taxStatus, CST_ICMS_10, CST_ICMS_30, CST_ICMS_70, CST_ICMS_90, CST_ICMS_Part, CSOSN_201, CSOSN_202, CSOSN_203, CSOSN_900))
					{
						if (taxST == null)
							throw new AdempiereException ("CST ou CSOSN de Substituição Tributária, porém o imposto ST não foi encontrado");
						
						//	FIXME: Modalidade da BC
						icmsgrupo.setModBCST (MOD_BC_MVA);
						
						//	TODO: IVA		
//						icmsgrupo.setpMVAST (TextUtil.bigdecimalToString (taxST.getpRedBC()));
						if (taxST.getpRedBC() != null && taxST.getpRedBC().signum() > 0)
							icmsgrupo.setpRedBCST (TextUtil.bigdecimalToString (taxST.getpRedBC()));
						icmsgrupo.setvBCST (TextUtil.bigdecimalToString (taxST.getvBC()));
						icmsgrupo.setpICMSST (TextUtil.bigdecimalToString (taxST.getpImposto()));
						icmsgrupo.setvICMSST (TextUtil.bigdecimalToString (taxST.getvImposto()));
					}

					if (TextUtil.match (taxStatus, CST_ICMS_60, CST_ICMS_ST, CSOSN_500))
					{
						if (taxST == null)
							throw new AdempiereException ("CST ou CSOSN de Substituição Tributária, porém o imposto ST não foi encontrado");
						//
						icmsgrupo.setvBCSTRet (TextUtil.bigdecimalToString (taxST.getvBC()));
						icmsgrupo.setvICMSSTRet (TextUtil.bigdecimalToString (taxST.getvImposto()));
					}
					
					if (TextUtil.match (taxStatus, CST_ICMS_ST))
					{
						icmsgrupo.setvBCSTDest (TextUtil.bigdecimalToString (taxST.getvBC()));
						icmsgrupo.setvICMSSTDest (TextUtil.bigdecimalToString (taxST.getvImposto()));
					}
					
					if (TextUtil.match (taxStatus, CST_ICMS_Part))
					{
						icmsgrupo.setpBCOp (TextUtil.bigdecimalToString (lt.getpRedBC()));
						icmsgrupo.setUFST (nf.getlbr_BPRegion());
					}
					
					if (TextUtil.match (taxStatus, CSOSN_101, CSOSN_201, CSOSN_900))
					{
						icmsgrupo.setpCredSN (TextUtil.bigdecimalToString (lt.getpImposto()));
						icmsgrupo.setvCredICMSSN (TextUtil.bigdecimalToString (lt.getvImposto()));
					}
					
					icmsnfe.setDetails (icmsgrupo, taxStatus);
					impostos.setICMS (icmsnfe);
				} 	//	ICMS

				else if	(IPI.equals (taxIndicator))
				{
					ipigrupo.setCST (taxStatus);
					//
					if (TextUtil.match (taxStatus, CST_IPI_00, CST_IPI_49, CST_IPI_50, CST_IPI_99))
					{
						ipigrupo.setvBC (TextUtil.bigdecimalToString (lt.getvBC()));
						ipigrupo.setpIPI (TextUtil.bigdecimalToString (lt.getpImposto()));
//						ipigrupo.setqUnid("");
//						ipigrupo.setvUnid("");
						ipigrupo.setvIPI (TextUtil.bigdecimalToString (lt.getvImposto()));
						//
						ipinfe.setIPI (ipigrupo);
					}
					else
						ipinfe.setIPINT (ipigrupo);
					
//					ipinfe.setcEnq ("");
//					ipinfe.setCNPJProd ("");
//					ipinfe.setcSelo ("");
//					ipinfe.setqSelo ("");
					ipinfe.setcEnq (ENQ_IPI_999);
					impostos.setIPI(ipinfe);
				}	//	IPI
				
				else if (PIS.equals (taxIndicator))
				{
					pisgrupo.setCST (taxStatus);
					
					// Somente PISAliq e PISOutr
					if (!TextUtil.match (taxStatus, CST_PC_03, CST_PC_04, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
					{
						pisgrupo.setvPIS (TextUtil.bigdecimalToString (lt.getvImposto()));
						pisgrupo.setvBC (TextUtil.bigdecimalToString (lt.getvBC()));
						pisgrupo.setpPIS (TextUtil.bigdecimalToString (lt.getpImposto()));
					}
					
					//	Somente PISQtde e PISOutr 
					if (!TextUtil.match (taxStatus, CST_PC_01, CST_PC_02, CST_PC_04, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
					{
						//	TODO
						pisgrupo.setvPIS (TextUtil.bigdecimalToString (lt.getvImposto()));
//						pisgrupo.setqBCProd (TextUtil.bigdecimalToString (lt.getvBC()));
//						pisgrupo.setvAliqProd (TextUtil.bigdecimalToString (lt.getpImposto()));
					}
					
					pisnfe.setDetails (pisgrupo, taxStatus);
					impostos.setPIS(pisnfe);
				} 	//	PIS

				else if (COFINS.equals (taxIndicator))
				{
					cofinsgrupo.setCST (taxStatus);
					
					// Somente PISAliq e PISOutr
					if (!TextUtil.match (taxStatus, CST_PC_03, CST_PC_04, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
					{
						cofinsgrupo.setvCOFINS (TextUtil.bigdecimalToString (lt.getvImposto()));
						cofinsgrupo.setvBC (TextUtil.bigdecimalToString (lt.getvBC()));
						cofinsgrupo.setpCOFINS (TextUtil.bigdecimalToString (lt.getpImposto()));
					}
					
					//	Somente PISQtde e PISOutr 
					if (!TextUtil.match (taxStatus, CST_PC_01, CST_PC_02, CST_PC_04, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
					{
						//	TODO
						cofinsgrupo.setvCOFINS (TextUtil.bigdecimalToString (lt.getvImposto()));
//						cofinsgrupo.setqBCProd (TextUtil.bigdecimalToString (lt.getvBC()));
//						cofinsgrupo.setvAliqProd (TextUtil.bigdecimalToString (lt.getpImposto()));
					}
					
					cofinsnfe.setDetails (cofinsgrupo, taxStatus);
					impostos.setCOFINS(cofinsnfe);
				}	//	COFINS

				else if (II.equals (taxIndicator))
				{
					impostodi.setvBC (TextUtil.bigdecimalToString(lt.getvBC()));
					impostodi.setvDespAdu (TextUtil.ZERO_STRING);
					impostodi.setvII (TextUtil.bigdecimalToString(lt.getvImposto()));
					impostodi.setvIOF (TextUtil.ZERO_STRING);
					impostos.setII (impostodi);
				}	//	II

				else if (ISSQN.equals (taxIndicator))
				{
				}	//	ISSQN
				
				else
					log.info("Tax not included in XML: " + taxIndicator);

			}	//	Impostos das Linhas

		}	//	Linhas da NF


		String dadosAdi = RemoverAcentos.remover(TextUtil.removeEOL(nf.getDescription()));
		if (dadosAdi != null && !dadosAdi.equals(""))
		{
			InfAdiFisco infAdi = new InfAdiFisco();
			infAdi.setInfCpl(dadosAdi);
			dados.setInfAdic(infAdi);
		}

		String nfeID = dados.getId().substring(3);
		String arquivoXML = nfeID + FILE_EXT;
		String NFeEmXML = NFeUtil.geraCabecNFe() + TextUtil.removeEOL(xstream.toXML(dados)) + NFeUtil.geraRodapNFe();
		
		try
		{
			log.fine("Assinando NF-e");
			arquivoXML = TextUtil.generateTmpFile(NFeUtil.removeIndent(NFeEmXML), arquivoXML);
			AssinaturaDigital.Assinar(arquivoXML, orgInfo, AssinaturaDigital.RECEPCAO_NFE);
		}
		catch (Exception e){
			log.severe(e.getMessage());
			System.out.println(e.getMessage());
		}

		String retValidacao = "";

		File file = new File(arquivoXML);

		try{
			log.fine("Validando NF-e");

			retValidacao = NFeUtil.validateSize(file);
			if (retValidacao != null)
				return retValidacao;

			FileInputStream stream = new FileInputStream(file);
			InputStreamReader streamReader = new InputStreamReader(stream);
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(streamReader);

			String validar = "";
			String line    = null;
			while( (line=reader.readLine() ) != null ) {
				validar += line;
			}
			//
			retValidacao = ValidaXML.validaXML(validar);
		}
		catch (Exception e){
			log.severe(e.getMessage());
		}

		if (!retValidacao.equals("")){
			log.log(Level.SEVERE, retValidacao);
			return retValidacao;
		}

		else{
			//	Grava ID
			nf.setlbr_NFeID(nfeID);
			nf.setProcessed(true);
			nf.save(trxName);
			//	Anexa o XML na NF
			MAttachment attachNFe = nf.createAttachment();
			attachNFe.addEntry(file);
			attachNFe.save(trxName);
			//
			return "";
		}

	}	//	geraCorpoNFe

}	//	NFeXMLGenerator
