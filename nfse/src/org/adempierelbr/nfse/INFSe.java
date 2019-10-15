package org.adempierelbr.nfse;

import java.io.File;
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
	public static final String TYPE_RPS_FILE 		= "RPS";
	public static final String TYPE_SYNCHRONOUS 	= "1";
	public static final String TYPE_ASYNCHRONOUS	= "0";
	
	/**
	 * 	Get NFSe Type
	 * 	1 = Synchronous
	 * 	2 = Asynchronous
	 * 	@return
	 */
	public String getType ();
	
	/**
	 * 	Get the NFe representation as XML file
	 * 	@param nf
	 * 	@return
	 * 	@throws Exception
	 */
	public byte[] getXML (MLBRNotaFiscal nf) throws Exception;
	
	/**
	 * 	Convert NF to RPS
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public StringBuilder getRPS (List<MLBRNotaFiscal> nfs) throws Exception;
	
	/**
	 * 	Transmit the NFe
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	public boolean transmit (MLBRNotaFiscal nf) throws Exception;	
	
	/**
	 * 	Transmit a batch of NFe
	 * @param ctx
	 * @param AD_Org_ID
	 * @param trxName
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public boolean transmit (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception;
	
	/**
	 * 	Check if transmitted NFe was processed (asynchronous process)
	 * @param nf
	 * @return
	 * @throws Exception
	 */
	public boolean consult (MLBRNotaFiscal nf) throws Exception;
	
	/**
	 * 	Check if transmitted NFe was processed (asynchronous process)
	 * 	Batch
	 * @param ctx
	 * @param AD_Org_ID
	 * @param trxName
	 * @param nfs
	 * @return
	 * @throws Exception
	 */
	public boolean consult (Properties ctx, int AD_Org_ID, String trxName, List<MLBRNotaFiscal> nfs) throws Exception;
	
	/**
	 * 	Print or shows preview of NFSe
	 * @param nf
	 * @return
	 */
	public String printNFSe (MLBRNotaFiscal nf);
	
	/**
	 * 	Get PDF File
	 * 	@param nf
	 * 	@return PDF
	 */
	public File getPDF (MLBRNotaFiscal nf);
	
	/**
	 * Cancel NFS-e
	 * @param nf
	 * @return
	 */
	public String cancel(MLBRNotaFiscal nf);
}	//	INFSe
