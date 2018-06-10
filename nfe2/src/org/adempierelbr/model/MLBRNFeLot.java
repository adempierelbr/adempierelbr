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
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfe.api.NFeAutorizacao4Stub;
import org.adempierelbr.nfe.api.NFeRetAutorizacao4Stub;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.axiom.om.OMAbstractFactory;
import org.apache.axiom.om.OMElement;
import org.apache.axiom.om.OMFactory;
import org.apache.axiom.om.OMText;
import org.apache.axiom.om.util.AXIOMUtil;
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

import br.inf.portalfiscal.nfe.v400.ConsReciNFeDocument;
import br.inf.portalfiscal.nfe.v400.EnviNFeDocument;
import br.inf.portalfiscal.nfe.v400.NFeDocument;
import br.inf.portalfiscal.nfe.v400.RetConsReciNFeDocument;
import br.inf.portalfiscal.nfe.v400.RetEnviNFeDocument;
import br.inf.portalfiscal.nfe.v400.TAmb;
import br.inf.portalfiscal.nfe.v400.TConsReciNFe;
import br.inf.portalfiscal.nfe.v400.TEnviNFe;
import br.inf.portalfiscal.nfe.v400.TNFe;
import br.inf.portalfiscal.nfe.v400.TNFe.InfNFe.Ide.TpEmis;
import br.inf.portalfiscal.nfe.v400.TProtNFe;
import br.inf.portalfiscal.nfe.v400.TRetConsReciNFe;
import br.inf.portalfiscal.nfe.v400.TRetEnviNFe;
import br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao4.NfeDadosMsg;

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

	/**	WS Type 	*/
	private String LBR_WSType = MLBRNFeWebService.LBR_WSTYPE_Normal;
	
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
		if (!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
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
		MLBRNFConfig config = MLBRNFConfig.get(getAD_Org_ID(), getlbr_NFModel());
		
		String envType 	= null;
		
		if (config != null)
			envType = config.getlbr_NFeEnv();			
		//
		if (envType == null || envType.equals(""))
			throw new Exception ("Ambiente da NF-e deve ser preenchido.");
		//
		MLocation orgLoc = new MLocation(getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			throw new Exception ("UF Inválida");

		//	Método síncrono somente para 1 NF
		int count = count();
		if (count == 1 && LBR_NFELOTMETHOD_Synchronous.equals(getLBR_NFeLotMethod()))
			setLBR_NFeLotMethod(LBR_NFELOTMETHOD_Asynchronous);
		
		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());

		//	XML
		OMElement ome = AXIOMUtil.stringToOM (geraLote (envType));
		
		//	Fix CData
		if (LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
			ome = fixCData (ome);
		
		//	Mensagem
		NfeDadosMsg dadosMsg = new NfeDadosMsg();
		dadosMsg.setExtraElement(ome);
		
		String serviceType = null;
		if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
			serviceType = MLBRNFeWebService.AUTORIZACAO;
		
		else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
			serviceType = MLBRNFeWebService.NFCE_AUTORIZACAO;
		
		String url = MLBRNFeWebService.getURL (serviceType, envType, NFeUtil.VERSAO_LAYOUT, LBR_WSType, orgLoc.getC_Region_ID());
		
		NFeAutorizacao4Stub stub = new NFeAutorizacao4Stub(url);

		OMElement nfeAutorizacao = stub.nfeAutorizacaoLote (dadosMsg.getExtraElement());
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
		}
		else if (MLBRNFeLot.LBR_NFEANSWERSTATUS_104_LoteProcessado.equals(cStat))
		{
			setlbr_NFeRecID(retEnviNFe.getInfRec().getNRec());
			//
			Timestamp timestamp = NFeUtil.stringToTime(retEnviNFe.getDhRecbto());
			setDateTrx(timestamp);
			setDateFinish(timestamp);
			setlbr_LotSent(true);
			setlbr_LotReceived(true);
			
			setDocStatus(DOCSTATUS_Completed);
			setDocAction(DOCACTION_None);
			setProcessed(true);
			
			setlbr_NFeRespID(retEnviNFe.getInfRec().getNRec());
			//
			MLBRNotaFiscal.authorizeNFe (retEnviNFe.getProtNFe(), get_TrxName());
		}
		
		save();

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

		/**
		 * 	Força o processamento offline 
		 * 	caso o XML de retorno esteja anexado no lote
		 */
		byte[] attachmentData = getAttachmentData("-pro-rec.xml");
		if (attachmentData != null)
		{
			TRetConsReciNFe retConsReciNFe = RetConsReciNFeDocument.Factory.parse (new String (attachmentData, "UTF-8")).getRetConsReciNFe();
			
			/**
			 * 	Verifica se o lote offline é um lote processado 
			 * ou se ainda depende da resposta da SeFaz.
			 * 	Nos casos onde o lote não foi processado ou houve erro de consumo
			 * o sistema deverá pesquisar o lote novamente na SeFaz.
			 */
			String cStat = retConsReciNFe.getCStat();
			if (!LBR_NFEANSWERSTATUS_105_LoteEmProcessamento.equals(cStat)
					&& !LBR_NFEANSWERSTATUS_641_RejeiçãoConsumoIndevido645.equals(cStat)
					&& !LBR_NFEANSWERSTATUS_656_RejeiçãoConsumoIndevido.equals(cStat))
			{
				processResponse(retConsReciNFe, trxName);
				save();
				return true;
			}
		}
		
		log.fine("Consulta Lote: " + getDocumentNo());
		//
		if (!islbr_LotSent())
		{
			log.log(Level.SEVERE, "LOT not sent yet");
			throw new Exception("LOT not sent yet");
		}
		//
		MOrgInfo oi = MOrgInfo.get(ctx, getAD_Org_ID(), null);
		MLBRNFConfig config = MLBRNFConfig.get(getAD_Org_ID(), getlbr_NFModel());
		
		String envType 	= null;
		
		if (config != null)
			envType = config.getlbr_NFeEnv();		
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
			if (!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
				NFeUtil.validate (consReciNFeDoc);
			
			//	XML
			StringReader xml = new StringReader (NFeUtil.wrapMsg (consReciNFeDoc.xmlText(NFeUtil.getXmlOpt())));
			
			//	Mensagem
			NfeDadosMsg dadosMsg = NfeDadosMsg.Factory.parse (XMLInputFactory.newInstance().createXMLStreamReader(xml));

			String serviceType = null;
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
				serviceType = MLBRNFeWebService.RETAUTORIZACAO;
			
			else if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(getlbr_NFModel()))
				serviceType = MLBRNFeWebService.NFCE_RETAUTORIZACAO;
			
			String url = MLBRNFeWebService.getURL (serviceType, envType, NFeUtil.VERSAO_LAYOUT, LBR_WSType, orgLoc.getC_Region_ID());
			
			NFeRetAutorizacao4Stub stub = new NFeRetAutorizacao4Stub(url);

			OMElement nfeRetAutorizacao = stub.nfeRetAutorizacaoLote (dadosMsg.getExtraElement());
			String respRetAutorizacao = nfeRetAutorizacao.toString();
			
			MAttachment attachLotNFe = createAttachment();
			attachLotNFe.addEntry(getDocumentNo()+"-pro-rec.xml", respRetAutorizacao.getBytes("UTF-8"));
			attachLotNFe.save();
			
			processResponse (respRetAutorizacao, trxName);
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
	 * 	Process the response XML of SeFaz
	 * 
	 * @param respRetAutorizacao
	 * @param trxName
	 * @throws XmlException
	 * @throws Exception
	 */
	private void processResponse (String respRetAutorizacao, String trxName) throws XmlException, Exception
	{
		TRetConsReciNFe retConsReciNFe = RetConsReciNFeDocument.Factory.parse (respRetAutorizacao).getRetConsReciNFe();
		processResponse (retConsReciNFe, trxName);
	}	//	processResponse

	/**
	 * 	Process the response XML of SeFaz
	 * 
	 * @param respRetAutorizacao
	 * @param trxName
	 * @throws XmlException
	 * @throws Exception
	 */
	private void processResponse (TRetConsReciNFe retConsReciNFe, String trxName) throws XmlException, Exception
	{
		String cStat = retConsReciNFe.getCStat();
		try
		{
			setlbr_NFeAnswerStatus(cStat);
		}
		catch (Exception e) {}
		//
		
		if (!LBR_NFEANSWERSTATUS_105_LoteEmProcessamento.equals(cStat)
				&& !LBR_NFEANSWERSTATUS_641_RejeiçãoConsumoIndevido645.equals(cStat)
				&& !LBR_NFEANSWERSTATUS_656_RejeiçãoConsumoIndevido.equals(cStat))
		{
			setDocStatus(DOCSTATUS_Completed);
			setDocAction(DOCACTION_None);
			setlbr_LotReceived(true);
			setProcessed(true);
			
			setlbr_NFeRespID(retConsReciNFe.getNRec());
			setDateFinish(NFeUtil.stringToTime(retConsReciNFe.getDhRecbto()));
			//
			TProtNFe[] protNFes = retConsReciNFe.getProtNFeArray();
			
			//	Processa as NFes
			if (protNFes != null && protNFes.length > 0)
				for (TProtNFe protNFe : retConsReciNFe.getProtNFeArray())
				{
					MLBRNotaFiscal.authorizeNFe (protNFe, trxName);
				}	//	for
			
			//	Libera as NFs para envio em outro lote
			else
			{
				List<MLBRNotaFiscal> nfs = new Query (Env.getCtx(),MLBRNotaFiscal.Table_Name, COLUMNNAME_LBR_NFeLot_ID + "=?", get_TrxName())
					.setParameters(getLBR_NFeLot_ID()).list();
				//
				for (MLBRNotaFiscal nf : nfs)
				{
					nf.setLBR_NFeLot_ID(0);
					nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Invalid);
					nf.setDocAction(MLBRNotaFiscal.DOCACTION_Complete);
					nf.setProcessed(false);
					nf.save();
				}
			}
		}	//	if
	}

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
	 		
	 		//	Tipo de Emissão
	 		TpEmis.Enum tpEmis = null;
	 		
	 		for (MAttachmentEntry entry : attachment.getEntries())
	 		{
	 			//	Check if attachment is a NFe
	 			if (entry != null && entry.getName().endsWith (NFeXMLGenerator.FILE_EXT))
	 			{
	 				NFeDocument nfeDoc = NFeDocument.Factory.parse (entry.getInputStream());
	 				nfeList.add(nfeDoc.getNFe());
	 				
	 				TpEmis.Enum currentTPEmis = nfeDoc.getNFe().getInfNFe().getIde().getTpEmis();
	 				
	 				if (tpEmis != null && !tpEmis.equals(currentTPEmis))
	 					throw new AdempiereException ("Tipo de Emissão da NF-e Inválido (SVC e Normal no mesmo lote)");
	 				
	 				tpEmis = currentTPEmis;
	 			}
	 		}
	 		
	 		if (tpEmis != null && (tpEmis.equals(TpEmis.X_6)
	 				|| tpEmis.equals(TpEmis.X_7)))
	 			LBR_WSType = MLBRNFeWebService.LBR_WSTYPE_SCAN;
	 		
	 		else
	 			LBR_WSType = MLBRNFeWebService.LBR_WSTYPE_Normal;
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
		setProcessed(false);
		return true;
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
	
	/**
	 * 	Count how many NF in this lot
	 * 	@return
	 */
	private int count()
	{
		int retVal = DB.getSQLValue(get_TrxName(), "SELECT COUNT(*) FROM LBR_NotaFiscal WHERE LBR_NFeLot_ID=?", getLBR_NFeLot_ID());
		return retVal;
	}
	
	private OMElement fixCData(final OMElement ome) 
	{
		Iterator<?> children = ome.getChildrenWithLocalName("NFe");
		while (children.hasNext())
		{
			OMElement omElementNFe = (OMElement) children.next();
			if ((omElementNFe != null) && ("NFe".equals(omElementNFe.getLocalName())))
			{
//				omElementNFe.addAttribute("xmlns","http://www.portalfiscal.inf.br/nfe", null);
				OMFactory f = OMAbstractFactory.getOMFactory();

				Iterator<?> itInfSupl = omElementNFe.getChildrenWithLocalName("infNFeSupl");
				while (itInfSupl.hasNext())
				{
					Object elementInfSupl = itInfSupl.next();
					if (elementInfSupl instanceof OMElement)
					{
						OMElement omElementInfSupl = (OMElement) elementInfSupl;
						Iterator<?> itqrCode = omElementInfSupl.getChildrenWithLocalName("qrCode");
						while (itqrCode.hasNext())
						{
							Object elementQrCode = itqrCode.next();
							if (elementQrCode instanceof OMElement)
							{
								OMElement omElementQrCode = (OMElement) elementQrCode;
								OMText omt = f.createOMText(omElementQrCode.getText(), OMElement.CDATA_SECTION_NODE);
								omElementQrCode.setText("");
								omElementQrCode.addChild(omt);
							}
						}
					}
				}
			}
		}
		return ome;
	}
}	//	MNFeLot
