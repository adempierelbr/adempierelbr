package org.adempierelbr.nfe;

import java.io.File;
import java.io.StringReader;
import java.security.Security;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.model.MNFeLot;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcao;
import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoLocator;
import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap;

/**
 * 	Consulta dos Lotes Processados de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeRecepcao
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeRecepcao.class);
	
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
	public static String sendNFe(MNFeLot lot) throws Exception
	{
		log.fine("ini");
		MOrgInfo oi = lot.getOrgInfo();
		String nfeLotDadosMsg 	= NFeUtil.gerarLote(lot);
		String nfeLotCabecMsg 	= NFeUtil.geraCabecEnviNFe();
		//
		if (!ValidaXML.validaCabecalho(nfeLotCabecMsg).equals(""))
		{
			log.severe("Validation LOT Header Error");
        	throw new Exception("Validation LOT Header Error");
		}
		//
		Integer certOrg = (Integer) oi.get_Value("LBR_DC_Org_ID");
		Integer certWS = (Integer) oi.get_Value("LBR_DC_WS_ID");
		MDigitalCertificate dcOrg = new MDigitalCertificate(Env.getCtx(), certOrg, null);
		MDigitalCertificate dcWS = new MDigitalCertificate(Env.getCtx(), certWS, null);
		//
		if (dcOrg.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcOrg.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeOrg = "PKCS12";
		else if (dcOrg.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeOrg = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		File certFileOrg = NFeUtil.getAttachmentEntryFile(dcOrg.getAttachment().getEntry(0));
		//
		if (dcWS.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcWS.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeWS = "PKCS12";
		else if (dcWS.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
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
		NfeRecepcao recep = new NfeRecepcaoLocator();
		try 
		{
			//	Envio
			NfeRecepcaoSoap nfeRecepcao = recep.getNfeRecepcaoSoap();
			String nfeResposta = nfeRecepcao.nfeRecepcaoLote(nfeLotCabecMsg, nfeLotDadosMsg);
			
			//	Resposta do Envio
			if (!ValidaXML.validaRetXML(nfeResposta).equals(""))
				;	// TODO: Error
			//
			MAttachment attachLotNFe = lot.createAttachment();
			File attachFile = new File(NFeUtil.gravaArquivo("RespLote-"+lot.getDocumentNo()+"-NFe.xml", nfeResposta));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeResposta)));
	        //
	        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();   
	        String xMotivo = doc.getElementsByTagName("xMotivo").item(0).getTextContent();   
	        String nRec = doc.getElementsByTagName("nRec").item(0).getTextContent();   
	        String dhRecbto = doc.getElementsByTagName("dhRecbto").item(0).getTextContent();
	        //
	        String lotDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        lot.setlbr_NFeStatus(cStat);
	        if (lot.getDescription() == null)
	        	lot.setDescription(lotDesc);
	        else
	        	lot.setDescription(lot.getDescription() + lotDesc);
	        lot.setlbr_NFeRecID(nRec);
	        //
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	        Date parsedDate = dateFormat.parse(dhRecbto.replace('T', ' '));
	        Timestamp timestamp = new Timestamp(parsedDate.getTime());
	        lot.setDateTrx(timestamp);
	        lot.setlbr_LotSent(true);
	        lot.save();
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	sendNFe
}	//	NFeStatus