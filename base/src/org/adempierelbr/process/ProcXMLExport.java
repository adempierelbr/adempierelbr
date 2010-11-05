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
package org.adempierelbr.process;

import java.io.File;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.pipo.CreateZipFile;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Process to export NF-e XML
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcXMLExport.java, v1.0 2010/06/24 4:33:11 PM, ralexsander Exp $
 */
public class ProcXMLExport extends SvrProcess
{
	/** Arquivo 		*/
	private String p_FilePath = null;
	private final String p_FolderKey = MSysConfig.getValue("LBR_FOLDERKEY", "ADempiereLBR", Env.getAD_Client_ID(Env.getCtx()));
	
	/**	Document Type	*/
	private int p_C_DocTypeTarget_ID = 0;
	
	/**	Period			*/
	private Timestamp dateFrom;
	private Timestamp dateTo;
	
	/**	Temp Directory	*/
	private final String p_Temp = System.getProperty("java.io.tmpdir") + File.separator + "LBR_XML_Package" + File.separator;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcXMLExport.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("DateDoc"))
			{
				dateFrom 	= (Timestamp) para[i].getParameter();
				dateTo 		= (Timestamp) para[i].getParameter_To();
			}
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para[i].getParameterAsInt();
			else if (name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("init");
		//
		File f = new File (p_Temp);
		if (f.exists())
			deleteDir (f);
		f = new File (p_Temp + p_FolderKey);
		f.mkdirs();
		//
		if (!(p_FilePath.endsWith(File.separator)))
			p_FilePath += File.separator;
		//
		StringBuffer whereClause = new StringBuffer("AD_Client_ID=?")
		.append(" AND C_DocTypeTarget_ID=?")
		.append(" AND DateDoc BETWEEN " + DB.TO_DATE(dateFrom))
		.append(" AND " + DB.TO_DATE(dateTo));
		//
		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);		
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), null);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()), p_C_DocTypeTarget_ID});
		//		
		for (PO po : q.list())
		{
			MLBRNotaFiscal nf = (MLBRNotaFiscal) po;
			//
			MAttachment attachment = nf.getAttachment();
			if(attachment == null)
				continue;
			//
			for(int index=0; index < attachment.getEntryCount(); index++)
			{
				String fileName = p_Temp + p_FolderKey + File.separator + attachment.getEntryName(index);
				//
				log.fine ("Saving to >> " + fileName);
				attachment.getEntryFile(index, new File(fileName));
			}
		}
		//
		String fileName = p_FilePath + "XML_NFe_" + TextUtil.timeToString(dateFrom, "ddMMyyyy") 
					+ "_" + TextUtil.timeToString(dateTo, "ddMMyyyy") + ".zip";
		CreateZipFile.zipFolder(new File(p_Temp), new File(fileName), p_FolderKey + File.separator + "**");
		//
		log.info("finale");
		//
		return "Processo finalizado";
	}	//	doIt
	
	/**
	 * 	Delete subdirs
	 * 
	 * @param dir
	 * @return
	 */
	public static boolean deleteDir (File dir)
	{
		if (dir.isDirectory())
		{
			String[] children = dir.list();
			for (int i = 0; i < children.length; i++)
			{
				boolean success = deleteDir (new File(dir, children[i]));
				if (!success)
				{
					return false;
				}
			}	//	for
		}
		// The directory is now empty so delete it
		return dir.delete();
	}	//	deleteDir
	
}	//	ProcXMLExport