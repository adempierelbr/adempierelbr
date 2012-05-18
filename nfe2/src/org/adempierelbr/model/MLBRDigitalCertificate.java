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
package org.adempierelbr.model;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.sql.ResultSet;
import java.util.Enumeration;
import java.util.Properties;

import org.adempierelbr.util.SocketFactoryDinamico;
import org.apache.commons.httpclient.protocol.Protocol;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;

/**
 *	Model for LBR_DigitalCertificate
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *  @contributor Claudemir Todo Bom ( http://todobom.com )
 *         FR-LBR-34 - suporte a socket ssl dinâmico
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
	public MLBRDigitalCertificate(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDigitalCertificate (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**
	 * setCertificate
	 * Set all System.property for webservice connection
	 */
	public static void setCertificate(Properties ctx, int AD_Org_ID) throws Exception{

		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, null);

		Integer certOrg = (Integer) oi.get_Value("LBR_DC_Org_ID");
		Integer certWS = (Integer) oi.get_Value("LBR_DC_WS_ID");
		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS = new MLBRDigitalCertificate(Env.getCtx(), certWS, null);

		InputStream certFileOrg = dcOrg.getAttachment(true).getEntry(0).getInputStream();
		if (certFileOrg == null) {
			throw new Exception("Unable to find private key attachment");
		}

		String orgPassword = dcOrg.getPassword();
		
		KeyStore ks = KeyStore.getInstance("pkcs12");
		try {
			ks.load(certFileOrg, orgPassword.toCharArray());
		} catch (IOException e) {
			throw new Exception("Incorrect Certificate Password");
		}
		
		InputStream certFileWS = dcWS.getAttachment(true).getEntry(0).getInputStream();
		if (certFileWS == null) {
			throw new Exception("Unable to find webservices keystore attachment");
		}

        String alias = "";  
        Enumeration<String> aliasesEnum = ks.aliases();  
        while (aliasesEnum.hasMoreElements()) {  
            alias = (String) aliasesEnum.nextElement();  
            if (ks.isKeyEntry(alias)) break;  
        }
  		X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);
		PrivateKey privateKey = (PrivateKey) ks.getKey(alias, orgPassword.toCharArray());
		SocketFactoryDinamico socketFactoryDinamico = new SocketFactoryDinamico(certificate, privateKey);
		socketFactoryDinamico.setFileCacerts(certFileWS,dcWS.getPassword());

        Protocol protocol = new Protocol("https", socketFactoryDinamico, 443);  
        Protocol.registerProtocol("https", protocol);    		
		
	} //setCertificate

}	//	MDigitalCertificate
