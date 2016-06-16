package org.adempierelbr.process;

import java.io.InputStream;
import java.security.KeyStore;
import java.security.Provider;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.sql.Timestamp;
import java.util.Enumeration;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Validate the Digital Certificate
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ValidateCertificate.java, v1.0 2016/06/16 11:03:19 AM, ralexsander Exp $
 */
public class ValidateCertificate extends SvrProcess
{
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare() {}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		MLBRDigitalCertificate dc = new MLBRDigitalCertificate (getCtx(), getRecord_ID(), get_TrxName());
		MAttachment att = dc.getAttachment (true);

		//	No attachment
		if ((MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore.equals(dc.getlbr_CertType ()) 
				|| MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(dc.getlbr_CertType ())) 
				&& (att == null || att.getEntryCount() == 0))
		{
			return "@Error@ - @FillMandatory@" + Msg.getElement (getCtx(), "AD_Attachment");
		}
		
		try
		{
			String certType = dc.getlbr_CertType();
			String pass = dc.getPassword();
			
			InputStream certFileOrg = null;
			
			//	PKCS11 - A3 (Cartão)
			if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11.equals (dc.getlbr_CertType()))
			{
				certType = "PKCS11";
				//
				Provider p = new sun.security.pkcs11.SunPKCS11(dc.getConfigurationFile());
				Security.addProvider(p);
			}
			
			//	PKCS12 - A1 (Arquivo)
			else if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(dc.getlbr_CertType()))
			{
				certType = "PKCS12";
				certFileOrg = att.getEntry(0).getInputStream();
			}
			
			else if (MLBRDigitalCertificate.LBR_CERTTYPE_ICPTrustStoreJKS.equals(dc.getlbr_CertType()))
				certType = "JKS";
			
			String alias = dc.getAlias();
			
			if (alias == null || alias.length() == 0)
				alias = "nfe";			//	default
				
			if (pass == null || pass.length() == 0)
			{
				pass = "changeit";		//	default
				dc.setPassword(pass);
			}
			//
			KeyStore ks = KeyStore.getInstance (certType);
			ks.load (certFileOrg, pass.toCharArray());
			X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);
			//
			if (certificate == null)
			{
				Enumeration<String> aliases = ks.aliases();
				while (aliases.hasMoreElements()) 
				{
					alias = aliases.nextElement();
					X509Certificate tmp = (X509Certificate) ks.getCertificate (alias);
					
					if (tmp != null && (certificate == null || tmp.getNotAfter().after (Env.getContextAsDate(Env.getCtx(), "#Date"))))
					{
						certificate = tmp;
						dc.setAlias(alias);
						break;
					}	
				}
				
				if (certificate == null)
				{
					return "@Erroe@ - N\u00E3o foi encontrado um certificado v\u00E1lido";
				}
			}
			dc.setValidFrom (new Timestamp (certificate.getNotBefore().getTime()));
			dc.setValidTo (new Timestamp (certificate.getNotAfter().getTime()));
			dc.setIsValid(true);
			dc.saveEx();
			//
			if (dc.getValidTo().before(Env.getContextAsDate(Env.getCtx(), "#Date")))
				return "@Error@ - Certificado expirado em " + TextUtil.timeToString (certificate.getNotAfter(), "dd/MM/yyyy");
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "@Error@ - Erro ao validar o certificado. Este certificado n\u00E3o funcionar\u00E1 com a NF-e. Verifique o log do sistema.";
		}
		
		return "@Success@ - Certificado Válido";
	}	//	doIt
}	//	ValidateCertificate
