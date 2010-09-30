package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.beans.InutilizacaoNF;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.utils.DigestOfFile;
import org.dom4j.io.OutputFormat;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeInutilizacao2Stub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.Dom4JDriver;


/**
 * 	Utilitários para gerar a NFe.
 * 
 * @author Ricardo Santana
 */
public class NFeUtil
{
	/**			Peso			**/
	private static final String PESO = "4329876543298765432987654329876543298765432";
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);
	
	/** Versão              */
	public static final String VERSAO      = "1.10";
	public static final String VERSAO_APP  = "1.40";
	
	/**
	 * 	Retorna o digito na NFe através da chave de acesso.
	 * 
	 * @param chave
	 * @return	Digito
	 */
	public static int GerarDigito (String chave)
	{
		int x = 0;
		int soma = 0;
		int dv = 0;
		//
		try
		{
			for (int i = 0; i < chave.length(); i++)
			{
				x = Integer.parseInt(chave.substring(i, i + 1))
						* Integer.parseInt(PESO.substring(i, i + 1));
				soma += x;
			}
			
			dv = 11 - (soma % 11);

			if (dv > 9)
			{
				dv = 0;
			}
		}
		catch (Exception e)
		{
			System.out.println("Chave Inválida!");
		}

		return dv;
	}	//	GerarDigito
	
	/**
	 * update Attachment
	 * @param nf
	 * @param xml
	 * @return true = success, false = error
	 */
	public static boolean updateAttach (MLBRNotaFiscal nf, File xml)
	{
		if (xml != null)
		{
			//	Force ReQuery
			nf.getAttachment(true);
			//
			MAttachment attachDist = nf.createAttachment();
			attachDist.addEntry(xml);
			return attachDist.save(nf.get_TrxName());
		}	//	if	
		return true;
	}	//	updateAttach
	
	/**
	 * 
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	public static File generateDistribution(MLBRNotaFiscal nf) throws Exception
	{
		String ext = "-dst.xml";
		File attach = null;
		//
		//	Verifica se foi processada
		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().equals(""))
			return attach;
		//
		String status = nf.getlbr_NFeStatus();
		String msgStatus = "";

		if (status.equals("100"))	//	Autorizado o uso da NF-e
		{
			ext = "-dst.xml";
			msgStatus = "Autorizado o uso da NF-e";
		}
		else if (status.equals("101"))	//	Cancelamento de NF-e homologado
		{
			ext = "-can.xml";
			msgStatus = "Cancelamento da NF-e Homologado";
		}

		File xml = getAttachmentEntryFile(nf.getAttachment().getEntry(0));
		if (xml == null || xml.getName().endsWith(ext)) // Já está no padrão de distribuição
			return attach;

		String dados = XMLtoString (xml);
		String cabecalho = geraCabecDistribuicao();
		String rodape = geraRodapDistribuicao (nf.getlbr_NFeID(),
				nf.getlbr_NFeProt(), getEnvType(nf.getCtx()), timeToString(nf
						.getDateTrx()), nf.getlbr_DigestValue(), status, msgStatus);
		//
		String dadosEmXML = cabecalho + dados + rodape;
		attach = new File(gravaArquivo(nf.getlbr_NFeID() + ext, dadosEmXML));

		nf.getAttachment(true).delete(true); // Exclui anexo anterior. BUG ADempiere

		return attach;
	} // NFeDistribution
	
	/**
	 * Rodapé padrão Distribuição
	 * 
	 * @param chNFe
	 * @param nProt
	 * @param tpAmb
	 * @param dhRecbto
	 * @param digVal
	 * @param cStat
	 * @param xMotivo
	 * @return XML
	 */
	public static String geraRodapDistribuicao (String chNFe, String nProt, String tpAmb, String dhRecbto,
			                                    String digVal, String cStat, String xMotivo)
	{
		String dados = 	"<protNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"" + VERSAO + "\"><infProt>" +
				        "<tpAmb>"+tpAmb+"</tpAmb>" +
				        "<verAplic>"+VERSAO_APP+"</verAplic>" +
				        "<chNFe>"+chNFe+"</chNFe>" +
				        "<dhRecbto>"+dhRecbto+"</dhRecbto>" +
				        "<nProt>"+nProt+"</nProt>" +
				        "<digVal>"+digVal+"</digVal>" +
				        "<cStat>"+cStat+"</cStat>" +
				        "<xMotivo>"+xMotivo+"</xMotivo></infProt></protNFe></nfeProc>";
		
		return dados;
	}	//	RodapDistribuicao
	
	/**
	 * Timestamp para String
	 * @param dhRecbto
	 * @return
	 */
	public static String timeToString(Timestamp dhRecbto){
		return TextUtil.timeToString(dhRecbto, "yyyy-MM-dd HH:mm:ss").replace(' ', 'T');
	} //DateToString
	
	/**
	 * getEnvType
	 * 
	 * @param ctx
	 * @return envType
	 */
	public static String getEnvType(Properties ctx)
	{
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		String envType = oi.get_ValueAsString("lbr_NFeEnv");

		if (envType == null || envType.equals(""))
			envType = "2"; // Homologação

		return envType;
	} // getEnvType

	public static String XMLtoString(File xml) throws Exception
	{
		String dados = "";
		if (xml == null)
			return dados;

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory
				.newInstance();
		InputStream inputStream = new FileInputStream(xml);
		org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder()
				.parse(inputStream);
		StringWriter stw = new StringWriter();
		Transformer serializer = TransformerFactory.newInstance().newTransformer();
		serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
		serializer.transform(new DOMSource(doc), new StreamResult(stw));
		dados = stw.toString();

		dados = dados.substring(dados.indexOf("<NFe"), dados.indexOf("</NFe>") + 6);
		if (dados.startsWith("<NFe>"))
		{
			dados = geraCabecNFe() + dados.substring(5);
		}

		return dados;
	} // XMLtoString
	
	/**
	 * Gera o cabeçalho da NFe
	 * 
	 * @return cabecalho
	 */
	public static String geraCabecNFe(){
		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">";
		return cabecalho;
	} //geraCabecNFe
	
	/**
	 * Gera o cabeçalho distribuição
	 * 
	 * @return Cabeçalho distribuiçãi
	 */
	public static String geraCabecDistribuicao()
	{
		String cabecalho = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
		 "<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"1.10\">";
	
		return cabecalho;
	}
	
	/**
	 * 	Gera o cabeçalho de Envio da NFe
	 * 
	 * 	@return cabeçalho de envio
	 */
	public static String geraCabecEnviNFe(String version){
		
		String cabecalho = "";
		cabecalho = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" + 
					"<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
					  "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
					  "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/cabecMsg_v1.02.xsd\" versao=\"1.02\">" +
					"<versaoDados>"+version+"</versaoDados>\n" +
					"</cabecMsg>";
		return cabecalho;
	}	//	geraCabecEnviNFe
	
	/**
	 * 	Gera o cabeçalho de Consulta de Estado do Serviço
	 * 
	 * 	@return cabeçalho de envio
	 */
	public static String geraCabecStatusServico(String version){
		
		String cabecalho = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
			+ "<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" "
			+ "versao=\"1.02\"><versaoDados>"+version+"</versaoDados>"
			+ "</cabecMsg>";
		return cabecalho;
	}	//	geraCabecStatusServico
	
	public static NfeInutilizacao2Stub.NfeCabecMsgE geraCabecInutilizacao (String region)
	{
		NfeInutilizacao2Stub.NfeCabecMsg cabecMsg = new NfeInutilizacao2Stub.NfeCabecMsg();
		cabecMsg.setCUF(region);
		cabecMsg.setVersaoDados("2.0");

		NfeInutilizacao2Stub.NfeCabecMsgE cabecMsgE = new NfeInutilizacao2Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	}
	
	/**
	 * 	Gera o cabeçalho de Consulta de Estado do Serviço
	 * 
	 * 	@return cabeçalho de envio
	 */
	public static String geraStatusServico (String tpAmb)
	{
		String status = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
			+ "<consStatServ versao=\"1.07\" xmlns=\"http://www.portalfiscal.inf.br/nfe\">"
			+ "<tpAmb>"+tpAmb+"</tpAmb><cUF>42</cUF><xServ>STATUS</xServ></consStatServ>";
		return status;
	}	//	geraStatusServico
	
	/**
	 * 	Gera o cabeçalho de Consulta de Estado do Serviço
	 * 
	 * 	@return cabeçalho de envio
	 */
	public static String geraInutilizacao (InutilizacaoNF nf)
	{
//		Dom4JDriver dom = new Dom4JDriver();
//		OutputFormat format = new OutputFormat();
//		format.setEncoding("UTF-8");
//		format.setNewLineAfterDeclaration(false);
//		format.setNewlines(false);
//		dom.setOutputFormat(format);
		//
		XStream xml = new XStream();
		//
		xml.alias("infInut", InutilizacaoNF.class);
		xml.useAttributeFor(InutilizacaoNF.class, "Id");
		xml.omitField(InutilizacaoNF.class, "msg");
		xml.omitField(InutilizacaoNF.class, "log");
		// 
		StringBuffer inut = new StringBuffer("");
//		inut.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		
		inut.append("<inutNFe " +
				"xmlns=\"http://www.portalfiscal.inf.br/nfe\" " +
//				"xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
//				"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
//				"xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" " +
//				"xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/inutNFe_v2.00.xsd\" " +
				"versao=\"1.07\">");
		inut.append(xml.toXML(nf));
		inut.append("</inutNFe>");
		//
		return inut.toString();
	}	//	geraStatusServico
	
	/**
	 * 	Gera o cabeçalho de consulta da NFe
	 * 
	 * @return	Cabeçalho de consulta
	 */
	public static String geraCabecConsultaNFe (String version)
	{
		String cabecalho = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" + 
						"<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
						  "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
						  "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/cabecMsg_v1.02.xsd\" versao=\"1.02\">" +
						"<versaoDados>"+version+"</versaoDados>\n" +
						"</cabecMsg>";
		return cabecalho;
	}	//	geraCabecConsultaNFe
	
	/**
	 * 	Gera o XML para consulta de Lote
	 * 
	 * @param recibo
	 * @return	XML
	 */
	public static String consultaLote (String recibo, String envType)
	{
		String dados = 	"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"+
							"<consReciNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
								"xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
								"xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/consReciNFe_v1.10.xsd\" versao=\"1.10\">" +
							"<tpAmb>"+envType+"</tpAmb>" +
						"<nRec>"+recibo+"</nRec>"+ 
						"</consReciNFe>";
		return dados;
	}	//	consultaLote
	
	/**
	 * 	Gera o XML para cancelamento da NF-e
	 * 
	 * @param Chave da NF-e
	 * @param Protocolo de Autorização
	 * @param Tipo de Ambiente
	 * @return	XML
	 */
	public static String geraCancelamentoNF (String chNFe, String protocolNFe, String envType, String motivo)
	{
		String dados = 	"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"+
						  "<cancNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
								  "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
								  "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/cancNFe_v1.07.xsd\" versao=\"1.07\">" +
							  "<infCanc Id=\"ID"+chNFe+"\">"+
						          "<tpAmb>"+envType+"</tpAmb>"+
						          "<xServ>CANCELAR</xServ>"+
						          "<chNFe>"+chNFe+"</chNFe>"+
						          "<nProt>"+protocolNFe+"</nProt>"+
						          "<xJust>"+motivo+"</xJust>"+
					          "</infCanc>"+ 
						  "</cancNFe>";
		return dados;
	}	//	consultaLote
	
	/**
	 * 	Gera o arquivo de Lote
	 * 
	 * @param xmlGerado
	 * @param oi	OrgInfo
	 * @return
	 * @throws Exception
	 */
	public static String geraLote (MLBRNFeLot lot, String envType) throws Exception
	{
		log.fine("ini");
		String[] xmlGerado = lot.getXMLs();
		//
		String dados[] = new String[xmlGerado.length];
		String conjunto = "";
		//
		for (int i = 0; i < xmlGerado.length; i++) 
		{
	        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance(); 
	        InputStream inputStream = new FileInputStream(new File(xmlGerado[i])); 
	        org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder().parse(inputStream); 
	        StringWriter stw = new StringWriter(); 
	        Transformer serializer = TransformerFactory.newInstance().newTransformer();
	        serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
	        serializer.transform(new DOMSource(doc), new StreamResult(stw));
	        dados[i] = stw.toString();
	        //
	        String validation = ValidaXML.validaXML(dados[i]);
	        if (!validation.equals(""))
	        {
	        	log.severe("Validation individuals XML files for LOT Error: "+validation);
	        	throw new Exception("Validation individuals XML files for LOT Error: "+validation);
	        }
			conjunto += dados[i];
		}
		//
		String lote = lot.getDocumentNo();
        String cabecalho = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"+
			     "<enviNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
			     "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
			     "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/enviNFe_v1.10.xsd\" versao=\"1.10\">" +
			   "<idLote>"+lote+"</idLote>";
		String rodape 	=  "\n</enviNFe>";
		String contatosEmXML = cabecalho + conjunto + rodape;
		//
		String validation = ValidaXML.validaEnvXML(contatosEmXML);
		if (!validation.equals(""))
		{
			log.severe("Validation XML LOT Error: "+validation);
			throw new Exception("Validation XML LOT Error: "+validation);
		}
		//
		MAttachment attachLotNFe = lot.createAttachment();
		File attachFile = new File(gravaArquivo(lote+"-env-lot.xml", contatosEmXML));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save();
		//
		return contatosEmXML;
	}	//	gerarLote
	
	/**
	 * Get Attachment
	 * 
	 * @param entry
	 * @return
	 */
	public static File getAttachmentEntryFile(MAttachmentEntry entry)
	{
		String localFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + entry.getName();
		String downloadedLocalFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + "TMP" + entry.getName();
		File attachedFile = new File(localFile);
		if (attachedFile.exists())
		{
			String localMD5hash = DigestOfFile.GetLocalMD5Hash(attachedFile);
			String entryMD5hash = DigestOfFile.getMD5Hash(entry.getData());
			if (localMD5hash.equals(entryMD5hash))
			{
				System.out.println("no need to download: local file is up-to-date");
			}
			else
			{
				System.out.println("file attached is different that local one, download and replace");
				File downloadedFile = new File(downloadedLocalFile);
				entry.getFile(downloadedFile);
				attachedFile.delete();
				downloadedFile.renameTo(attachedFile);
			}
		}
		else
		{
			entry.getFile(attachedFile);
		}
		return attachedFile;
	}	//	getAttachmentEntryFile
	
	/**
	 * 	Grava os dados em arquivo
	 * 
	 * @param caminho
	 * @param dados
	 * @throws Exception
	 */
	public static String gravaArquivo (String nomeArquivo, String dados) throws Exception
	{
		System.setProperty("file.encoding", "UTF-8");
		//
		String caminho = System.getProperty("java.io.tmpdir")
							+ System.getProperty("file.separator");
		//
		FileWriter fileWriter = new FileWriter(caminho + nomeArquivo, false);
		fileWriter.write(dados+"\r\n");
		fileWriter.flush();
		fileWriter.close();
		//
		return caminho + nomeArquivo;
	 }
	
	/**
	 * 	Get Value from XML
	 * 
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Node node, String Tag)
	{
		if (node == null)
			return "";
		
		NodeList nl = ((Element) node).getElementsByTagName(Tag);
		if (nl == null)
			return "";
		
		Element el = (Element) nl.item(0);
		if (el == null)
			return "";
		
		nl = el.getChildNodes();
		if (nl == null)
			return "";
		
		return nl.item(0).getNodeValue();
	}	//	getValue
	
	/**
	 * 	Get Value from XML
	 * 
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Document doc, String Tag)
	{
		if (doc.getElementsByTagName(Tag) == null)
			return "";
		
		if (doc.getElementsByTagName(Tag).item(0) == null)
			return "";
		
		return doc.getElementsByTagName(Tag).item(0).getTextContent();
	}	//	getValue
	
	/**
	 * 	Get Resource to include in XSD File
	 * 
	 * @param clazz
	 * @param name
	 * @return
	 */
	public static URL getResource(Class clazz, String name)
	{
        // Get the URL for the resource using the standard behavior
        URL result = clazz.getResource(name);
 
        // Check to see that the URL is not null and that it's a JAR URL.
        if (result != null && "jar".equalsIgnoreCase(result.getProtocol())) {
            // Get the URL to the "clazz" itself.  In a JNLP environment, the "getProtectionDomain" call should succeed only with properly signed JARs.
            URL classSourceLocationURL = clazz.getProtectionDomain().getCodeSource().getLocation();
            // Create a String which embeds the classSourceLocationURL in a JAR URL referencing the desired resource.
            String urlString = MessageFormat.format("jar:{0}!/{1}/{2}", classSourceLocationURL.toExternalForm(), packageNameOfClass(clazz).replaceAll("\\.", "/"), name);
 
            // Check to see that new URL differs.  There's no reason to instantiate a new URL if the external forms are identical (as happens on pre-1.5.0_16 builds of the JDK).
            if (urlString.equals(result.toExternalForm()) == false) {
                // The URLs are different, try instantiating the new URL.
                try {
                    result = new URL(urlString);
                } catch (MalformedURLException malformedURLException) {
                    throw new RuntimeException(malformedURLException);
                }
            }
        }
        return result;
    }
	
	/**
	 * 	packageNameOfClass
	 * 
	 * @param clazz
	 * @return
	 */
    public static String packageNameOfClass(Class clazz) 
    {
        String result = "";
        String className = clazz.getName();
        int lastPeriod = className.lastIndexOf(".");
 
        if (lastPeriod > -1) {
            result = className.substring(0, lastPeriod);
        }
        return result;
    }	//	packageNameOfClass
}	//	NFeUtil
