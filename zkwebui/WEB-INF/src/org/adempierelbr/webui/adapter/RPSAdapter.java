package org.adempierelbr.webui.adapter;

import org.zkoss.util.media.AMedia;
import org.zkoss.zul.Filedownload;

/**
 * 		Usado para processar o RPS já que os métodos Web ficam
 * 			inacessíveis pelo processo.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RPSAdapter.java, v1.0 2012/10/18 6:54:22 PM, ralexsander Exp $
 */
public class RPSAdapter
{
	/**
	 * 	Constructor
	 * 	@param fileName
	 * 	@param rps
	 */
	public RPSAdapter (String fileName, StringBuffer rps)
	{
		AMedia media = new AMedia (fileName, "txt", "charset=ISO8859_1", rps.toString());
		Filedownload.save(media);
	}	//	RPSAdapter
}	//	RPSAdapter