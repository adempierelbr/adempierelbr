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
package org.adempierelbr.process;

import java.io.File;
import java.io.StringReader;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.mdfe.util.MDFeUtil;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRMDFe;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

import br.inf.portalfiscal.mdfe.EnviMDFeDocument;
import br.inf.portalfiscal.mdfe.MDFeDocument;
import br.inf.portalfiscal.mdfe.RetEnviMDFeDocument;
import br.inf.portalfiscal.mdfe.TEnviMDFe;
import br.inf.portalfiscal.mdfe.TMDFe;
import br.inf.portalfiscal.mdfe.TRetEnviMDFe;
import br.inf.portalfiscal.www.mdfe.wsdl.mdferecepcao.MDFeRecepcaoStub;

/**
 * 		Retorno do Envio do MDFe
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RetRecepcao.java, v1.0 2014/02/01 00:02:49, ralexsander Exp $
 */
public class MDFeRecepcao extends SvrProcess
{
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MDFeRecepcao.class);
	
	private int p_Record_ID 		= 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			
			else
				s_log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		p_Record_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt () 
	{
		MLBRMDFe mdfe = new MLBRMDFe (getCtx(), p_Record_ID, get_TrxName());
		
		try
		{
			sendDocument (mdfe);
			mdfe.save();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@ " + mdfe.getlbr_NFeAnswerStatus();
	}	//	doIt
	
	/**
	 * 	Processa o Retorno do MDFe
	 * 	@param mdfe
	 * 	@return Status
	 * 	@throws Exception
	 */
	public static void sendDocument (MLBRMDFe mdfe) throws Exception
	{
		if (mdfe == null)
			throw new AdempiereException ("@Error@ @lbr_NFeStatus@ invalido");
		
		Properties p_ctx = mdfe.getCtx();

		// 	Preenche a data da emissão com a data atual
		mdfe.setDateDoc	(new Timestamp (System.currentTimeMillis()));
		
		//	Gera o XML
//		StringBuilder xml = mdfe.getXML();
		MDFeDocument mdfeDoc = mdfe.getMDFe();
		TMDFe tMDFe = mdfeDoc.getMDFe();

		//	Assina o XML
		MOrgInfo oi = MOrgInfo.get(mdfe.getCtx(), mdfe.getAD_Org_ID(), null);
		new SignatureUtil (oi, SignatureUtil.RECEPCAO_MDFE).sign (mdfeDoc, tMDFe.newCursor());
		
		EnviMDFeDocument mdFeDocument = EnviMDFeDocument.Factory.newInstance();
		TEnviMDFe enviMDFe = mdFeDocument.addNewEnviMDFe();
		enviMDFe.setVersao(MDFeUtil.VERSION);
		enviMDFe.setIdLote(mdfe.getDocumentNo());
		enviMDFe.setMDFe(tMDFe);
		
		StringBuilder sb = MDFeUtil.removeNS (new StringBuilder (mdFeDocument.xmlText(NFeUtil.getXmlOpt ())));
		
//		ValidaXML.ValidaDocEx (MDFeUtil.HEADER + sb.toString(), MDFeUtil.XSD_VERSION + "/enviMDFe_v1.00.xsd");
		
		//	XML
		XMLStreamReader data = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(MDFeUtil.getWrapped (sb)));

		//	Prepara a Transmissão
		MLBRDigitalCertificate.setCertificate (p_ctx, mdfe.getAD_Org_ID());
		
		I_W_C_City city = POWrapper.create (new MCity (p_ctx, MOrgInfo.get(p_ctx, mdfe.getAD_Org_ID(), null).getC_Location().getC_City_ID(), null), I_W_C_City.class);
		
		//	Cabeçalho
		MDFeRecepcaoStub.MdfeCabecMsg header = new MDFeRecepcaoStub.MdfeCabecMsg();
		header.setCUF((city.getlbr_CityCode()+"").substring(0, 2));
		header.setVersaoDados(MDFeUtil.VERSION);
		
		MDFeRecepcaoStub.MdfeCabecMsgE headerE = new MDFeRecepcaoStub.MdfeCabecMsgE();
		headerE.setMdfeCabecMsg(header);
		
		//	Conteúdo
		MDFeRecepcaoStub.MdfeDadosMsg content = MDFeRecepcaoStub.MdfeDadosMsg.Factory.parse (data);
		
		//	Consulta
		MDFeRecepcaoStub.setAmbiente(MLBRNFeWebService.get (MDFeUtil.TYPE_RECEPCAO, mdfe.getlbr_NFeEnv(), MDFeUtil.VERSION, MDFeUtil.MDFE_REGION));
		MDFeRecepcaoStub stub = new MDFeRecepcaoStub();
		
		StringBuilder result = new StringBuilder (MDFeUtil.HEADER + stub.mdfeRecepcaoLote (content, headerE).getExtraElement().toString());

		s_log.fine (result.toString());

		TRetEnviMDFe ret = RetEnviMDFeDocument.Factory.parse (result.toString()).getRetEnviMDFe();
					
		mdfe.setlbr_NFeStatus(ret.getCStat());
		mdfe.setlbr_NFeAnswerStatus(ret.getCStat() + "-" + ret.getXMotivo());
		
		if (MDFeUtil.STATUS_RECEBIDO.equals (ret.getCStat()) && ret.getInfRec() != null)
		{
			String key = tMDFe.getInfMDFe().getId().replace("MDFe", "");
			//
			mdfe.setlbr_NFeID(key);
			mdfe.setlbr_NFeRecID (ret.getInfRec().getNRec());
			mdfe.setDateTrx (TextUtil.stringToTime (ret.getInfRec().getDhRecbto().toString(), "yyyy-MM-dd'T'HH:mm:ss"));
			
			//	Refresh
			if (mdfe.getAttachment(true) != null)
				mdfe.getAttachment(false).delete(true);
			
			//	Add Attachment Entry
			MAttachment attachment = mdfe.createAttachment(true);
			attachment.addEntry (new File (TextUtil.generateTmpFile (MDFeUtil.HEADER + sb.toString(), key + "-mdfe.xml")));
			attachment.save();
			
			mdfe.setProcessed(true);
			mdfe.setDocAction(MLBRMDFe.DOCACTION_Complete);
			mdfe.setDocStatus(MLBRMDFe.DOCSTATUS_WaitingConfirmation);
		}
		
		else
		{
			mdfe.setDocAction(MLBRMDFe.DOCACTION_Complete);
			mdfe.setDocStatus(MLBRMDFe.DOCSTATUS_Invalid);
		}
	}	//	getReturn
}	//	RetRecepcao
