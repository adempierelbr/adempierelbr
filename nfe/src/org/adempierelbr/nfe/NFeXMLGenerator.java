package org.adempierelbr.nfe;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigDecimal;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.nfe.beans.AdicoesDIBean;
import org.adempierelbr.nfe.beans.COFINSBean;
import org.adempierelbr.nfe.beans.COFINSGrupoBean;
import org.adempierelbr.nfe.beans.ChaveNFE;
import org.adempierelbr.nfe.beans.CobrancaBean;
import org.adempierelbr.nfe.beans.CobrancaGrupoDuplicataBean;
import org.adempierelbr.nfe.beans.CobrancaGrupoFaturaBean;
import org.adempierelbr.nfe.beans.DadosNFEBean;
import org.adempierelbr.nfe.beans.DeclaracaoDIBean;
import org.adempierelbr.nfe.beans.DetailsNFEBean;
import org.adempierelbr.nfe.beans.EnderDestBean;
import org.adempierelbr.nfe.beans.EnderEmitBean;
import org.adempierelbr.nfe.beans.ICMSBean;
import org.adempierelbr.nfe.beans.ICMSGrupoBean;
import org.adempierelbr.nfe.beans.IdentDestBean;
import org.adempierelbr.nfe.beans.IdentEmitBean;
import org.adempierelbr.nfe.beans.IdentFiscoBean;
import org.adempierelbr.nfe.beans.IdentLocRetiradaBean;
import org.adempierelbr.nfe.beans.IdentLocalEntrega;
import org.adempierelbr.nfe.beans.IdentNFEBean;
import org.adempierelbr.nfe.beans.ImpostoDIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIGrupoBean;
import org.adempierelbr.nfe.beans.InfAssinaturaBean;
import org.adempierelbr.nfe.beans.InformacoesBean;
import org.adempierelbr.nfe.beans.InformacoesNFEReferenciadaBean;
import org.adempierelbr.nfe.beans.NFERefenciadaBean;
import org.adempierelbr.nfe.beans.PISBean;
import org.adempierelbr.nfe.beans.PISGrupoBean;
import org.adempierelbr.nfe.beans.ProdutosNFEBean;
import org.adempierelbr.nfe.beans.TransporteBean;
import org.adempierelbr.nfe.beans.TransporteGrupoBean;
import org.adempierelbr.nfe.beans.TransporteGrupoVeiculos;
import org.adempierelbr.nfe.beans.TransporteLacresBean;
import org.adempierelbr.nfe.beans.TransporteReboqueBean;
import org.adempierelbr.nfe.beans.TransporteRetencaoBean;
import org.adempierelbr.nfe.beans.TransporteVolBean;
import org.adempierelbr.nfe.beans.TributosInciBean;
import org.adempierelbr.nfe.beans.ValoresBean;
import org.adempierelbr.nfe.beans.ValoresICMSBean;
import org.adempierelbr.nfe.beans.ValoresISSQNBean;
import org.adempierelbr.nfe.beans.ValoresRetTribBean;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.CriarArquivoXML;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NFTax;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.joda.time.DateTime;
import org.brazilutils.br.uf.UF;
import org.brazilutils.br.uf.ie.InscricaoEstadual;

import com.thoughtworks.xstream.XStream;

/**
 * Gera o arquivo XML
 * 
 * @contributor Ricardo Santana
 */
public class NFeXMLGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFeXMLGenerator.class);

	private static final int ROUND = BigDecimal.ROUND_HALF_UP;
	/**
	 * Gera o corpo da NF
	 * 
	 * @param LBR_NotaFiscal_ID
	 * @return
	 */
	public static String geraCorpoNFe (int LBR_NotaFiscal_ID) throws Exception
	{
		Properties ctx = Env.getCtx();
		String trxName = null;
		//
		XStream xstream = new XStream();

		DadosNFEBean dados = new DadosNFEBean();
		NFERefenciadaBean nfereferencia = new NFERefenciadaBean();
		InformacoesNFEReferenciadaBean inforeferencia = new InformacoesNFEReferenciadaBean();
		/** Identificacao NFE */
		IdentNFEBean identnfetag = new IdentNFEBean();
		/** Emitente */
		IdentEmitBean emitente = new IdentEmitBean();
		/** Endereco Emitente */
		EnderEmitBean enderEmit = new EnderEmitBean();
		/** Identificacao do Fisco */
		IdentFiscoBean fisco = new IdentFiscoBean();
		/** Identificacao do Destinatario */
		IdentDestBean destinatario = new IdentDestBean();
		/** Endereco Destinatario */
		EnderDestBean enderDest = new EnderDestBean();
		/** Identificacao da retirada */
		IdentLocRetiradaBean retirada = new IdentLocRetiradaBean();
		/** Identificacao do Local de Entrega */
		IdentLocalEntrega entrega = new IdentLocalEntrega();
		/** Declaracao DI */
		DeclaracaoDIBean declaracao = new DeclaracaoDIBean();
		/** Adicoes */
		AdicoesDIBean adicao = new AdicoesDIBean();
		/** Informacoes */
		InformacoesBean informacoes = new InformacoesBean();
		/** Valores Totais */
		ValoresBean valores = new ValoresBean();
		/** Valores do ICMS */
		ValoresICMSBean valoresicms = new ValoresICMSBean();
		/** Valores ISSQN */
		ValoresISSQNBean valoresissq = new ValoresISSQNBean();
		/** Valores Ret Trib */
		ValoresRetTribBean valoresret = new ValoresRetTribBean();
		TransporteBean transporte = new TransporteBean();
		TransporteGrupoBean transgrupo = new TransporteGrupoBean();
		TransporteGrupoVeiculos transpveic = new TransporteGrupoVeiculos();
		TransporteLacresBean translacre = new TransporteLacresBean();
		TransporteReboqueBean transreboque = new TransporteReboqueBean();
		TransporteRetencaoBean transretencao = new TransporteRetencaoBean();
		TransporteVolBean transvol = new TransporteVolBean();
		CobrancaBean cobr = new CobrancaBean();
		CobrancaGrupoFaturaBean cobrfat = new CobrancaGrupoFaturaBean();
		CobrancaGrupoDuplicataBean cobrdup = new CobrancaGrupoDuplicataBean();
		InfAssinaturaBean assinatura = new InfAssinaturaBean();

		ChaveNFE chaveNFEBean = new ChaveNFE();
		// Dados da NFE
		xstream.alias("infNFe", DadosNFEBean.class);
		xstream.useAttributeFor(DadosNFEBean.class, "versao");
		dados.setVersao("1.10");
		xstream.useAttributeFor(DadosNFEBean.class, "Id");
		// **********************************************************************************//
		// **********************************************************************************//
		/* */
		// DADOS DA NOTA FISCAL
		MNotaFiscal nf = new MNotaFiscal(ctx, LBR_NotaFiscal_ID, trxName);
		if (LBR_NotaFiscal_ID == 0)
			return "Nota fiscal inexistente";
		// IMPOSTOS DA NOTA FISCAL
		X_LBR_NFTax[] nfTaxes = nf.getTaxes();

		// LINHA DA NOTA FISCAL
		MNotaFiscalLine[] nfLines = nf.getLines(null);

		// DADOS DA ORG DE VENDA/COMPRA
		MOrg org = new MOrg(ctx, nf.getAD_Org_ID(), trxName);
		MOrgInfo orgInfo = null;
		String whereClause = "AD_Org_ID = ?";

		MTable table = MTable.get(ctx, MOrgInfo.Table_Name);
		Query query = new Query(table, whereClause, trxName);
		query.setParameters(new Object[] { org.getAD_Org_ID() });
		
		//	Tipo de Documento
		MDocType docType = new MDocType(ctx, nf.getC_DocTypeTarget_ID(), trxName);

		List<MOrgInfo> list = query.list();
		orgInfo = list.get(0);

		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), trxName);
		MCountry orgCountry = orgLoc.getCountry();
		MRegion orgRegion = orgLoc.getRegion();
		X_C_City orgCity = null;
		if (orgLoc.getC_City_ID() == 0)
		{
			whereClause = "Name = ?";
			table = null;
			query = null;
			table = MTable.get(ctx, X_C_City.Table_Name);
			query = new Query(table, whereClause, trxName);
			query.setParameters(new Object[] { orgLoc.getCity() });

			List<X_C_City> listCity = query.list();
			orgCity = listCity.get(0);
		}
		else
			orgCity = new X_C_City(ctx, orgLoc.getC_City_ID(), trxName);

		// DADOS DO CLIENTE
		MBPartner bp = new MBPartner(ctx, nf.getC_BPartner_ID(), trxName);
		MBPartnerLocation bpartLoc = new MBPartnerLocation(ctx, nf
				.getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = bpartLoc.getLocation(false);
		MCountry bpCountry = bpLoc.getCountry();
		MRegion bpRegion = bpLoc.getRegion();
		X_C_City bpCity = null;
		if (orgLoc.getC_City_ID() == 0)
		{
			whereClause = "Name = ?";
			table = null;
			query = null;
			table = MTable.get(ctx, X_C_City.Table_Name);
			query = new Query(table, whereClause, trxName);
			query.setParameters(new Object[] { bpLoc.getCity() });

			List<X_C_City> listCity = query.list();
			bpCity = listCity.get(0);
		}
		else
			bpCity = new X_C_City(ctx, bpLoc.getC_City_ID(), trxName);

		// DADOS DO DOCUMENTO DE NF
		String modNF = docType.get_ValueAsString("lbr_NFModel");
		String serie = docType.get_ValueAsString("lbr_NFSerie");
		/**
		 * Indicador da forma de pagamento: 0 – pagamento à vista; 1 – pagamento
		 * à prazo; 2 – outros.
		 */
		String indPag = "0";
		/** Identificação do Ambiente (1 - Produção; 2 - Homologação) */
		String tpAmb = docType.get_ValueAsString("lbr_NFeEnv");
		/** Formato de impressão do DANFE (1 - Retrato; 2 - Paisagem) */
		String tpImp = docType.get_ValueAsString("lbr_DANFEFormat");
		/**
		 * Processo de emissão utilizado com a seguinte codificação: 0 - emissão
		 * de NF-e com aplicativo do contribuinte; 1 - emissão de NF-e avulsa
		 * pelo Fisco; 2 - emissão de NF-e avulsa, pelo contribuinte com seu
		 * certificado digital, através do site do Fisco; 3- emissão de NF-e
		 * pelo contribuinte com aplicativo fornecido pelo Fisco
		 */
		String procEmi = "0";	//	Emissão de NF-e com aplicativo do contribuinte
		/** versão do aplicativo utilizado no processo de emissão */
		String verProc = "1.4.0";
		/**
		 * Forma de emissão da NF-e 1 - Normal; 2 - Contingência FS 3 -
		 * Contingência SCAN 4 - Contingência DPEC 5 - Contingência FSDA
		 */
		String tpEmis = "1";
		/**
		 * Finalidade da emissão da NF-e: 1 - NFe normal 2 - NFe complementar 3
		 * - NFe de ajuste
		 */
		String FinNFE = "1";

		DateTime dt = new DateTime(nf.getDateDoc());

		String aamm = "";
		aamm = (Integer.toString(dt.getYear())).substring(2);
		if (dt.getMonthOfYear() < 10)
			aamm = aamm + "0" + Integer.toString(dt.getMonthOfYear());
		else
			aamm = aamm + Integer.toString(dt.getMonthOfYear());

		String orgCPNJ = formatStringCodes(orgInfo.get_ValueAsString("lbr_CNPJ"));

		chaveNFEBean.setAAMM(aamm);
		chaveNFEBean.setCUF("35");
		chaveNFEBean.setCNPJ(orgCPNJ);
		chaveNFEBean.setMod(modNF);
		int dSerie = Integer.parseInt(serie);
		chaveNFEBean.setSerie(String.format("%03d", dSerie));
		int noNF = Integer.parseInt(nf.getDocumentNo());
		chaveNFEBean.setNNF(String.format("%09d", noNF));
		// Gera codigo fiscal para nota
		Random random = new Random();
		int dCNF = random.nextInt(999999999);
		chaveNFEBean.setCNF(String.format("%09d", dCNF));
		int digitochave = getChave(chaveNFEBean);

		dados.setId("NFe" + chaveNFEBean.getCUF() 	// Estado
				+ chaveNFEBean.getAAMM() 			// Ano + Mes
				+ chaveNFEBean.getCNPJ() 			// CNPJ IFM
				+ chaveNFEBean.getMod() 			// Serie NFE
				+ chaveNFEBean.getSerie() 			// Serie Nota Fiscal
				+ chaveNFEBean.getNNF() 			// NNF - Numero do Documento Fiscal
				+ chaveNFEBean.getCNF() 			// CNF - Numero aleatorio fiscal
				+ digitochave); 					// Digito NFE

		int anonfint = dt.getYear();

		String anonf = "" + anonfint;
		String DEmi = anonf + "-" + String.format("%02d", dt.getMonthOfYear()) + "-"
				+ String.format("%02d", dt.getDayOfMonth());
		String DSaiEnt = anonf + "-" + String.format("%02d", dt.getMonthOfYear())
				+ "-" + String.format("%02d", dt.getDayOfMonth());

		// Identificação NFE
		identnfetag.setCUF(chaveNFEBean.getCUF());
		identnfetag.setCNF(chaveNFEBean.getCNF());
		String cfopNote = RemoverAcentos.remover(nf.getlbr_CFOPNote());
		if (cfopNote.length() > 60)
			cfopNote = cfopNote.substring(0, 60);
		identnfetag.setNatOp(cfopNote);
		identnfetag.setIndPag(indPag);
		identnfetag.setMod(chaveNFEBean.getMod());
		identnfetag.setSerie(serie);
		identnfetag.setNNF(nf.getDocumentNo());
		identnfetag.setDEmi(DEmi);
		identnfetag.setDSaiEnt(DSaiEnt);
		identnfetag.setTpNF(nf.isSOTrx() ? "1" : "0");
		BigDecimal orgCityCode = Env.ZERO;
		if (orgCity.get_Value("lbr_CityCode") != null)
			orgCityCode = (BigDecimal) orgCity.get_Value("lbr_CityCode");
		identnfetag.setCMunFG(orgCityCode.toString());
		identnfetag.setTpImp(tpImp);
		identnfetag.setTpEmis(tpEmis);
		identnfetag.setCDV("" + digitochave);
		identnfetag.setTpAmb(tpAmb); // 2 = homologacao
		identnfetag.setFinNFe(FinNFE);
		identnfetag.setProcEmi(procEmi);
		identnfetag.setVerProc(verProc);

		dados.setIde(identnfetag);

		//	Endereco do Emitente
		enderEmit.setXLgr(RemoverAcentos.remover(orgLoc.getAddress1()));
		enderEmit.setNro(orgLoc.getAddress2());
		enderEmit.setXBairro(RemoverAcentos.remover(orgLoc.getAddress3()));
		enderEmit.setCMun(orgCityCode.toString());
		enderEmit.setXMun(RemoverAcentos.remover(orgCity.getName()));
		enderEmit.setUF(orgRegion.getName());
		enderEmit.setCEP(formatStringCodes(orgLoc.getPostal()));
		enderEmit.setCPais("1058");
		enderEmit.setXPais("Brasil");
		
		// 	Dados do Emitente
		emitente.setCNPJ(chaveNFEBean.getCNPJ());
		String orgNome = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_LegalEntity"));
		emitente.setXNome(orgNome);
		String orgXFant = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_Fantasia"));
		//
		if (orgXFant == null || orgXFant.equals(""))
			orgXFant = orgNome;
		emitente.setXFant(orgXFant);
		//
		String orgIE = orgInfo.get_ValueAsString("lbr_IE");
		//
		UF uf = UF.valueOf(orgRegion.getName());
		//
		if (uf != null && !orgIE.toUpperCase().contains("ISENT"))
		{
			InscricaoEstadual ie = uf.getInscricaoEstadual();
			ie.setNumber(orgInfo.get_ValueAsString("lbr_IE"));
			//
			if (!ie.isValid())
				return "IE do Emitente incorreto: " + ie.getInvalidCause();
			//
			orgIE = ie.getNumber();
		}
		//
		emitente.setIE(orgIE);
		String orgIM = formatStringCodes(orgInfo.get_ValueAsString("lbr_CCM"));
		emitente.setIM(orgIM);
		String orgCNAE = formatStringCodes(orgInfo.get_ValueAsString("lbr_CNAE"));
		emitente.setCNAE(orgCNAE);
		emitente.setEnderEmit(enderEmit);

		//	Endereco do Destinatario
		enderDest.setXLgr(RemoverAcentos.remover(bpLoc.getAddress1()));
		enderDest.setNro(bpLoc.getAddress2());
		if (bpLoc.getAddress3() != null)
			enderDest.setXBairro(RemoverAcentos.remover(bpLoc.getAddress3()));
		else
			enderDest.setXBairro("Zona Rural");
		BigDecimal bpCityCode = Env.ZERO;
		if (bpCity.get_Value("lbr_CityCode") != null)
			bpCityCode = (BigDecimal) bpCity.get_Value("lbr_CityCode");
		enderDest.setCMun(bpCityCode.toString());
		enderDest.setXMun(RemoverAcentos.remover(bpCity.getName()));
		enderDest.setUF(bpRegion.getName());
		if (bpLoc.getPostal() != null)
			enderDest.setCEP(formatStringCodes(bpLoc.getPostal()));
		else
			enderDest.setCEP("78850000");
		enderDest.setCPais("1058");
		enderDest.setXPais("Brasil");
		dados.setEmit(emitente);

		dados.setDest(destinatario);

		// Identificacao do Destinatario
		String bpCNPJ = formatStringCodes(nf.getlbr_BPCNPJ());
		if (bpCNPJ.length() == 11)
		{
			destinatario.setCPF(bpCNPJ);
		}
		else
		{
			destinatario.setCNPJ(bpCNPJ);
		}
		destinatario.setXNome(RemoverAcentos.remover(nf.getBPName()));
		//
		String bpIE = formatStringCodes(nf.getlbr_BPIE());
		uf = UF.valueOf(bpRegion.getName());
		//
		if (uf != null && !bpIE.toUpperCase().contains("ISENT"))
		{
			InscricaoEstadual ie = uf.getInscricaoEstadual();
			ie.setNumber(bpIE);
			//
			if (!ie.isValid())
				return "IE do Parceiro incorreto: " + ie.getInvalidCause();
			//
			bpIE = ie.getNumber();
		}
		//
		destinatario.setIE(bpIE);
		destinatario.setEnderDest(enderDest);

		// Identificacao do Local de Entrega
		entrega.setXLgr(RemoverAcentos.remover(bpLoc.getAddress1()));
		entrega.setNro(bpLoc.getAddress2());
		entrega.setXBairro(RemoverAcentos.remover(bpLoc.getAddress3()));
		entrega.setCMun(bpCityCode.toString());
		entrega.setXMun(RemoverAcentos.remover(bpCity.getName()));
		entrega.setUF(RemoverAcentos.remover(bpRegion.getName()));
		entrega.setCNPJ(bpCNPJ);

		// vNF - Valor Total da NF-e
		valoresicms.setVNF(nf.getGrandTotal().setScale(2, ROUND).toString());
		// vOutro - Outras Despesas acessórias
		valoresicms.setVOutro("");
		// vProd - Valor Total dos produtos e serviços
		valoresicms.setVProd(nf.getTotalLines().setScale(2, ROUND).toString());
		// vFrete - Valor Total do Frete
		valoresicms.setVFrete(nf.getFreightAmt().setScale(2, ROUND).toString());
		// vSeg - Valor Total do Seguro
		valoresicms.setVSeg(Env.ZERO.setScale(2, ROUND).toString());
		// vDesc - Valor Total do Desconto
		valoresicms.setVDesc(Env.ZERO.setScale(2, ROUND).toString());
		// Initialize the taxes with zeroes, so if some tax is not used in the
		// next iteration, it will be filled..
		// vBCST - BC do ICMS ST
		valoresicms.setVBCST(Env.ZERO.setScale(2, ROUND).toString());
		// vST - Valor Total do ICMS ST
		valoresicms.setVST(Env.ZERO.setScale(2, ROUND).toString());
		// vBC - BC do ICMS
		valoresicms.setVBC(Env.ZERO.setScale(2, ROUND).toString());
		// vICMS - Valor Total do ICMS
		valoresicms.setVICMS(Env.ZERO.setScale(2, ROUND).toString());
		// vPIS - Valor do PIS
		valoresicms.setVPIS(Env.ZERO.setScale(2, ROUND).toString());
		// vCOFINS - Valor do COFINS
		valoresicms.setVCOFINS(Env.ZERO.setScale(2, ROUND).toString());
		// vIPI - Valor Total do IPI
		valoresicms.setVIPI(Env.ZERO.setScale(2, ROUND).toString());
		// vII - Valor Total do II
		valoresicms.setVII(Env.ZERO.setScale(2, ROUND).toString());
		// vOutro - Despesa acessórias
		valoresicms.setVOutro(Env.ZERO.setScale(2, ROUND).toString());

		for (X_LBR_NFTax nfTax : nfTaxes)
		{
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(ctx, nfTax
					.getLBR_TaxGroup_ID(), null);
			if (taxGroup.getName().toUpperCase().equals("ICMSST"))
			{
				// vBCST - BC do ICMS ST
				valoresicms.setVBCST(nfTax.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
				// vST - Valor Total do ICMS ST
				valoresicms.setVST(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
			if (taxGroup.getName().toUpperCase().equals("ICMS"))
			{
				// vBC - BC do ICMS
				valoresicms.setVBC(nfTax.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
				// vICMS - Valor Total do ICMS
				valoresicms.setVICMS(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
			if (taxGroup.getName().toUpperCase().equals("PIS"))
			{
				// vPIS - Valor do PIS
				valoresicms.setVPIS(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
			if (taxGroup.getName().toUpperCase().equals("COFINS"))
			{
				// vCOFINS - Valor do COFINS
				valoresicms.setVCOFINS(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
			if (taxGroup.getName().toUpperCase().equals("IPI"))
			{
				// vIPI - Valor Total do IPI
				valoresicms.setVIPI(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
			if (taxGroup.getName().toUpperCase().equals("II"))
			{
				// vII - Valor Total do II
				valoresicms.setVII(nfTax.getlbr_TaxAmt().setScale(2, ROUND).toString());
			}
		}

		valores.setICMSTot(valoresicms);
		dados.setTotal(valores);

		// TRANSPORTADORA - VOLUMES TRANSPORTADOS
		// Se for com transportadora
		if (nf.getlbr_BPShipperCNPJ() != null
				&& !nf.getlbr_BPShipperCNPJ().equals(""))
		{
			UF shipperUF = UF.valueOf(nf.getlbr_BPRegion());
			//
			if (shipperUF != null)
			{
				InscricaoEstadual ie = shipperUF.getInscricaoEstadual();
				ie.setNumber(nf.getlbr_BPShipperIE());
				//
				if (ie == null || !ie.isValid())
					return "IE da Transportadora incorreto: " + ie.getInvalidCause();
				//
				String end = nf.getlbr_BPShipperAddress1() + ", " + 	//	Rua
					nf.getlbr_BPShipperAddress2() + " - " + 			//	Número
					nf.getlbr_BPShipperAddress4() + " - " +				//	Complemento
					nf.getlbr_BPShipperAddress3();						//	Bairro
				//
				transgrupo.setIE(ie.getNumber());
				transgrupo.setXNome(nf.getlbr_BPShipperName());
				transgrupo.setXEnder(RemoverAcentos.remover(end));
				transgrupo.setXMun(RemoverAcentos.remover(nf.getlbr_BPShipperCity()));
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
		dados.setTransp(transporte);

		// Codigo NFE
		cobrfat.setNFat(nf.getDocumentNo());
		// Valor Bruto
		cobrfat.setVOrig(nf.getGrandTotal().setScale(2, ROUND).toString());
		// Valor Liquido
		cobrfat.setVLiq(nf.getGrandTotal().setScale(2, ROUND).toString());
		// Desconto
		// cobrfat.setVDesc(JFNumber.transform(0.00, "##############0.00"));

		cobr.setFat(cobrfat);

		dados.setCobr(cobr);

		int linhaNF = 1;

		for (MNotaFiscalLine nfLine : nfLines)
		{
			ICMSBean icmsnfe = new ICMSBean(); // ICMS
			ICMSGrupoBean icmsgrupo = new ICMSGrupoBean(); // Grupo de ICMS
			ICMSBean.ICMS60Grp icms60 = new ICMSBean.ICMS60Grp();
			ImpostoIPIBean ipinfe = new ImpostoIPIBean(); // IPI
			ImpostoIPIGrupoBean ipigrupo = new ImpostoIPIGrupoBean(); // Grupo
			// de
			// IPI
			ImpostoDIBean impostodi = new ImpostoDIBean(); // DI
			PISBean pisnfe = new PISBean(); // PIS
			PISGrupoBean pisgrupo = new PISGrupoBean(); // Grupo de PIS
			COFINSBean cofinsnfe = new COFINSBean(); // COFINS
			COFINSGrupoBean cofinsgrupo = new COFINSGrupoBean(); // Grupo de
			// COFINS
			TributosInciBean impostos = new TributosInciBean(); // Tributos

			ProdutosNFEBean produtos = new ProdutosNFEBean();

			MProduct prdt = new MProduct(ctx, nfLine.getM_Product_ID(), null);
			produtos.setCProd(prdt.getValue());
			produtos.setXProd(RemoverAcentos.remover(prdt.getName()));
			if (prdt.getUPC() == null
					|| (prdt.getUPC().length() < 12 || prdt.getUPC().length() > 14))
			{
				produtos.setCEAN("");
			}
			else
				produtos.setCEAN(prdt.getUPC());
			produtos.setCEANTrib("");
			X_LBR_CFOP cfop = new X_LBR_CFOP(ctx, nfLine.getLBR_CFOP_ID(),
					null);
			produtos.setCFOP(formatStringCodes(cfop.getValue()));
			// produtos.setNCM(notaFiscalLine.getlbr_NCMName());
			produtos.setQCom(nfLine.getQty().setScale(4, ROUND).toString());
			produtos.setQTrib(nfLine.getQty().setScale(4, ROUND).toString());
			produtos.setUCom(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setUTrib(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			// prod.setVDesc(JFNumber.transform(0.00, "##############0.00"));
			produtos.setVProd(nfLine.getLineTotalAmt().setScale(2, ROUND).toString());
			produtos.setVUnCom(nfLine.getPrice().setScale(4, ROUND).toString());
			produtos.setVUnTrib(nfLine.getPrice().setScale(4, ROUND).toString());
			if (nfLine.getlbr_NCMName() != null && !nfLine.getlbr_NCMName().equals(""))
				produtos.setNCM(TextUtil.toNumeric(nfLine.getlbr_NCMName()));
			dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++));

			xstream.alias("det", DetailsNFEBean.class);
			xstream.useAttributeFor(DetailsNFEBean.class, "nItem");
			xstream.addImplicitCollection(DadosNFEBean.class, "det");

			X_LBR_NFLineTax[] lineTax = nfLine.getTaxes();

			for (X_LBR_NFLineTax lt : lineTax)
			{
				X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(ctx, lt
						.getLBR_TaxGroup_ID(), null);
				if (taxGroup.getName().toUpperCase().equals("ICMS"))
				{
					// Modalidade de determinação da BC do ICMS:
					// 0 - Margem Valor Agregado (%);
					// 1 - Pauta (valor);
					// 2 - Preço Tabelado Máximo (valor);
					// 3 - Valor da Operação
					if (nfLine.getlbr_TaxStatus().endsWith("40"))
					{
						icmsgrupo.setOrig(nfLine.getlbr_TaxStatus()
								.substring(0, 1));
						icmsgrupo.setCST(nfLine.getlbr_TaxStatus()
								.substring(1));
					}
					else
					{
						icmsgrupo.setModBC("0");
						icmsgrupo.setCST(nfLine.getlbr_TaxStatus()
								.substring(1));
						icmsgrupo.setOrig(nfLine.getlbr_TaxStatus()
								.substring(0, 1));
						icmsgrupo.setPICMS(lt.getlbr_TaxRate().setScale(2, ROUND).toString());
						icmsgrupo.setVBC(lt.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
						icmsgrupo.setVICMS(lt.getlbr_TaxAmt().setScale(2, ROUND).toString());
						if (nfLine.getlbr_TaxStatus().endsWith("60")
								|| nfLine.getlbr_TaxStatus().endsWith("10"))
						{
							icms60.setCST(nfLine.getlbr_TaxStatus()
									.substring(1));
							icms60.setOrig(nfLine.getlbr_TaxStatus()
									.substring(0, 1));
							icms60.setVBCST(lt.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
							icms60.setVICMSST(lt.getlbr_TaxAmt().setScale(2, ROUND).toString());
						}
					}
					//
					if (nfLine.getlbr_TaxStatus().endsWith("00"))
					{
						icmsnfe.setICMS00(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("10"))
					{
						icmsnfe.setICMS10(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("20"))
					{
						icmsnfe.setICMS20(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("30"))
					{
						icmsnfe.setICMS30(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("40"))
					{
						icmsnfe.setICMS40(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("51"))
					{
						icmsnfe.setICMS51(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("60"))
					{
						icmsnfe.setICMS60(icms60);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("70"))
					{
						icmsnfe.setICMS70(icmsgrupo);
					}
					else if (nfLine.getlbr_TaxStatus().endsWith("90"))
					{
						icmsnfe.setICMS90(icmsgrupo);
					}
					//
					xstream.useAttributeFor(ICMSBean.class, "ICMS");
					impostos.setICMS(icmsnfe);
				}
				else if (taxGroup.getName().toUpperCase().equals("PIS"))
				{
					pisgrupo.setCST("01");
					if (pisgrupo.getCST().equals("01"))
					{
						// vPIS - Valor do PIS
						pisgrupo.setVPIS(lt.getlbr_TaxAmt().setScale(2, ROUND).toString());
						// vBC - Base de calculo do PIS
						pisgrupo.setVBC(lt.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
						// pPIS - percentual do pis
						pisgrupo.setPPIS(lt.getlbr_TaxRate().setScale(2, ROUND).toString());
						pisnfe.setPIS(pisgrupo);
						xstream.useAttributeFor(PISBean.class, "PIS");
						xstream.aliasField("PISAliq", PISBean.class, "PIS");
						impostos.setPIS(pisnfe);
					}
					else
					{
						pisgrupo.setCST("04");
						pisnfe.setPIS(pisgrupo);
						xstream.useAttributeFor(PISBean.class, "PIS");
						xstream.aliasField("PISNT", PISBean.class, "PIS");
						impostos.setPIS(pisnfe);
					}
				}
				else if (taxGroup.getName().toUpperCase().equals("COFINS"))
				{
					cofinsgrupo.setCST("01");
					if (cofinsgrupo.getCST().equals("01"))
					{
						cofinsgrupo.setCST("01");
						// vCOFINS - Valor do COFINS
						cofinsgrupo.setVCOFINS(lt.getlbr_TaxAmt().setScale(2, ROUND).toString());
						// vBC - Valor da Base de calculo
						cofinsgrupo.setVBC(lt.getlbr_TaxBaseAmt().setScale(2, ROUND).toString());
						// pCofins - Aliquota cofins
						cofinsgrupo.setPCOFINS(lt.getlbr_TaxRate().setScale(2, ROUND).toString());
						cofinsnfe.setCOFINS(cofinsgrupo);
						xstream.useAttributeFor(COFINSBean.class, "COFINS");
						xstream.aliasField("COFINSAliq", COFINSBean.class, "COFINS");
						impostos.setCOFINS(cofinsnfe);
					}
					else
					{
						cofinsgrupo.setCST("04");
						cofinsnfe.setCOFINS(cofinsgrupo);
						xstream.useAttributeFor(COFINSBean.class, "COFINS");
						xstream.aliasField("COFINSNT", COFINSBean.class, "COFINS");
						impostos.setCOFINS(cofinsnfe);
					}
				}
				else if(taxGroup.getName().toUpperCase().equals("IPI"))
				{
					String CST = nfLine.get_ValueAsString("lbr_TaxStatusIPI");
					//
					if (CST == null || CST.equals(""))
						;
					else if (CST.endsWith("0") || CST.endsWith("9"))
					{
						ipigrupo.setCST(CST);
						ipigrupo.setVIPI(lt.getlbr_TaxAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
						ipigrupo.setVBC(lt.getlbr_TaxBaseAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
						ipigrupo.setPIPI(lt.getlbr_TaxRate().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
						ipinfe.setCEnq("999");	//	Deixar 999 até a RBF criar a regra.
						ipinfe.setIPI(ipigrupo);
						xstream.useAttributeFor(ImpostoIPIBean.class, "IPI");
						xstream.aliasField("IPITrib", ImpostoIPIBean.class, "IPI");
						impostos.setIPI(ipinfe);
					}
					else
					{
						ipigrupo.setCST(CST);
						ipinfe.setCEnq("999");
						ipinfe.setIPI(ipigrupo);
						xstream.useAttributeFor(ImpostoIPIBean.class, "IPI");
						xstream.aliasField("IPINT", ImpostoIPIBean.class, "IPI");
						impostos.setIPI(ipinfe);
					}
				}
				else if(taxGroup.getName().toUpperCase().equals("II"))
				{
//					TNFe.InfNFe.Det.Imposto.II ii =
//					obj.createTNFeInfNFeDetImpostoII();
//					imposto.setII(ii);
//					//vII - Valor Total do II
//					imposto.setII(JFNumber.transform(lt.getlbr_TaxAmt().doubleValue(),
//					"##############0.00"));
				}
				else if(taxGroup.getName().toUpperCase().equals("ISSQN"))
				{
//					TNFe.InfNFe.Det.Imposto.ISSQN issqn =
//					obj.createTNFeInfNFeDetImpostoISSQN();
//					imposto.setISSQN(issqn);
				}
			}
		}

		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">\n";
		String rodape = "\n</NFe>";
		String NFeEmXML = cabecalho + xstream.toXML(dados) + rodape;
		//
		CriarArquivoXML criar = new CriarArquivoXML();
		String nfeID = dados.getId().substring(3, dados.getId().length());
		String tempDir = System.getProperty("java.io.tmpdir");
		String[] ret = { tempDir + "/" + nfeID + "-nfe.xml", NFeEmXML };
		try
		{
			criar.retorna(ret);
			AssinaturaDigital.Assinar(ret[0], orgInfo);
		}
		catch (Exception e)
		{
			log.severe(e.getMessage());
			System.out.println(e.getMessage());
		}

		File file = new File(ret[0]);

		String retValidacao = "";

		try
		{
			FileInputStream stream = new FileInputStream(file);
			DataInputStream in = new DataInputStream(stream);
			String validar = "";
			while (in.available() != 0)
			{
				validar = validar + in.readLine();
			}

			ValidaXML val = new ValidaXML();
			retValidacao = val.validaXML(validar);
			if (!retValidacao.equals(""))
				System.out.println(retValidacao);
		}
		catch (Exception e)
		{
			log.warning(e.getMessage());
		}

		if (!retValidacao.equals(""))
			return retValidacao;
		else
		{
			//	Grava ID
			nf.set_CustomColumn("lbr_NFeID", nfeID);
			nf.save();
			//	Anexa o XML na NF
			MAttachment attachNFe = nf.createAttachment();
			File attachFile = new File(ret[0]);
			attachNFe.addEntry(attachFile);
			attachNFe.save();
			return "";
		}
	}	//	geraCorpoNFe

	public static String formatStringCodes (String code)
	{
		if (code == null)
			return "";
		code = code.replace(".", "");
		code = code.replace("/", "");
		code = code.replace("-", "");
		return code;
	}	//	formatStringCodes

	public static int getChave (ChaveNFE campos)
	{
		int dv = 0;
		ChaveNFE camp = campos;

		try
		{
			String chave = camp.getCUF() + camp.getAAMM() + camp.getCNPJ()
					+ camp.getMod() + camp.getSerie() + camp.getNNF()
					+ camp.getCNF();
			dv = NFeUtil.GerarDigito(chave);
		}
		catch (Exception e)
		{
		}

		return dv;
	}	//	getChave
}	//	NFeXMLGenerator
