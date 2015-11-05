/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.model;

import java.io.File;
import java.io.StringReader;
import java.math.BigDecimal;
import java.rmi.RemoteException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfe.api.RecepcaoEventoStub;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.evento.generico.EnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.generico.ProcEventoNFeDocument;
import br.inf.portalfiscal.nfe.evento.generico.RetEnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.generico.TAmb;
import br.inf.portalfiscal.nfe.evento.generico.TCOrgaoIBGE;
import br.inf.portalfiscal.nfe.evento.generico.TEnvEvento;
import br.inf.portalfiscal.nfe.evento.generico.TEvento;
import br.inf.portalfiscal.nfe.evento.generico.TProcEvento;
import br.inf.portalfiscal.nfe.evento.generico.TRetEnvEvento;
import br.inf.portalfiscal.nfe.evento.generico.TRetEvento;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.NfeCabecMsg;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.NfeCabecMsgE;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.NfeDadosMsg;

/**
 * 		Model for Events
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCCe.java, v1.0 2012/05/13 21:53:21 PM, ralexsander Exp $
 */
public class MLBRNFeEvent extends X_LBR_NFeEvent implements DocAction
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeEvent (Properties ctx, int ID, String trx)
	{
		super (ctx,ID,trx);
	}	//	MLBRCCe

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeEvent (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCCe
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		return null;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	private boolean 	m_updateNFe = true;

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		//	Validação da NF-e
		if (getLBR_NotaFiscal_ID() > 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
			if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus()))
			{
				m_processMsg = "@Invalid@ @LBR_NotaFiscal_ID@";
				return DocAction.STATUS_Invalid;
			}
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		m_justPrepared = true;

		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		//	Re-Check
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		log.info(toString());
		
		String xmlExtension = ".xml";
				
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), getAD_Org_ID(), null);
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
		int p_Org_Region_ID = oi.getC_Location().getC_Region_ID();
		
		try
		{
			//	Dados do Envio
			EnvEventoDocument envDoc = EnvEventoDocument.Factory.newInstance();
			TEnvEvento env = envDoc.addNewEnvEvento();
			env.setVersao(NFeUtil.VERSAO_EVENTO);
			env.setIdLote(getDocumentNo());
			
			//	Dados do Evento da Carta de Correção
			TEvento evento = env.addNewEvento();
			evento.setVersao(NFeUtil.VERSAO_EVENTO);
			TEvento.InfEvento infEv = evento.addNewInfEvento();
			
			//	Informações do Evento da Carta de Correção
			infEv.setCOrgao(TCOrgaoIBGE.Enum.forString(Integer.toString (NFeUtil.getRegionCode (oi))));
			infEv.setTpAmb(TAmb.Enum.forString(oiW.getlbr_NFeEnv()));
			infEv.setCNPJ(TextUtil.toNumeric (oiW.getlbr_CNPJ()));
			infEv.setChNFe(getlbr_NFeID());
			infEv.setDhEvento(NFeXMLGenerator.normalizeTZ (getDateDoc()));
			infEv.setNSeqEvento(Integer.toString(getSeqNo()));
			infEv.setVerEvento("1.00");
			infEv.setTpEvento(getLBR_EventType());
			
			//	Chave
			String key = "ID" + infEv.getTpEvento() + infEv.getChNFe() + TextUtil.lPad (infEv.getNSeqEvento(), 2);
			infEv.setId(key);
	
			XmlObject det = null;
			
			//	Evento de cancelamento
			if (LBR_EVENTTYPE_Cancelamento.equals(getLBR_EventType()))
			{
				br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.Factory.newInstance();
				br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento detCan = detDoc.addNewDetEvento();
				//
				if (getDescription() != null)
					detCan.setXJust(getDescription().trim());	
				//
				detCan.setVersao(br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento.Versao.X_1_00);
				detCan.setDescEvento(br.inf.portalfiscal.nfe.evento.cancelamento.DetEventoDocument.DetEvento.DescEvento.CANCELAMENTO);
				detCan.setNProt(getLBR_NotaFiscal().getlbr_NFeProt());
				//
				xmlExtension = "-can-dst.xml";
				NFeUtil.validate (detCan);
				det = detCan;
			}
			
			//	Carta de Correção
			else if (LBR_EVENTTYPE_CartaDeCorrecao.equals(getLBR_EventType()))
			{
				br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.Factory.newInstance();
				br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento detCCe = detDoc.addNewDetEvento();
				//
				detCCe.setVersao(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.Versao.X_1_00);
				detCCe.setXCorrecao(getDescription().trim());
				detCCe.setDescEvento(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.DescEvento.CARTA_DE_CORREÇÃO);
				detCCe.setXCondUso(br.inf.portalfiscal.nfe.evento.cce.DetEventoDocument.DetEvento.XCondUso.A_CARTA_DE_CORREÇÃO_É_DISCIPLINADA_PELO_1_º_A_DO_ART_7_º_DO_CONVÊNIO_S_N_DE_15_DE_DEZEMBRO_DE_1970_E_PODE_SER_UTILIZADA_PARA_REGULARIZAÇÃO_DE_ERRO_OCORRIDO_NA_EMISSÃO_DE_DOCUMENTO_FISCAL_DESDE_QUE_O_ERRO_NÃO_ESTEJA_RELACIONADO_COM_I_AS_VARIÁVEIS_QUE_DETERMINAM_O_VALOR_DO_IMPOSTO_TAIS_COMO_BASE_DE_CÁLCULO_ALÍQUOTA_DIFERENÇA_DE_PREÇO_QUANTIDADE_VALOR_DA_OPERAÇÃO_OU_DA_PRESTAÇÃO_II_A_CORREÇÃO_DE_DADOS_CADASTRAIS_QUE_IMPLIQUE_MUDANÇA_DO_REMETENTE_OU_DO_DESTINATÁRIO_III_A_DATA_DE_EMISSÃO_OU_DE_SAÍDA);
				//
				xmlExtension = "-cce-dst.xml";
				NFeUtil.validate (detCCe);
				det = detCCe;
			}
			
			//	Manifestação do Destinatário
			else if (getLBR_EventType().startsWith("2102"))	//	Manifesto
			{
				br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument detDoc = br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.Factory.newInstance();
				br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento detManif = detDoc.addNewDetEvento();
				//
				detManif.setVersao(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.Versao.X_1_00);
				detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.Enum.forString(getLBR_EventType()));
				
				if (LBR_EVENTTYPE_CienciaDaOperacao.equals(getLBR_EventType()))
					detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.CIENCIA_DA_OPERACAO);
				
				else if (LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(getLBR_EventType()))
					detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.CONFIRMACAO_DA_OPERACAO);
				
				else if (LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(getLBR_EventType()))
					detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.DESCONHECIMENTO_DA_OPERACAO);
				
				else if (LBR_EVENTTYPE_OperacaoNaoRealizada.equals(getLBR_EventType()))
				{
					detManif.setXJust(getDescription().trim());
					detManif.setDescEvento(br.inf.portalfiscal.nfe.evento.manifestadest.DetEventoDocument.DetEvento.DescEvento.OPERACAO_NAO_REALIZADA);
					NFeUtil.validate (detManif);
				}
				else
					throw new AdempiereException ("Evento não suportado");
				
				//	Manifesto - Ambiente Nacional
				infEv.setCOrgao(TCOrgaoIBGE.Enum.forString(Integer.toString (91)));
				p_Org_Region_ID = 0;
				//
				xmlExtension = "-manif.xml";
				det = detManif;
			}
			
			//	Detalhes do Evento
			if (det == null)
				return "@Error@ Detalhes do Evento não encontrado";
			
			XmlCursor detCursor = det.newCursor();
			detCursor.toStartDoc();
			detCursor.toNextToken();
			
			//	Move o XML do Detalhe do Evento
			XmlCursor rootCursor = infEv.newCursor();
			rootCursor.toEndToken();
			detCursor.copyXml(rootCursor);
			
			//	Assinando o documento
			new SignatureUtil (oi, SignatureUtil.EVENTO).sign (envDoc, evento.newCursor());

			//	Validação
			NFeUtil.validate (envDoc);
			
			//	XML
			StringBuilder xml = new StringBuilder (envDoc.xmlText (NFeUtil.getXmlOpt()));
			
			//	Procura os endereços para Transmissão
			MLBRNFeWebService ws = MLBRNFeWebService.get (MLBRNFeWebService.RECEPCAOEVENTO, oiW.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, p_Org_Region_ID);
			
			if (ws == null)
			{
				m_processMsg = "Erro ao transmitir o Evento da NF-e. Não foi encontrado um endereço WebServices válido.";
				return DocAction.STATUS_Invalid;
			}
			
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader (new StringReader (NFeUtil.XML_HEADER + NFeUtil.wrapMsg (xml.toString ())));

			//	Prepara a Transmissão
			MLBRDigitalCertificate.setCertificate (getCtx(), oi.getAD_Org_ID());
			NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse(dadosXML);
			
			NfeCabecMsg cabecMsg = new NfeCabecMsg();
			cabecMsg.setCUF("" + NFeUtil.getRegionCode (oi));
			cabecMsg.setVersaoDados(NFeUtil.VERSAO_EVENTO);
			
			NfeCabecMsgE cabecMsgE = new NfeCabecMsgE();
			cabecMsgE.setNfeCabecMsg(cabecMsg);
			
			RecepcaoEventoStub stub = new RecepcaoEventoStub(ws.getURL());

			//	Resposta do SEFAZ
			String respLote = NFeUtil.XML_HEADER + stub.nfeRecepcaoEvento (dadosMsg.getExtraElement(), cabecMsgE).toString();
			log.fine (respLote);
			
			//	SchemaTypeLoader necessário, pois o RetEnvEventoDocument existe com a mesma namespace para outros docs
			//		ref. http://ateneatech.com/blog/desenredando-xmlbeans
			SchemaTypeLoader stl = XmlBeans.typeLoaderUnion(new SchemaTypeLoader[]{RetEnvEventoDocument.type.getTypeSystem(), XmlBeans.getContextTypeLoader()});			
			TRetEnvEvento retEnvEvento = ((RetEnvEventoDocument) stl.parse (respLote, null, null)).getRetEnvEvento();
			
			if (!"128".equals (retEnvEvento.getCStat()))
				throw new AdempiereException (retEnvEvento.getXMotivo());
			
			for (TRetEvento retEvento : retEnvEvento.getRetEventoArray())
			{
				TRetEvento.InfEvento infReturn = retEvento.getInfEvento();
				
				//	Evento processada com sucesso
				String cStat = infReturn.getCStat();
				
				if ("135".equals (cStat) || "136".equals (cStat))
				{
					try
					{
						setlbr_NFeStatus (cStat);	
					}
					catch (Exception e) {}
					
					setDateTrx (NFeUtil.stringToTime (infReturn.getDhRegEvento()));
					setStatus (infReturn.getXMotivo ());
					setlbr_CNPJ (infReturn.getCNPJDest ());
					setlbr_CPF (infReturn.getCPFDest ());
					setlbr_NFeProt (infReturn.getNProt ());
					setEMail (infReturn.getEmailDest ());
					saveEx ();
					
					//	Marca a NF como cancelada
					if (LBR_EVENTTYPE_Cancelamento.equals (infReturn.getTpEvento())
							&& m_updateNFe)
					{
						MLBRNotaFiscal nfe = MLBRNotaFiscal.getNFe(infReturn.getChNFe(), get_TrxName());
						
						if (nfe != null)
						{
							nfe.setVoidInfo (true);
							nfe.save();
						}
					}
	
					//	Arquivo de Distribuição
					ProcEventoNFeDocument procEventoNFeDoc = ProcEventoNFeDocument.Factory.newInstance(); 
					TProcEvento procEventoNFe = procEventoNFeDoc.addNewProcEventoNFe();
					procEventoNFe.setVersao (NFeUtil.VERSAO_EVENTO);
					procEventoNFe.setEvento(evento);
					procEventoNFe.setRetEvento(retEvento);
					
					//	Arquivo de resposta final
					MAttachment attachEvent = createAttachment (true);
					attachEvent.addEntry (infEv.getId() + xmlExtension, (NFeUtil.XML_HEADER + procEventoNFeDoc.xmlText(NFeUtil.getXmlOpt())).getBytes("UTF-8"));
					attachEvent.save();
				}
				else
				{
					log.severe("XML Sent: " + xml + "\nXML Response: " + respLote);
					throw new AdempiereException (infReturn.getCStat() + " - " + infReturn.getXMotivo());
				}
			}
		}
		catch (AdempiereException e)
		{
			e.printStackTrace();
			m_processMsg = "Problema com o processamento do lote pela SEFAZ: " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (SSLException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado expirou. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado não é válido para esta data. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = "Erro no processo para gerar o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
	
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_None);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		
		if (!DOCSTATUS_Completed.equals(getDocStatus()))
		{
			setProcessed (true);
			setDocAction (DOCACTION_None);
			return true;
		}
		return closeIt();
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());

		if (reverseCorrectIt())
			return true;
		return false;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord)
		{
			int seqNo = DB.getSQLValue (get_TrxName(), "SELECT COALESCE(MAX(SeqNo), 0)+1 AS DefaultValue "
					+ "FROM LBR_NFeEvent "
					+ "WHERE DocStatus IN ('CL','CO') "
					+ "AND LBR_NFeID=? "
					+ "AND LBR_EventType=?", getlbr_NFeID(), getLBR_EventType());	
			//
			setSeqNo (seqNo);
		}
		return true;
	}	//	beforeSave
	
	/**
	 *	
	 */
	public String toString() 
	{
		return "MLBRNFeEvent[ID=" + getLBR_NFeEvent_ID() + ", Key='" + getlbr_NFeID() + "', Type='" + getLBR_EventType() + "', DocStatus='" + getDocStatus() + "']";
	}	//	toString
	
	/**
	 * 	Registrar evento
	 * @param nf
	 * @param eventType
	 * @param desc
	 * @param seqNo
	 * @throws AdempiereException
	 */
	public static void registerEvent (MLBRNotaFiscal nf, String eventType, String desc, int seqNo, boolean updateNFe) throws AdempiereException
	{
		MLBRNFeEvent event = new MLBRNFeEvent (nf.getCtx(), 0, nf.get_TrxName());
		event.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
		event.setlbr_NFeID(nf.getlbr_NFeID());
		event.setLBR_EventType(eventType);
		event.setDescription(desc);
		event.setDateDoc(new Timestamp (System.currentTimeMillis()));
		event.setSeqNo(seqNo);
		event.saveEx();
		//
		event.m_updateNFe = updateNFe;
		//
		if (event.processIt(DOCACTION_Complete))
		{
			event.setDocStatus(DOCSTATUS_Completed);
			event.setDocAction(DOCACTION_None);
			event.save();
		}
		else
		{
			throw new AdempiereException ("Falha ao completar o registro do evento. " + event.getProcessMsg());
		}
	}	//	registerEvent
}	//	MLBRNFeEvent
