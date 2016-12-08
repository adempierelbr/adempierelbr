/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MImage;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.report.ReportStarter;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v310.NfeProcDocument;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

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
	
	/** PDF File 	*/
	private String p_PDFFile = null;
			
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
			else if (name.equals("FileName"))
				p_PDFFile = (String) para[i].getParameter();
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
		String message 			= null;
		String extension 		= "dst.xml";
		String datePattern 		= "yyyy-MM-dd'T'HH:mm:ssZ";
		String numberPattern 	= "###0.00";
		Locale locale			= Locale.US;
		boolean printLogo		= true;
		//	Arquivo com os XML das notas Autorizadas relacionadas do lote.
		File lotXML 			= File.createTempFile ("lotXMLAut", ".xml");
		
		MAttachment att = null;
	    int tableID = getProcessInfo().getTable_ID();
		
		//	Carta de Correção Eletrônica
		if (tableID == MLBRNFeEvent.Table_ID)
		{
			MLBRNFeEvent event = new MLBRNFeEvent (Env.getCtx(), p_Record_ID, null);
			
			if (!"135".equals (event.getlbr_NFeStatus()) && !"136".equals (event.getlbr_NFeStatus()))
				return "CC-e n\u00E3o processada corretamente, n\u00E3o \u00E9 poss\u00EDvel fazer a impress\u00E3o";
			
			if (!MLBRNFeEvent.LBR_EVENTTYPE_CartaDeCorrecao.equals(event.getLBR_EventType()))
				return "Documento n\u00E3o possui modelo de impress\u00E3o";
			
			att = event.getAttachment (true);
			
			//	Verifica o nome do arquivo principal
			if (process.getJasperReport() == null || process.getJasperReport().isEmpty())
				reportName = "ReportCCe.jasper";
			else
				reportName = process.getJasperReport();
		}
		
		//	Nota Fiscal Eletrônica
		else if (tableID == MLBRNotaFiscal.Table_ID)
		{
			MLBRNotaFiscal doc = new MLBRNotaFiscal(getCtx(), p_Record_ID, null);
			
			//	Nota Fiscal de Serviço Eletrônica
			if (MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS.equals(doc.getlbr_NFModel()))
			{
				INFSe infSe = NFSeUtil.get (doc);
				
				if (infSe != null)
					return infSe.printNFSe(doc);
				else
					return "Documento sem formato de impress\u00E3o dispon\u00EDvel ou impress\u00E3o n\u00E3o permitida";
			}

			att = doc.getAttachment (true);
			
			if (!doc.islbr_IsOwnDocument())
				printLogo = false;
			
			//	Verifica o nome do arquivo principal
			if (MLBRNotaFiscal.LBR_DANFEFORMAT_1_NormalDANFE_Portrait.equals(doc.getlbr_DANFEFormat()))
				reportName = "DanfeMainPortraitA4.jasper";
			else if (MLBRNotaFiscal.LBR_DANFEFORMAT_2_NormalDANFE_Landscape.equals(doc.getlbr_DANFEFormat()))
				reportName = "DanfeMainLandscapeA4.jasper";
//			if (process.getJasperReport() == null || process.getJasperReport().isEmpty())
////				reportName = "DanfeMainPortraitA4.jasper";
//				reportName = "DanfeMainLandscapeA4.jasper";
//			else
//				reportName = process.getJasperReport();
			
			if (MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado.equals(doc.getlbr_NFeStatus()))
				message = "CANCELADO    CANCELADO\nC\u00D3PIA DE SEGURAN\u00C7A";
			
			else if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(doc.getlbr_NFeStatus()))
				message = "C\u00D3PIA DE SEGURAN\u00C7A     Sem autorizac\u00E3o";
		}
		
		//	Lote da Nota Fiscal Eletrônica
		else if (tableID == MLBRNFeLot.Table_ID)
		{
			//	Lote da NF-e
			MLBRNFeLot doc = new MLBRNFeLot(getCtx(), p_Record_ID, null);
			
			//	Lista de NF-e relacionada ao Lote.
			List <MLBRNotaFiscal> nfs = new Query (Env.getCtx(), MLBRNotaFiscal.Table_Name, "LBR_NFeStatus = '100' AND LBR_NFeLot_ID = ?", null)
										.setParameters(doc.getLBR_NFeLot_ID())
										.setOrderBy("DocumentNo")
										.list();			
			
			//	Gravar os XMLs no Arquivo nfXmlAutorized
			OutputStreamWriter osw = new OutputStreamWriter (new FileOutputStream(lotXML), TextUtil.UTF8);
			
			//	Adicionar Tab Principal do Arquivo
			osw.append(NFeUtil.XML_HEADER).append("<NFeLot>");
			
			//	Lista de Notas Fiscais Autorizadas
			for (MLBRNotaFiscal nf : nfs)
			{
				//	Arquivo Anexos na Nota Fiscal
				att = nf.getAttachment (true);	
				
				//	Verificar na Lista de Arquivos em Anexo o XML referente a Nota Fiscal Autorizada
				for (MAttachmentEntry entry : att.getEntries())
				{
					//	Try to find the right file
					if (entry != null && entry.getName().endsWith(extension))
					{
						try
						{
							//	Grava o XML no Arquivo nfXmlAutorized
							osw.append(new String (entry.getData(), TextUtil.UTF8).replace (NFeUtil.XML_HEADER, ""));
						}
						catch (Exception e)
						{
							log.warning(e.getMessage());
						}
					}
				}
			}
			
			//	Fechar Tag Principal
			osw.append("</NFeLot>");
			
			//	Fechando Arquivo
			osw.close();

			//	Verifica o nome do arquivo principal da Primeira Nota do Lote.
			if (MLBRNotaFiscal.LBR_DANFEFORMAT_1_NormalDANFE_Portrait.equals(nfs.get(0).getlbr_DANFEFormat()))
				reportName = "DanfeMainPortraitA4.jasper";
			else if (MLBRNotaFiscal.LBR_DANFEFORMAT_2_NormalDANFE_Landscape.equals(nfs.get(0).getlbr_DANFEFormat()))
				reportName = "DanfeMainLandscapeA4.jasper";					
		}
		
		else
			return "Not implemented yet";
		
		if (att == null || att.getEntryCount() == 0)
			return "Arquivo XML n\u00E3o encontrado para impress\u00E3o";
		
		MAttachmentEntry[] entries = att.getEntries();
		InputStream xml = null;
		InputStream xmlTmp = null;
		
		//	Lote da Nota Fiscal Eletrônica
		if (tableID == MLBRNFeLot.Table_ID)
		{
			xml = new FileInputStream (lotXML);
		}
		else
		{	
			for (MAttachmentEntry entry : entries)
			{
				//	Try to find the right file
				if (entry.getName().endsWith(extension))
				{
					xml = entry.getInputStream();
					break;
				}
				
				//	XML without authorization, preview only
				else if (entry.getName().endsWith("nfe.xml"))
				{
					xmlTmp = entry.getInputStream();
				}
			}
		}

		//	Uses temp xml for preview
		if (xml == null && xmlTmp != null)
		{
			xml = xmlTmp;
			message = "C\u00D3PIA DE SEGURAN\u00C7A     N\u00E3o Transmitido";
		}
		
		if (xml == null)
			return "Arquivo XML n\u00E3o encontrado para impress\u00E3o";
		
		try
		{
			//	Lote da Nota Fiscal Eletrônica
			if (tableID != MLBRNFeLot.Table_ID)
			{
				/*
				 * 	Tenta encontrar o formato de impressão baseado no XML
				 */
				NfeProcDocument nfe = NfeProcDocument.Factory.parse(xml);
				xml.reset();
				
				//	2-Landscape
				if ("2".equals(nfe.getNfeProc().getNFe().getInfNFe().getIde().xgetTpImp().getStringValue()))
					reportName = reportName.replace("[FORMAT]", "Landscape");
				else
					reportName = reportName.replace("[FORMAT]", "Portrait");
			}
		}
		catch (Exception e) 
		{
			xml.reset();
			reportName = reportName.replace("[FORMAT]", "Portrait");
		}
		
		Map<String, Object> files = getReportFile (printLogo);
		
		if (message != null)
			files.put("msgPrevisualizacao", message);

		//	Load the report
		JasperReport jasperReport = (JasperReport) JRLoader.loadObject ( (InputStream) files.remove (reportName));
		JRXmlDataSource dataSource = new JRXmlDataSource ( xml , jasperReport.getQuery().getText() );
		dataSource.setDatePattern(datePattern);
		dataSource.setNumberPattern(numberPattern);
		dataSource.setLocale(locale);

		//	Fill
		JasperPrint jasperPrint = JasperFillManager.fillReport (jasperReport, files, dataSource);

		//	Creates a PDF file instead of printing
		if (p_PDFFile != null)
		{
			File file = new File (p_PDFFile);
    		JasperExportManager.exportReportToPdfFile(jasperPrint, file.getAbsolutePath());
    		
    		return "@Success@";
		}
		
		ReportStarter.getReportViewerProvider ().openViewer (jasperPrint, "Impress\u00E3o de Documento");
		
		return "@Success@";
	}	//	doIt

	/**
	 * 		Get Report File
	 * 
	 * 	@return
	 * 	@throws AdempiereException
	 * 	@throws IOException 
	 */
	private Map<String, Object> getReportFile (boolean printLogo) throws AdempiereException, IOException
	{
		//	Procura o relatório anexado no processo
		MAttachment att = process.getAttachment (true);
		Map<String, Object> map = new HashMap<String, Object>();
		boolean found = false;

		if (att != null)
		{
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
		}

		//	Se não existir anexado, utiliza o default do resource
		if (!found)
		{
			ClassLoader cl = getClass().getClassLoader();
			InputStream report = cl.getResourceAsStream("reports/" + reportName);
			
			if (report == null)
				throw new AdempiereException ("@Error@ report not found");
			
			//	Main Report
			map.put (reportName, report);
			
			//	SubReports and Resources
			String subreport = reportName.replace(".jasper", "").replace(".jrxml", "");
			//
			for (String resourceName : getResourceListing (getClass(), "reports/"))
			{
				if (resourceName != null 
						&&	!resourceName.endsWith("jrxml")
						&& (resourceName.startsWith (subreport + "_Sub_") || resourceName.startsWith (subreport + "_Res_")))
					map.put (resourceName.replace(".jasper", "").replace(".jrxml", ""), cl.getResourceAsStream("reports/" + resourceName));
			}
		}
		
		MPInstance pinstance = new MPInstance (getCtx(), getAD_PInstance_ID(), null);
		MOrgInfo oi = MOrgInfo.get (getCtx(), pinstance.getAD_Org_ID(), null);
		
		//	Logo not found
		if (oi.getLogo_ID() <= 0 || !printLogo)
			return map;
		
		MImage mImage = MImage.get (getCtx(), oi.getLogo_ID());
		
		if (mImage.getBinaryData () != null)
		{
			InputStream is = new ByteArrayInputStream (mImage.getBinaryData ());
			map.put ("LOGO", is);
		}

		return map;
	}	//	doIt
	
	/**
	 * 	List directory contents for a resource folder. Not recursive.
	 * 	This is basically a brute-force implementation.
	 * 	Works for regular files and also JARs.
	 * 
	 * 	http://www.uofr.net/~greg/java/get-resource-listing.html
	 * 
	 * @author Greg Briggs
	 * @param clazz Any java class that lives in the same place as the resources you want.
	 * @param path Should end with "/", but not start with one.
	 * @return Just the name of each member item, not the full paths.
	 */
	private String[] getResourceListing (Class<?> clazz, String path)
	{
		//	MDFe
		if (reportName.startsWith("DAMDFeRetratoA4"))
			return new String[]{"DAMDFeRetratoA4_Sub_ValePedagio.jasper", "DAMDFeRetratoA4_Sub_Motoristas.jasper"};
		
		// NF-e Landscape
		if (reportName.startsWith("DanfeMainLandscapeA4"))
			return new String[]{"DanfeMainLandscapeA4_Sub_Item.jasper", "DanfeMainLandscapeA4_Sub_Invoice.jasper", "DanfeMainLandscapeA4_Sub_InfCompl.jasper"};
		
		//	NF-e Portrait
		if (reportName.startsWith("DanfeMainPortraitA4"))
			return new String[]{"DanfeMainPortraitA4_Sub_Item.jasper", "DanfeMainPortraitA4_Sub_Invoice.jasper", "DanfeMainPortraitA4_Sub_InfCompl.jasper"};
		
		//	Carta de Correção
		if (reportName.startsWith("ReportCCe"))
			return new String[]{};	//	No Subreports for this document
		
		//	Not found, try to catch all from the given path
		URL dirURL = clazz.getClassLoader().getResource(path);
		if (dirURL != null && dirURL.getProtocol().equals("file"))
		{
			try
			{
				/* A file path: easy enough */
				return new File(dirURL.toURI()).list();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		} 

		throw new UnsupportedOperationException("Cannot list files for URL "+dirURL);
	}	//	getResourceListing
}	//	PrintFromXML
