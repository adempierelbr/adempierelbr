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
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.xml.crypto.dsig.CanonicalizationMethod;
import javax.xml.crypto.dsig.DigestMethod;
import javax.xml.crypto.dsig.Reference;
import javax.xml.crypto.dsig.SignatureMethod;
import javax.xml.crypto.dsig.SignedInfo;
import javax.xml.crypto.dsig.Transform;
import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import javax.xml.crypto.dsig.dom.DOMSignContext;
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

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

/**
 * Assina o arquivo XML
 * 
 * @contributor Ricardo Santana
 */
public class AssinaturaDigital
{
	/**		Document Type 	*/
	public static final String RECEPCAO_NFE			="1";
	public static final String CANCELAMENTO_NFE		="2";
	public static final String INUTILIZACAO_NFE		="3";
	
	/**		Algoritmos		*/
	public static final String ALGORITIMO = "RSA";
	public static final String ALGORITMO_ASSINATURA = "MD5withRSA";
	
	private static final String C14N_TRANSFORM_METHOD = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";
	
	static XMLSignatureFactory sig;
	static X509Certificate cert;
	static KeyInfo ki;
	static SignedInfo si;
	static KeyPair keyP;
	
	private static String certType = "";
	private static String alias = "";
	private static char[] senha = "".toCharArray();
	private static InputStream jksData = null;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(AssinaturaDigital.class);

	/**
	 * 	Assina o arquivo XML
	 * 
	 * @param String XML
	 * @param OrgInfo
	 * @throws Exception
	 */
	public static void Assinar(String caminhoxml, MOrgInfo oi, String docType) throws Exception
	{
		Integer cert = (Integer) oi.get_Value("LBR_DC_Org_ID");
		MLBRDigitalCertificate dc = new MLBRDigitalCertificate(Env.getCtx(), cert, null);
		String aliascliente = dc.getAlias();
		String password = dc.getPassword();
		MAttachment attachJKS = dc.getAttachment();
		File jksFile = NFeUtil.getAttachmentEntryFile(attachJKS.getEntry(0));
		jksData = new FileInputStream(jksFile);
		alias = aliascliente;
		senha = password.toCharArray();
		//
		if (dc.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dc.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certType = "PKCS12";
		else if (dc.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certType = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		//
		AssinaturaDigital.loadKeys();
		AssinaturaDigital.assinarDocumento(caminhoxml, docType);
	}	//	Assinar

	public static PrivateKey getChavePrivada() throws Exception
	{
		return keyP.getPrivate();
	}	//	getChavePrivada

	public static PublicKey getChavePublica() throws Exception
	{
		return keyP.getPublic();
	}	//	getChavePublica

	public static void loadKeys() throws Exception
	{
		KeyStore keystore = KeyStore.getInstance(certType);
		keystore.load(jksData, senha);
		Key key = keystore.getKey(alias, senha);
		if (key instanceof PrivateKey)
		{
			java.security.cert.Certificate certTmp = keystore.getCertificate(alias);
			PublicKey publicKey = certTmp.getPublicKey();
			cert = (X509Certificate) keystore.getCertificate(alias);
			keyP = new KeyPair(publicKey, (PrivateKey) key);
		}
	}	//	loadKeys

	public static boolean verificarAssinatura(PublicKey chave, byte[] buffer,
			byte[] assinado) throws Exception
	{
		Signature assinatura = Signature.getInstance(ALGORITMO_ASSINATURA);
		assinatura.initVerify(chave);
		assinatura.update(buffer, 0, buffer.length);
		return assinatura.verify(assinado);
	}	//	verificarAssinatura

	public static byte[] criarAssinatura(PrivateKey chavePrivada, byte[] buffer)
			throws Exception
	{
		Signature assinatura = Signature.getInstance(ALGORITMO_ASSINATURA);
		assinatura.initSign(chavePrivada);
		assinatura.update(buffer, 0, buffer.length);
		return assinatura.sign();
	}	//	criarAssinatura

	public static String getValidade(X509Certificate cert)
	{
		try
		{
			cert.checkValidity();
			return "Certificado valido!";
		}
		catch (CertificateExpiredException e)
		{
			return "Certificado expirado!";
		}
		catch (CertificateNotYetValidException e)
		{
			return "Certificado invalido!";
		}
	}	//	getValidade
	
	public static void assinarDocumento(String localDocumento, String docType) throws Exception
	{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse(
				new FileInputStream(localDocumento));
		log.info(localDocumento + " ok !");

		sig = XMLSignatureFactory.getInstance("DOM");

		ArrayList<Transform> transformList = new ArrayList<Transform>();
		Transform enveloped = sig.newTransform(Transform.ENVELOPED,
				(TransformParameterSpec) null);
		Transform c14n = sig.newTransform(C14N_TRANSFORM_METHOD,
				(TransformParameterSpec) null);
		transformList.add(enveloped);
		transformList.add(c14n);
		
		String tag = null;

		if (docType.equals(RECEPCAO_NFE))
			tag = "infNFe";
		else if (docType.equals(CANCELAMENTO_NFE))
			tag = "infCanc";
		else if (docType.equals(INUTILIZACAO_NFE))
			tag = "infInut";
		
		NodeList elements = doc.getElementsByTagName(tag);
		org.w3c.dom.Element el = (org.w3c.dom.Element) elements.item(0);
		String id = el.getAttribute("Id");
		//
		Reference r = sig.newReference("#".concat(id), sig.newDigestMethod(
				DigestMethod.SHA1, null), transformList, null, null);
		si = sig.newSignedInfo(sig.newCanonicalizationMethod(
				CanonicalizationMethod.INCLUSIVE, (C14NMethodParameterSpec) null),
				sig.newSignatureMethod(SignatureMethod.RSA_SHA1, null), Collections
						.singletonList(r));

		KeyInfoFactory kif = sig.getKeyInfoFactory();
		List<X509Certificate> x509Content = new ArrayList<X509Certificate>();
		x509Content.add(cert);
		X509Data xd = kif.newX509Data(x509Content);
		ki = kif.newKeyInfo(Collections.singletonList(xd));

		DOMSignContext dsc = new DOMSignContext(getChavePrivada(), doc
				.getDocumentElement());
		XMLSignature signature = sig.newXMLSignature(si, ki);
		signature.sign(dsc);
		OutputStream os = new FileOutputStream(localDocumento);
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer trans = tf.newTransformer();
		trans.transform(new DOMSource(doc), new StreamResult(os));
	}	//	assinarDocumento
}