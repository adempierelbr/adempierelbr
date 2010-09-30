package org.adempierelbr.nfe;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.StringReader;
import java.security.Security;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamento;
import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap;

/**
 * 	Consulta dos Lotes Processados de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeCancelamento
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeCancelamento.class);
	
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
	public static String cancelNFe(MLBRNotaFiscal nf) throws Exception
	{
		log.fine("ini");
		//
		String motivoCanc = (String) nf.get_Value("lbr_MotivoCancel");
		
		if (motivoCanc == null)
			return "Sem motivo de cancelamento";
		else if (motivoCanc.length() < 16)
			return "Motivo de cancelamento muito curto. Min: 15 letras.";
		else if (motivoCanc.length() >= 255)
			return "Motivo de cancelamento muito longo. Max: 255 letras.";
		//
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), nf.getAD_Org_ID());
		String chNFe 	= nf.get_ValueAsString("lbr_NFeID");
		String pclNFe 	= nf.get_ValueAsString("lbr_NFeProt");
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeCancelDadosMsg 	= NFeUtil.geraCancelamentoNF(chNFe, pclNFe, envType, motivoCanc);
		String nfeCancelCabecMsg 	= NFeUtil.geraCabecEnviNFe("1.07");		//	Versão do arquivo XSD
		//
		File attachFile = new File(NFeUtil.gravaArquivo(nf.getDocumentNo()+"-ped-can.xml", nfeCancelDadosMsg));
		AssinaturaDigital.Assinar(attachFile.toString(), oi, AssinaturaDigital.CANCELAMENTO_NFE);
		nfeCancelDadosMsg = "";
		FileInputStream stream = new FileInputStream(attachFile);
		DataInputStream in = new DataInputStream(stream);
		while (in.available() != 0)
		{
			nfeCancelDadosMsg += in.readLine();
		}
		//
		String validation = ValidaXML.validaCabecalho(nfeCancelCabecMsg);
		if (!validation.equals(""))
		{
			log.severe("Validation Cancel Header Error: " + validation);
        	throw new Exception("Validation Cancel Header Error" + validation);
		}
		validation = ValidaXML.validaPedCancelamentoNFe(nfeCancelDadosMsg);
		if (!validation.equals(""))
		{
			log.severe("Validation Cancel Data Error: " + validation);
        	throw new Exception("Validation Cancel Data Error: " + validation);
		}
		//
		MAttachment attachLotNFe = nf.createAttachment();
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
		NfeCancelamentoLocator.ambiente = envType;
		NfeCancelamento recep = new NfeCancelamentoLocator();
		try 
		{
			//	Envio
			NfeCancelamentoSoap nfeCancelamento = recep.getNfeCancelamentoSoap();
			String nfeRespostaCanc = nfeCancelamento.nfeCancelamentoNF(nfeCancelCabecMsg, nfeCancelDadosMsg);
			
			//	Resposta do Envio
			validation = ValidaXML.validaRetCancelamentoNFe(nfeRespostaCanc);
			if (!validation.equals(""))
				return validation;
			//
			attachLotNFe = nf.createAttachment();
			attachFile = new File(NFeUtil.gravaArquivo(nf.getDocumentNo()+"-can.xml", nfeRespostaCanc));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeRespostaCanc)));
	        //
	        String cStat = 		NFeUtil.getValue (doc, "cStat");   
	        String xMotivo = 	NFeUtil.getValue (doc, "xMotivo");   
	        String nProt = 		NFeUtil.getValue (doc, "nProt");   
	        String dhRecbto = 	NFeUtil.getValue (doc, "dhRecbto");
	        //
	        String nfeDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        nf.set_CustomColumn("lbr_NFeStatus", cStat);
	        if (nf.get_Value("lbr_NFeDesc") == null)
	        	nf.set_CustomColumn("lbr_NFeDesc", nfeDesc);
	        else
	        	nf.set_CustomColumn("lbr_NFeDesc", nf.get_Value("lbr_NFeDesc") + nfeDesc);
	        //
	        if (cStat.equals("101"))	//	Cancelameno Autorizado
	        {
		        nf.set_CustomColumn("lbr_NFeProt", nProt);
		        //
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		        Date parsedDate = dateFormat.parse(dhRecbto.replace('T', ' '));
		        Timestamp timestamp = new Timestamp(parsedDate.getTime());
		        nf.set_CustomColumn("DateTrx", timestamp);
		        nf.setIsCancelled(true);
		        if (!nf.isProcessed())
		        	nf.setProcessed(true);
	        }
	        nf.save();
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