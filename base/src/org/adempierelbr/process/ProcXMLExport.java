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
import java.lang.reflect.Constructor;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.pipo.CreateZipFile;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;

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
	private int p_C_DocTypeTarget_ID 	= 0;
	private int p_AD_Org_ID 			= 0;
	private int p_C_BPartner_ID 		= 0;
	private int p_C_BP_Group_ID 		= 0;
	private int p_M_Shipper_ID 			= 0;
	private Boolean p_LBR_IsCancelled	= false;
	
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
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BP_Group_ID"))
				p_C_BP_Group_ID = para[i].getParameterAsInt();
			else if (name.equals("M_Shipper_ID"))
				p_M_Shipper_ID = para[i].getParameterAsInt();
			else if (name.equals("lbr_IsCancelled"))
				p_LBR_IsCancelled = para[i].getParameterAsBoolean();
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
		//
		if (Ini.isClient() && p_FilePath == null)
			throw new AdempiereException ("@FillMandatory@ @File_Directory@");		
		
		//
		StringBuffer whereClause = new StringBuffer("AD_Client_ID=?")
		.append(" AND TRUNC (DateDoc) BETWEEN " + DB.TO_DATE(dateFrom))
		.append(" AND " + DB.TO_DATE(dateTo));

		if (p_C_DocTypeTarget_ID > 0)
			whereClause.append(" AND C_DocTypeTarget_ID="+p_C_DocTypeTarget_ID);
		else
			whereClause.append(" AND EXISTS (SELECT '1' ")
					.append("FROM C_DocType dt ")
					.append("WHERE dt.C_DocType_ID=LBR_NotaFiscal.C_DocTypeTarget_ID ")
					.append("AND dt.DocBaseType='NFB' ")
					.append("AND dt.lbr_IsOwnDocument='Y')");

		if (p_AD_Org_ID > 0)
			whereClause.append(" AND AD_Org_ID="+p_AD_Org_ID);

		if (p_C_BPartner_ID > 0)
			whereClause.append(" AND C_BPartner_ID="+p_C_BPartner_ID);
		
		if (p_M_Shipper_ID > 0)
			whereClause.append(" AND M_Shipper_ID="+p_M_Shipper_ID);
		
		if (p_C_BP_Group_ID > 0)
			whereClause.append(" AND EXISTS (SELECT '1' FROM C_BPartner bp WHERE bp.C_BPartner_ID=LBR_NotaFiscal.C_BPartner_ID AND bp.C_BP_Group_ID ="+p_C_BP_Group_ID+")");
		
		if (!p_LBR_IsCancelled)
			whereClause.append(" AND IsCancelled='N' ");	//	Não Exportar NFs Canceladas
		else
			whereClause.append(" OR LBR_NFeStatus IN ('" + MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado + 
													"', '" + MLBRNotaFiscal.LBR_NFESTATUS_151_CancelamentoDeNF_EHomologadoForaDePrazo +
													"', '" + MLBRNotaFiscal.LBR_NFESTATUS_220_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNaLegislação + "')");	//	Exportar NFs Canceladas
			
		//
		List<MLBRNotaFiscal> nfs = new Query(Env.getCtx(), MLBRNotaFiscal.Table_Name, whereClause.toString(), null)
					.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx())})
					.list();
		//		
		for (MLBRNotaFiscal nf : nfs)
		{
			MAttachment attachment = nf.getAttachment();
			if (attachment == null 
					|| (!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nf.getlbr_NFModel()) &&
							!MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica.equals(nf.getlbr_NFModel())))
				continue;

			//	Tenta encontrar o arquivo de distribuição
			MAttachmentEntry xml = null;
			for (MAttachmentEntry entry : attachment.getEntries())
			{
				if (entry.getName().endsWith("dst.xml"))
				{
					xml = entry;
					break;
				}
				else if (entry.getName().endsWith("xml"))
					xml = entry;
			}
			
			//	Se houver XML da NF-e
			if (xml != null)
			{
				//	Pasta para adicionar o XML das NFs de Entrada e Saída
				String folder = p_Temp + p_FolderKey + File.separator + TextUtil.toNumeric(nf.getlbr_CNPJ()) 
				+ File.separator + "Emitidas" + File.separator + (nf.isSOTrx() ? "Saída" : "Entrada");						
				
				//	Arquivo XML
				String fileName = folder + File.separator + xml.getName();
				//
				File file = new File (folder);
				if (!file.exists())
					file.mkdirs();
				//
				log.finer ("Saving to >> " + fileName);
				xml.getFile (new File (fileName));
				
				//	Adicionar Eventos da NFe
				List<MLBRNFeEvent> events = nf.getNFeEvents();
				
				//	Adicionando os Eventos
				for (MLBRNFeEvent event : events)
				{
					//	Se houver um Evento
					if (event != null && MLBRNFeEvent.DOCSTATUS_Completed.equals(event.getDocStatus()))
					{
						//	XMLs do Evento
						MAttachmentEntry xmlEvent = event.getAttachment().getEntry(0);
						
						//	Pasta dos Eventos
						folder = p_Temp + p_FolderKey + File.separator + TextUtil.toNumeric(nf.getlbr_CNPJ()) 
						+ File.separator + "Emitidas" + File.separator + 
						(nf.isSOTrx() ? "Saída" + File.separator + "Eventos" : 
							"Entrada" + File.separator + "Eventos");
						
						//	XML
						String fileNameEvent = folder + File.separator + xmlEvent.getName();
						//
						File fileEvent = new File (folder);
						if (!fileEvent.exists())
							fileEvent.mkdirs();
						//						
						log.finer ("Saving to >> " + fileNameEvent);
						xmlEvent.getFile (new File (fileNameEvent));
					}
				}

			}
		}
		//		Versão SWING
		if (Ini.isClient())
		{
			if (!(p_FilePath.endsWith(File.separator)))
				p_FilePath += File.separator;
			//
			String fileName = p_FilePath + "XML_NFe_" + TextUtil.timeToString(dateFrom, "ddMMyyyy") 
			+ "_" + TextUtil.timeToString(dateTo, "ddMMyyyy") + ".zip";
			CreateZipFile.zipFolder(new File(p_Temp), new File(fileName), p_FolderKey + File.separator + "**");
			//
		}
		else
			try
			{
				//
				String fileName = "XML_NFe_" + TextUtil.timeToString(dateFrom, "ddMMyyyy") 
				+ "_" + TextUtil.timeToString(dateTo, "ddMMyyyy") + ".zip";
				CreateZipFile.zipFolder(new File(p_Temp), new File(p_Temp+fileName), p_FolderKey + File.separator + "**");
				Class<?> clazz = Class.forName("org.adempierelbr.webui.adapter.XMLExportAdapter");
				Constructor<?> constructor = clazz.getConstructor (String.class, File.class);
				//
				constructor.newInstance (fileName, new File(p_Temp + fileName));
			} 
			catch (Exception e)
			{
				log.log (Level.SEVERE, "Error saving XML", e);
			}
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