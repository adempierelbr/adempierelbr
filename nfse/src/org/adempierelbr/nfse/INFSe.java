package org.adempierelbr.nfse;

import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;

/**
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: INFSe.java, v1.0 2015/MM/DD 9:54:38 AM, ralexsander Exp $
 *
 *	@contributor Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: INFSe.java, v2.0 2015/MM/DD 14:03:44, rfeitosa Exp $
 */
public interface INFSe
{
	public static final String TYPE_RPS_FILE 	= "RPS";
	public static final String TYPE_SYNCHRONOUS 	= "1";
	public static final String TYPE_ASYNCHRONOUS	= "0";
	//
	public String getType ();
	public byte[] getXML (MLBRNotaFiscal nf) throws Exception;
	public StringBuilder getRPS (List<MLBRNotaFiscal> nfs) throws Exception;
	public boolean transmit (MLBRNotaFiscal nf) throws Exception;	
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception;
	public boolean consult (MLBRNotaFiscal nf) throws Exception;
	public boolean consult (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception;
	public String printNFSe(MLBRNotaFiscal nf);
}	//	INFSe
