package org.adempierelbr.process;

import java.util.logging.Level;

import org.adempierelbr.nfe.NFeStatusServico;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 	Processo para verificar o status do recebimento de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class ProcGetStatus extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_AD_Org_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGetStatus.class);

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
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare
	
	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), p_AD_Org_ID);
		return NFeStatusServico.checkStatus(oi, true);
	}	//	doIt
}	//	ProcGetStatus
