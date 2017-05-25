package org.adempierelbr.process;

import java.io.StringReader;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFSkipped;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.api.NfeInutilizacao2Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.axiom.om.OMElement;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRefList;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v310.InutNFeDocument;
import br.inf.portalfiscal.nfe.v310.RetInutNFeDocument;
import br.inf.portalfiscal.nfe.v310.TAmb;
import br.inf.portalfiscal.nfe.v310.TCodUfIBGE;
import br.inf.portalfiscal.nfe.v310.TInutNFe;
import br.inf.portalfiscal.nfe.v310.TMod;
import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeCabecMsg;
import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeCabecMsgE;
import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeDadosMsg;

/**
 * 		Inutiliza uma NF ou uma Sequência de NF
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcInutNF.java, v1.0 2010/MM/DD 3:45:29 PM, ralexsander Exp $
 */
public class ProcInutNF extends SvrProcess 
{
	/** Nota Fiscal               	*/
	private Integer 	p_AD_Org_ID 	= 0;
	
	/** Tipo de Documento         	*/
	private Integer 	p_C_DocType_ID 	= 0;
	
	/**	Sequência de NF			  	*/
	private Integer 	p_DocumentNo 	= 0;
	private Integer 	p_DocumentNo_To = 0;
	
	/**	Justificativa			  	*/
	private String 		p_Just 			= "";
	
	/**	Data do Cancelamento	  	*/
	private Timestamp 	p_DateDoc;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ProcInutNF.class);

	/**	Environment		*/
	private String p_LBR_EnvType = null;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para[i].getParameterAsInt();
			else if (name.equals("DocumentNo"))
			{
				p_DocumentNo = para[i].getParameterAsInt();
				p_DocumentNo_To = para[i].getParameter_ToAsInt();
			}
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para[i].getParameter();
			else if (name.equals("lbr_MotivoCancel"))
				p_Just = (String) para[i].getParameter();
			else if (name.equals("lbr_NFeEnv"))
				p_LBR_EnvType = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID <= 0)
			throw new Exception ("@Mandatory@ @AD_Org_ID@");
		if (p_C_DocType_ID <= 0)
			throw new Exception ("@Mandatory@ @C_DocType_ID@");
		if (p_DocumentNo == null || p_DocumentNo.intValue() <= 0)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		if (p_DocumentNo_To == null || p_DocumentNo_To.intValue() <= 0)
			p_DocumentNo_To = p_DocumentNo;
		if (p_DocumentNo_To < p_DocumentNo)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		//
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), p_AD_Org_ID, get_TrxName());
		MDocType dt = new MDocType(Env.getCtx(), p_C_DocType_ID, null);
		//
		MLocation orgLocation = new MLocation(getCtx(), oi.getC_Location_ID(), get_TrxName());
		String regionCode = BPartnerUtil.getRegionCode(orgLocation);
		if (regionCode.isEmpty())
			return "@Error@ UF Inválida";

		if (p_LBR_EnvType == null)
			p_LBR_EnvType = "1";
		//
		br.inf.portalfiscal.nfe.v310.TRetInutNFe.InfInut ret = invalidateNF (getCtx(), oi.getAD_Org_ID(), oi.get_ValueAsString("lbr_CNPJ"), regionCode, p_LBR_EnvType, 
									dt.get_ValueAsString("lbr_NFModel"), p_DocumentNo, p_DocumentNo_To, dt.get_ValueAsString("lbr_NFSerie"), p_Just, p_DateDoc);
		
		StringBuilder msg = new StringBuilder("@Success@<br />");
		msg.append("<br />Ambiente: ").append(ret.getTpAmb()).append(" - ").append(MRefList.getListName (getCtx(), 1100001, ret.getTpAmb().toString()));
		msg.append("<br />Versão: ").append(ret.getVerAplic());
		
		if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(ret.getCStat()))	//	OK
		{
			msg.append("<font color=\"008800\">");
			msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
			msg.append("</font>");
		}
		else
		{
			msg.append("<font color=\"880000\">");
			msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
			msg.append("</font>");
		}
		msg.append("<br />UF: ").append(ret.getCUF());
		msg.append("<br />Data/Hora: ").append (NFeUtil.formatTime (ret.getDhRecbto().toString()));
		
		if (ret.getNProt() != null)
			msg.append("<br />Protocolo: ").append(ret.getNProt());
		
		if (ret.getDhRecbto() != null)
			msg.append("<br />Data do Recebimento: ").append(ret.getDhRecbto());
		
		return msg.toString();
	}	//	doIt

	/**
	 * 	Invalidate
	 * 
	 * @param ctx
	 * @param p_AD_Org_ID
	 * @param cnpj
	 * @param regionCode
	 * @param p_LBR_EnvType
	 * @param nfModel
	 * @param p_DocumentNo
	 * @param nfSerie
	 * @param p_DocumentNo_To
	 * @param p_Just
	 * @param p_DateDoc
	 * @return
	 * @throws Exception
	 */
	public static br.inf.portalfiscal.nfe.v310.TRetInutNFe.InfInut invalidateNF (Properties ctx, int p_AD_Org_ID, String cnpj, 
			String regionCode, String p_LBR_EnvType, String nfModel, Integer p_DocumentNo, 
			Integer p_DocumentNo_To, String nfSerie, String p_Just, Timestamp p_DateDoc) throws Exception
	{
		MOrgInfo oi = MOrgInfo.get (ctx, p_AD_Org_ID, null);
		MLBRNFConfig config = MLBRNFConfig.get(p_AD_Org_ID, nfModel);
		//
		if (p_LBR_EnvType == null)
			p_LBR_EnvType = config.getlbr_NFeEnv();
		if (p_Just == null)
			p_Just = "Erro na emissão da NFe";
		
		InutNFeDocument inutNFeDocument = InutNFeDocument.Factory.newInstance();
		TInutNFe inutNFe = inutNFeDocument.addNewInutNFe();
		inutNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
		
		br.inf.portalfiscal.nfe.v310.TInutNFe.InfInut infInut = inutNFe.addNewInfInut();
		infInut.setMod(TMod.Enum.forString (nfModel));
		infInut.setCNPJ(TextUtil.toNumeric(cnpj));
		infInut.setTpAmb(TAmb.Enum.forString (p_LBR_EnvType));
		infInut.setCUF(TCodUfIBGE.Enum.forString(regionCode));
		infInut.setSerie(nfSerie);
		infInut.setNNFIni(p_DocumentNo.toString());
		infInut.setNNFFin(p_DocumentNo_To.toString());
		infInut.setXJust(p_Just);
		infInut.setAno(TextUtil.timeToString(p_DateDoc, "yy"));
		infInut.setXServ(TInutNFe.InfInut.XServ.INUTILIZAR);
		infInut.setMod(TMod.Enum.forString(nfModel));
		
		String id = "ID" + infInut.getCUF() + infInut.getAno() + infInut.getCNPJ() + infInut.getMod() + 
				TextUtil.lPad (infInut.getSerie(), 3) + TextUtil.lPad (infInut.getNNFIni(), 9) + TextUtil.lPad (infInut.getNNFFin(), 9);
		infInut.setId(id);
		
		//	Sign
		new SignatureUtil (oi, SignatureUtil.INUTILIZACAO_NFE).sign (inutNFeDocument, inutNFe.newCursor());
		
		//	Validate XML
		NFeUtil.validate (inutNFeDocument);
		
		//	XML
		StringReader xml = new StringReader (NFeUtil.wrapMsg (inutNFeDocument.xmlText(NFeUtil.getXmlOpt())));
		
		//	Mensagem
		NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
		
		//	Cabeçalho
		NfeCabecMsg cabecMsg = new NfeCabecMsg ();
		cabecMsg.setCUF(regionCode);
		cabecMsg.setVersaoDados(NFeUtil.VERSAO_LAYOUT);

		NfeCabecMsgE cabecMsgE = new NfeCabecMsgE ();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate (ctx, p_AD_Org_ID);
		
		String serviceType = null;
		if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nfModel))
			serviceType = MLBRNFeWebService.INUTILIZACAO;
		
		else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(nfModel))
			serviceType = MLBRNFeWebService.NFCE_INUTILIZACAO;
		
		//	Recupera a URL de Transmissão
		String url = MLBRNFeWebService.getURL (serviceType, p_LBR_EnvType, NFeUtil.VERSAO_LAYOUT, oi.getC_Location().getC_Region_ID());		
		NfeInutilizacao2Stub stub = new NfeInutilizacao2Stub(url);

		//	Faz a chamada
		OMElement nfeStatusServicoNF2 = stub.nfeInutilizacaoNF2(dadosMsg.getExtraElement(), cabecMsgE);
		String respStatus = nfeStatusServicoNF2.toString();
		
		//	Processa o retorno
		br.inf.portalfiscal.nfe.v310.TRetInutNFe.InfInut retInutNFe = RetInutNFeDocument.Factory.parse (respStatus).getRetInutNFe().getInfInut();
		
		if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(retInutNFe.getCStat()))
			MLBRNFSkipped.register (retInutNFe);

		return retInutNFe;
	}	//	invalidateNF
}	//	ProcInutNF
