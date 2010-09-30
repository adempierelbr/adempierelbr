package org.adempierelbr.process;

import java.util.logging.Level;

import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.nfe.NFeRecepcao;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 	Processo para transmitir um Lote de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class ProcLotTransmission extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_LBR_NFeLot_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcLotTransmission.class);

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
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		p_LBR_NFeLot_ID = getRecord_ID();
	}	//	prepare
	
	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		MLBRNFeLot lot = new MLBRNFeLot (Env.getCtx(), p_LBR_NFeLot_ID, get_TrxName());
		//
		if (lot.isProcessed())
			return "Lote já processado";
		else if (lot.isEmpty())
			return "Lote vazio";
		//
		NFeRecepcao.sendNFe(lot);
		return "Processo finalizado";
	}	//	doIt
}	//	ProcLotTransmission
