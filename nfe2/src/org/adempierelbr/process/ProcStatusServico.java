/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

import java.io.StringReader;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfestatusservico2.NfeStatusServico2Stub;

/**
 * 	Processo para consultar o Status do Serviço
 *
 * @author Mario Grigioni
 * @version $Id: ProcStatusServico.java, 08/04/2010 15:35:00 mgrigioni
 */
public class ProcStatusServico extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcStatusServico.class);

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
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), Env.getAD_Org_ID(getCtx()),null);
		if (orgInfo == null)
			return "Organização não encontrada";

		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),null);
		String envType 	= orgInfo.get_ValueAsString("lbr_NFeEnv");
		boolean isSCAN  = orgInfo.get_ValueAsBoolean("lbr_IsScan");

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";

		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(getCtx(), Env.getAD_Org_ID(getCtx()));
		//
		String status = "Erro na verificação de Status";

		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.geraMsgStatusServico(envType, region)));

			NfeStatusServico2Stub.NfeDadosMsg dadosMsg = NfeStatusServico2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeStatusServico2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecStatusServico(region);

			NfeStatusServico2Stub.setAmbiente(envType,orgLoc.getC_Region_ID(),isSCAN);
			NfeStatusServico2Stub stub = new NfeStatusServico2Stub();

			String respStatus = stub.nfeStatusServicoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    Document doc = builder.parse(new InputSource(new StringReader(respStatus)));
		    //
		    String tpAmb    = NFeUtil.getValue(doc, "tpAmb");
		    String verAplic = NFeUtil.getValue(doc, "verAplic");
		    String cStat    = NFeUtil.getValue(doc, "cStat");
		    String xMotivo  = NFeUtil.getValue(doc, "xMotivo");

		    status = "<br/>" +
		    		 "Ambiente: " + tpAmb + "<br/>" +
		             "Versão:   " + verAplic + "<br/>" +
		             "Status:   " + cStat + " - " + xMotivo;
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return status;
	}	//	doIt

}	//	ProcStatusServico