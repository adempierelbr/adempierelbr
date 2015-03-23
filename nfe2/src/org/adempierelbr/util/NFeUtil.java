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
package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_C_City;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlValidationError;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.utils.DigestOfFile;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

/**
 * 	Utilitários para gerar a NFe.
 *
 * @author Ricardo Santana
 */
public abstract class NFeUtil
{

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);

	/** Versão				*/
	public static final String VERSAO_LAYOUT			= "3.10";
	public static final String VERSAO_APP		= "Kenos ERP 3.10";
	public static final String VERSAO_CCE		= "1.00";

	/** XML					*/
	private static String FILE_EXT      = "-dst.xml";
	public static final long XML_SIZE   = 500;

	/** Status				*/
	public static final String AUTORIZADA = "100";
	public static final String CANCELADA  = "101";
	public static final String CANCELADAPOREVENTO  = "135";

	/** Eventos				*/
	public static final String NFE_EVENTO_CCE 		= "110110";
	public static final String NFE_EVENTO_CANCEL 	= "110111";
	
	/** Reference NFeStatus */
	public static final int NFeReference   = 1100004;

	/**	XML Options			*/
	private static XmlOptions xmlOptions = null;
			
	/**
	 * Gera o cabeçalho da NFe
	 *
	 * @return cabecalho
	 */
	@Deprecated
	public static String geraCabecNFe(){
		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">";
		return cabecalho;
	} //geraCabecNFe

	/**
	 * Gera o rodapé da NFe
	 *
	 * return rodape
	 */
	@Deprecated
	public static String geraRodapNFe(){
		String rodape = "</NFe>";
		return rodape;
	} //geraRodapNFe

	/**
	 * Gera o cabeçalho distribuição
	 *
	 * @return Cabeçalho distribuiçãi
	 */
	@Deprecated
	public static String geraCabecDistribuicao(){
		String cabecalho = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
		 "<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\"  versao=\"" + VERSAO_LAYOUT + "\">";

		return cabecalho;
	}
	
	/**
	 * Método para gerar cabeçalho envio do lote NF 2.00
	 * @param region
	 * @return NfeRecepcao2Stub.NfeCabecMsgE
	 */
	public static RecepcaoEventoStub.NfeCabecMsgE geraCabecEvento (String region)
	{
		RecepcaoEventoStub.NfeCabecMsg cabecMsg = new RecepcaoEventoStub.NfeCabecMsg();
		cabecMsg.setCUF(region);
		cabecMsg.setVersaoDados(VERSAO_CCE);

		RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = new RecepcaoEventoStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	}	//	geraCabecEvento

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
	@Deprecated
	public static String geraRodapDistribuicao (String chNFe, String nProt, String tpAmb, String dhRecbto,
			                                    String digVal, String cStat, String xMotivo)
	{
		String dados = 	"<protNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"" + VERSAO_LAYOUT + "\"><infProt>" +
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
	 * Método para gerar dados para cancelamento NF 2.00
	 * @param Chave da NF-e
	 * @param Protocolo de Autorização
	 * @param Tipo de Ambiente
	 * @param Motivo
	 * @return	XML
	 */
	public static String geraMsgCancelamento (String chNFe, String protocolNFe, String envType, String motivo)
	{
		String msg = "<cancNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"2.00\">" +
							  "<infCanc Id=\"ID"+chNFe+"\">"+
						          "<tpAmb>"+envType+"</tpAmb>"+
						          "<xServ>CANCELAR</xServ>"+
						          "<chNFe>"+chNFe+"</chNFe>"+
						          "<nProt>"+protocolNFe+"</nProt>"+
						          "<xJust>"+motivo+"</xJust>"+
					          "</infCanc>"+
					  "</cancNFe>";
		return msg;
	}	// geraMsgCancelamento

	@Deprecated
	public static File generateDistribution(MLBRNotaFiscal nf) throws Exception{

		File attach = null;

		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().equals("")) //Verifica se foi processada
			return attach;

		String status = nf.getlbr_NFeStatus();

		if (status.equals(AUTORIZADA)){ //Autorizado o uso da NF-e
			FILE_EXT = "-dst.xml";
		}
		else if (status.equals(CANCELADA) || status.equals(CANCELADAPOREVENTO)){ //Cancelamento de NF-e homologado
			FILE_EXT = "-can.xml";
		}

		File xml = getAttachmentEntryFile(nf.getAttachment().getEntry(0));
		if (xml == null || xml.getName().endsWith(FILE_EXT)) //Já está no padrão de distribuição
			return attach;

	    String dados = XMLtoString(xml);
	    //
	    String cabecalho  = geraCabecDistribuicao();
		//
	    String rodape 	  = geraRodapDistribuicao(nf.getlbr_NFeID(), nf.getlbr_NFeProt(), getEnvType(nf.getCtx()),
	        		                                  timeToString(nf.getDateTrx()), nf.getlbr_DigestValue(),
	        		                                  status,getNFeStatus(status));
		//
		String dadosEmXML = cabecalho + dados + rodape;
		attach = new File(TextUtil.generateTmpFile(dadosEmXML, nf.getlbr_NFeID() + FILE_EXT));

		nf.getAttachment(true).delete(true); //Exclui anexo anterior. BUG ADempiere

		return attach;
	} //NFeDistribution

	/**
	 * update Attachment
	 * @param nf
	 * @param xml
	 * @return true = success, false = error
	 */
	@Deprecated
	public static boolean updateAttach(MLBRNotaFiscal nf, File xml){

		if (xml != null){
			MAttachment attachDist = nf.createAttachment(true);
			attachDist.addEntry(xml);
			return attachDist.save();
		}

		return true;
	}

	@Deprecated
	public static String XMLtoString(File xml) throws Exception{

		String dados = "";
		if (xml == null)
			return dados;

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        InputStream inputStream = new FileInputStream(xml);
        org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder().parse(inputStream);
        StringWriter stw = new StringWriter();
        Transformer serializer = TransformerFactory.newInstance().newTransformer();
        serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        serializer.transform(new DOMSource(doc), new StreamResult(stw));
        dados = stw.toString();

        if (dados.indexOf("<NFe") != -1){
	        dados = dados.substring(dados.indexOf("<NFe"),dados.indexOf("</NFe>")+6);
	        if (dados.startsWith("<NFe>")){
	        	dados = geraCabecNFe() + dados.substring(5);
	        }
        }

        return dados;
	} //XMLtoString
	
	/**
	 * removeIndent
	 * @param xml
	 * @return
	 */
	@Deprecated
	public static String removeIndent(String xml){
		
		StringBuilder newXML = new StringBuilder("");
		
		int i = 0;
		while (i < xml.length()){
			int end = xml.indexOf(">", i);
			if (end != -1){
				newXML.append(xml.substring(i, end+1));
				i = end + 1;
				
				int newTag = xml.indexOf("<", i);
				int endTag = xml.indexOf("</", i);
				
				if (endTag > newTag){
					i = newTag;
				}
				
				//check if value is blank
				if (endTag != -1){
					String value = xml.substring(i, endTag);
					if (value.trim().isEmpty())
						i = endTag;
				}
				
			}
		}
					
		return newXML.toString();
	} //removeIndent
	
	
	/**
	 * Get Attachment
	 *
	 * @param entry
	 * @return
	 */
	public static File getAttachmentEntryFile(MAttachmentEntry entry)
	{
		//BF - Attachment on FileSystem
		String fileName = entry.toString();
		if(fileName!=null && fileName.lastIndexOf(File.separator) != -1)
			fileName = fileName.substring(fileName.lastIndexOf(File.separator)+1);
		
		String localFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + fileName;
		String downloadedLocalFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + "TMP" + fileName;
		File attachedFile = new File(localFile);
		if (attachedFile.exists())
		{
			String localMD5hash = DigestOfFile.GetLocalMD5Hash(attachedFile);
			String entryMD5hash = DigestOfFile.getMD5Hash(entry.getData());
			if (localMD5hash.equals(entryMD5hash))
			{
				log.fine("no need to download: local file is up-to-date");
			}
			else
			{
				log.fine("file attached is different that local one, download and replace");
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
	 * String para Timestamp
	 * @param dhRecbto
	 * @return
	 */
	public static Timestamp stringToTime(String dhRecbto){
		return TextUtil.stringToTime(dhRecbto.replace('T', ' '), "yyyy-MM-dd HH:mm:ss");
	} //StringToDate

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
	 * @param ctx
	 * @return envType
	 */
	public static String getEnvType(Properties ctx){
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");

		if (envType == null || envType.equals(""))
			envType = "2"; //Homologação

		return envType;
	} //getEnvType

	public static String getNFeStatus(String status)
	{

		String sql = "SELECT Name FROM AD_Ref_List " +
				     "WHERE AD_Reference_ID = ? AND Value = ?";

		String NFeStatus = DB.getSQLValueString(null, sql,
				new Object[]{NFeReference, status});

		return NFeStatus;
	}	//getNFeStatus

	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	@Deprecated
	public static String validateSize (File file)
	{
		long size = file.length();
		if ((size/1024) > XML_SIZE)
		{
			String erro = "Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes";
			log.severe(erro);
			return erro;
		}

		return null;
	}	//	validateSize

	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	public static void validateSize (StringBuilder file)
	{
		long size = file.length();
		if ((size/1024) > XML_SIZE)
			throw new AdempiereException ("Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes");
	}	//	validateSize
	
	/**
	 * 		Verifica a NF e retorna o ID da mesma
	 * 
	 * 	@param nf a ser verificada
	 * 	@return	ID da NF Eletrônica ou NULL quando houver erro
	 */
	public static String checkXMLFile (MLBRNotaFiscal nf)
	{
		//	Validação preliminar
		if (nf == null || nf.getAttachment() == null || nf.getAttachment().getEntry(0) == null)
			return null;
		
		String nfeID = nf.getAttachment().getEntry(0).toString();
		//
		if(nfeID != null)
		{
			int beginIndex = nfeID.lastIndexOf(File.separator)+1;
			int endIndex   = nfeID.lastIndexOf('-');
			
			nfeID = nfeID.substring(beginIndex, endIndex == -1 ? nfeID.length() : endIndex);
		}
		
		return nfeID;
	}	//	checkXMLFile


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
	@SuppressWarnings("rawtypes")
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
	@SuppressWarnings("rawtypes")
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
	
	/**
	 * 	Pega o código da cidade
	 * 	
	 * 	@param oi
	 * 	@return	region code
	 */
	public static String getCityCode (MOrgInfo oi)
	{
		if (oi == null || oi.getC_Location_ID() == 0 || oi.getC_Location().getC_City_ID() == 0)
			return null;
		//
		I_W_C_City city = POWrapper.create(MCity.get (Env.getCtx(), oi.getC_Location().getC_City_ID()), I_W_C_City.class);
		if (city.getlbr_CityCode() > 0)
			return "" + city.getlbr_CityCode();
		//
		return null;
	}	//	getCityCode
	
	/**
	 * 	Pega o código do estado
	 * 	
	 * 	@param oi
	 * 	@return	region code
	 */
	public static int getRegionCode (MOrgInfo oi)
	{
		String result = getCityCode(oi);
		//
		try
		{
			if (result != null && result.length() > 2)
				return Integer.parseInt (result.substring(0, 2));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		//
		return 0;
	}	//	getRegionCode
	
	/**
	 * 	Wrap the Msg
	 * 
	 * 	@param msg
	 * 	@return
	 */
	public static String wrapMsg (String msg)
	{
		return "<Wrapper>" + msg + "</Wrapper>";
	}	//	wrapMsg
	
	/**
	 * 	Format Date and Time to XML Standard
	 * 	@param ts
	 * 	@return
	 */
	public static String formatTime (String ts)
	{
		return TextUtil.timeToString (TextUtil.stringToTime(ts, "yyyy-MM-dd'T'HH:mm:ss"), "dd/MM/yyyy' 'HH:mm:ss");
	}	//	formatTime
	
	/**
	 * 	Get XML Option to correctly convert the xml in text
	 * 	@return XmlOptions
	 */
	public static XmlOptions getXmlOpt ()
	{
		if (xmlOptions == null)
		{
			xmlOptions = new XmlOptions();
			xmlOptions.setUseDefaultNamespace();
		}
		//
		return xmlOptions;
	}	//	getXmlOpt

	/**
	 * 	Format Error Msg
	 * 	@param validationErrors
	 * 	@return
	 */
	private static String formatErrorMsg (List<XmlValidationError> validationErrors)
	{
		//	Result
		String result = "";
		
		//	Counter
		int counter = 1;

		Iterator<XmlValidationError> iter = validationErrors.iterator();
		while (iter.hasNext())
		{
			//	Exemplo : [1] Erro XYZ
			String msg = iter.next().toString();

			msg = msg.substring(1 + msg.indexOf(":"));
			msg = msg.substring(1 + msg.indexOf(":"));
			
			result += "[" + counter++ + "] " + msg + "\n";
		}
		
		//	Clean result log
		result = result.replace ("@http://www.w3.org/2000/09/xmldsig#", "");
		result = result.replace ("@http://www.portalfiscal.inf.br/nfe", "");
		result = result.replace ("'", "");
		
		return result;
	}	//	formatErrorMsg
	
	/**
	 * 	Validate
	 * 
	 * @param xmlNFe
	 * @throws XmlException
	 */
	public static void validate (XmlObject xmlNFe) throws XmlException
	{
		//	Validar o tamanho do arquivo
//		NFeUtil.validateSize (xmlNFe);

		// 	Set up the validation error listener.
		List<XmlValidationError> validationErrors = new ArrayList<XmlValidationError>();
		XmlOptions xmlOptions = new XmlOptions();
		xmlOptions.setErrorListener(validationErrors);
		
		XmlObject nfeDocument = XmlObject.Factory.parse (xmlNFe.toString());

		// 	During validation, errors are added to the ArrayList for
		// 		retrieval and printing by the printErrors method.
		boolean isValid = nfeDocument.validate (xmlOptions);
		
		// 	Print the errors if the XML is invalid.
		if (!isValid)
		{
			String result = NFeUtil.formatErrorMsg (validationErrors);
			log.fine (xmlNFe.toString());
			
			//	Errors
			throw new AdempiereException (result.toString());
		}
	}	//	validate
}	//	NFeUtil
