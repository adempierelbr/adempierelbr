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

import org.adempierelbr.model.MDigitalCertificate;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
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
	public static final String algoritmo = "RSA";
	public static final String algoritmoAssinatura = "MD5withRSA";
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

	/**
	 * 	Assina o arquivo XML
	 * 
	 * @param String XML
	 * @param OrgInfo
	 * @throws Exception
	 */
	public static void Assinar(String caminhoxml, MOrgInfo oi) throws Exception
	{
		Integer cert = (Integer) oi.get_Value("LBR_DC_Org_ID");
		MDigitalCertificate dc = new MDigitalCertificate(Env.getCtx(), cert, null);
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
		else if (dc.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certType = "PKCS12";
		else if (dc.getlbr_CertType().equals(MDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certType = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		//
		AssinaturaDigital.loadKeys();
		AssinaturaDigital.assinarDocumento(caminhoxml);
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
		Signature assinatura = Signature.getInstance(algoritmoAssinatura);
		assinatura.initVerify(chave);
		assinatura.update(buffer, 0, buffer.length);
		return assinatura.verify(assinado);
	}	//	verificarAssinatura

	public static byte[] criarAssinatura(PrivateKey chavePrivada, byte[] buffer)
			throws Exception
	{
		Signature assinatura = Signature.getInstance(algoritmoAssinatura);
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

	public static void assinarDocumento(String localDocumento) throws Exception
	{
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse(
				new FileInputStream(localDocumento));
		System.out.println("Documento ok!");

		sig = XMLSignatureFactory.getInstance("DOM");

		ArrayList<Transform> transformList = new ArrayList<Transform>();
		Transform enveloped = sig.newTransform(Transform.ENVELOPED,
				(TransformParameterSpec) null);
		Transform c14n = sig.newTransform(C14N_TRANSFORM_METHOD,
				(TransformParameterSpec) null);
		transformList.add(enveloped);
		transformList.add(c14n);

		NodeList elements = doc.getElementsByTagName("infNFe");
		org.w3c.dom.Element el = (org.w3c.dom.Element) elements.item(0);
		String id = el.getAttribute("Id");
		Reference r = sig.newReference("#".concat(id), sig.newDigestMethod(
				DigestMethod.SHA1, null), transformList, null, null);
		si = sig.newSignedInfo(sig.newCanonicalizationMethod(
				CanonicalizationMethod.INCLUSIVE, (C14NMethodParameterSpec) null),
				sig.newSignatureMethod(SignatureMethod.RSA_SHA1, null), Collections
						.singletonList(r));

		KeyInfoFactory kif = sig.getKeyInfoFactory();
		List x509Content = new ArrayList();
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