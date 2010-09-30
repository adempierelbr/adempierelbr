package org.adempierelbr.nfe;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.StringReader;
import java.security.Security;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.nfe.beans.InutilizacaoNF;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.ValidaXML;
import org.apache.axiom.om.OMElement;
import org.apache.axiom.om.impl.llom.util.AXIOMUtil;
import org.compiere.Adempiere;
import org.compiere.model.MNote;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacao;
import br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoSoap;

/**
 * 	Consulta dos Lotes Processados de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeInutilizacao
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeInutilizacao.class);
	
	/**	Certificado do Cliente		*/
	private static String certTypeOrg 	= "";
	
	/**	Certificado do WS			*/
	private static String certTypeWS	= "";
	
	/**
	 * 	Inutiliza a NF
	 * 
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String invalidateNF (MOrgInfo oi, InutilizacaoNF iNF) throws Exception
	{
		log.fine("ini");
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeDadosMsg 	= NFeUtil.geraInutilizacao(iNF).replace("\n  ", "").replace("\n", "");
		String nfeCabecMsg 	= NFeUtil.geraCabecStatusServico("1.07");
		//
		File attachFile = new File(NFeUtil.gravaArquivo(iNF.getID()+"-ped-inu.xml", nfeDadosMsg));
		AssinaturaDigital.Assinar(attachFile.toString(), oi, AssinaturaDigital.INUTILIZACAO_NFE);
		FileInputStream stream = new FileInputStream(attachFile);
		DataInputStream in = new DataInputStream(stream);
		//
		nfeDadosMsg = "";
		while (in.available() != 0)
		{
			nfeDadosMsg += in.readLine();
		}
		//
		String valid = ValidaXML.validaCabecalho(nfeCabecMsg);
		if (!valid.equals(""))
		{
			log.severe("Validation Invalidation Header Error");
			throw new Exception("Validation Invalidation Header Error");
		}
		//
		valid = ValidaXML.validaPedInutilizacaoNFe(nfeDadosMsg);
		if (!valid.equals(""))
		{
			log.severe("Validation Invalidation Body Error\n"+valid);
			throw new Exception("Validation Invalidation Body Error");
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
		NfeInutilizacaoLocator.ambiente = envType;
		NfeInutilizacao service = new NfeInutilizacaoLocator();
		//
		try 
		{
			//	Status
			log.fine (nfeDadosMsg);
			//
			NfeInutilizacaoSoap nfeStatus = service.getNfeInutilizacaoSoap();
			String nfeResposta = nfeStatus.nfeInutilizacaoNF(nfeCabecMsg, nfeDadosMsg);
			//
			log.fine (nfeResposta);
			//
			valid = ValidaXML.validaRetInutilizacaoNFe(nfeResposta);
			if (!valid.equals(""))
			{
				log.warning("Validation Response Invalidation Error\n"+valid);
			}
			//
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new InputSource(new StringReader(nfeResposta)));
			//
			NodeList infProt =  doc.getElementsByTagName("infInut");
			
			for (int i=0; i< infProt.getLength(); i++)
			{
				Node node = infProt.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE)
				{
					String cStat 	= NFeUtil.getValue (node, "cStat");
					String xMotivo 	= NFeUtil.getValue (node, "xMotivo");
					//
					if (cStat != null && cStat.equals("102"))
					{
						String verAplic	= NFeUtil.getValue (node, "verAplic");
		    			String cUF 		= NFeUtil.getValue (node, "cUF");
						String ano 		= NFeUtil.getValue (node, "ano");
						String CNPJ 	= NFeUtil.getValue (node, "CNPJ");
						String mod 		= NFeUtil.getValue (node, "mod");
						String serie 	= NFeUtil.getValue (node, "serie");
						String nNFIni 	= NFeUtil.getValue (node, "nNFIni");
						String nNFFin 	= NFeUtil.getValue (node, "nNFFin");
						String dhRecbto = NFeUtil.getValue (node, "dhRecbto");
						String nProt 	= NFeUtil.getValue (node, "nProt");
						//	TODO:	Criar uma janela para lanças as NF inutilizadas
//						MNote note = new MNote(Env.getCtx(), 225, 100, null);
//						note.setTextMsg(nfeResposta);
//						note.save();
						File fi = new File(NFeUtil.gravaArquivo(iNF.getID()+"-inu.xml", nfeResposta));
						//
						return "NF-e Inutilizada com sucesso.";
					}
					else
					{
						log.fine("Erro ao inutilizar a NF. " + xMotivo);
						return "Erro ao inutilizar a NF. " + xMotivo;
					}
				}
			}
			//
			return "";
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	invalidateNF
	
	/**
	 * 
	 */
	public static void main (String[] args) 
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
			System.out.print(invalidateNF(oi, null));
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	//	main
}	//	NFeInutilizacao