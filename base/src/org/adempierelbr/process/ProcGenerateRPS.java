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

import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.NFSeRPSGenerator;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	ProcGenerateRPS
 *
 *  Process to Generate RPS
 *  
 *	 
 *	@author Alvaro Montenegro
 *  @contributor Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
 *  @contributor Ricardo Santana (Kenos, www.kenos.com.br), ralexsander
 *	@version $Id: ProcGenerateRPS.java, v2.0 2008/04/17 10:37:22 PM, amontenegro Exp $
 */
public class ProcGenerateRPS extends SvrProcess
{
	/** Data Emissão     	*/
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;
	
	/**	Arquivo	            */
	private String p_FilePath = null;
	
	/**	Extensão do Arquivo	*/
	public static final String ext = ".txt";
	
	/**	Organização			*/
	private Integer p_AD_Org_ID;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateRPS.class);
	
	/** Charset				*/
	private static final Charset ISO88591 = Charset.forName("ISO8859_1");

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
			else if(name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
			{
				p_FilePath = para[i].getParameter().toString();
			}
			else if(name.equals("AD_Org_ID"))
			{
				p_AD_Org_ID = para[i].getParameterAsInt();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//	Default Organization
		if (p_AD_Org_ID == null || p_AD_Org_ID <= 0)
			p_AD_Org_ID = Env.getContextAsInt(Env.getCtx(), "#AD_Org_ID");
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("GenerateRPS Process ");
		//
		if (p_AD_Org_ID <= 0)
			return "No organization found";
		//
		Properties ctx = getCtx();
		String     trxName = get_TrxName();
		String     fileName = p_FilePath;
		//
	    if (!fileName.endsWith(AdempiereLBR.getFileSeparator())) 
	    	fileName += AdempiereLBR.getFileSeparator();
		//
		String dateFrom = TextUtil.timeToString(p_DateFrom, "ddMMyyyy");
		String dateTo = TextUtil.timeToString(p_DateTo, "ddMMyyyy");
		//
		fileName += "RPS_" + dateFrom + "_" + dateTo + ext;
		generate (ctx, trxName, fileName);
		//
		return "GenerateRPS Process Completed ";
	}	//	doIt
	
	/**
	 * 	Gera o arquivo do RPS
	 * 
	 * @param ctx
	 * @param trxName
	 * @param fileName
	 * @param dateFrom
	 * @param dateTo
	 * @throws IOException
	 */
	private void generate (Properties ctx, String trxName, String fileName) throws Exception
	{
		MOrgInfo OrgInfo = MOrgInfo.get(ctx, p_AD_Org_ID, trxName);
		String ccm = OrgInfo.get_ValueAsString("lbr_CCM");
		//
		StringBuffer result = new StringBuffer("");
		result.append(NFSeRPSGenerator.generateHeader(ccm, p_DateFrom, p_DateTo));
		//
		final String whereClause = "IsCancelled='N' AND DateDoc BETWEEN " + 
			DB.TO_DATE(p_DateFrom) + " AND " + 
			DB.TO_DATE(p_DateTo) + " AND AD_Org_ID=? AND IsPrinted='N' " +
			"AND C_DocType_ID IN (SELECT C_DocType_ID FROM C_DocType WHERE lbr_NFModel LIKE 'RPS%') ";
		//
		List<MLBRNotaFiscal> list = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, whereClause, trxName)
			.setParameters(new Object[]{p_AD_Org_ID})
			.list();
		//
		for (MLBRNotaFiscal nf : list)
		{
			//	Gera a sequência de RPS neste momento
			if (!MSysConfig.getBooleanValue("LBR_REALTIME_RPS_NUMBER", true, nf.getAD_Client_ID())
					&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
			{
				nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), trxName, false));
				nf.save();
			}
			result.append(NFSeRPSGenerator.generateRPS(nf.getLBR_NotaFiscal_ID(), trxName));
		}
		result.append(NFSeRPSGenerator.generateFooter());
		TextUtil.generateFile(result.toString(), fileName, ISO88591.displayName());
	}	//	generate	
}	//	ProcGenerateRPS