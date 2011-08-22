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
import java.sql.Timestamp;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeConsulta2Stub;

/**
 * 	Processo para consultar o Status da NFe
 *
 * @author Mario Grigioni
 * @version $Id: ProcConsultaNFe.java, 24/01/2011 17:03:00 mgrigioni
 */
public class ProcConsultaNFe extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcConsultaNFe.class);

	/** Nota Fiscal               */
	private Integer p_LBR_NotaFiscal_ID = 0;
	
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
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		
		if (p_LBR_NotaFiscal_ID == 0)
			p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		
		if (p_LBR_NotaFiscal_ID == 0){
			throw new IllegalArgumentException("Nota Fiscal == 0");
		}
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),p_LBR_NotaFiscal_ID,get_TrxName());
		
		return getStatus(nf);
	}	//	doIt
	
	public static String getStatus(MLBRNotaFiscal nf) throws Exception{
	
		Properties ctx = nf.getCtx();
		String     trx = nf.get_TrxName();
		
		MOrgInfo orgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),null);
		if (orgInfo == null)
			return "Organização não encontrada";

		//MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),null);
		String envType 	= orgInfo.get_ValueAsString("lbr_NFeEnv");
		boolean isSCAN  = orgInfo.get_ValueAsBoolean("lbr_IsScan");

		MBPartnerLocation bpl = new MBPartnerLocation(ctx,nf.getC_BPartner_Location_ID(),null);
		MLocation bpLoc = new MLocation(ctx,bpl.getC_Location_ID(),null);
		
		String region = BPartnerUtil.getRegionCode(bpLoc);
		if (region.isEmpty())
			return "UF Inválida";

		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(ctx, orgInfo);
		//
		String status = "Erro na verificação de Status";

		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.geraMsgConsulta(envType, nf.getlbr_NFeID())));

			NfeConsulta2Stub.NfeDadosMsg dadosMsg = NfeConsulta2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeConsulta2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecConsulta(region);

			NfeConsulta2Stub.setAmbiente(envType,bpLoc.getC_Region_ID(),isSCAN);
			NfeConsulta2Stub stub = new NfeConsulta2Stub();

			String respStatus = stub.nfeConsultaNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    Document doc = builder.parse(new InputSource(new StringReader(respStatus)));
		    //
		    //String tpAmb    = NFeUtil.getValue(doc, "tpAmb");
		    //String verAplic = NFeUtil.getValue(doc, "verAplic");
		    String cUF      = NFeUtil.getValue(doc, "cUF");
		    String cStat    = NFeUtil.getValue(doc, "cStat");
		    String xMotivo  = NFeUtil.getValue(doc, "xMotivo");

		    status = "Status: " + cStat + " - " + xMotivo + " - UF: " + cUF;
		    
		    Timestamp now = new Timestamp(new Date().getTime());
		    String nfeDesc = "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] "+xMotivo+"\n";
		    nf.setlbr_NFeStatus(cStat);
		    if (nf.getlbr_NFeDesc() == null)
		    	nf.setlbr_NFeDesc(nfeDesc);
		    else
		    	nf.setlbr_NFeDesc(nf.getlbr_NFeDesc() + nfeDesc);
		    
		    if (cStat.equals(NFeUtil.AUTORIZADA)){
		    	nf.setProcessed(true);
		    	nf.save(trx);
		    }
		    
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return status;
	}

}	//	ProcConsultaNFe