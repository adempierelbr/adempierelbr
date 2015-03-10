/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil					  *
 * This program is free software; you can redistribute it and/or modify it	  *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		      *
 * See the GNU General Public License for more details.					      *
 * You should have received a copy of the GNU General Public License along	  *
 * with this program; if not, write to the Free Software Foundation, Inc.,	  *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					  *
 *****************************************************************************/
package org.adempierelbr.util;

import java.io.IOException;
import java.io.StringReader;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.adempierelbr.exceptions.ValidationXMLException;
import org.compiere.util.CLogger;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

@Deprecated
public class ValidaXML
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ValidaXML.class);
	
	/**
	 * Variavel que armazena os arquivos para validação da Nota Fiscal de forma Static,
	 * deixando os arquivos em memória após a primeira chamada.
	 */
	private static Map<String,Validator> mapvalidator = new HashMap<String,Validator>();
	
	public static final String DOC_NFE = "nfe_v";
	
	/** 
	 * 		Método que faz a validação de arquivos XML. 
	 * 
	 * @param xmlContent 
	 * @param xsdName 
	 * @throws Throwable 
	 */  
	public static void validaDocEx (String xmlContent, String xsdName) throws ValidationXMLException
	{
		String result = ValidaDoc (xmlContent, xsdName);
		//
		if (result != null && result.length() > 0)
			throw new ValidationXMLException ("Erro validando o XML\n\nXSD: " + xsdName + "\n\nErros: " + result);
	}	//	ValidaDocEx
	
	 /** 
	 * Método que faz a validação de arquivos XML. 
	 * 
	 * @param xmlContent 
	 * @param xsdFullFileName 
	 * @return 
	 * @throws Throwable 
	 */  
	public static String ValidaDoc (String xmlContent, String xsdFullFileName)
	{ 
		// Guardo os erros de validação.   
		ErrorHandler errorHandler = new ErrorHandler();
		
		if (!xsdFullFileName.endsWith (".xsd"))
			xsdFullFileName += ".xsd";
		
		try 
		{
			// Caminho completo do xsd
			URL xsdPath = org.adempierelbr.util.ValidaXML.class.getResource("/org/adempierelbr/nfe/xsd/" + xsdFullFileName);
			 
			// Crio a fabrica.  
			DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();  
	  
			// Habilito suporte a namespace.   
			documentBuilderFactory.setNamespaceAware(true);  
			documentBuilderFactory.setValidating(true);  
	  
			// Atributos para validação.  
			documentBuilderFactory.setAttribute("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");  
			documentBuilderFactory.setAttribute("http://java.sun.com/xml/jaxp/properties/schemaSource", xsdPath.toURI().toString());  
	  
			// Crio uma builder para obter o Document de um .xml  
			DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();  
	  
			documentBuilder.setErrorHandler(errorHandler);  
	  
			// Declaro as variaveis a serem utilizadas.  
			Document document = null;	  
					
			// Primeiro parse.
			log.fine ("Parsing: " + xmlContent);
			document = documentBuilder.parse(new InputSource(new StringReader(xmlContent)));
	  
			SchemaFactory schemaFactory = SchemaFactory.newInstance(javax.xml.XMLConstants.W3C_XML_SCHEMA_NS_URI);
	  
			if(!mapvalidator.containsKey(xsdFullFileName))
			{
				// carrega um WXS schema, representada por uma instacia Schema.
				Source schemaFile = new StreamSource(xsdPath.toURI().toString());
				Schema schema = schemaFactory.newSchema(schemaFile);
		  
				// Cria um objeto ValidationHandler que pode ser usado para validar uma instancia document.
				Validator validator = schema.newValidator();
				mapvalidator.put(xsdFullFileName, validator);
			}
			
			// Indica o objeto que irá tratar os error. Observe que ao encontrar
			// um erro, este é simplesmente guardado e processo de validação continua.
			// Efetua a validação propriamente. 
			log.fine ("Validating XML...");
			mapvalidator.get(xsdFullFileName).validate(new DOMSource(document));
		}
		catch (SAXParseException e)
		{
			String erros = "XML Validate Error: ";
			
			// Se algum erro foi encontrado, apresenta-o.  
			if (!errorHandler.handlerList.isEmpty()) 
			{  
				for (String error : errorHandler.handlerList) 
				{  
					erros += "\n" + error;  
				}			   
			} 
			return erros.replaceAll("'", "");  
		}  
		catch (SAXException e) 
		{
			return e.getMessage();  
		}
		catch (ParserConfigurationException e)
		{			
			return e.getMessage();
		}
		catch (IOException e)
		{			
			return e.getMessage();
		}
		catch (URISyntaxException e)
		{			
			return e.getMessage();
		} 
		
		return "";  
	}	//	ValidaDoc
	@Deprecated
	public static String validaEnvXML(String stringXml) {
		return ValidaDoc(stringXml, "enviNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaXML(String stringXml) {
		return ValidaDoc(stringXml, "nfe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRetXML(String stringXml) {
		return ValidaDoc(stringXml, "retEnviNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "consReciNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRetornoConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "retConsReciNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "consSitNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRetConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "retConsSitNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRecebimentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "procNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaPedCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "cancNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRetCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "retCancNFe_v2.00.xsd");
	}	
	@Deprecated
	public static String validaPedInutilizacaoNFe(String stringXml) {
		return ValidaDoc(stringXml, "inutNFe_v2.00.xsd");
	}
	@Deprecated
	public static String validaRetInutilizacaoNFe(String stringXml) {
		return ValidaDoc(stringXml, "retInutNFe_v2.00.xsd");
	}
}

/**
 * 	@author Dilnei Cunha 
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 */
class ErrorHandler implements org.xml.sax.ErrorHandler
{
	final List<String> handlerList= new ArrayList<String>();  
	
	@Override  
	public void warning(SAXParseException exception) throws SAXException 
	{  
		handlerList.add("ATENÇÃO: " + exception.getMessage());  
	}	   
	@Override  
	public void error(SAXParseException exception) throws SAXException 
	{  
		handlerList.add("ERRO: " + exception.getMessage());  
	}
	@Override  
	public void fatalError(SAXParseException exception) throws SAXException 
	{  
		handlerList.add("ERRO FATAL: " + exception.getMessage());  
	}  
} 	//	ErrorHandler