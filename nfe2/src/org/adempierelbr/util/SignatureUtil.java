/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil					  *
 * This program is free software; you can redistribute it and/or modify it	*
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.					   *
 * You should have received a copy of the GNU General Public License along	*
 * with this program; if not, write to the Free Software Foundation, Inc.,	*
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					 *
 *****************************************************************************/
package org.adempierelbr.util;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.xml.crypto.AlgorithmMethod;
import javax.xml.crypto.KeySelector;
import javax.xml.crypto.KeySelectorException;
import javax.xml.crypto.KeySelectorResult;
import javax.xml.crypto.XMLCryptoContext;
import javax.xml.crypto.XMLStructure;
import javax.xml.crypto.dsig.CanonicalizationMethod;
import javax.xml.crypto.dsig.DigestMethod;
import javax.xml.crypto.dsig.Reference;
import javax.xml.crypto.dsig.SignatureMethod;
import javax.xml.crypto.dsig.SignedInfo;
import javax.xml.crypto.dsig.Transform;
import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.dom.DOMValidateContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.keyinfo.X509Data;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.crypto.dsig.spec.TransformParameterSpec;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3.x2000.x09.xmldsig.SignatureDocument;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import sun.misc.BASE64Encoder;

/**
 * 	Assina o arquivo XML
 * 
 * @contributor Ricardo Santana
 */
public class SignatureUtil
{
	/**		Document Type 	*/
	public static final String RECEPCAO_NFE			="1";
	public static final String CANCELAMENTO_NFE		="2";
	public static final String INUTILIZACAO_NFE		="3";
	@Deprecated
	public static final String CARTADECORRECAO_CCE	="4";
	public static final String EVENTO				="4";
	public static final String RPS					="5";
	public static final String RECEPCAO_MDFE		="6";
	public static final String OUTROS	="9";
	
	/**		Algoritmos		*/
	private static final String C14N_TRANSFORM_METHOD = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";
	
	private X509Certificate cert	= null;
	private KeyPair keyP			= null;
	
	private String certType 		= "";
	private String cfgFile 			= "";
	private boolean isToken 		= false;
	private String alias 			= "";
	private char[] senha 			= "".toCharArray();
	private InputStream jksData 	= null;
	
	private MOrgInfo oi				= null;
	private String docType			= null;
	private String tag				= null;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger (SignatureUtil.class);


	/**
	 * 	Signature Constructor
	 */
	public SignatureUtil (MOrgInfo oi, String docType, String tag)
	{
		this (oi, docType);
		//
		this.tag = tag;
		
		if (OUTROS.equals (docType) && tag == null)
			throw new AdempiereException ("Invalid Document Type of Signature - Tag for signature is empty");
	}	//	SignatureUtil
	
	/**
	 * 	Signature Constructor
	 */
	public SignatureUtil (MOrgInfo oi, String docType)
	{
		this.oi 		= oi;
		this.docType 	= docType;
		//
		if (docType == null)
			throw new AdempiereException ("Invalid Document Type of Signature");
	}	//	SignatureUtil

	/**
	 * 	Private Key
	 * @return
	 * @throws AdempiereException
	 */
	private PrivateKey getPrivateKey() throws AdempiereException
	{
		return keyP.getPrivate();
	}	//	getChavePrivada

	/**
	 * 	Load Keys
	 * @param oi
	 * @throws Exception
	 */
	private void loadKeys (MOrgInfo oi) throws Exception
	{
		Integer cert_ID = (Integer) oi.get_Value("LBR_DC_Org_ID");
		MLBRDigitalCertificate dc = new MLBRDigitalCertificate(Env.getCtx(), cert_ID, null);
		alias = dc.getAlias();
		senha = dc.getPassword().toCharArray();			
		//
		if (dc.getlbr_CertType() == null)
			throw new AdempiereException("Certificate Type is NULL");
		else if (dc.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11))
		{
			certType = "PKCS11";
			isToken = true;
			jksData = null;
			//
			cfgFile = dc.getConfigurationFile();
		}
		else if (dc.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
		{
			certType = "PKCS12";
			jksData = new FileInputStream(NFeUtil.getAttachmentEntryFile((dc.getAttachment().getEntry(0))));			
		}
		else if (dc.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certType = "JKS";
		else
			throw new AdempiereException("Unknow Certificate Type or Not implemented yet");
		
		if (isToken)
		{
			Provider p = new sun.security.pkcs11.SunPKCS11(cfgFile);  
			Security.addProvider(p);
		}
		//
		KeyStore keystore = KeyStore.getInstance(certType);
		keystore.load(jksData, senha);
		
		//		Default Alias
		if (alias != null 
				&& keystore.containsAlias(alias)
				&& keystore.isKeyEntry(alias))
			;	//	Do Nothing
		else
		{
			//	Try to find a valid key entry
			Enumeration<String> aliasesEnum = keystore.aliases();  
			while (aliasesEnum.hasMoreElements()) 
			{  
				alias = (String) aliasesEnum.nextElement();  
				if (keystore.isKeyEntry(alias) && ((X509Certificate) keystore.getCertificate(alias)).getNotAfter().after (new Date()))
					break;
			}
		}
		
		//	Get the private key
		Key key = keystore.getKey(alias, senha);
		//
		if (key instanceof PrivateKey)
		{
			java.security.cert.Certificate certTmp = keystore.getCertificate (alias);
			PublicKey publicKey = certTmp.getPublicKey();
			cert = (X509Certificate) keystore.getCertificate (alias);
			keyP = new KeyPair(publicKey, (PrivateKey) key);
		}
		
		cert.checkValidity();
	}	//	loadKeys
	
	/**
	 * 	Assina o Documento XML
	 * 
	 * @param localDocumento
	 * @param docType
	 * @throws Exception
	 */
	public void sign (XmlObject xml, XmlCursor rootCursor) throws Exception
	{
		log.fine ("Signing document: " + xml);

		//	Load Certificates
		loadKeys (oi);

		//	Carrega o documento
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse (new InputSource(new StringReader (xml.xmlText (NFeUtil.getXmlOpt()))));

		//	Factory
		XMLSignatureFactory sig = XMLSignatureFactory.getInstance("DOM");

		//	Transformações
		ArrayList<Transform> transformList = new ArrayList<Transform>();
		
		//	Adiciona Transformação (1) Enveloped (http://www.w3c.org/2000/09/xmldsig#enveloped-signature)
		transformList.add (sig.newTransform(Transform.ENVELOPED, (TransformParameterSpec) null));
		
		// 	Adiciona Transformação (2) C14N (http://www.w3c.org/TR/2001/REC-xml-c14n-20010315)
		transformList.add (sig.newTransform(C14N_TRANSFORM_METHOD, (TransformParameterSpec) null));
		
		//	TAG de Referência para posicionar a Assinatura
		String tag = getTag();

		//
		Reference r = null;
		
		/**
		 * 	Para RPS não é necessário assinar uma URI específica
		 */
		if (docType.equals(RPS))
			r = sig.newReference("", sig.newDigestMethod(DigestMethod.SHA1, null), transformList, null, null);
		
		else
		{
			/**
			 * 	Encontra a URI ID para assiná-la
			 */
			NodeList elements = doc.getElementsByTagName(tag);
			org.w3c.dom.Element el = (org.w3c.dom.Element) elements.item(0);
			String id = el.getAttribute("Id");
			el.setIdAttribute("Id", true);
			//
			r = sig.newReference("#".concat(id), sig.newDigestMethod(DigestMethod.SHA1, null), transformList, null, null);
		}
		
		SignedInfo si = sig.newSignedInfo(sig.newCanonicalizationMethod(CanonicalizationMethod.INCLUSIVE, (C14NMethodParameterSpec) null),
				sig.newSignatureMethod(SignatureMethod.RSA_SHA1, null), Collections.singletonList(r));

		KeyInfoFactory kif = sig.getKeyInfoFactory();
		List<X509Certificate> x509Content = new ArrayList<X509Certificate>();
		x509Content.add(cert);
		X509Data xd = kif.newX509Data(x509Content);
		KeyInfo ki = kif.newKeyInfo(Collections.singletonList(xd));

		DOMSignContext dsc = new DOMSignContext(getPrivateKey(), doc.getDocumentElement());
		XMLSignature signature = sig.newXMLSignature(si, ki);
		signature.sign(dsc);
		//
		StringWriter sw = new StringWriter ();
		//
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer trans = tf.newTransformer();
		trans.transform(new DOMSource(doc), new StreamResult (sw));
		//
		String xmlSignature = sw.toString();
		xmlSignature = xmlSignature.substring(xmlSignature.indexOf("<Signature"), xmlSignature.indexOf("</Signature>")+12);
		
		SignatureDocument signatureDocument = SignatureDocument.Factory.parse (xmlSignature);
		
		//	Cursor da assinatura
		XmlCursor cursor = signatureDocument.newCursor();
		cursor.toStartDoc();
		cursor.toNextToken();
		
		//	Adiciona a assinatura no documento
		rootCursor.toEndToken();
		cursor.moveXml(rootCursor);
	}	//	assinarDocumento
	
	/**
	 * 		Assinatura RPS usando SHA1withRSA + Base64
	 * 
	 * 	@param ascii
	 * 	@return
	 */
	public String signASCII (String ascii) 
	{
		log.fine("Signing: " + ascii);
		String encoded = null;
		//
		try 
		{
			//	Prepare Certificates
			loadKeys (oi);
			//
			Signature dsa = Signature.getInstance ("SHA1withRSA");
			dsa.initSign(getPrivateKey());
			dsa.update(ascii.getBytes("UTF-8"));
			encoded = new BASE64Encoder().encode (dsa.sign());
			//
			log.fine("Signature: " + encoded);
		} 
		catch (Exception ex) 
		{
			throw new AdempiereException ("Error siging RPS");
		}
		
		return encoded;
	}	//	signASCII
	
	/**
	 * 	Valida a Assinatura da NF-e
	 * 	Origem: https://docs.oracle.com/javase/7/docs/technotes/guides/security/xmldsig/Validate.java
	 * 	@return true if is valid
	 * 	@throws Exception
	 */
	public boolean isSignatureValid (XmlObject xml) throws Exception
	{
		String xmlText = xml.xmlText (NFeUtil.getXmlOpt());
		
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse (new InputSource(new StringReader (xmlText)));

		// Find Signature element
		NodeList nl = doc.getElementsByTagNameNS(XMLSignature.XMLNS, "Signature");
		if (nl.getLength() == 0)
			throw new Exception("Cannot find Signature element");

		// Create a DOM XMLSignatureFactory that will be used to unmarshal the
		// document containing the XMLSignature
		XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
		
		//	Select the correct tag, except for RPS
		if (!docType.equals (RPS))
		{
			NodeList elements = doc.getElementsByTagName(getTag());  
			org.w3c.dom.Element el = (org.w3c.dom.Element) elements.item(0);  
			el.getAttribute("Id");
			el.setIdAttribute("Id", true);     
		}
		
		// Create a DOMValidateContext and specify a KeyValue KeySelector
		// and document context
		DOMValidateContext valContext = new DOMValidateContext (new X509KeySelector(), nl.item(0));

		// unmarshal the XMLSignature
		XMLSignature signature = fac.unmarshalXMLSignature(valContext);

		// Validate the XMLSignature (generated above)
		boolean coreValidity = signature.validate(valContext);
		
		return coreValidity;
	}	//	isSignatureValid
	
	/**
	 * 	http://www.oracle.com/technetwork/articles/javase/dig-signature-api-140772.html
	 */
	public class X509KeySelector extends KeySelector 
	{
	    public KeySelectorResult select (KeyInfo keyInfo,
	                                    KeySelector.Purpose purpose,
	                                    AlgorithmMethod method,
	                                    XMLCryptoContext context)
	        throws KeySelectorException 
	    {
	        Iterator<?> ki = keyInfo.getContent().iterator();
	        while (ki.hasNext()) 
	        {
	            XMLStructure info = (XMLStructure) ki.next();
	            if (!(info instanceof X509Data))
	                continue;
	            X509Data x509Data = (X509Data) info;
	            Iterator<?> xi = x509Data.getContent().iterator();
	            while (xi.hasNext()) 
	            {
	                Object o = xi.next();
	                if (!(o instanceof X509Certificate))
	                    continue;
	                final PublicKey key = ((X509Certificate)o).getPublicKey();
	                // Make sure the algorithm is compatible
	                // with the method.
	                if (algEquals(method.getAlgorithm(), key.getAlgorithm())) 
	                {
	                    return new KeySelectorResult() 
	                    {
	                        public Key getKey() 
	                        { 
	                        	return key; 
	                        }
	                    };
	                }
	            }
	        }
	        throw new KeySelectorException("No key found!");
	    }	//	select

	    /**
	     *  Check algorithm
	     *  http://www.oracle.com/technetwork/articles/javase/dig-signature-api-140772.html
	     * 	@param algURI
	     * 	@param algName
	     * 	@return
	     */
	    boolean algEquals (String algURI, String algName)
	    {
	        if ((algName.equalsIgnoreCase("DSA") &&
	            algURI.equalsIgnoreCase(SignatureMethod.DSA_SHA1)) ||
	            (algName.equalsIgnoreCase("RSA") &&
	            algURI.equalsIgnoreCase(SignatureMethod.RSA_SHA1)))
	        {
	            return true;
	        }
	        else 
	        {
	            return false;
	        }
	    }	//	algEquals
	}	//	X509KeySelector
	
	/**
	 * 	Tag
	 * 	@return
	 */
	private String getTag ()
	{
		if (docType.equals(RECEPCAO_NFE))
			return "infNFe";
		else if (docType.equals(CANCELAMENTO_NFE))
			return "infCanc";
		else if (docType.equals(INUTILIZACAO_NFE))
			return "infInut";
		else if (docType.equals(EVENTO))
			return "infEvento";
		else if (docType.equals(RPS))
			return "RPS";
		else if (docType.equals(RECEPCAO_MDFE))
			return "infMDFe";
		else if (docType.equals(OUTROS))
			return tag;
		else
			return "";
	}	//	getSignedTag
}	//	SignatureUtil