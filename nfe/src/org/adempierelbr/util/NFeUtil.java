package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.MessageFormat;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempierelbr.model.MNFeLot;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.util.CLogger;
import org.compiere.utils.DigestOfFile;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

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
							"<tpAmb>2</tpAmb>" +
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
	public static String geraLote (MNFeLot lot, String envType) throws Exception
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