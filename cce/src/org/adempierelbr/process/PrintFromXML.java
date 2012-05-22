package org.adempierelbr.process;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRCCe;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.apache.commons.io.IOUtils;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.report.JasperViewer;
import org.compiere.sqlj.Adempiere;
import org.compiere.util.Env;

/**
 * 		Processo para imprimir documentos fiscais
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: PrintFromXML.java, v1.0 2012/05/21 21:52:49 PM, ralexsander Exp $
 */
public class PrintFromXML extends SvrProcess
{
	/**	Record ID	*/
	private int p_Record_ID = 0;
	
	private MProcess process = null;
	private String reportName = "";
	
	/**
	 * 	Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log (Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_Record_ID = getRecord_ID();
		process = new MProcess (Env.getCtx(), getProcessInfo().getAD_Process_ID(), null);
	}	//	prepare
	
	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 * 	@throws IOException 
	 * 	@throws AdempiereException 
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt() throws JRException, AdempiereException, IOException 
	{
		MAttachment att = null;
		
		//	Carta de Correção Eletrônica
		if (getProcessInfo().getTable_ID() == MLBRCCe.Table_ID)
		{
			MLBRCCe cce = new MLBRCCe (Env.getCtx(), p_Record_ID, null);
			
//			if (!"135".equals (cce.getlbr_NFeStatus()) && !"136".equals (cce.getlbr_NFeStatus()))
//				return "CC-e não processada corretamente, não é possível fazer a impressão";
			
			att = cce.getAttachment (true);
			
			//	Verifica o nome do arquivo principal
			if (process.getJasperReport() == null || process.getJasperReport().isEmpty())
				reportName = "ReportCCe.jasper";
			else
				reportName = process.getJasperReport();
		}
		
		//	Nota Fiscal Eletrônica
		else if (getProcessInfo().getTable_ID() == MLBRNotaFiscal.Table_ID)
		{
			//	Verifica o nome do arquivo principal
			if (process.getJasperReport() == null || process.getJasperReport().isEmpty())
				reportName = "ImpressaoDanfePaisagemA4Report.jasper";
			else
				reportName = process.getJasperReport();
			//
			return "Not implemented yet";
		}
		else
			return "Not implemented yet";
		
		if (att == null)
			return "Arquivo não encontrado";
		
		MAttachmentEntry[] entries = att.getEntries();
		InputStream xml = null;
		
		for (MAttachmentEntry entry : entries)
		{
			if (entry.getName().endsWith("dst.xml"))
			{
				xml = entry.getInputStream();
				break;
			}
		}

		if (xml == null)
			return "Arquivo não encontrado";
		
		Map<String, InputStream> files = getReportFile ();
		//
		JRXmlDataSource dataSource = new JRXmlDataSource (xml);
		JasperReport jasperReport = (JasperReport) JRLoader.loadObject (files.remove (reportName));
		JasperPrint jasperPrint = JasperFillManager.fillReport (jasperReport, files, dataSource);

		JasperViewer.viewReport (jasperPrint, "Carta de Corre\u00E7\u00E3o Eletr\u00F4nica");
		
		return null;
	}	//	doIt

	/**
	 * 		Get Report File
	 * 
	 * 	@return
	 * 	@throws AdempiereException
	 * 	@throws IOException 
	 */
	private Map<String, InputStream> getReportFile () throws AdempiereException, IOException
	{
		//	Procura o relatório anexado no processo
		MAttachment att = process.getAttachment (true);
		Map<String, InputStream> map = new HashMap<String, InputStream>();
		boolean found = false;
		
		//	Anexa o relatório padrão caso não haja nenhum
		if (att == null)
		{	
			InputStream report = Adempiere.class.getClassLoader().getResourceAsStream("reports/ReportCCe.jasper");
			//
			att = process.createAttachment (true);
			att.addEntry ("ReportCCe.jasper", IOUtils.toByteArray (report));
			att.save ();
		}
		
		MAttachmentEntry[] entries = att.getEntries();		
		for (MAttachmentEntry entry : entries)
		{
			String name = entry.getName();
			//
			if (name.equals (reportName))
				found = true;
			//
			map.put (name, entry.getInputStream());
		}
		
		if (!found)
			throw new AdempiereException("Report not found");
		
		return map;
	}	//	doIt
}	//	PrintCCe
