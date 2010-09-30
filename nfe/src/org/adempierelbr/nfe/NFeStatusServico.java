	package org.adempierelbr.nfe;

import java.io.File;
import java.io.StringReader;
import java.security.Security;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.Adempiere;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServico;
import br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap;

/**
 * 	Consulta dos Lotes Processados de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeStatusServico
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeStatusServico.class);
	
	/**	Certificado do Cliente		*/
	private static String certTypeOrg 	= "";
	
	/**	Certificado do WS			*/
	private static String certTypeWS	= "";
	
	/**
	 * 	Consulta dos Lotes Processados de NF-e
	 * 
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String checkStatus (MOrgInfo oi, boolean formatted) throws Exception
	{
		log.fine("ini");
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeDadosMsg 	= NFeUtil.geraStatusServico(envType);
		String nfeCabecMsg 	= NFeUtil.geraCabecStatusServico("1.10");
		//
		if (!ValidaXML.validaCabecalho(nfeCabecMsg).equals(""))
		{
			log.severe("Validation STATUS Header Error");
        	throw new Exception("Validation STATUS Header Error");
		}
		//
		Integer certOrg = (Integer) oi.get_Value("LBR_DC_Org_ID");
		Integer certWS = (Integer) oi.get_Value("LBR_DC_WS_ID");
		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS = new MLBRDigitalCertificate(Env.getCtx(), certWS, null);
		//
		if (dcOrg.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeOrg = "PKCS12";
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeOrg = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		File certFileOrg = NFeUtil.getAttachmentEntryFile(dcOrg.getAttachment().getEntry(0));
		//
		if (dcWS.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeWS = "PKCS12";
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeWS = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		File certFileWS = NFeUtil.getAttachmentEntryFile(dcWS.getAttachment().getEntry(0));
		//
		System.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		//
		System.setProperty("javax.net.ssl.keyStoreType", certTypeOrg);
		System.setProperty("javax.net.ssl.keyStore", certFileOrg.toString());
		System.setProperty("javax.net.ssl.keyStorePassword", dcOrg.getPassword());
		//
		System.setProperty("javax.net.ssl.trustStoreType", certTypeWS);
		System.setProperty("javax.net.ssl.trustStore", certFileWS.toString());
		//
		NfeStatusServicoLocator.ambiente = envType;
		NfeStatusServico service = new NfeStatusServicoLocator();
		try 
		{
			//	Status
			NfeStatusServicoSoap nfeStatus = service.getNfeStatusServicoSoap();
			String nfeResposta = nfeStatus.nfeStatusServicoNF(nfeCabecMsg, nfeDadosMsg);
			log.fine (nfeResposta);
			//
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeResposta)));
	        //
			String tpAmb = doc.getElementsByTagName("tpAmb").item(0).getTextContent();   
	        String verAplic = doc.getElementsByTagName("verAplic").item(0).getTextContent();   
	        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();
	        String xMotivo = doc.getElementsByTagName("xMotivo").item(0).getTextContent(); 
	        String cUF = doc.getElementsByTagName("cUF").item(0).getTextContent(); 
	        String tMed = doc.getElementsByTagName("tMed").item(0).getTextContent();
	        String color = "880000";
	        //
	        if (tpAmb != null && tpAmb.equals("1"))
	        	tpAmb = "1 - Produção";
	        else if (tpAmb != null && tpAmb.equals("2"))
	        	tpAmb = "2 - Homologação";
	        //
	        if (cStat != null && cStat.equals("107"))
	        {
	        	color = "008800";
	        	//
	        	if (!formatted)
	        		return "Y";
	        }
	        else if (!formatted)
	        	return "N";
			//
			return   "<tr><td>Ambiente:</td><td><font color=\"000088\">" + tpAmb + "</font></td></tr><br>"
				+ "<tr><td>Versão:</td><td><font color=\"000088\">" + verAplic + "</font></td></tr><br>"
				+ "<tr><td>Status:</td><td><font color=\""+color+"\">" + cStat + " - " + xMotivo + "</font></td></tr><br>"
				+ "<tr><td>UF:</td><td><font color=\"000088\">" + cUF + "</font></td></tr><br>"
				+ "<tr><td>Tempo médio:</td><td><font color=\"000088\"> Menor que " + tMed + " minuto</font></td></tr><br>";
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	sendNFe
	
	/**
	 * 
	 */
	public static void main(String[] args) 
	{
		Adempiere.startupEnvironment(false);
		CLogMgt.setLevel(Level.FINE);
		CLogMgt.enable(true);
		System.out.println("NFe Status");
		System.out.println("-----------------------");
		//
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), 2000000);
		try
		{
			System.out.print(checkStatus(oi, true));
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}	//	NFeStatus