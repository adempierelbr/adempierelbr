package org.adempierelbr.webui.adapter;

import java.io.File;
import java.io.FileNotFoundException;

import org.zkoss.util.media.AMedia;
import org.zkoss.zul.Filedownload;

/**
 * 		Usado para processar a Exportação dos XMLs já que os métodos Web ficam
 * 			inacessíveis pelo processo.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *  @contributor Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: XMLExportAdapter.java, v1.0 2012/12/17 5:17:00 PM, ralexsander Exp $ 
 */
public class XMLExportAdapter
{
	/**
	 * 	Constructor
	 * 	@param fileName
	 * 	@param xmls
	 * @throws FileNotFoundException 
	 */
	public XMLExportAdapter (String fileName, File xmls) throws FileNotFoundException
	{
		AMedia media = new AMedia (fileName, null, null, xmls, null);
		Filedownload.save(media);
	}	//	XMLExportAdapter
}	//	XMLExportAdapter