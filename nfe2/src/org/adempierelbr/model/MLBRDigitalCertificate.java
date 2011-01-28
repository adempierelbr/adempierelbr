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

import java.io.File;
import java.security.Security;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.util.NFeUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for LBR_DigitalCertificate
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *	@version $Id: MDigitalCertificate.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class MLBRDigitalCertificate extends X_LBR_DigitalCertificate
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Certificado do Cliente		*/
	private static String certTypeOrg 	= "";

	/**	Certificado do WS			*/
	private static String certTypeWS	= "";

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
	 * getJKS
	 * Retorna o LBR_DigitalCertificate_ID referente ao Estado e Ambiente da NFe
	 * @param ctx
	 * @param envType
	 * @param C_Region_ID
	 * @return LBR_DigitalCertificate_ID
	 */
	public static int getJKS(Properties ctx, String envType){
		
		String sql = "SELECT MAX(LBR_DigitalCertificate_ID) " +
				     "FROM LBR_DigitalCertificate " +
				     "WHERE AD_Client_ID = ? AND lbr_NFeEnv = ? " +
				     "AND lbr_CertType = ? AND IsActive = 'Y'";
		
		return DB.getSQLValue(null, sql, new Object[]{Env.getAD_Client_ID(ctx),envType,MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore});
	} //getJKS
	
	public static void setCertificate(Properties ctx, int AD_Org_ID) throws Exception{
		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, null);
		int certWS = oi.get_ValueAsInt("LBR_DC_WS_ID");
		setCertificate(ctx,oi,certWS);
	}
	
	public static void setCertificate(Properties ctx, MOrgInfo oi) throws Exception{
		setCertificate(ctx,oi,getJKS(ctx,oi.get_ValueAsString("lbr_NFeEnv")));
	}
	
	/**
	 * setCertificate
	 * Set all System.property for webservice connection
	 */
	public static void setCertificate(Properties ctx, MOrgInfo oi, int certWS) throws Exception{

		int certOrg = oi.get_ValueAsInt("LBR_DC_Org_ID");
		
		if (certOrg <= 0 || certWS <= 0)
			throw new Exception("Erro com certificado. " +
					        "Certificado Org = " + certOrg + " - Certificado WS = " + certWS);
		
		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS = new MLBRDigitalCertificate(Env.getCtx(), certWS, null);

		//CERTIFICADO CLIENTE
		if (dcOrg.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeOrg = "PKCS12";
		else if (dcOrg.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeOrg = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		File certFileOrg = NFeUtil.getAttachmentEntryFile(dcOrg.getAttachment(true).getEntry(0));

		//CERTIFICADO WS
		if (dcWS.getlbr_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeWS = "PKCS12";
		else if (dcWS.getlbr_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeWS = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		File certFileWS = NFeUtil.getAttachmentEntryFile(dcWS.getAttachment(true).getEntry(0));

		//
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		//
		Properties props = System.getProperties();
		props.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");
		//
		props.setProperty("javax.net.ssl.keyStoreType", certTypeOrg);
		props.setProperty("javax.net.ssl.keyStore", certFileOrg.toString());
		props.setProperty("javax.net.ssl.keyStorePassword", dcOrg.getPassword());
		//
		props.setProperty("javax.net.ssl.trustStoreType", certTypeWS);	
		props.setProperty("javax.net.ssl.trustStore", certFileWS.toString());
		if(dcWS.getPassword()!=null && !"".equals(dcWS.getPassword()))
			props.setProperty("javax.net.ssl.trustStorePassword", dcWS.getPassword());
		// BF - JRE > 1.6.19
		props.setProperty("sun.security.ssl.allowUnsafeRenegotiation", "true");

		System.setProperties(props);
	} //setCertificate

}	//	MDigitalCertificate