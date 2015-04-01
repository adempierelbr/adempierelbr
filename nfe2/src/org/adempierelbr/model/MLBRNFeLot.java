/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil					  *
 * This program is free software; you can redistribute it and/or modify it	*
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.					   *
 * You should have received a copy of the GNU General Public License along	*
 * with this program; if not, write to the Free Software Foundation, Inc.,	*
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					 *
 *****************************************************************************/
package org.adempierelbr.model;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfe.api.NfeAutorizacaoStub;
import org.adempierelbr.nfe.api.NfeRetAutorizacaoStub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.axiom.om.OMElement;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v8f.ConsReciNFeDocument;
import br.inf.portalfiscal.nfe.v8f.EnviNFeDocument;
import br.inf.portalfiscal.nfe.v8f.NFeDocument;
import br.inf.portalfiscal.nfe.v8f.RetConsReciNFeDocument;
import br.inf.portalfiscal.nfe.v8f.RetEnviNFeDocument;
import br.inf.portalfiscal.nfe.v8f.TAmb;
import br.inf.portalfiscal.nfe.v8f.TConsReciNFe;
import br.inf.portalfiscal.nfe.v8f.TEnviNFe;
import br.inf.portalfiscal.nfe.v8f.TNFe;
import br.inf.portalfiscal.nfe.v8f.TProtNFe;
import br.inf.portalfiscal.nfe.v8f.TRetConsReciNFe;
import br.inf.portalfiscal.nfe.v8f.TRetEnviNFe;
import br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeCabecMsg;
import br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeCabecMsgE;
import br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeDadosMsg;

/**
 *	Model for LBR_NFeLot
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *	@version $Id: MNFeLot.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class MLBRNFeLot extends X_LBR_NFeLot implements DocAction, DocOptions
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	private static final String lote = "NFe Lote ";

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(MLBRNFeLot.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeLot (Properties ctx, int ID, String trxName)
	{
		super(ctx, ID, trxName);
	}	//	MLBRNFeLot

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeLot (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFeLot

	/**
	 * 	Gera o arquivo de Lote
	 *
	 * @param String envType
	 * @return String lot
	 * @throws Exception
	 */
	private String geraLote (String envType) throws Exception
	{
		log.fine ("Gera Lote: " + envType);
		//
		EnviNFeDocument enviNFeDoc = EnviNFeDocument.Factory.newInstance();
		TEnviNFe enviNFe = enviNFeDoc.addNewEnviNFe();
		enviNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
		enviNFe.setIdLote(getDocumentNo());
		enviNFe.setIndSinc(TEnviNFe.IndSinc.Enum.forString(getLBR_NFeLotMethod ()));
		enviNFe.setNFeArray(getNFeDocuments());

		//	Valida o XML
		NFeUtil.validate(enviNFeDoc);
		
		//	XML do Lote
		String xmlText = enviNFeDoc.xmlText(NFeUtil.getXmlOpt());

		//
		return xmlText;
	}	//	gerarLote

	/**
	 * 	Envia Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public boolean enviaLoteNFe() throws Exception
	{
		Properties ctx = getCtx();

		log.fine("Envia Lote: " + getDocumentNo());

		MOrgInfo oi = MOrgInfo.get(ctx, getAD_Org_ID(), null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			throw new Exception ("Ambiente da NF-e deve ser preenchido.");
		//
		MLocation orgLoc = new MLocation(getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			throw new Exception ("UF Inválida");

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());

		//	XML
		StringReader xml = new StringReader (NFeUtil.wrapMsg (geraLote (envType)));
		
		//	Mensagem
		NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
		
		//	Cabeçalho
		NfeCabecMsg cabecMsg = new NfeCabecMsg ();
		cabecMsg.setCUF(region);
		cabecMsg.setVersaoDados(NFeUtil.VERSAO_LAYOUT);

		NfeCabecMsgE cabecMsgE = new NfeCabecMsgE ();
		cabecMsgE.setNfeCabecMsg(cabecMsg);
		
		String url = MLBRNFeWebService.getURL (MLBRNFeWebService.AUTORIZACAO, envType, NFeUtil.VERSAO_LAYOUT, orgLoc.getC_Region_ID());
		NfeAutorizacaoStub.setAmbiente(url);
		NfeAutorizacaoStub stub = new NfeAutorizacaoStub();

		OMElement nfeAutorizacao = stub.nfeAutorizacaoLote (dadosMsg.getExtraElement(), cabecMsgE);
		String respAutorizacao = nfeAutorizacao.toString();
		//	
		MAttachment attachLotNFe = createAttachment();
		attachLotNFe.addEntry(getDocumentNo()+"-rec.xml", respAutorizacao.getBytes("UTF-8"));
		attachLotNFe.save();
		//
		TRetEnviNFe retEnviNFe = RetEnviNFeDocument.Factory.parse(respAutorizacao).getRetEnviNFe();
		//
		String cStat = retEnviNFe.getCStat();
		
		try
        {
			setlbr_NFeStatus(cStat);
        }
        catch (IllegalArgumentException e)
        {
        	e.printStackTrace();
        }
		
		if (LBR_NFELOTMETHOD_Synchronous.equals (getLBR_NFeLotMethod())
				&& retEnviNFe.getProtNFe() == null)
			setLBR_NFeLotMethod (LBR_NFELOTMETHOD_Asynchronous);		//	Método Síncrono não suportado
		
		if (MLBRNFeLot.LBR_NFEANSWERSTATUS_103_LoteRecebidoComSucesso.equals(cStat))
		{
			setlbr_NFeRecID(retEnviNFe.getInfRec().getNRec());
			//
			Timestamp timestamp = NFeUtil.stringToTime(retEnviNFe.getDhRecbto());
			setDateTrx(timestamp);
			setlbr_LotSent(true);
			setDocStatus(DOCSTATUS_WaitingConfirmation);
			setDocAction(DOCACTION_Complete);
			save();
		}
		
		return true;
	}	//	enviaLoteNFe

	/**
	 * 	Consulta Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public boolean consultaLoteNFe () throws Exception
	{
		Properties ctx = getCtx();
		String trxName = get_TrxName();

		log.fine("Consulta Lote: " + getDocumentNo());
		//
		if (!islbr_LotSent())
		{
			log.log(Level.SEVERE, "LOT not sent yet");
			throw new Exception("LOT not sent yet");
		}
		//
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx), null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			throw new Exception ("Ambiente da NF-e deve ser preenchido.");
		//
		MLocation orgLoc = new MLocation(getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			throw new Exception ("UF Inválida");

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		//
		try
		{
			ConsReciNFeDocument consReciNFeDoc = ConsReciNFeDocument.Factory.newInstance();
			TConsReciNFe consReciNFe = consReciNFeDoc.addNewConsReciNFe();
			consReciNFe.setNRec(getlbr_NFeRecID());
			consReciNFe.setTpAmb(TAmb.Enum.forString(envType));
			consReciNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
			
			//	Validate
			NFeUtil.validate (consReciNFeDoc);
			
			//	XML
			StringReader xml = new StringReader (NFeUtil.wrapMsg (consReciNFeDoc.xmlText(NFeUtil.getXmlOpt())));
			
			//	Mensagem
			NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));
			
			//	Cabeçalho
			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsg cabecMsg = new br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsg ();
			cabecMsg.setCUF(region);
			cabecMsg.setVersaoDados(NFeUtil.VERSAO_LAYOUT);

			br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE cabecMsgE = new br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeCabecMsgE ();
			cabecMsgE.setNfeCabecMsg(cabecMsg);

			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.RETAUTORIZACAO, envType, NFeUtil.VERSAO_LAYOUT, orgLoc.getC_Region_ID());
			NfeRetAutorizacaoStub stub = new NfeRetAutorizacaoStub(url);

			OMElement nfeRetAutorizacao = stub.nfeRetAutorizacaoLote (dadosMsg.getExtraElement(), cabecMsgE);
			String respRetAutorizacao = nfeRetAutorizacao.toString();
			
			MAttachment attachLotNFe = createAttachment();
			attachLotNFe.addEntry(getDocumentNo()+"-pro-rec.xml", respRetAutorizacao.getBytes("UTF-8"));
			attachLotNFe.save();
			
			TRetConsReciNFe retConsReciNFe = RetConsReciNFeDocument.Factory.parse (respRetAutorizacao).getRetConsReciNFe();
			//
			String cStat = retConsReciNFe.getCStat();
			setlbr_NFeAnswerStatus(cStat);
			//
			
			if (LBR_NFEANSWERSTATUS_104_LoteProcessado.equals(cStat)
				|| LBR_NFEANSWERSTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeE.equals(cStat))
			{	
				//	Lote Processado ou 999 Erro não catalogado
				//	Marcar como processado somente em 104 ou 999
				setDocStatus(DOCSTATUS_Completed);
				setDocAction(DOCACTION_None);
				setlbr_LotReceived(true);
				setProcessed(true);
				
				setlbr_NFeRespID(retConsReciNFe.getNRec());
				setDateFinish(NFeUtil.stringToTime(retConsReciNFe.getDhRecbto()));
				//
				for (TProtNFe protNFe : retConsReciNFe.getProtNFeArray())
				{
					MLBRNotaFiscal.authorizeNFe (protNFe, trxName);
				}	//	for
			}	//	if
			//
			save();
		}
		catch (Throwable e)
		{
			log.severe(e.getLocalizedMessage());
			e.printStackTrace();
			return false;
		}

		return true;
	}	//	consultaNFe

	/**
	 * 	Release NF before deletion
	 */
	protected boolean beforeDelete()
	{
		if (islbr_LotSent())
		{
			log.log(Level.SEVERE, "LOT sent. Can not be deleted");
			return false;
		}
		else
		{
			String sql = "UPDATE LBR_NotaFiscal SET LBR_NFeLot_ID = null " +
					"WHERE LBR_NFeLot_ID = ?";

			if (DB.executeUpdate(sql, get_ID(), get_TrxName()) == -1)
				return false;
		}

		return true;
	}	//	beforeDelete

	/**
	 * 	Before Save
	 */
	protected boolean beforeSave(boolean newRecord)
	{
		if (newRecord && (getName() == null || getName().trim().equals("")))
		{
			String documentno = DB.getDocumentNo(getAD_Client_ID(), p_info.getTableName(), get_TrxName(), this);
			setDocumentNo(documentno);
			setName(lote + documentno);
		}

		return true;
	}	//	beforeSave

	/**
	 * 	Check if lot is empty
	 * 	@return
	 */
	public boolean isEmpty ()
	{
		int count = DB.getSQLValue(null,
				"SELECT COUNT(*) FROM LBR_NotaFiscal WHERE LBR_NFeLot_ID=?", getLBR_NFeLot_ID());
		//
		if (count > 0)
			return false;
		else
			return true;
	}	//	isEmpty

	/**
	 * 	Get NFe Document from Attachment
	 * 
	 * @return TNFe[] List os NF-e documents
	 * @throws IOException 
	 * @throws XmlException 
	 */
	private TNFe[] getNFeDocuments () throws XmlException, IOException
	{
		List<TNFe> nfeList = new ArrayList<TNFe>();
		String whereClause = "LBR_NFeLot_ID=?";
		//
		MTable table = MTable.get(getCtx(), MLBRNotaFiscal.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NFeLot_ID()});
	 		  query.setOrderBy("DocumentNo, LBR_NotaFiscal_ID");
		//
	 	List<MLBRNotaFiscal> list = query.list();
	 	//
	 	for (MLBRNotaFiscal NF : list)
	 	{
	 		if (NF == null)
	 			continue;

	 		MAttachment attachment = NF.getAttachment(true);
	 		
	 		if (attachment == null)
	 			continue;
	 		
	 		for (MAttachmentEntry entry : attachment.getEntries())
	 		{
	 			//	Check if attachment is a NFe
	 			if (entry != null && entry.getName().endsWith (NFeXMLGenerator.FILE_EXT))
	 			{
	 				NFeDocument nfeDoc = NFeDocument.Factory.parse (entry.getInputStream());
	 				nfeList.add(nfeDoc.getNFe());
	 			}
	 		}
	 	}
	 	
	 	//	Convert to Array
	 	TNFe[] nfes = new TNFe[nfeList.size()];
	 	nfeList.toArray(nfes);
		return nfes;
	}	//	getXMLs

/**			DocAction		*/
	
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
		
		//	Do not allow return to Invalid if Lot is already sent
		if (!DOCSTATUS_WaitingConfirmation.equals (getDocStatus()))
		{
			
			m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
			if (m_processMsg != null)
				return DocAction.STATUS_Invalid;
			
			if (isEmpty())
			{
				m_processMsg = "Lote vazio";
				return DocAction.STATUS_Invalid;
			}
			
			m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
			if (m_processMsg != null)
				return DocAction.STATUS_Invalid;
		}
		
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
				
		try
		{
			//	Process Return
			if (DOCSTATUS_WaitingConfirmation.equals (getDocStatus()))
			{
				consultaLoteNFe();
			}
				
			else if (TextUtil.match (getDocStatus(), DOCSTATUS_NotApproved, DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
			{
				enviaLoteNFe();
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = e.getMessage();
			//
			return getDocStatus();
		}

		return getDocStatus();
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		
		if (!TextUtil.match (getDocStatus(), DOCSTATUS_Completed, DOCSTATUS_WaitingConfirmation))
		{
			setProcessed (true);
			setDocAction (DOCACTION_None);
			return true;
		}
		return true;
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

		setDocStatus(DOCSTATUS_InProgress);
//		setDocAction(DOCACTION_Complete);
		setProcessed(false);
//		if (reverseCorrectIt())
			return true;
//		return false;
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
		if (m_processMsg == null)
			m_processMsg = "";

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
	 * 	Status
	 */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		if (DOCSTATUS_Drafted.equals(docStatus)
				|| DOCSTATUS_InProgress.equals(docStatus)
				|| DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Void;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=2;
		}
		else if (DOCSTATUS_WaitingConfirmation.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = null;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=1;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = null;
			options[1] = null;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=0;
		}
		//
		return index;
	}	//	docStatus
}	//	MNFeLot
