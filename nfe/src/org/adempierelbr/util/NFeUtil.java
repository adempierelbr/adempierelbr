package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.StringWriter;

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

/**
 * 	Utilitários para gerar a NFe.
 * 
 * @author Ricardo Santana
 */
public class NFeUtil
{
	/**			Peso			**/
	private static final String peso = "4329876543298765432987654329876543298765432";
	
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
						* Integer.parseInt(peso.substring(i, i + 1));
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
	public static String geraCabecEnviNFe(){
		
		String cabecalho = "";
		cabecalho = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" + 
					"<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
					  "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
					  "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/cabecMsg_v1.02.xsd\" versao=\"1.02\">" +
					"<versaoDados>1.10</versaoDados>\n" +
					"</cabecMsg>";
		return cabecalho;
	}	//	geraCabecEnviNFe
	
	/**
	 * 	Gera o cabeçalho de consulta da NFe
	 * 
	 * @return	Cabeçalho de consulta
	 */
	public static String geraCabecConsultaNFe ()
	{
		String cabecalho = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" + 
						"<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\" " +
						  "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
						  "xsi:schemaLocation=\"http://www.portalfiscal.inf.br/nfe/cabecMsg_v1.02.xsd\" versao=\"1.02\">" +
						"<versaoDados>1.07</versaoDados>\n" +
						"</cabecMsg>";
		return cabecalho;
	}	//	geraCabecConsultaNFe
	
	/**
	 * 	Gera o XML para consulta de Lote
	 * 
	 * @param recibo
	 * @return	XML
	 */
	public static String consultaLote (String recibo)
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
	 * 	Gera o arquivo de Lote
	 * 
	 * @param xmlGerado
	 * @param oi	OrgInfo
	 * @return
	 * @throws Exception
	 */
	public static String gerarLote (MNFeLot lot) throws Exception
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
	        if (!ValidaXML.validaXML(dados[i]).equals(""))
	        {
	        	log.severe("Validation individuals XML files for LOT Error");
	        	throw new Exception("Validation individuals XML files for LOT Error");
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
		
		if (!ValidaXML.validaEnvXML(contatosEmXML).equals(""))
		{
			log.severe("Validation XML LOT Error");
			throw new Exception("Validation XML LOT Error");
		}
		//
		MAttachment attachLotNFe = lot.createAttachment();
		File attachFile = new File(gravaArquivo("Lote-"+lote+"-NFe.xml", contatosEmXML));
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
}	//	NFeUtil