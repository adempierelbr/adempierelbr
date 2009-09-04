package org.adempierelbr.nfe;

import java.io.File;
import java.io.StringReader;
import java.security.Security;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.model.MNFeLot;
import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcao;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap;

/**
 * 	Transmissão dos Lotes de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeRetRecepcao
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeRetRecepcao.class);
	
	/**	Certificado do Cliente		*/
	private static String certTypeOrg 	= "";
	
	/**	Certificado do WS			*/
	private static String certTypeWS	= "";
	
	/**
	 * 	Envia as NFs em XML por Lote
	 * 
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String consultaNFe (MNFeLot lot) throws Exception
	{
		log.fine("ini");
		//
		if (!lot.islbr_LotSent())
		{
			log.log(Level.SEVERE, "LOT not sent yet");
			throw new Exception("LOT not sent yet");
		}
		//
		MOrgInfo oi = lot.getOrgInfo();
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeLotDadosMsg 	= NFeUtil.consultaLote(lot.getlbr_NFeRecID(), envType);
		String nfeLotCabecMsg 	= NFeUtil.geraCabecEnviNFe("1.10");		//	Versão do arquivo XSD
		//
		if (!ValidaXML.validaCabecalho(nfeLotCabecMsg).equals(""))
		{
			log.severe("Validation LOT Header Error");
        	throw new Exception("Validation LOT Header Error");
		}
		//
		if (!ValidaXML.validaConsultaProt(nfeLotDadosMsg).equals(""))
		{
			log.severe("Validation LOT Header Error");
        	throw new Exception("Validation LOT Header Error");
		}
		//	Anexa o arquivo
		MAttachment attachLotNFe = lot.createAttachment();
		File attachFile = new File(NFeUtil.gravaArquivo(lot.getlbr_NFeRecID()+"-ped-rec.xml", nfeLotDadosMsg));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save();
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
		NfeRetRecepcaoLocator.ambiente = envType;
		NfeRetRecepcao retRecep = new NfeRetRecepcaoLocator();
		try 
		{
			//	Envio
			NfeRetRecepcaoSoap nfeRetRecepcao = retRecep.getNfeRetRecepcaoSoap();
			String nfeRetResposta = nfeRetRecepcao.nfeRetRecepcao(nfeLotCabecMsg, nfeLotDadosMsg);
			
			//	Resposta do Envio
			if (!ValidaXML.validaRetornoConsultaProt(nfeRetResposta).equals(""))
				;	// TODO: Error
			//
			attachLotNFe = lot.createAttachment();
			attachFile = new File(NFeUtil.gravaArquivo(lot.getlbr_NFeRecID()+"-pro-rec.xml", nfeRetResposta));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeRetResposta)));
	        //
	        String cStatL = doc.getElementsByTagName("cStat").item(0).getTextContent();   
	        String xMotivoL = doc.getElementsByTagName("xMotivo").item(0).getTextContent();   
	        String nRec = doc.getElementsByTagName("nRec").item(0).getTextContent();   
	        NodeList infProt =  doc.getElementsByTagName("infProt");
	        //
	        if (cStatL.equals("104"))	//	Lote Processado
	        {
	        	//	Marcar como processado somente em 104
		        lot.setlbr_LotReceived(true);
		        lot.setProcessed(true);
		        //
	        	for (int i=0; i< infProt.getLength(); i++)
	        	{
	        		Node node = infProt.item(i);
	        		if (node.getNodeType() == Node.ELEMENT_NODE)
	        		{
	        			String chNFe	= NFeUtil.getValue (node, "chNFe");
	        			String xMotivo 	= NFeUtil.getValue (node, "xMotivo");
	        			String digVal 	= NFeUtil.getValue (node, "digVal");
	        			String dhRecbto = NFeUtil.getValue (node, "dhRecbto");
	        			String cStat 	= NFeUtil.getValue (node, "cStat");
	        			String nProt 	= NFeUtil.getValue (node, "nProt");
	        			//
	        			MNotaFiscal nf = MNotaFiscal.getNFe (chNFe);
	        			if (nf == null)
	        			{
	        				log.log(Level.SEVERE, "NF not found");
	        				throw new Exception("NF not found");
	        			}
	        			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	        	        Date parsedDate = dateFormat.parse(dhRecbto.replace('T', ' '));
	        	        Timestamp ts = new Timestamp(parsedDate.getTime());
	        	        //
	        	        String nfeDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        	        if (nf.get_Value("lbr_NFeDesc") == null)
	        	        	nf.set_CustomColumn("lbr_NFeDesc",  nfeDesc);
	        	        else
	        	        	nf.set_CustomColumn("lbr_NFeDesc",  nf.get_Value("lbr_NFeDesc") + nfeDesc);
	        			nf.set_CustomColumn("lbr_DigestValue", digVal);
	        			nf.set_CustomColumn("lbr_NFeStatus", cStat);
	        			nf.set_CustomColumn("lbr_NFeProt", nProt);
	        			nf.set_CustomColumn("DateTrx", ts);
	        			nf.save();
	        		}	//	if
	        	}	//	for
	        }	//	if
	        //
	        Timestamp now = new Timestamp(new Date().getTime());
	        String nfeDesc = "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] "+xMotivoL+"\n";
	        lot.setlbr_NFeAnswerStatus(cStatL);
	        if (lot.getDescription() == null)
	        	lot.setDescription(nfeDesc);
	        else
	        	lot.setDescription(lot.getDescription() + nfeDesc);
	        //
	        lot.setlbr_NFeRespID(nRec);
	        lot.setDateFinish(now);
	        //
	        lot.save();
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	consultaNFe
}	//	NFeRetRecepcao