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
import java.util.Properties;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.evento.cce.EnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.cce.ProcEventoNFeDocument;
import br.inf.portalfiscal.nfe.evento.cce.RetEnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.cce.TAmb;
import br.inf.portalfiscal.nfe.evento.cce.TCOrgaoIBGE;
import br.inf.portalfiscal.nfe.evento.cce.TEnvEvento;
import br.inf.portalfiscal.nfe.evento.cce.TEvento;
import br.inf.portalfiscal.nfe.evento.cce.TEvento.InfEvento;
import br.inf.portalfiscal.nfe.evento.cce.TProcEvento;
import br.inf.portalfiscal.nfe.evento.cce.TRetEnvEvento;
import br.inf.portalfiscal.nfe.evento.cce.TretEvento;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

/**
 * 		Model for CC-e
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCCe.java, v1.0 2012/05/13 21:53:21 PM, ralexsander Exp $
 */
public class MLBRCCe extends X_LBR_CCe implements DocAction
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private final String header = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCCe (Properties ctx, int ID, String trx)
	{
		super (ctx,ID,trx);
	}	//	MLBRCCe

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCCe (Properties ctx, ResultSet rs, String trxName)
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

		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
		if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus()))
		{
			m_processMsg = "@Invalid@ @LBR_NotaFiscal_ID@";
			return DocAction.STATUS_Invalid;
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
				
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), nf.getAD_Org_ID(), null);
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);

		//	Dados do Envio
		EnvEventoDocument envDoc = EnvEventoDocument.Factory.newInstance();
		TEnvEvento env = envDoc.addNewEnvEvento();
		env.setVersao(NFeUtil.VERSAO_CCE);
		env.setIdLote(getDocumentNo());
		
		//	Dados do Evento da Carta de Correção
		TEvento evento = env.addNewEvento();
		evento.setVersao(NFeUtil.VERSAO_CCE);
		TEvento.InfEvento cce = evento.addNewInfEvento();
		
		//	Informações do Evento da Carta de Correção
		cce.setCOrgao(TCOrgaoIBGE.Enum.forString(Integer.toString (NFeUtil.getRegionCode (oi))));
		cce.setTpAmb(TAmb.Enum.forString(oiW.getlbr_NFeEnv()));
		cce.setCNPJ(TextUtil.toNumeric (oiW.getlbr_CNPJ()));
		cce.setChNFe(nf.getlbr_NFeID());
		cce.setDhEvento(NFeXMLGenerator.normalizeTZ (getDateDoc()));
		cce.setNSeqEvento(Integer.toString(getSeqNo()));
		cce.setVerEvento(TEvento.InfEvento.VerEvento.X_1_00);
		cce.setTpEvento(TEvento.InfEvento.TpEvento.X_110110);
		
		//	Chave
		String key = "ID" + cce.getTpEvento() + cce.getChNFe() + TextUtil.lPad (cce.getNSeqEvento(), 2);
		cce.setId(key);

		//	Detalhes
		br.inf.portalfiscal.nfe.evento.cce.TEvento.InfEvento.DetEvento det = cce.addNewDetEvento();
		det.setVersao(TEvento.InfEvento.DetEvento.Versao.X_1_00);
		det.setXCorrecao(getDescription().trim());
		det.setDescEvento(InfEvento.DetEvento.DescEvento.CARTA_DE_CORREÇÃO);
		det.setXCondUso(InfEvento.DetEvento.XCondUso.A_CARTA_DE_CORREÇÃO_É_DISCIPLINADA_PELO_1_º_A_DO_ART_7_º_DO_CONVÊNIO_S_N_DE_15_DE_DEZEMBRO_DE_1970_E_PODE_SER_UTILIZADA_PARA_REGULARIZAÇÃO_DE_ERRO_OCORRIDO_NA_EMISSÃO_DE_DOCUMENTO_FISCAL_DESDE_QUE_O_ERRO_NÃO_ESTEJA_RELACIONADO_COM_I_AS_VARIÁVEIS_QUE_DETERMINAM_O_VALOR_DO_IMPOSTO_TAIS_COMO_BASE_DE_CÁLCULO_ALÍQUOTA_DIFERENÇA_DE_PREÇO_QUANTIDADE_VALOR_DA_OPERAÇÃO_OU_DA_PRESTAÇÃO_II_A_CORREÇÃO_DE_DADOS_CADASTRAIS_QUE_IMPLIQUE_MUDANÇA_DO_REMETENTE_OU_DO_DESTINATÁRIO_III_A_DATA_DE_EMISSÃO_OU_DE_SAÍDA);
		
		try
		{
			//	Assinando o documento
			new SignatureUtil (oi, AssinaturaDigital.EVENTO).sign (envDoc, evento.newCursor());

			//	Validação
			NFeUtil.validate (envDoc);
			
			//	XML
			StringBuilder xml = new StringBuilder (envDoc.xmlText (NFeUtil.getXmlOpt()));
			
			//	Procura os endereços para Transmissão
			MLBRNFeWebService ws = MLBRNFeWebService.get (MLBRNFeWebService.RECEPCAOEVENTO, oiW.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, oi.getC_Location().getC_Region_ID());
			
			if (ws == null)
			{
				m_processMsg = "Erro ao transmitir a CC-e. Não foi encontrado um endereço WebServices válido.";
				return DocAction.STATUS_Invalid;
			}
			
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader (new StringReader (header + NFeUtil.wrapMsg (xml.toString ())));

			//	Prepara a Transmissão
			MLBRDigitalCertificate.setCertificate (getCtx(), oi.getAD_Org_ID());
			RecepcaoEventoStub.NfeDadosMsg dadosMsg = RecepcaoEventoStub.NfeDadosMsg.Factory.parse(dadosXML);
			RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecEvento ("" + NFeUtil.getRegionCode (oi));
			RecepcaoEventoStub.setAmbiente (ws.getURL());
			RecepcaoEventoStub stub = new RecepcaoEventoStub();

			//	Resposta do SEFAZ
			String respLote = header + stub.nfeRecepcaoEvento (dadosMsg, cabecMsgE).getExtraElement().toString();
			log.fine (respLote);
			
			//	SchemaTypeLoader necessário, pois o RetEnvEventoDocument existe com a mesma namespace para outros docs
			//		ref. http://ateneatech.com/blog/desenredando-xmlbeans
			SchemaTypeLoader stl = XmlBeans.typeLoaderUnion(new SchemaTypeLoader[]{RetEnvEventoDocument.type.getTypeSystem(), XmlBeans.getContextTypeLoader()});			
			TRetEnvEvento retEnvEvento = ((RetEnvEventoDocument) stl.parse (respLote, null, null)).getRetEnvEvento();
			
			if (!"128".equals (retEnvEvento.getCStat()))
				throw new AdempiereException (retEnvEvento.getXMotivo());
			
			for (TretEvento retEvento : retEnvEvento.getRetEventoArray())
			{
				TretEvento.InfEvento infReturn = retEvento.getInfEvento();
				
				//	CC-e processada com sucesso
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
	
					//	Arquivo de Distribuição
					ProcEventoNFeDocument procEventoNFeDoc = ProcEventoNFeDocument.Factory.newInstance(); 
					TProcEvento procEventoNFe = procEventoNFeDoc.addNewProcEventoNFe();
					procEventoNFe.setVersao (NFeUtil.VERSAO_CCE);
					procEventoNFe.setEvento(evento);
					procEventoNFe.setRetEvento(retEvento);
					
					//	Arquivo de resposta final
					MAttachment attachCCe = createAttachment (true);
					attachCCe.addEntry (cce.getId() + "-cce-dst.xml", (header + procEventoNFeDoc.xmlText(NFeUtil.getXmlOpt())).getBytes());
					attachCCe.save();
				}
				else
					throw new AdempiereException (infReturn.getXMotivo());
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
			m_processMsg = "Erro ao transmitir a CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir a CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão da CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão da CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar a CC-e. O certificado expirou. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar a CC-e. O certificado não é válido para esta data. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = "Erro no processo para gerar CC-e. " + e.getMessage();
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
			int seqNo = DB.getSQLValue (get_TrxName(), "SELECT COALESCE(MAX(SeqNo), 0)+1 AS DefaultValue FROM LBR_CCe WHERE DocStatus IN ('CL','CO') AND LBR_NotaFiscal_ID=?", getLBR_NotaFiscal_ID());
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
		return "MLBRCCe[ID=" + getLBR_CCe_ID() + ", DocStatus='" + getDocStatus() + "']";
	}	//	toString
}	//	MLBRCCe
