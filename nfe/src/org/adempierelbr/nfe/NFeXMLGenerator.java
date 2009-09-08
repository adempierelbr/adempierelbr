package org.adempierelbr.nfe;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
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
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.CriarArquivoXML;
import org.adempierelbr.util.NFeTaxes;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.brazilutils.br.uf.UF;
import org.brazilutils.br.uf.ie.InscricaoEstadual;
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
import org.compiere.model.X_LBR_NFDI;
import org.compiere.model.X_LBR_NFTax;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import com.java4less.textprinter.ports.HDParallelPort;
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
	
	/**	Round 			*/
	private static final int ROUND = BigDecimal.ROUND_HALF_UP;
	
	/**
	 * Gera o corpo da NF
	 * 
	 * @param LBR_NotaFiscal_ID
	 * @return
	 */
	public static String geraCorpoNFe (int LBR_NotaFiscal_ID) throws Exception
	{
		log.fine("Gerando corpo NF-e");
		Properties ctx = Env.getCtx();
		String trxName = null;
		//
		XStream xstream = new XStream();

		//	OK
		DadosNFE dados = new DadosNFE();
		NFERefenciadaBean nfereferencia = new NFERefenciadaBean();
		InformacoesNFEReferenciadaBean inforeferencia = new InformacoesNFEReferenciadaBean();
		IdentNFE identNFe = new IdentNFE();
		IdentEmit emitente = new IdentEmit();
		EnderEmit enderEmit = new EnderEmit();
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
		CobrancaGrupoFatura cobrfat = new CobrancaGrupoFatura();
		CobrancaGrupoDuplicata cobrdup = new CobrancaGrupoDuplicata();
		InfAssinatura assinatura = new InfAssinatura();
		ChaveNFE chaveNFE = new ChaveNFE();
		
		//	Adicoes DI
		ArrayList<AdicoesDI> hAdi = new ArrayList<AdicoesDI>();
		
		// Dados da NFE
		xstream.alias("infNFe", DadosNFE.class);
		xstream.useAttributeFor(DadosNFE.class, "versao");
		dados.setVersao("1.10");
		xstream.useAttributeFor(DadosNFE.class, "Id");

		MNotaFiscal nf = new MNotaFiscal(ctx, LBR_NotaFiscal_ID, trxName);
		if (LBR_NotaFiscal_ID == 0)
			return "Nota fiscal inexistente";

		X_LBR_NFTax[] nfTaxes = nf.getTaxes();
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
			whereClause = "Name=? " +
			"AND IsActive='Y' " +
			"AND (AD_Client_ID=0 OR AD_Client_ID=?) " +
			"AND C_Region_ID=?";
			table = MTable.get(ctx, X_C_City.Table_Name);
			query = new Query(table, whereClause, trxName);
			query.setParameters(new Object[] { orgLoc.getCity(), Env.getAD_Client_ID(ctx), orgLoc.getC_Region_ID() });

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
		MRegion bpRegion = bpLoc.getRegion();
		X_C_City bpCity = null;
		if (bpLoc.getC_City_ID() == 0)
		{
			whereClause = "Name=? " +
					"AND IsActive='Y' " +
					"AND (AD_Client_ID=0 OR AD_Client_ID=?) " +
					"AND C_Region_ID=?";
			table = MTable.get(ctx, X_C_City.Table_Name);
			query = new Query(table, whereClause, trxName);
			query.setParameters(new Object[] { bpLoc.getCity(), Env.getAD_Client_ID(ctx), bpLoc.getC_Region_ID() });

			List<X_C_City> listCity = query.list();
			if (listCity.size() > 0)
				bpCity = listCity.get(0);
			else 
				bpCity = null;
		}
		else
			bpCity = new X_C_City(ctx, bpLoc.getC_City_ID(), trxName);

		// Dados do documento da NF
		String modNF = docType.get_ValueAsString("lbr_NFModel");
		String serie = docType.get_ValueAsString("lbr_NFSerie");
		/**
		 * Indicador da forma de pagamento: 0 – pagamento à vista; 1 – pagamento
		 * à prazo; 2 – outros.
		 */
		String indPag = "0";	//	FIXME
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

		Timestamp dt = nf.getDateDoc();
		String aamm = TextUtil.timeToString(dt, "yyMM");
		String orgCPNJ = TextUtil.toNumeric(nf.getlbr_CNPJ()); 
		//
		chaveNFE.setAAMM(aamm);
		chaveNFE.setCUF("35");	//	FIXME: 
		chaveNFE.setCNPJ(orgCPNJ);
		chaveNFE.setMod(modNF);
		chaveNFE.setSerie(TextUtil.lPad(serie, 3));
		chaveNFE.setNNF(TextUtil.lPad(nf.getDocumentNo(), 9));
		// Gera codigo fiscal para nota
		Random random = new Random();
		chaveNFE.setCNF(TextUtil.lPad("" + random.nextInt(999999999), 9));
		int digitochave = getChave(chaveNFE);

		dados.setId("NFe" + chaveNFE.getCUF() 	// Estado
				+ chaveNFE.getAAMM() 			// Ano + Mes
				+ chaveNFE.getCNPJ() 			// CNPJ IFM
				+ chaveNFE.getMod() 			// Serie NFE
				+ chaveNFE.getSerie() 			// Serie Nota Fiscal
				+ chaveNFE.getNNF() 			// NNF - Numero do Documento Fiscal
				+ chaveNFE.getCNF() 			// CNF - Numero aleatorio fiscal
				+ digitochave); 				// Digito NFE
		
		String DEmi 	= TextUtil.timeToString(dt, "yyyy-MM-dd");
		String DSaiEnt 	= TextUtil.timeToString(dt, "yyyy-MM-dd");

		// Identificação NFE
		identNFe.setCUF(chaveNFE.getCUF());
		identNFe.setCNF(chaveNFE.getCNF());
		identNFe.setNatOp(TextUtil.checkSize(nf.getlbr_CFOPNote(), 1, 60));
		identNFe.setIndPag(indPag);
		identNFe.setMod(chaveNFE.getMod());
		identNFe.setSerie(serie);
		identNFe.setNNF(nf.getDocumentNo());
		identNFe.setDEmi(DEmi);
		identNFe.setDSaiEnt(DSaiEnt);
		identNFe.setTpNF(nf.isSOTrx() ? "1" : "0");
		BigDecimal orgCityCode = Env.ZERO;
		if (orgCity.get_Value("lbr_CityCode") != null)	//	TODO: Copiar para LBR_NF
			orgCityCode = (BigDecimal) orgCity.get_Value("lbr_CityCode");
		identNFe.setCMunFG(orgCityCode.toString());
		identNFe.setTpImp(tpImp);
		identNFe.setTpEmis(tpEmis);
		identNFe.setCDV("" + digitochave);
		identNFe.setTpAmb(tpAmb);
		identNFe.setFinNFe(FinNFE);
		identNFe.setProcEmi(procEmi);
		identNFe.setVerProc(verProc);

		dados.setIde(identNFe);

		//	Endereco do Emitente
		enderEmit.setXLgr(nf.getlbr_OrgAddress1());
		enderEmit.setNro(nf.getlbr_OrgAddress2());
		enderEmit.setXBairro(nf.getlbr_OrgAddress3());
		enderEmit.setCMun(orgCityCode.toString());
		enderEmit.setXMun(nf.getlbr_OrgCity());
		enderEmit.setUF(orgRegion.getName());
		enderEmit.setCEP(TextUtil.toNumeric(orgLoc.getPostal()));
		enderEmit.setCPais("1058");
		enderEmit.setXPais("Brasil");
		
		// 	Dados do Emitente
		emitente.setCNPJ(chaveNFE.getCNPJ());
		//	TODO: Copiar para NF
		String orgNome = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_LegalEntity"));
		emitente.setXNome(orgNome);
		//	TODO: Copiar para NF
		String orgXFant = RemoverAcentos.remover(orgInfo.get_ValueAsString("lbr_Fantasia"));
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
			return "Bairro Inválido";
		BigDecimal bpCityCode = Env.ZERO;
		if (bpCity != null && bpCity.get_Value("lbr_CityCode") != null)
		{
			bpCityCode = (BigDecimal) bpCity.get_Value("lbr_CityCode");
			enderDest.setXMun(RemoverAcentos.remover(bpLoc.getCity()));
		}
		else
		{
			bpCityCode = new BigDecimal(9999999);
			enderDest.setXMun("EXTERIOR");
		}
		enderDest.setCMun(bpCityCode.toString());
		if (bpCityCode.toString().equals("9999999"))
		{
			enderDest.setCEP("00000000");
			enderDest.setUF("EX");
		}
		else
		{
			enderDest.setUF(nf.getlbr_BPRegion());
			//
			if (bpLoc.getPostal() != null)
				enderDest.setCEP(formatStringCodes(bpLoc.getPostal()));
			else
				return "CEP do destinatário inválido";
		}
		if (nf.get_Value("z_cPais") == null)
			enderDest.setCPais("1058");
		else
			enderDest.setCPais((String) nf.get_Value("z_cPais"));
		if (nf.get_Value("z_xPais") == null)
			enderDest.setXPais("Brasil");
		else
			enderDest.setXPais((String) nf.get_Value("z_xPais"));
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
		uf = UF.valueOf(nf.getlbr_BPRegion());
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
		if (bpCityCode.toString().equals("9999999"))
		{
			entrega.setUF("EX");
			entrega.setCNPJ(bpCNPJ);
			entrega.setXMun("EXTERIOR");
		}
		else
		{
			entrega.setUF(nf.getlbr_BPRegion());
			entrega.setCNPJ(bpCNPJ);
			entrega.setXMun(RemoverAcentos.remover(bpCity.getName()));
		}
		
		dados.setEntrega(entrega);

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
		
		log.fine("Gerando linhas da NF-e");
		
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
		
		xstream.omitField(AdicoesDI.class, "nDI");
		xstream.alias("adi", AdicoesDI.class);
		xstream.addImplicitCollection(DeclaracaoDI.class, "adi");

		for (MNotaFiscalLine nfLine : nfLines)
		{
			ProdutosNFEBean produtos = new ProdutosNFEBean();
			DeclaracaoDI declaracao = new DeclaracaoDI();
			//	DI e Adições
			if (nfLine.get_Value("LBR_NFDI_ID") != null)
			{
				X_LBR_NFDI di = new X_LBR_NFDI(Env.getCtx(), (Integer) nfLine.get_Value("LBR_NFDI_ID"), null);
				//
				declaracao.setCExportador(di.getlbr_CodExportador());
				declaracao.setDDesemb(TextUtil.timeToString(di.getlbr_DataDesemb(), "yyyy-MM-dd"));
				declaracao.setDDI(TextUtil.timeToString(di.getDateTrx(), "yyyy-MM-dd"));
				declaracao.setNDI(di.getlbr_DI());
				declaracao.setUFDesemb(di.getlbr_BPRegion());
				declaracao.setXLocDesemb(di.getlbr_LocDesemb());
				
				AdicoesDI adicao = new AdicoesDI();
				adicao.setCFabricante(nfLine.get_ValueAsString("Manufacturer"));
				adicao.setNAdicao(nfLine.get_ValueAsString("lbr_NumAdicao"));
				adicao.setNSeqAdic(nfLine.get_ValueAsString("lbr_NumSeqItem"));
//				adicao.setVDescDI(Env.ZERO);	//TODO
				adicao.setNDI(di.getlbr_DI());
				declaracao.addAdi(adicao);
				produtos.setDI(declaracao);
			}
			
			//
			ICMSBean icmsnfe = new ICMSBean(); // ICMS
			ICMSGrupoBean icmsgrupo = new ICMSGrupoBean(); // Grupo de ICMS
			ICMSBean.ICMS60Grp icms60 = new ICMSBean.ICMS60Grp();
			ImpostoIPIBean ipinfe = new ImpostoIPIBean(); // IPI
			ImpostoIPIGrupoBean ipigrupo = new ImpostoIPIGrupoBean(); // Grupo
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
			produtos.setQCom(nfLine.getQty().setScale(4, ROUND).toString());
			produtos.setQTrib(nfLine.getQty().setScale(4, ROUND).toString());
			produtos.setUCom(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setUTrib(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setVProd(nfLine.getLineTotalAmt().setScale(2, ROUND).toString());
			produtos.setVUnCom(nfLine.getPrice().setScale(4, ROUND).toString());
			produtos.setVUnTrib(nfLine.getPrice().setScale(4, ROUND).toString());
			if (nfLine.getlbr_NCMName() != null && !nfLine.getlbr_NCMName().equals(""))
				produtos.setNCM(TextUtil.toNumeric(nfLine.getlbr_NCMName()));
			//
			String desc = TextUtil.retiraAcentos(nfLine.getDescription());
			if (desc != null)
			{
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++, desc));
			}
			else
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++));


			xstream.alias("det", DetailsNFEBean.class);
			xstream.useAttributeFor(DetailsNFEBean.class, "nItem");
			xstream.addImplicitCollection(DadosNFE.class, "det");
			//
			NFeTaxes[] lineTax = NFeTaxes.getTaxes(nfLine);
			//
			for (NFeTaxes lt : lineTax)
			{
				if (lt.getTaxIndicator().equals("ICMS"))
				{
					String taxStatus = nfLine.getlbr_TaxStatus();
					// Modalidade de determinação da BC do ICMS:
					// 0 - Margem Valor Agregado (%);
					// 1 - Pauta (valor);
					// 2 - Preço Tabelado Máximo (valor);
					// 3 - Valor da Operação
					if (taxStatus.endsWith("40") || 
							taxStatus.endsWith("41") || 
							taxStatus.endsWith("50"))
					{
						icmsgrupo.setOrig(taxStatus.substring(0, 1));
						icmsgrupo.setCST(taxStatus.substring(1));
					}
					else
					{
						icmsgrupo.setModBC("0");
						icmsgrupo.setCST(taxStatus
								.substring(1));
						icmsgrupo.setOrig(taxStatus
								.substring(0, 1));
						icmsgrupo.setPICMS(lt.getpImposto().setScale(2, ROUND).toString());
						icmsgrupo.setVBC(lt.getvBC().setScale(2, ROUND).toString());
						icmsgrupo.setVICMS(lt.getvImposto().setScale(2, ROUND).toString());
						if (taxStatus.endsWith("60")
								|| taxStatus.endsWith("10"))
						{
							icms60.setCST(taxStatus
									.substring(1));
							icms60.setOrig(taxStatus
									.substring(0, 1));
							icms60.setVBCST(lt.getvBC().setScale(2, ROUND).toString());
							icms60.setVICMSST(lt.getvImposto().setScale(2, ROUND).toString());
						}
					}
					//
					if (taxStatus.endsWith("00"))
					{
						icmsnfe.setICMS00(icmsgrupo);
					}
					else if (taxStatus.endsWith("10"))
					{
						icmsnfe.setICMS10(icmsgrupo);
					}
					else if (taxStatus.endsWith("20"))
					{
						icmsnfe.setICMS20(icmsgrupo);
					}
					else if (taxStatus.endsWith("30"))
					{
						icmsnfe.setICMS30(icmsgrupo);
					}
					else if (taxStatus.endsWith("40") || 
							taxStatus.endsWith("41") || 
							taxStatus.endsWith("50"))
					{
						icmsnfe.setICMS40(icmsgrupo);
					}
					else if (taxStatus.endsWith("51"))
					{
						icmsnfe.setICMS51(icmsgrupo);
					}
					else if (taxStatus.endsWith("60"))
					{
						icmsnfe.setICMS60(icms60);
					}
					else if (taxStatus.endsWith("70"))
					{
						icmsnfe.setICMS70(icmsgrupo);
					}
					else if (taxStatus.endsWith("90"))
					{
						icmsnfe.setICMS90(icmsgrupo);
					}
					//
					xstream.useAttributeFor(ICMSBean.class, "ICMS");
					impostos.setICMS(icmsnfe);
				}
				else if (lt.getTaxIndicator().equals("PIS"))
				{
					pisgrupo.setCST("01");
					if (pisgrupo.getCST().equals("01"))
					{
						// vPIS - Valor do PIS
						pisgrupo.setVPIS(lt.getvImposto().setScale(2, ROUND).toString());
						// vBC - Base de calculo do PIS
						pisgrupo.setVBC(lt.getvBC().setScale(2, ROUND).toString());
						// pPIS - percentual do pis
						pisgrupo.setPPIS(lt.getpImposto().setScale(2, ROUND).toString());
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
				else if (lt.getTaxIndicator().equals("COFINS"))
				{
					cofinsgrupo.setCST("01");
					if (cofinsgrupo.getCST().equals("01"))
					{
						cofinsgrupo.setCST("01");
						// vCOFINS - Valor do COFINS
						cofinsgrupo.setVCOFINS(lt.getvImposto().setScale(2, ROUND).toString());
						// vBC - Valor da Base de calculo
						cofinsgrupo.setVBC(lt.getvBC().setScale(2, ROUND).toString());
						// pCofins - Aliquota cofins
						cofinsgrupo.setPCOFINS(lt.getpImposto().setScale(2, ROUND).toString());
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
				else if(lt.getTaxIndicator().toUpperCase().equals("IPI"))
				{
					String CST = nfLine.get_ValueAsString("lbr_TaxStatusIPI");
					//
					if (CST == null || CST.equals(""))
						;
					else if (CST.endsWith("0") || CST.endsWith("9"))
					{
						ipigrupo.setCST(CST);
						ipigrupo.setVIPI(lt.getvImposto().setScale(2, ROUND).toString());
						ipigrupo.setVBC(lt.getvBC().setScale(2, ROUND).toString());
						ipigrupo.setPIPI(lt.getpImposto().setScale(2, ROUND).toString());
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
				else if(lt.getTaxIndicator().equals("II"))
				{
					impostodi.setVBC(lt.getvBC().setScale(2, ROUND).toString());
					impostodi.setVDespAdu(Env.ZERO.setScale(2, ROUND).toString());
					impostodi.setVII(lt.getvImposto().setScale(2, ROUND).toString());
					impostodi.setVIOF(Env.ZERO.setScale(2, ROUND).toString());
					impostos.setII(impostodi);
				}
				else if(lt.getTaxIndicator().equals("ISSQN"))
				{
//					TNFe.InfNFe.Det.Imposto.ISSQN issqn =
//					obj.createTNFeInfNFeDetImpostoISSQN();
//					imposto.setISSQN(issqn);
				}
			}	//	Impostos das Linhas
		}	//	Linhas
		//
		String dadosAdi = TextUtil.retiraAcentos(nf.getDescription());
		if (dadosAdi != null && !dadosAdi.equals(""))
		{
			InfAdiFisco infAdi = new InfAdiFisco();
			infAdi.setInfCpl(nf.getDescription());
			dados.setInfAdic(infAdi);
		}

		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">\n";
		String rodape = "\n</NFe>";
		String NFeEmXML = (cabecalho + xstream.toXML(dados) + rodape).replace("[\n\r\t]", "");
		//
		CriarArquivoXML criar = new CriarArquivoXML();
		String nfeID = dados.getId().substring(3, dados.getId().length());
		String tempDir = System.getProperty("java.io.tmpdir");
		String[] ret = { tempDir + "/" + nfeID + "-nfe.xml", NFeEmXML };
		try
		{
			log.fine("Assinando NF-e");
			criar.retorna(ret);
			AssinaturaDigital.Assinar(ret[0], orgInfo, AssinaturaDigital.RECEPCAO_NFE);
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
			log.fine("Validando NF-e");
			FileInputStream stream = new FileInputStream(file);
			DataInputStream in = new DataInputStream(stream);
			String validar = "";
			while (in.available() != 0)
			{
				validar = validar + in.readLine();
			}
			//
			retValidacao = ValidaXML.validaXML(validar);
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
			//
			return "";
		}
	}	//	geraCorpoNFe
	
	/**
	 * 	formatStringCodes
	 * 
	 * @param code
	 * @return
	 */
	public static String formatStringCodes (String code)
	{
		if (code == null)
			return "";
		code = code.replace(".", "");
		code = code.replace("/", "");
		code = code.replace("-", "");
		return code;
	}	//	formatStringCodes

	/**
	 * 	getChave
	 */
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
