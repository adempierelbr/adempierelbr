/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil				      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.				       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.				     *
 *****************************************************************************/
package org.adempierelbr.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SocketFactoryDinamico;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.commons.httpclient.protocol.Protocol;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	Model for LBR_DigitalCertificate
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *  @contributor Claudemir Todo Bom ( http://todobom.com )
 *  				<li>FR-LBR-34 - suporte a socket ssl dinâmico
 */
public class MLBRDigitalCertificate extends X_LBR_DigitalCertificate
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDigitalCertificate (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRDigitalCertificate

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDigitalCertificate (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRDigitalCertificate

	/**
	 * setCertificate
	 * Set all System.property for webservice connection
	 */
	public static void setCertificate (Properties ctx, int AD_Org_ID) throws Exception
	{
		MOrgInfo oi = MOrgInfo.get (ctx, AD_Org_ID, null);
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
		
		Integer certOrg = oiW.getLBR_DC_Org_ID();
		Integer certWS = oiW.getLBR_DC_WS_ID();
		
		if (certOrg == null || certOrg.intValue() < 1)
			certOrg = getValidCertificate (ctx, AD_Org_ID);
		
		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS = new MLBRDigitalCertificate(Env.getCtx(), certWS, null);
		MLBRDigitalCertificate dcICP = MLBRDigitalCertificate.getICPTrustStore();
		
		if (dcICP != null)
			//	TrustStore dinamica, compatível com todos os endereços da NF-e
			setTrustStoreDynamic (dcOrg, dcICP);
		else
			//	Necessário um certificado para cada webservice
			setTrustStore (dcOrg, dcWS);
	}	//	setCertificate

	/**
	 * 		Dynamic Trust Store
	 * 
	 * 	@param dcOrg
	 * 	@param dcICP
	 * 	@throws Exception
	 */
	private static void setTrustStoreDynamic (MLBRDigitalCertificate dcOrg, MLBRDigitalCertificate dcICP) throws Exception
	{
		String orgPassword = dcOrg.getPassword();
		String certType = null;
		InputStream certFileOrg = null;

		//	PKCS11 - A3 (Cartão)
		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11.equals (dcOrg.getlbr_CertType()))
		{
			certType = "PKCS11";
			//
			Provider p = new sun.security.pkcs11.SunPKCS11(dcOrg.getConfigurationFile());
			Security.addProvider(p);
		}
		
		//	PKCS12 - A1 (Arquivo)
		else if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals (dcOrg.getlbr_CertType()))
		{
			certType = "PKCS12";
			//
			certFileOrg = dcOrg.getAttachment(true).getEntry(0).getInputStream();
			if (certFileOrg == null)
				throw new Exception("Unable to find private key attachment");
		}
		
		//	Unknown Certificate
		else
			return;
		
		//	Load Drivers
		KeyStore ks = KeyStore.getInstance (certType);
		
		try 
		{
			ks.load (certFileOrg, orgPassword.toCharArray());
		}
		catch (IOException e)
		{
			throw new Exception("Incorrect Certificate Password");
		}
		
		InputStream certFileWS = dcICP.getAttachment(true).getEntry(0).getInputStream();
		if (certFileWS == null)
			throw new Exception("Unable to find webservices keystore attachment");
		
		String alias = dcOrg.getAlias();
		
		//	Default Alias
		if (alias != null 
				&& ks.containsAlias(alias)
				&& ks.isKeyEntry(alias))
			;	//	Do Nothing
		else
		{
			//	Try to find a valid key entry
			Enumeration<String> aliasesEnum = ks.aliases();  
			while (aliasesEnum.hasMoreElements()) 
			{  
				alias = (String) aliasesEnum.nextElement();  
				if (ks.isKeyEntry(alias) && ((X509Certificate) ks.getCertificate(alias)).getNotAfter().after (new Date()))	break;
			}
		}
  		X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);
		PrivateKey privateKey = (PrivateKey) ks.getKey(alias, orgPassword.toCharArray());
		SocketFactoryDinamico socketFactoryDinamico = new SocketFactoryDinamico(certificate, privateKey);
		socketFactoryDinamico.setFileCacerts (certFileWS, dcICP.getPassword());

		Protocol protocol = new Protocol("https", socketFactoryDinamico, 443);  
		Protocol.registerProtocol("https", protocol);
	}	//	setTrustStoreDynamic
	
	/**
	 * 		Trust Store
	 * 
	 * 	@param dcOrg
	 * 	@param dcWS
	 * 	@throws Exception
	 */
	private static void setTrustStore (MLBRDigitalCertificate dcOrg, MLBRDigitalCertificate dcWS) throws Exception
	{
		String certTypeOrg;
		String certTypeWS;
		
		//	Certificado PFX
		if (dcOrg.is_new())
			throw new Exception("Certificado Digital não encontrado");
		else if (dcOrg.getlbr_CertType() == null)
			throw new Exception("Tipo de Certificado Digital Inválido");
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11))
		{
			certTypeOrg = "PKCS11";
			//
			Provider p = new sun.security.pkcs11.SunPKCS11 (dcOrg.getConfigurationFile());
			Security.addProvider(p);
			//
			System.setProperty("javax.net.ssl.keyStore", "NONE");
		}
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
		{
			certTypeOrg = "PKCS12";
			File certFileOrg = NFeUtil.getAttachmentEntryFile(dcOrg.getAttachment(true).getEntry(0));
			//
			Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
			System.setProperty("javax.net.ssl.keyStore", certFileOrg.toString());
		}
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeOrg = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		//	Certificado do WS
		if (dcWS.is_new())
			throw new Exception("Sem TrustStore e Certificado Digital do WebServices não encontrado");
		else if (dcWS.getlbr_CertType() == null)
			throw new Exception("Tipo de Certificado do WebServices Inválido");
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeWS = "PKCS12";
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeWS = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		File certFileWS = NFeUtil.getAttachmentEntryFile(dcWS.getAttachment(true).getEntry(0));

		//	Commons
		System.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");
		System.setProperty("javax.net.ssl.keyStoreType", certTypeOrg);
		System.setProperty("javax.net.ssl.keyStorePassword", dcOrg.getPassword());
		//
		System.setProperty("javax.net.ssl.trustStoreType", certTypeWS);
		System.setProperty("javax.net.ssl.trustStore", certFileWS.toString());
		
		if (dcWS.getPassword() != null && !dcWS.getPassword().isEmpty())
			System.setProperty("javax.net.ssl.trustStorePassword", dcWS.getPassword());
		
		// BF - JRE > 1.6.19
		System.setProperty("sun.security.ssl.allowUnsafeRenegotiation", "true");
	}	//	setTrustStore
	
	/**
	 * 	Procura o certificado do ICP
	 * 	@return
	 */
	public static MLBRDigitalCertificate getICPTrustStore ()
	{
		String where = COLUMNNAME_AD_Client_ID + " IN (0," + Env.getAD_Client_ID(Env.getCtx()) + ") AND " +
					COLUMNNAME_IsActive + "='Y' AND " + 
					COLUMNNAME_lbr_CertType + "='" + 
					LBR_CERTTYPE_ICPTrustStoreJKS + "'";
		String order = COLUMNNAME_ValidTo + " DESC";
		//
		return new Query (Env.getCtx(), Table_Name, where, null).setOrderBy(order).first();
	}	//	getICPTrustStore
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{	
		//	No certificate type
		if (getlbr_CertType() == null)
		{
			log.saveError ("Error", Msg.getElement (getCtx(), "lbr_CertType"));
			return false;
		}
		
		/**
		 * 	New Record or Valid not changed, but dependent fields changed
		 */
		if (newRecord || (!is_ValueChanged(COLUMNNAME_IsValid) 
					&& (is_ValueChanged(COLUMNNAME_Alias) 
							|| is_ValueChanged(COLUMNNAME_Password) 
							|| is_ValueChanged(COLUMNNAME_lbr_CertType))))
			setIsValid(false);
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Gera um arquivo de configuração para o SmartCard, de acordo com o SO
	 * 	@return configuration file or null for error
	 */
	public String getConfigurationFile ()
	{
		String driverPath 		= null;
		String defaultDriver 	= null;
		String cfgFile 			= System.getProperty("java.io.tmpdir") + File.separator + "Token.cfg";

		byte[] library = null;
		//
		if (Env.isWindows())
		{
			library = getAttachmentData("dll");
			defaultDriver = "C:/Windows/System32/aetpkss1.dll";
		}
		
		else if (Env.isMac())
		{
			library = getAttachmentData("dylib");
			defaultDriver = "/usr/local/lib/libaetpkss.dylib";
		}
		else	//	Is Linux ?
		{
			library = getAttachmentData("so");
			defaultDriver = "/usr/lib/libaetpkss.so";
		}
		
		try 
		{
			//	Check driver - Default path
			if (library == null)
				driverPath = defaultDriver;
	
			//	Load from a file
			else
			{
				driverPath = System.getProperty("java.io.tmpdir") + File.separator + "SmartCard.Driver";
				//
				FileOutputStream fos = new FileOutputStream(driverPath);
				fos.write(library);
				fos.close();
			}
			
			OutputStreamWriter osw = new OutputStreamWriter (new FileOutputStream(cfgFile), TextUtil.UTF8);
			osw.write("name= SmartCard");
			osw.write("\nlibrary= " + driverPath);
			osw.flush();
			osw.close();
		}
		catch (FileNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return cfgFile;
	}	//	getConfigurationFile
	
	/**
	 * 	Add masks to CNPJ
	 */
	@Override
	public void setlbr_CNPJ(String lbr_CNPJ)
	{
		//	CNPJ
		if (lbr_CNPJ == null)
		{
			super.setlbr_CNPJ (null);
			return;
		}
		
		try
		{
			Pattern pattern = Pattern.compile ("(\\d{2})(\\d{3})(\\d{3})(\\d{4})(\\d{2})");
			Matcher matcher = pattern.matcher (lbr_CNPJ);
			if (matcher.matches ())
				lbr_CNPJ = matcher.replaceAll ("$1.$2.$3/$4-$5");
		}
		catch (Exception e){}
		super.setlbr_CNPJ (lbr_CNPJ);
	}	//	setlbr_CNPJ
	
	/**
	 * 	Obtém o certificado digital mais atual para a Organização
	 * @param ctx
	 * @param AD_Org_ID
	 * @return
	 */
	public static Integer getValidCertificate (Properties ctx, int AD_Org_ID)
	{
		int result = -1;
		//
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (ctx, AD_Org_ID, null), I_W_AD_OrgInfo.class);
		String CNPJ = oi.getlbr_CNPJ();
		
		//	CNPJ Inválido
		if (CNPJ == null || CNPJ.length() != 18)
			return result;
		
		String sql = "SELECT LBR_DigitalCertificate_ID " +
					   "FROM LBR_DigitalCertificate " +
					  "WHERE IsActive='Y' " +
					    "AND IsValid='Y' " +
					  	"AND AD_Org_ID IN (0, ?) " +
					  	"AND LBR_CNPJ=? " +
					  	"AND SYSDATE BETWEEN ValidFrom AND ValidTo";
		
		//	CNPJ Exato
		result = DB.getSQLValue (null, sql, AD_Org_ID, CNPJ);
		if (result > 0)
			return result;
		//
		sql = "SELECT LBR_DigitalCertificate_ID " +
				"FROM LBR_DigitalCertificate " +
			   "WHERE IsActive='Y' " +
			     "AND IsValid='Y' " +
				 "AND AD_Org_ID IN (0, ?) " +
				 "AND LBR_CNPJ LIKE ? " +
				 "AND SYSDATE BETWEEN ValidFrom AND ValidTo";
		
		//	CNPJ do Grupo
		result = DB.getSQLValue (null, sql, AD_Org_ID, CNPJ.substring (0, 10) + "%");
		return result;
	}
}	//	MDigitalCertificate
