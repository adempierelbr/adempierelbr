package org.adempierelbr.process;

import java.util.logging.Level;

import org.adempierelbr.nfe.NFeXMLGenerator;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

public class ProcGenerateNFEXml extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_LBR_NotaFiscal_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateNFEXml.class);

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
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		NFeXMLGenerator.geraCorpoNFe(p_LBR_NotaFiscal_ID);
		return "Processo finalizado";
	}	//	doIt
}	//	ProcGenerateNFEXml
