package org.adempierelbr.process;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.Provider;
import java.security.Security;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.TextUtil;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTF8String;
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
	 * 	Tag do CNPJ	
	 * 	http://www.iti.gov.br/images/icp-brasil/legislacao/Resolucoes/RESOLU__O_41_DE_18_04_2006.PDF
	 */
	private static final String  OID_CNPJ 	= "2.16.76.1.3.3";  
	private static final Integer ZERO 		= 0;
	
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
		dc.setIsValid(false);
		dc.save();
		
		//	No attachment
		if ((MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore.equals(dc.getlbr_CertType ()) 
				|| MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(dc.getlbr_CertType ())) 
				&& (att == null || att.getEntryCount() == 0))
		{
			String msg = "@Error@ - @FillMandatory@ " + Msg.getElement (getCtx(), "AD_Attachment_ID");
			addLog(msg);
			return msg;
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
					if (MLBRDigitalCertificate.LBR_CERTTYPE_ICPTrustStoreJKS.equals(dc.getlbr_CertType()))
					{
						dc.setIsValid(true);
						dc.save();
						//
						return "@OK@";
					}
					return "@Error@ - N\u00E3o foi encontrado um certificado v\u00E1lido";
				}
			}
			
			//	Obtém o CNPJ do certificado emitido pelo ICP
			dc.setlbr_CNPJ (getCNPJ (certificate));
			dc.setValidFrom (new Timestamp (certificate.getNotBefore().getTime()));
			dc.setValidTo (new Timestamp (certificate.getNotAfter().getTime()));
			dc.setIsValid(true);
			dc.saveEx();
			//
			if (dc.getValidTo().before(Env.getContextAsDate(Env.getCtx(), "#Date")))
			{
				String msg = "Certificado expirado em " + TextUtil.timeToString (certificate.getNotAfter(), "dd/MM/yyyy");
				addLog(msg);
				return msg;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			String msg = "@Error@ - Erro ao validar o certificado. Este certificado n\u00E3o funcionar\u00E1 com a NF-e. Verifique o log do sistema.";
			addLog(msg);
			return msg;
		}
		
		return "@Success@ - Certificado Válido";
	}	//	doIt
	
	/**
	 * 	Tenta extrair o CNPJ do certificado
	 * @param certificate
	 * @return CNPJ
	 */
	private String getCNPJ (X509Certificate certificate)
	{
		try
		{
			if (certificate.getSubjectAlternativeNames() == null)
				return null;
			
			for (List<?> list : certificate.getSubjectAlternativeNames())
			{
				if (list.size() != 2)
					throw new Exception("O tamanho das informações extras do certificado está incorreto");

				Object object1, object2;

				object1 = list.get(0);
				object2 = list.get(1);

				if (!(object1 instanceof Integer))
					throw new Exception("O valor não é do tipo \"java.lang.Integer\"");

				Integer tipo = (Integer) object1;

				if (tipo.equals (ZERO))
				{
					byte[] data = (byte[]) object2;
					OIDGeneric oidGeneric = OIDGeneric.getInstance(data);
					//
					if (oidGeneric != null && OID_CNPJ.equals(oidGeneric.getOid()))
						return oidGeneric.getData();
				}	
			}
		}
		catch (CertificateParsingException ex)
		{
			log.warning (ex.getMessage());
		}
		catch (Exception ex)
		{
			log.warning (ex.getMessage());
		}
		
		return null;
	}	//	getCNPJ
	
	/*
	 * Demoiselle Framework
	 * Copyright (C) 2010 SERPRO
	 * ----------------------------------------------------------------------------
	 * This file is part of Demoiselle Framework.
	 *
	 * Demoiselle Framework is free software; you can redistribute it and/or
	 * modify it under the terms of the GNU Lesser General Public License version 3
	 * as published by the Free Software Foundation.
	 *
	 * This program is distributed in the hope that it will be useful,
	 * but WITHOUT ANY WARRANTY; without even the implied warranty of
	 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	 * GNU General Public License for more details.
	 *
	 * You should have received a copy of the GNU Lesser General Public License version 3
	 * along with this program; if not,  see <http://www.gnu.org/licenses/>
	 * or write to the Free Software Foundation, Inc., 51 Franklin Street,
	 * Fifth Floor, Boston, MA  02110-1301, USA.
	 * ----------------------------------------------------------------------------
	 * Este arquivo é parte do Framework Demoiselle.
	 *
	 * O Framework Demoiselle é um software livre; você pode redistribuí-lo e/ou
	 * modificá-lo dentro dos termos da GNU LGPL versão 3 como publicada pela Fundação
	 * do Software Livre (FSF).
	 *
	 * Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA
	 * GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou
	 * APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU/LGPL em português
	 * para maiores detalhes.
	 *
	 * Você deve ter recebido uma cópia da GNU LGPL versão 3, sob o título
	 * "LICENCA.txt", junto com esse programa. Se não, acesse <http://www.gnu.org/licenses/>
	 * ou escreva para a Fundação do Software Livre (FSF) Inc.,
	 * 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA.
	 */

	/**
	 * Classe Generica   para   tratamento   de   atributos   de  alguns   atributos
	 * de Pessoa  Fisica, Pessoa Juridica   e   Equipamento   de   acordo   com os
	 * padroes definidos no DOC­ICP­04 pela ICP­BRASIL
	 *
	 * @author Humberto Pacheco - SERVICO FEDERAL DE PROCESSAMENTO DE DADOS
	 */
	public static class OIDGeneric {

		/**
		 * Instance for object.
		 *
		 * @param data -> byte array with certificate content.
		 * @return Object GenericOID
		 * @throws IOException
		 * @throws Exception
		 */
		public static OIDGeneric getInstance(byte[] data) throws IOException, Exception {
			@SuppressWarnings("resource")
			ASN1InputStream is = new ASN1InputStream(data);
			DERSequence sequence = (DERSequence) is.readObject();
			DERObjectIdentifier objectIdentifier = (DERObjectIdentifier) sequence.getObjectAt(0);
			DERTaggedObject tag = (DERTaggedObject) sequence.getObjectAt(1);
			DEROctetString octetString = null;
			DERPrintableString printableString = null;
			DERUTF8String utf8String = null;
			DERIA5String ia5String = null;

			try {
				octetString = (DEROctetString) DEROctetString.getInstance(tag);
			} catch (Exception ex) {
				try {
					printableString = DERPrintableString.getInstance(tag);
				} catch (Exception e1) {
					try {
						utf8String = DERUTF8String.getInstance(tag);
					} catch (Exception e2) {
						ia5String = DERIA5String.getInstance(tag);
					}
				}
			}

			OIDGeneric oidGenerico = new OIDGeneric();

			oidGenerico.setOid(objectIdentifier.getId());

			if (octetString != null) {
				oidGenerico.setData(new String(octetString.getOctets()));
			} else if (printableString != null) {
				oidGenerico.setData(printableString.getString());
			} else if (utf8String != null) {
				oidGenerico.setData(utf8String.getString());
			} else {
				oidGenerico.setData(ia5String.getString());
			}
			oidGenerico.initialize();
			return oidGenerico;
		}

		private String oid = null;
		private String data = null;
		protected Map<String, String> properties = new HashMap<String, String>();

		protected void initialize() {
			// Inicializa as propriedades do conteudo DATA
		}

		/**
		 *
		 * @param fields Campos do certificado
		 */
		protected void initialize(Object[] fields) {
			int tmp = 0;

			for (int i = 0; i < fields.length; i += 2) {
				String key = (String) fields[i];
				int size = ((Number) fields[i + 1]).intValue();
				properties.put(key, data.substring(tmp, Math.min(tmp + size, data.length())));
				tmp += size;
			}
		}

		/**
		 * Retorna o OID
		 *
		 * @return
		 */
		public String getOid() {
			return oid;
		}

		/**
		 * Retorna o conteudo de um OID
		 *
		 * @return
		 */
		public String getData() {
			return data;
		}

		public void setOid(String oid) {
			this.oid = oid;
		}

		public void setData(String data) {
			this.data = data;
		}
	}
	
}	//	ValidateCertificate


