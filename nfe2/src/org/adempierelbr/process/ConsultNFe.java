package org.adempierelbr.process;

import java.io.StringReader;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.api.NfeConsulta2Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.apache.axiom.om.OMElement;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRefList;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v310.ConsSitNFeDocument;
import br.inf.portalfiscal.nfe.v310.RetConsSitNFeDocument;
import br.inf.portalfiscal.nfe.v310.TAmb;
import br.inf.portalfiscal.nfe.v310.TConsSitNFe;
import br.inf.portalfiscal.nfe.v310.TProtNFe.InfProt;
import br.inf.portalfiscal.nfe.v310.TRetCancNFe.InfCanc;
import br.inf.portalfiscal.nfe.v310.TRetConsSitNFe;
import br.inf.portalfiscal.nfe.v310.TVerConsSitNFe;
import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeCabecMsg;
import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeCabecMsgE;
import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeDadosMsg;

/**
 * 		Consulta os dados da NF-e diretamenta na SeFaz
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ConsultNFe.java, v1.0 2017/05/22 5:09:19 PM, ralexsander Exp $
 */
public class ConsultNFe extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ConsultNFe.class);

	/**	Organization	*/
	private int p_AD_Org_ID = 0;
	
	/**	Environment		*/
	private String p_LBR_EnvType = null;
	
	/**	Tipo de Emissão		*/
	private String p_LBR_TPEmis = null;
	
	/**	Modelo de NF		*/
	private String p_LBR_NFModel = "55";
	
	/** NFe ID				*/
	private String p_LBR_NFeID = null;
	
	/**	Atualizar NF		*/
	private boolean p_LBR_UpdateNFe = false;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name == null)
				;
			//	Organização
			else if (name.equals(MLBRNFConfig.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			//	Ambiente da NF
			else if (name.equals(MLBRNFConfig.COLUMNNAME_lbr_NFeEnv))
				p_LBR_EnvType = (String) para[i].getParameter();
			
			//	Tipo de Emissão
			else if (name.equals(MLBRNFConfig.COLUMNNAME_LBR_TPEmis))
				p_LBR_TPEmis = (String) para[i].getParameter();

			//	Modelo: NFe ou NFCe
			else if (name.equals(MLBRNFConfig.COLUMNNAME_lbr_NFModel))
				p_LBR_NFModel = (String) para[i].getParameter();

			//	NFe ID
			else if (name.equals(MLBRNotaFiscal.COLUMNNAME_lbr_NFeID))
				p_LBR_NFeID = (String) para[i].getParameter();
			
			//	Atualizar NFe
			else if (name.equals("LBR_UpdateNFe"))
				p_LBR_UpdateNFe = "Y".equals(para[i].getParameter());
			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID == 0)
			p_AD_Org_ID = Env.getAD_Org_ID(getCtx());

		//	Informações da Organização
		MOrgInfo orgInfo = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		if (orgInfo == null)
			return "Organização não encontrada";

		MLocation orgLoc = new MLocation (getCtx(), orgInfo.getC_Location_ID(), null);
		
		//	Ambiente da NF
		if (p_LBR_EnvType == null)
		{
			//	Configuração da NF
			MLBRNFConfig nfconfig = MLBRNFConfig.get(p_AD_Org_ID, MLBRNFConfig.LBR_NFMODEL_NotaFiscalEletrônica);
			
			if (nfconfig == null)
				return "Impossível identificar o Ambiente da NF-e.";
			
			p_LBR_EnvType = nfconfig.getlbr_NFeEnv();
		}

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";
		
		//	Tipo de Emissão
		if (p_LBR_TPEmis == null)
			p_LBR_TPEmis = MLBRNFConfig.LBR_TPEMIS_EmissãoNormal;

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate (getCtx(), p_AD_Org_ID);
		//
		StringBuilder msg = new StringBuilder ();
				
		try
		{
			//	Status Service Object
			ConsSitNFeDocument consNFeDoc = ConsSitNFeDocument.Factory.newInstance();
			TConsSitNFe consNFe = consNFeDoc.addNewConsSitNFe();
			consNFe.setTpAmb(TAmb.Enum.forString(p_LBR_EnvType));
			consNFe.setXServ(TConsSitNFe.XServ.CONSULTAR);
			consNFe.setVersao(TVerConsSitNFe.X_3_10);
			consNFe.setChNFe(p_LBR_NFeID);
			
			//	XML
			StringReader xml = new StringReader (NFeUtil.wrapMsg (consNFeDoc.xmlText(NFeUtil.getXmlOpt())));
			
			//	Mensagem
			NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
			
			//	Cabeçalho
			NfeCabecMsg cabecMsg = new NfeCabecMsg ();
			cabecMsg.setCUF(region);
			cabecMsg.setVersaoDados(NFeUtil.VERSAO_LAYOUT);

			NfeCabecMsgE cabecMsgE = new NfeCabecMsgE ();
			cabecMsgE.setNfeCabecMsg(cabecMsg);

			String serviceType = null;
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(p_LBR_NFModel))
				serviceType = MLBRNFeWebService.CONSULTA;
			
			else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(p_LBR_NFModel))
				serviceType = MLBRNFeWebService.NFCE_CONSULTA;
			
			String url = MLBRNFeWebService.getURL (serviceType, p_LBR_EnvType, NFeUtil.VERSAO_LAYOUT, p_LBR_TPEmis, orgLoc.getC_Region_ID());
			
			NfeConsulta2Stub stub = new NfeConsulta2Stub(url);

			OMElement nfeConsNF2 = stub.nfeConsultaNF2(dadosMsg.getExtraElement(), cabecMsgE);
			String respStatus = nfeConsNF2.toString();

			//	Resposta
			RetConsSitNFeDocument retConsNFeDoc = RetConsSitNFeDocument.Factory.parse (respStatus);
			TRetConsSitNFe ret = retConsNFeDoc.getRetConsSitNFe();
			
			msg = new StringBuilder("@Success@<br />");
			msg.append("<br />Ambiente: ").append(ret.getTpAmb()).append(" - ").append(MRefList.getListName (getCtx(), 1100001, ret.getTpAmb().toString()));
			msg.append("<br />Versão: ").append(ret.getVerAplic());
			
			//	Verde
			if (MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(ret.getCStat()))	//	OK
			{
				msg.append("<font color=\"008800\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			
			//	Vermelho
			else
			{
				msg.append("<font color=\"880000\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			msg.append("<br />UF: ").append(ret.getCUF());
			msg.append("<br />Data/Hora: ").append (NFeUtil.formatTime (ret.getDhRecbto().toString()));
			msg.append("<br />Chave: ").append(ret.getChNFe());
			
			//	Dados do Protocolo
			if (ret.getProtNFe() != null)
			{
				InfProt infProt = ret.getProtNFe().getInfProt();
				//
				msg.append("<hr>");
				msg.append("<br /><font color=\"008800\"><b>PROTOCOLO</b></font>");
				msg.append("<br /><b>Status:</b> ").append(infProt.getCStat() + " - " + infProt.getXMotivo());
				msg.append("<br /><b>Protocolo:</b> ").append(infProt.getNProt());
				msg.append("<br /><b>Data/Hora Recbto:</b> ").append(infProt.getDhRecbto());
				msg.append("<br /><b>Digest Value:</b> ").append(infProt.xgetDigVal().getStringValue());
				msg.append("<br /><b>Versão da Aplicação:</b> ").append(infProt.getVerAplic());

				//	Atualiza os dados da NF-e
				if (p_LBR_UpdateNFe)
				{
					MLBRNotaFiscal nfe = MLBRNotaFiscal.getNFe(ret.getChNFe(), get_TrxName());
					if (nfe != null && nfe.getAD_Org_ID() == p_AD_Org_ID)
					{
						//	NF sem protocolo
						if (nfe.getlbr_NFeProt() == null)
						{
							try
							{
								MLBRNotaFiscal.authorizeNFe (ret.getProtNFe(), get_TrxName());
								msg.append("<br /><br /><font color=\"008800\">Os dados do protocolo foram atualizados na NFe</font>");
							}
							catch (Exception e)
							{
								msg.append("<br /><br />Erro ao atualizar dados do protocolo da NF<br />");
								msg.append(e.getMessage());
							}
						}
						
						//	NF já atualizada
						else
							msg.append("<br /><br />Nota Fiscal já possuí dados do protocolo");
					}
					else
						msg.append("<br /><br />Nota Fiscal não encontrada para fazer a atualização.");
				}
			}
			
			//	Dados do cancelamento da NF
			if (ret.getRetCancNFe() != null)
			{
				InfCanc infCanc = ret.getRetCancNFe().getInfCanc();
				//
				msg.append("<hr>");
				msg.append("<br /><font color=\"008800\"><b>CANCELAMENTO</b></font>");
				msg.append("<br /><b>Status:</b> ").append(infCanc.getCStat() + infCanc.getXMotivo());
				msg.append("<br /><b>Protocolo:</b> ").append(infCanc.getNProt());
				msg.append("<br /><b>Versão da Aplicação:</b> ").append(infCanc.getVerAplic());
				msg.append("<br /><b>Data/Hora Recbto:</b> ").append(infCanc.getDhRecbto());
			}
		}
		catch (Throwable e)
		{
			log.severe (e.getLocalizedMessage());
			e.printStackTrace();
			//
			msg = new StringBuilder("@Error@ - Falha na consulta da NFe - " + e.getMessage());
		}

		return msg.toString();
	}	//	doIt
}	//	ConsultNFe
