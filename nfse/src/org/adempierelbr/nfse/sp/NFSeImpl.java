package org.adempierelbr.nfse.sp;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.sp.api.LoteNFeStub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.apache.xmlbeans.XmlCalendar;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument;
import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument.PedidoEnvioLoteRPS;
import br.gov.sp.prefeitura.nfe.PedidoEnvioLoteRPSDocument.PedidoEnvioLoteRPS.Cabecalho;
import br.gov.sp.prefeitura.nfe.RetornoEnvioLoteRPSDocument;
import br.gov.sp.prefeitura.nfe.RetornoEnvioLoteRPSDocument.RetornoEnvioLoteRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpAssinatura;
import br.gov.sp.prefeitura.nfe.tipos.TpCPFCNPJ;
import br.gov.sp.prefeitura.nfe.tipos.TpChaveNFeRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpChaveRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpEndereco;
import br.gov.sp.prefeitura.nfe.tipos.TpEvento;
import br.gov.sp.prefeitura.nfe.tipos.TpRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpStatusNFe;
import br.gov.sp.prefeitura.nfe.tipos.TpTipoRPS;

/**
 * 		NFS-e para a cidade de São Paulo
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFSeImpl.java, v1.0 2015/03/26 10:18:48 AM, ralexsander Exp $
 */
public class NFSeImpl implements INFSe
{
	public static final Integer C_City_ID = 1005287;

	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeImpl.class);
	
	/** Versão RPS		*/
	private static final String VERSAO_RPS = "002";
	
	/**
	 *  Tipo de integração, via Webservice ou via arquivo de RPS
	 */
	@Override
	public String getType()
	{
		return TYPE_RPS_FILE;
	}	//	getType

	@Override
	public byte[] getXML(MLBRNotaFiscal nf)
	{
		Properties ctx = Env.getCtx();
		String trxName = nf.get_TrxName();
		//
		MDocType dt = new MDocType (ctx, nf.getC_DocTypeTarget_ID(), trxName);
		MLBRNotaFiscalLine[] nfLines = nf.getLines ();
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
		//
		MBPartnerLocation bpartLoc = new MBPartnerLocation(ctx, nf.getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = bpartLoc.getLocation(false);
		MLocation location = new MLocation(ctx, bpLoc.getC_Location_ID(), trxName);
		X_C_City c = BPartnerUtil.getX_C_City(ctx, location, null);
		String cityCode = "";
		//
		if (c != null && c.get_ValueAsString("lbr_CityCode") != null)
			cityCode = c.get_ValueAsString("lbr_CityCode");
		
		//	Gera a sequência de RPS neste momento
		if (!MSysConfig.getBooleanValue("LBR_REALTIME_RPS_NUMBER", true, nf.getAD_Client_ID())
				&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
		{
			nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), trxName, false));
			nf.save();
		}
		
		//
		TpChaveRPS tpChaveRPS 		= TpChaveRPS.Factory.newInstance(); 
		TpRPS tpRPS					= TpRPS.Factory.newInstance();
		
		tpChaveRPS.setInscricaoPrestador(toLong (MOrgInfo.get(ctx, nf.getAD_Org_ID(), null).get_ValueAsString("lbr_CCM")));
		tpChaveRPS.setNumeroRPS(toLong (nf.getDocumentNo()));
		tpChaveRPS.setSerieRPS(dt.get_ValueAsString("lbr_NFSerie"));
		
		Calendar cal = new XmlCalendar ();
		cal.setTimeInMillis (nf.getDateDoc().getTime());
		
		tpRPS.setChaveRPS(tpChaveRPS);
		tpRPS.setTipoRPS(TpTipoRPS.RPS);
		tpRPS.setDataEmissao(cal);
		tpRPS.setStatusRPS(TpStatusNFe.N);				//	FIXME
		tpRPS.setTributacaoRPS("T");					//	FIXME
		tpRPS.setValorServicos(toBD (nf.getlbr_ServiceTotalAmt()));
		tpRPS.setValorDeducoes(Env.ZERO);
		
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs();
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs();
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs();
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs();
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs();
		
		if (v_PIS.signum() == 1)
			tpRPS.setValorPIS(v_PIS);
		
		if (v_COFINS.signum() == 1)
			tpRPS.setValorCOFINS(v_COFINS);
		
		if (v_INSS.signum() == 1)
			tpRPS.setValorINSS(v_INSS);
		
		if (v_IR.signum() == 1)
			tpRPS.setValorIR(v_IR);
		
		if (v_CSLL.signum() == 1)
			tpRPS.setValorCSLL(v_CSLL);
		//
		TpCPFCNPJ tpCPFCNPJ = tpRPS.addNewCPFCNPJTomador();
		//
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(bp.getlbr_BPTypeBR()))
			tpCPFCNPJ.setCPF(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		else
			tpCPFCNPJ.setCNPJ(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		//
		String ccm = bp.getlbr_CCM();
		if (bp != null && ccm != null && !ccm.trim().isEmpty() && "3550308".equals(cityCode)) // São Paulo
			tpRPS.setInscricaoMunicipalTomador (toLong (ccm));
		//
		tpRPS.setInscricaoEstadualTomador(toLong (nf.getlbr_BPIE()));
		tpRPS.setRazaoSocialTomador(nf.getBPName());
		//
		TpEndereco end = tpRPS.addNewEnderecoTomador();
//		end.setTipoLogradouro(nf.getlbr_BPAddress1());
		end.setLogradouro(nf.getlbr_BPAddress1());
		end.setNumeroEndereco(nf.getlbr_BPAddress2());
		end.setBairro(nf.getlbr_BPAddress3());
		if (nf.getlbr_BPAddress4() != null)
			end.setComplementoEndereco(nf.getlbr_BPAddress4());
		end.setCEP(TextUtil.toNumeric (nf.getlbr_BPPostal()));
		end.setCidade(toInt (cityCode));	//	Cod. da Cidade
		end.setUF(nf.getlbr_BPRegion());
		//
		BigDecimal aliquota = Env.ZERO;
		String serviceCode = "";
		String discriminacao = nf.getDescription();
		
		//	Linhas
		for (MLBRNotaFiscalLine nfLine : nfLines)
		{
			if (!nfLine.islbr_IsService())
				continue;
			//
			if (nfLine.getM_Product_ID() > 0)
			{
				MProduct p = new MProduct (Env.getCtx(), nfLine.getM_Product_ID(), null);
				if (serviceCode.equals("") 
						&& p.get_ValueAsString("lbr_ServiceCode") != null)
				{
					serviceCode = p.get_ValueAsString("lbr_ServiceCode");	//	FIXME : Copiar para LBR_NotaFiscalLine
					aliquota = toBD (nfLine.getTaxRate("ISS"));
					break;
				}
			}
		}
		//
		if (serviceCode == null || serviceCode.equals(""))
			log.log(Level.SEVERE, "No Service Code for Nota Fiscal");
		//
		tpRPS.setAliquotaServicos(aliquota);
		tpRPS.setCodigoServico(TextUtil.toNumeric (serviceCode));
		
		if (discriminacao == null)
			discriminacao = "Prestação de Serviços";
		else
			discriminacao = discriminacao.replace("\n", "|").replace("  ", "").trim();
		tpRPS.setDiscriminacao(discriminacao);
		//
		if (nf.getInvoiceContactEMail() != null && nf.getInvoiceContactEMail().indexOf("@") > 1)
			tpRPS.setEmailTomador(nf.getInvoiceContactEMail());
		tpRPS.setISSRetido(false);
		
		try
		{
			sign (nf.getAD_Org_ID(), tpRPS);
		}
		
		//	Ignorar o erro, pois há casos que é gerado o arquivo RPS e não necessita de assinatura
		catch (Exception e){}
		//
		return tpRPS.xmlText(NFeUtil.getXmlOpt()).getBytes();
	}	//	getXML

	@Override
	public StringBuilder getRPS(List<MLBRNotaFiscal> nfs) throws Exception
	{
		String ccm = null;
		
		//	Contador de linhas do RPS
		int countReg 			= 0;
		
		//	Valor total dos serviços para validação do RPS
		BigDecimal servTotal 	= Env.ZERO;
		
		//	Valor total das deduções para validação do RPS
		BigDecimal dedTotal 	= Env.ZERO;
		
		//	Controle das datas
		Timestamp dateFrom = null;
		Timestamp dateTo = null;

		//	RPS
		StringBuilder rps = new StringBuilder();

		for (MLBRNotaFiscal nf : nfs)
		{
			//	Identifica o emissor
			MOrgInfo orgInfo = MOrgInfo.get(nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
			String actualCCM = orgInfo.get_ValueAsString("lbr_CCM");
			
			//	Atribui o CCM deste lote
			if (ccm == null)
				ccm = actualCCM;
			
			//	Valida a Inscrição Municipal (IM / CCM)
			if (ccm == null)
				throw new Exception ("Impossível emitir RPS de múltiplas Organizações");

			//	Valida se todas as NFs são da mesma Organização
			if (!ccm.equals(actualCCM))
				throw new Exception ("Impossível emitir RPS de múltiplas Organizações");
			
			//	Procura o XML nos anexos
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				xmlData = getXML (nf);	//	Gera um novo XML
			
			TpRPS tpRPS = TpRPS.Factory.parse(new String (xmlData));
			//
			rps.append("6");
			rps.append(TextUtil.rPad(tpRPS.xgetTipoRPS().getStringValue(), 5));
			rps.append(TextUtil.rPad(tpRPS.getChaveRPS().getSerieRPS(), 5));
			rps.append(TextUtil.lPad(tpRPS.getChaveRPS().xgetNumeroRPS().getStringValue(), 12));
			rps.append(date (tpRPS.getDataEmissao()));
			rps.append(TextUtil.rPad(statusRPS(tpRPS.xgetStatusRPS().getStringValue()), 1));
			rps.append(TextUtil.lPad(tpRPS.getValorServicos(), 15));
			rps.append(TextUtil.lPad(tpRPS.getValorDeducoes(), 15));
			rps.append(TextUtil.lPad(tpRPS.xgetCodigoServico().getStringValue(), 5));
			rps.append(TextUtil.lPad(tpRPS.getAliquotaServicos(), 4));
			rps.append(TextUtil.lPad(issWithhold(tpRPS.getISSRetido()), 1));
			//
			if (tpRPS.getCPFCNPJTomador() != null)
			{
				rps.append(TextUtil.lPad(cnpj(tpRPS.getCPFCNPJTomador().getCNPJ()), 1));
				rps.append(TextUtil.lPad(tpRPS.getCPFCNPJTomador().getCNPJ(), 14));
			}
			else
				rps.append("3"+TextUtil.lPad("0", 14));
			//
			rps.append(TextUtil.lPad("" + tpRPS.getInscricaoMunicipalTomador(), 8));
			rps.append(TextUtil.lPad("" + tpRPS.getInscricaoEstadualTomador(), 12));
			rps.append(TextUtil.rPad(tpRPS.getRazaoSocialTomador(), 75));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getTipoLogradouro(), 3));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getLogradouro(), 50));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getNumeroEndereco(), 10));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getComplementoEndereco(), 30));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getBairro(), 30));
			rps.append(TextUtil.rPad(city("" + tpRPS.getEnderecoTomador().getCidade()), 50));
			rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getUF(), 2));
			rps.append(TextUtil.rPad("" + tpRPS.getEnderecoTomador().getCEP(), 8));
			rps.append(TextUtil.pad(tpRPS.getEmailTomador(), ' ', 75, false, false, false)); //	Não retira caracteres especiais
			
			rps.append(TextUtil.lPad(tpRPS.getValorPIS(), 15));
			rps.append(TextUtil.lPad(tpRPS.getValorCOFINS(), 15));
			rps.append(TextUtil.lPad(tpRPS.getValorINSS(), 15));
			rps.append(TextUtil.lPad(tpRPS.getValorIR(), 15));
			rps.append(TextUtil.lPad(tpRPS.getValorCSLL(), 15));
			rps.append(TextUtil.lPad("", 15)); 	// 	ValorCargaTributaria
			rps.append(TextUtil.lPad("", 5)); 	// 	PercentCargaTributaria
			rps.append(TextUtil.rPad("", 10)); 	// 	FonteCargaTributaria
			rps.append(TextUtil.lPad("", 12));	// 	CEI
			rps.append(TextUtil.lPad("", 12));	// 	MatriculaObra
			rps.append(TextUtil.lPad("", 7));	// 	CodMunicipioPrestacao
			rps.append(TextUtil.rPad("", 200)); //	Campo Reservado
			
			rps.append(TextUtil.checkSize(tpRPS.getDiscriminacao(), 0, 1000));
			rps.append(TextUtil.EOL_WIN32);

			//	Contadores
			countReg++;
			servTotal  = servTotal .add(tpRPS.getValorServicos());
			dedTotal = dedTotal.add(tpRPS.getValorDeducoes());
			
			//	Datas
			if (dateFrom == null || tpRPS.getDataEmissao().getTime().before (dateFrom))
				dateFrom = new Timestamp (tpRPS.getDataEmissao().getTime().getTime());
			if (dateTo == null || tpRPS.getDataEmissao().getTime().after (dateTo))
				dateTo = new Timestamp (tpRPS.getDataEmissao().getTime().getTime());
		}
		
		//	Cabeçalho
		StringBuilder header = new StringBuilder("1");
		//
		header.append(VERSAO_RPS);
		header.append(TextUtil.lPad(ccm, 8));
		header.append(TextUtil.timeToString(dateFrom, "yyyyMMdd"));
		header.append(TextUtil.timeToString(dateTo, "yyyyMMdd"));
		header.append(TextUtil.EOL_WIN32);
		
		//	Rodapé
		StringBuilder footer = new StringBuilder("9");
		//
		footer.append(TextUtil.lPad(""+countReg, 7));
		footer.append(TextUtil.lPad(servTotal, 15));
		footer.append(TextUtil.lPad(dedTotal, 15));
		footer.append(TextUtil.EOL_WIN32);
		
		return header.append(rps).append(footer);
	}	//	getRPS

	/**
	 * 	Apesar da prefeitura de SP permitir o envio de um único RPS sem a criação de um lote
	 *		decidimos implementar apenas o envio por lote para facilitar os testes, pois a 
	 *		prefeitura não disponibiliza uma interface para testes de envio único de RPS.
	 */
	@Override
	public boolean transmit (MLBRNotaFiscal nf) throws Exception
	{
		List<MLBRNotaFiscal> nfArray = new ArrayList<MLBRNotaFiscal>();
		nfArray.add(nf);
		//
		return transmit (nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName(), nfArray);
	}	//	transmit
	
	/**
	 * 	Transmissão de RPS em lote
	 */
	@Override
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception
	{
		log.info ("NFSETransmit Process");
		
		int p_AD_Org_ID = AD_Org_ID;
		
		MOrgInfo oi = MOrgInfo.get (ctx, p_AD_Org_ID, null);
		
		PedidoEnvioLoteRPSDocument envioLoteRPSDoc = PedidoEnvioLoteRPSDocument.Factory.newInstance();
		PedidoEnvioLoteRPS envioLoteRPS = envioLoteRPSDoc.addNewPedidoEnvioLoteRPS();
		
		Cabecalho cabecalho = envioLoteRPS.addNewCabecalho();
		cabecalho.setVersao(1);
		TpCPFCNPJ tpCPFCNPJ = cabecalho.addNewCPFCNPJRemetente();
		tpCPFCNPJ.setCNPJ(TextUtil.toNumeric(oi.get_ValueAsString("lbr_CNPJ")));
		
		//	Identifica o emissor
//		MOrgInfo orgInfo = MOrgInfo.get(nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
//		String ccm = orgInfo.get_ValueAsString("lbr_CCM");
		
		//	Valor total dos serviços para validação do RPS
		BigDecimal servTotal 	= Env.ZERO;
		
		//	Valor total das deduções para validação do RPS
		BigDecimal dedTotal 	= Env.ZERO;
		
		//	Controle das datas
		Timestamp dateFrom = null;
		Timestamp dateTo = null;
			
		List<TpRPS> rps = new ArrayList<TpRPS>();
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//			Procura o XML nos anexos
			byte[] xmlData = nf.getAttachmentData("xml");
			if (xmlData == null || xmlData.length == 0)
				xmlData = getXML (nf);	//	Gera um novo XML
			
			TpRPS tpRPS = TpRPS.Factory.parse (new String (xmlData));
			//
			rps.add (tpRPS);
			
			servTotal  = servTotal.add(tpRPS.getValorServicos());
			dedTotal = dedTotal.add(tpRPS.getValorDeducoes());
			
			//	Datas
			if (dateFrom == null || tpRPS.getDataEmissao().getTime().before (dateFrom))
				dateFrom = new Timestamp (tpRPS.getDataEmissao().getTime().getTime());
			if (dateTo == null || tpRPS.getDataEmissao().getTime().after (dateTo))
				dateTo = new Timestamp (tpRPS.getDataEmissao().getTime().getTime());
		}
		//	Converter em Array
		TpRPS[] tpRPSArray = new TpRPS[rps.size()];
		rps.toArray(tpRPSArray);
				
		//
		envioLoteRPS.setRPSArray (tpRPSArray);

		//	Converter para calendário
		Calendar calFrom = new XmlCalendar ();
		calFrom.setTimeInMillis(dateFrom.getTime());
		
		Calendar calTo = new XmlCalendar ();
		calTo.setTimeInMillis(dateTo.getTime());
		
		//	Cabeçalho para o Lote
		cabecalho.setDtInicio (calFrom);
		cabecalho.setDtFim (calTo);
		cabecalho.setQtdRPS (envioLoteRPS.sizeOfRPSArray());
		cabecalho.setValorTotalServicos (servTotal);
		cabecalho.setValorTotalDeducoes(dedTotal);
		
		//	Gera o XML em arquivo para Assinatura	
		StringBuilder xml = new StringBuilder (envioLoteRPSDoc.xmlText(NFeUtil.getXmlOpt()).replace("-03:00", ""));
		
		new SignatureUtil (oi, SignatureUtil.RPS).sign (envioLoteRPSDoc, envioLoteRPSDoc.newCursor());
		envioLoteRPSDoc = PedidoEnvioLoteRPSDocument.Factory.parse (xml.toString());
		
		//	Log
		log.fine ("Sending XML: " + xml.toString());
		
		//	Retorno da Prefeitura
		String retornoXML = "";
		
		//	Valida o documento
		NFeUtil.validate (envioLoteRPSDoc);

		//	Set certificate
		MLBRDigitalCertificate.setCertificate (ctx, p_AD_Org_ID);

		//	Stub
		LoteNFeStub stub = new LoteNFeStub();
		
		//	Monta o Lote para Teste
		if (MSysConfig.getBooleanValue ("LBR_DEBUG_RPS", false, oi.getAD_Client_ID()))
			retornoXML = stub.testeEnvioLoteRPS(1, xml.toString());
		
		//	Envio o Lote
		else 
			retornoXML = stub.envioLoteRPS(1, xml.toString());
		
		log.fine (retornoXML);

		//	Processa o Retorno
		RetornoEnvioLoteRPS result = RetornoEnvioLoteRPSDocument.Factory.parse(retornoXML).getRetornoEnvioLoteRPS();
		
		//	Read from XML
		TpEvento[] alertas 			= result.getAlertaArray();
		TpEvento[] erros 			= result.getErroArray();
		TpChaveNFeRPS[] chaveNFeRPS = result.getChaveNFeRPSArray();
		
		for (TpEvento alerta : alertas)
		{
			log.warning ("Alerta - NF=" + alerta.getChaveNFe() + ", Cod=" + alerta.getCodigo() + ", Desc=" + alerta.getDescricao());
		}
		for (TpEvento erro : erros)
		{
			log.warning ("Erro - NF=" + erro.getChaveNFe() + ", Cod=" + erro.getCodigo() + ", Desc=" + erro.getDescricao());
		}
		for (TpChaveNFeRPS chaves : chaveNFeRPS)
		{
			if (chaves.getChaveRPS() == null || chaves.getChaveNFe() == null)
				continue;
			
			proccessNFSe (ctx, trxName, "" + chaves.getChaveRPS().getNumeroRPS(), "" + chaves.getChaveNFe().getNumeroNFe(), chaves.getChaveNFe().getCodigoVerificacao());
		}
		
		return result.getCabecalho().getSucesso();
	}	//	transmit
	
	/**
	 * 	Retorna o valor das deduções
	 * 	FIXME Verificar
	 * @param nf
	 * @return
	 */
	@SuppressWarnings("unused")
	private static BigDecimal getDeducoes (MLBRNotaFiscal nf)
	{
		BigDecimal deducoes = Env.ZERO;
		//
		X_LBR_NFTax[] taxes = nf.getTaxes();
		for (X_LBR_NFTax tax : taxes)
		{
			X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
			if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
				continue;
			//
			if (tax.getlbr_TaxAmt().signum() == -1)
				deducoes = deducoes.add(tax.getlbr_TaxAmt().abs());
		}
		//
		return deducoes;
	}	//	getDeducoes

	private static BigDecimal toBD (BigDecimal value)
	{
		if (value == null)
			return Env.ZERO;
		return value.setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros();
	}	//	toBD
	
	private static Long toLong (String longStr)
	{
		if (longStr == null || TextUtil.toNumeric(longStr).trim().isEmpty())
			return (long) 0;
		return new Long (TextUtil.toNumeric(longStr));
	}	//	toLong
	
	private static int toInt (String intStr)
	{
		if (intStr == null)
			return 0;
		
		try
		{
			return Integer.parseInt(TextUtil.toNumeric(intStr));
		}
		catch (Exception e)	{}
		return 0;
	}	//	toInt
	
	/**
	 * 	Sign RPS
	 * 	@param AD_Org_ID
	 * 	@param rps
	 */
	private static void sign (int AD_Org_ID, TpRPS rps)
	{
		StringBuilder ascii = new StringBuilder ("");
		//
		String indicador = rps.getCPFCNPJTomador().getCPF() != null ? "1" : "2";
		
		ascii.append(TextUtil.lPad (rps.getChaveRPS().getInscricaoPrestador()+"", 8));
		ascii.append(TextUtil.rPad (rps.getChaveRPS().getSerieRPS(), 5));
		ascii.append(TextUtil.lPad (rps.getChaveRPS().getNumeroRPS()+"", 12));
		//
		ascii.append(TextUtil.lPad ((rps.getDataEmissao()+"").substring(0, 10), 8));
		ascii.append(rps.getTributacaoRPS());
		ascii.append(rps.getStatusRPS());
		ascii.append("true".equals (rps.getISSRetido()) ? "S" : "N");
		ascii.append(TextUtil.lPad (rps.getValorServicos(), 15));
		ascii.append(TextUtil.lPad (rps.getValorDeducoes(), 15));
		ascii.append(TextUtil.lPad (rps.getCodigoServico(), 5));
		ascii.append(indicador);
		ascii.append(TextUtil.lPad (indicador.equals("1") ? rps.getCPFCNPJTomador().getCPF() : rps.getCPFCNPJTomador().getCNPJ(), 14));
		//
		TpAssinatura tpAssinatura = TpAssinatura.Factory.newInstance();
		
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), AD_Org_ID, null);
		tpAssinatura.setStringValue(new SignatureUtil (oi, SignatureUtil.RPS).signASCII (ascii.toString()));
		rps.xsetAssinatura (tpAssinatura);
	}	//	sign

	/**
	 * 	Formata a data
	 * 
	 * @param data
	 * @return
	 */
	private static String date (Calendar cal)
	{
		return TextUtil.timeToString (new Timestamp (cal.getTimeInMillis()), "yyyyMMdd");
	}	//	date
	
	/**
	 * 	Pega o nome da cidade pelo código
	 * 
	 * @param 	cidade
	 * @return 	Nome da Cidade
	 */
	private static String city (String cidade)
	{
		return DB.getSQLValueString(null, "SELECT MAX(Name) " +
				"FROM C_City c " +
				"WHERE c.lbr_CityCode='"+cidade+"'");
	}	//	city
	
	/**
	 * 	Identifica se é CPF ou CNPJ
	 * 
	 * @param 	cnpj
	 * @return	1-CPF, 2-CNPJ, 3-Erro
	 */
	private static String cnpj (String cnpj)
	{
		if (cnpj==null || cnpj.length() < 5)
			return "3";
		else if (cnpj.length() > 12)
			return "2";
		else 
			return "1";
	}	//	cnpj
	
	/**
	 * 	Identifica se o ISS é retido
	 * 
	 * @param 	iss
	 * @return	1-true, 2-false
	 */
	private static String issWithhold (boolean iss)
	{
		if (iss)
			return "1";
		else 
			return "2";
	}	//	issWithhold
	
	/**
	 * 	Converte o Status do XML para RPS
	 * 
	 * @param status
	 * @return
	 */
	private static String statusRPS (String status)
	{
		if (status==null)
			return null;
		else if (status.equals("N"))
			return "T";
		else 
			return status;
	}	//	statusRPS
	
	/**
	 * 		Processar NF-e
	 * 	@param p_RPS
	 * 	@param p_NFe
	 * 	@param p_VerifCode
	 */
	private void proccessNFSe (Properties ctx, String trxName, String p_RPS, String p_NFe, String p_VerifCode)
	{
		int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_RPS, true, trxName);
		if (LBR_NotaFiscal_ID > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
			proccessNFSe (nf, p_NFe, p_VerifCode);
		}
	}	//	proccessNFSe
	
	/**
	 * 	Processa a NF com as informaões da autorização
	 * @param nf
	 * @param p_NFe
	 * @param p_VerifCode
	 */
	private void proccessNFSe (MLBRNotaFiscal nf, String p_NFe, String p_VerifCode)
	{
		nf.setIsPrinted(true); //	Marca impresso para cancelar documentos vinculados
		nf.setProcessed(true);
		nf.setlbr_NFENo(p_NFe);
		nf.setlbr_NFeProt(p_VerifCode);
		nf.setDocAction(MLBRNotaFiscal.DOCACTION_None);
		nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Completed);
		nf.save();
	}	//	proccessNFSe
}	//	NFSeImpl
