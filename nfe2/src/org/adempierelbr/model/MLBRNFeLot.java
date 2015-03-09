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

import java.io.IOException;
import java.io.StringReader;
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
import org.apache.axiom.om.OMElement;
import org.apache.xmlbeans.XmlException;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.ConsReciNFeDocument;
import br.inf.portalfiscal.nfe.EnviNFeDocument;
import br.inf.portalfiscal.nfe.NFeDocument;
import br.inf.portalfiscal.nfe.RetConsReciNFeDocument;
import br.inf.portalfiscal.nfe.RetEnviNFeDocument;
import br.inf.portalfiscal.nfe.TAmb;
import br.inf.portalfiscal.nfe.TConsReciNFe;
import br.inf.portalfiscal.nfe.TEnviNFe;
import br.inf.portalfiscal.nfe.TNFe;
import br.inf.portalfiscal.nfe.TProtNFe;
import br.inf.portalfiscal.nfe.TRetConsReciNFe;
import br.inf.portalfiscal.nfe.TRetEnviNFe;
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
public class MLBRNFeLot extends X_LBR_NFeLot
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	private static final String lote = "NFe Lote ";
	
	private static final String FILE_EXT = "-env-lot.xml";

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
	public String geraLote (String envType) throws Exception
	{
		log.fine ("Gera Lote: " + envType);
		//
		EnviNFeDocument enviNFeDoc = EnviNFeDocument.Factory.newInstance();
		TEnviNFe enviNFe = enviNFeDoc.addNewEnviNFe();
		enviNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
		enviNFe.setIdLote(getDocumentNo());
		enviNFe.setIndSinc(TEnviNFe.IndSinc.X_0);	//	Assíncrono
		enviNFe.setNFeArray(getNFeDocuments());

		//	Valida o XML
		NFeUtil.validate(enviNFeDoc);
		
		//	XML do Lote
		String xmlText = enviNFeDoc.xmlText(NFeUtil.getXmlOpt());
		
		MAttachment attachLotNFe = createAttachment();
		attachLotNFe.addEntry(getDocumentNo() + FILE_EXT, xmlText.getBytes());
		attachLotNFe.save();
		//
		return xmlText;
	}	//	gerarLote

	/**
	 * 	Envia Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public String enviaLoteNFe() throws Exception
	{
		Properties ctx = getCtx();

		log.fine("Envia Lote: " + getDocumentNo());

		MOrgInfo oi = MOrgInfo.get(ctx, getAD_Org_ID(), null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		MLocation orgLoc = new MLocation(getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());

		try
		{
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

			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.RECEPCAO, envType, NFeUtil.VERSAO_LAYOUT, orgLoc.getC_Region_ID());
			NfeAutorizacaoStub.setAmbiente(url);
			NfeAutorizacaoStub stub = new NfeAutorizacaoStub();

			OMElement nfeAutorizacao = stub.nfeAutorizacaoLote (dadosMsg.getExtraElement(), cabecMsgE);
			String respAutorizacao = nfeAutorizacao.toString();
			//	
			MAttachment attachLotNFe = createAttachment();
			attachLotNFe.addEntry(getDocumentNo()+"-rec.xml", respAutorizacao.getBytes());
			attachLotNFe.save();
			//
			TRetEnviNFe retEnviNFe = RetEnviNFeDocument.Factory.parse(respAutorizacao).getRetEnviNFe();
			//
			String cStat = retEnviNFe.getCStat();
			String xMotivo = retEnviNFe.getXMotivo();

			setlbr_NFeStatus(cStat);

			if (MLBRNFeLot.LBR_NFEANSWERSTATUS_LoteRecebidoComSucesso.equals(cStat))
			{
				setlbr_NFeRecID(retEnviNFe.getInfRec().getNRec());
				//
				Timestamp timestamp = NFeUtil.stringToTime(retEnviNFe.getDhRecbto());
				setDateTrx(timestamp);
				setlbr_LotSent(true);
				save();
			}
			
			return "@Success@. " + xMotivo;
		}
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		//
		return "@Success@";
	}	//	enviaLoteNFe

	/**
	 * 	Consulta Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public String consultaLoteNFe () throws Exception
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
			return "Ambiente da NF-e deve ser preenchido.";
		//
		MLocation orgLoc = new MLocation(getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";

		//	Inicializa o Certificado
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		//
		try
		{
			ConsReciNFeDocument consReciNFeDoc = ConsReciNFeDocument.Factory.newInstance();
			TConsReciNFe consReciNFe = consReciNFeDoc.addNewConsReciNFe();
			consReciNFe.setNRec(getlbr_NFeRecID());
			consReciNFe.setTpAmb(TAmb.Enum.forString(envType));
			consReciNFe.setVersao(NFeUtil.VERSAO_APP);
			
			
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

			String url = MLBRNFeWebService.getURL (MLBRNFeWebService.RETRECEPCAO, envType, NFeUtil.VERSAO_LAYOUT, orgLoc.getC_Region_ID());
//			NfeRetAutorizacaoStub.setAmbiente(url);
			NfeRetAutorizacaoStub stub = new NfeRetAutorizacaoStub(url);

			OMElement nfeRetAutorizacao = stub.nfeRetAutorizacaoLote (dadosMsg.getExtraElement(), cabecMsgE);
			String respRetAutorizacao = nfeRetAutorizacao.toString();
			
			TRetConsReciNFe retConsReciNFe = RetConsReciNFeDocument.Factory.parse (respRetAutorizacao).getRetConsReciNFe();
			//
			String cStat = retConsReciNFe.getCStat();
			String xMotivo = retConsReciNFe.getXMotivo();
			
			setlbr_NFeAnswerStatus(cStat);
			//
			if (MLBRNFeLot.LBR_NFEANSWERSTATUS_LoteProcessado.equals(cStat)
				|| MLBRNFeLot.LBR_NFEANSWERSTATUS_RejeiçãoErroNãoCatalogado.equals(cStat))
			{	
				//	Lote Processado ou 999 Erro não catalogado
				//	Marcar como processado somente em 104 ou 999
				setlbr_LotReceived(true);
				setProcessed(true);
				
				setlbr_NFeRespID(retConsReciNFe.getNRec());
				setDateFinish(NFeUtil.stringToTime(retConsReciNFe.getDhRecbto()));
				//
				for (TProtNFe protNFe : retConsReciNFe.getProtNFeArray())
				{
					String error = MLBRNotaFiscal.authorizeNFe (protNFe.getInfProt(), trxName);
					if (error != null)
						throw new Exception(error);
				}	//	for
			}	//	if
			//
			save();
		}
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return "Processo completado.";
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
		Query query =  new Query(getCtx(), table, whereClause, null);
	 		  query.setParameters(new Object[]{getLBR_NFeLot_ID()});
	 		  query.setOrderBy("DocumentNo, LBR_NotaFiscal_ID");
		//
	 	List<MLBRNotaFiscal> list = query.list();
	 	//
	 	for (MLBRNotaFiscal NF : list)
	 	{
	 		if (NF == null)
	 			continue;

	 		MAttachment attachment = NF.getAttachment();
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

}	//	MNFeLot
