package org.adempierelbr.util;

import java.io.DataInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

public class ValidaXML {

	public static String ValidaDoc(String stringXml, String xsdFileName) {
		//Define the type of schema - we use W3C
		String schemaLang = "http://www.w3.org/2001/XMLSchema";
		//Get validation driver
		SchemaFactory factory = SchemaFactory.newInstance(schemaLang);
		//Create schema by reading it from an XSD file
		try 
		{
			//	Grava o arquivo no tmp
			URL xsdPath = org.adempierelbr.util.ValidaXML.class.getResource("/org/adempierelbr/nfe/xsd/" + xsdFileName);
//			File xsdFile = new File(xsdPath.getPath());
			//
			Schema schema = factory.newSchema(new StreamSource(xsdPath.toURI().toString()));
			Validator validator = schema.newValidator();
			//Perform the validation:
			validator.validate(new StreamSource(new StringReader(stringXml)));
			DocumentBuilderFactory fact = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = fact.newDocumentBuilder();
			builder.parse(new InputSource(new StringReader(stringXml)));
		} catch (Exception e) {
			if (e instanceof SAXParseException)
				return "XML Parse Error on Col: "
						+ ((SAXParseException) e).getColumnNumber()
						+ " | Lin: " + ((SAXParseException) e).getLineNumber()
						+ " - " + ((SAXParseException) e).getLocalizedMessage();
			else
				return "Unknow error attemping to validate XML.";
		}
		return "";
	}

	public static String validaEnvXML(String stringXml) {
		return ValidaDoc(stringXml, "enviNFe_v1.10.xsd");
	}

	public static String validaXML(String stringXml) {
		return ValidaDoc(stringXml, "nfe_v1.10.xsd");
	}

	public static String validaRetXML(String stringXml) {
		return ValidaDoc(stringXml, "retEnviNFe_v1.10.xsd");
	}

	public static String validaConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "consReciNFe_v1.10.xsd");
	}

	public static String validaCabecalho(String stringXml) {
		return ValidaDoc(stringXml, "cabecMsg_v1.02.xsd");
	}

	public static String validaRetornoConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "retConsReciNFe_v1.10.xsd");
	}

	public static String validaConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "consSitNFe_v1.07.xsd");
	}

	public static String validaRetConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "retConsSitNFe_v1.07.xsd");
	}

	public static String validaRecebimentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "procNFe_v1.10.xsd");
	}
	
	public static String validaPedCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "cancNFe_v1.07.xsd");
	}
	
	public static String validaRetCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "retCancNFe_v1.07.xsd");
	}
}