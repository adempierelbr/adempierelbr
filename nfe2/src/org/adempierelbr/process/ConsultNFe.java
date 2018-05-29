package org.adempierelbr.process;

import java.io.StringReader;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.xml.stream.XMLInputFactory;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFConfig;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.NFeXMLGenerator;
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

import br.inf.portalfiscal.nfe.v400.ConsSitNFeDocument;
import br.inf.portalfiscal.nfe.v400.RetConsSitNFeDocument;
import br.inf.portalfiscal.nfe.v400.TAmb;
import br.inf.portalfiscal.nfe.v400.TConsSitNFe;
import br.inf.portalfiscal.nfe.v400.TProtNFe.InfProt;
import br.inf.portalfiscal.nfe.v400.TRetCancNFe.InfCanc;
import br.inf.portalfiscal.nfe.v400.TRetConsSitNFe;
import br.inf.portalfiscal.nfe.v400.TVerConsSitNFe;
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
		//	NF found
		if (getRecord_ID() > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), getRecord_ID(), get_TrxName());
			if (nf != null && nf.islbr_IsOwnDocument())
			{
				p_AD_Org_ID 		= nf.getAD_Org_ID();
				p_LBR_EnvType 	= nf.getlbr_NFeEnv();
				p_LBR_TPEmis		= nf.getLBR_TPEmis();
				p_LBR_NFModel	= nf.getlbr_NFModel();
				//
				if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus()))
					p_LBR_UpdateNFe 	= true;
				//
				if (nf.getErrorMsg() != null && !nf.getErrorMsg().isEmpty())
				{
					final Pattern pattern = Pattern.compile("(\\d{44})");
					final Matcher matcher = pattern.matcher(nf.getErrorMsg());
					if (matcher.find())
					{
						p_LBR_NFeID = matcher.group (1);
					}
				}
				if (p_LBR_NFeID == null || p_LBR_NFeID.length() != 44)
					p_LBR_NFeID = nf.getlbr_NFeID();
				
				//	All parameters found
				return;
			}
		}
		
		//	Regular parameters
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
			return "@Error@ <font color=\"880000\">UOrganização não encontrada</font>";

		MLocation orgLoc = new MLocation (getCtx(), orgInfo.getC_Location_ID(), null);
		
		//	Ambiente da NF
		if (p_LBR_EnvType == null)
		{
			//	Configuração da NF
			MLBRNFConfig nfconfig = MLBRNFConfig.get(p_AD_Org_ID, MLBRNFConfig.LBR_NFMODEL_NotaFiscalEletrônica);
			
			if (nfconfig == null)
				return "@Error@ <font color=\"880000\">Impossível identificar o Ambiente da NF-e</font>";
			
			p_LBR_EnvType = nfconfig.getlbr_NFeEnv();
		}
		
		//	Valida se a chave da NFe possuí 44 dígitos
		if (p_LBR_NFeID == null || !p_LBR_NFeID.matches("^[\\d]{44}$"))
			return "@Error@ <font color=\"880000\">Chave da NFe inválida</font>";

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "@Error@ <font color=\"880000\">UF Inválida</font>";
		
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
			consNFe.setVersao(TVerConsSitNFe.X_4_00);
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
			
			//	Nota Fiscal Eletrônica
			MLBRNotaFiscal nfe  = null;
			
			//	Dados do Protocolo
			if (ret.getProtNFe() != null)
			{
				InfProt infProt = ret.getProtNFe().getInfProt();
				String digestValue = infProt.xgetDigVal().getStringValue();
				String random = ret.getChNFe().substring (35, 43);
				//
				msg.append("<hr>");
				msg.append("<br /><font color=\"008800\"><b>PROTOCOLO</b></font>");
				msg.append("<br /><b>Status:</b> ").append(infProt.getCStat() + " - " + infProt.getXMotivo());
				msg.append("<br /><b>Protocolo:</b> ").append(infProt.getNProt());
				msg.append("<br /><b>Data/Hora Recbto:</b> ").append(infProt.getDhRecbto());
				msg.append("<br /><b>Digest Value:</b> ").append(digestValue);
				msg.append("<br /><b>Versão da Aplicação:</b> ").append(infProt.getVerAplic());

				//	Atualiza os dados da NF-e
				if (p_LBR_UpdateNFe)
				{
					nfe = MLBRNotaFiscal.getNFe(ret.getChNFe(), get_TrxName());
					if (nfe != null && nfe.getAD_Org_ID() == p_AD_Org_ID && nfe.islbr_IsOwnDocument())
					{
						//	NF sem protocolo
						if (nfe.getlbr_NFeProt() == null)
						{
							try
							{
								//	Caso não tenha XML, tenta recriar
								if (!nfe.hasNFeXML())
									NFeXMLGenerator.generate (nfe, random);
								
								//	Valida se o protocolo é válido para o XML anexado
								if (!nfe.isProtocolValid(digestValue))
									msg.append ("<br /><br /> Falha ao atualizar NFe, diferença no Digest Value. Verifique se a NF foi alterada");
								
								else
								{
									MLBRNotaFiscal.authorizeNFe (ret.getProtNFe(), get_TrxName());
									msg.append("<br /><br /><font color=\"008800\">Os dados do protocolo foram atualizados na NFe</font>");
								}
							}
							catch (Exception e)
							{
								msg.append("<br /><br />Erro ao atualizar dados do protocolo da NF<br />");
								msg.append(e.getMessage());
							}
						}
						
						//	NF já atualizada
						else
							msg.append("<br /><br />Nota Fiscal já possuí dados do protocolo de autorização");
					}
					else
					{
						String cnpj 		= ret.getChNFe().substring (6, 20);
						String serie	 	= ret.getChNFe().substring (22, 25);
						String documentNo 	= ret.getChNFe().substring (25, 34);
						String model 		= ret.getChNFe().substring (20, 22);
						
						//	Tenta encontrar a NF pelo número, série e cnpj
						nfe = MLBRNotaFiscal.getNFe (getCtx(), cnpj, model, documentNo, serie, get_TrxName());
						
						//	NF existe
						if (nfe != null
								
								//	Documento próprio
								&& nfe.islbr_IsOwnDocument()
								
								//	Estado da NF desconhecido
								&& !MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nfe.getDocStatus())

								//	Docuemnto não pode estar completado
								&& !MLBRNotaFiscal.DOCSTATUS_Completed.equals(nfe.getDocStatus())
								
								//	Docuemnto não pode estar anulado
								&& !MLBRNotaFiscal.DOCSTATUS_Voided.equals(nfe.getDocStatus()))
						{
							
							//	Limpa os campos no caso de reenviar uma NF que foi previament rejeitada
							nfe.setlbr_NFeStatus (null);
							nfe.setlbr_NFeID (null);
							nfe.setLBR_NFeLot_ID (0);
							//							
							try
							{
								NFeXMLGenerator.generate (nfe, random);

								//	Valida a chave de acesso
								if (nfe.getlbr_NFeID() == null || !nfe.getlbr_NFeID().equals(ret.getChNFe()))
									msg.append ("<br /><br /> Falha na atualização da NF, chave inválida ");
								
								//	Valida se existe XML
								else if (!nfe.hasNFeXML())
									msg.append ("<br /><br /> Falha na atualização da NF, sem XML");
									
								//	Valida se o XML é válido
								else if (!nfe.isProtocolValid(digestValue))
									msg.append ("<br /><br /> Falha ao atualizar NFe, diferença no Digest Value. Verifique se a NF foi alterada");
									
								//	Tudo OK, prosseguir
								else
								{
									MLBRNotaFiscal.authorizeNFe (ret.getProtNFe(), get_TrxName());
									msg.append("<br /><br /><font color=\"008800\">Os dados do protocolo de autorização foram atualizados na NFe</font>");
								}
							}
							catch (Exception e)
							{
								msg.append ("<br /><br /> Falha na reconstrução do XML - " + e.getMessage());
							}
						}
						
						//	NF não encontrada
						else
							msg.append("<br /><br />Nota Fiscal não encontrada para fazer a atualização.");
					}
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
				
				//	Atualiza os dados do protocolo do cancelamento
				if (p_LBR_UpdateNFe && nfe != null)
				{
					if (!nfe.isCancelled())
					{
						//	Valida se o motivo do cancelamento foi digitado
						String cancelReason = nfe.getlbr_MotivoCancel();
						if (cancelReason == null || cancelReason.length() < 15)
							cancelReason = "Registro do cancelamento obtido via processo sob o protocolo " + infCanc.getNProt();
						
						//	Cria um evento para registro
						MLBRNFeEvent event = MLBRNFeEvent.registerEvent (nfe, MLBRNFeEvent.LBR_EVENTTYPE_Cancelamento, cancelReason, 1, false, false);
						
						//	Adiciona os dados de autorização de evento
						event.setlbr_NFeProt(infCanc.getNProt());
						event.setDateTrx (new Timestamp (infCanc.getDhRecbto().getTimeInMillis()));
						event.setlbr_NFeStatus(MLBRNFeEvent.LBR_NFESTATUS_135_EventoRegistradoEVinculadoANFC_E);
						event.setStatus (infCanc.getXMotivo ());
						event.setDocStatus(MLBRNFeEvent.DOCSTATUS_Completed);
						event.setDocAction(MLBRNFeEvent.DOCACTION_None);
						event.setProcessed(true);
						event.save ();
						
						//	Cancel NF
						nfe.setVoidInfo (true);
						
						//	Do not reverse documents automatically
						nfe.setLBR_ReverseInOut(false);
						nfe.setLBR_ReverseInvoice(false);
						nfe.save ();
						
						msg.append("<br /><br /><font color=\"008800\">Os dados do protocolo de cancelamento foram atualizados na NFe</font>");
					}
					else
						msg.append("<br /><br />Nota Fiscal já possuí dados do protocolo de cancelamento");
				}
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
