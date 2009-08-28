package org.adempierelbr.process;

import java.util.logging.Level;

import org.adempierelbr.model.MNFeLot;
import org.adempierelbr.nfe.NFeRetRecepcao;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 	Processo para transmitir um Lote de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class ProcLotReturn extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_LBR_NFeLot_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcLotReturn.class);

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
		MNFeLot lot = new MNFeLot (Env.getCtx(), p_LBR_NFeLot_ID, get_TrxName());
		//
		if (lot.isProcessed())
			return "Lote já processado";
		else if (lot.isEmpty())
			return "Lote vazio";
		else if (lot.islbr_LotReceived())
			return "Lote já Recebido";
		else if (!lot.islbr_LotSent())
			return "Lote ainda não enviado";
		//
		NFeRetRecepcao.consultaNFe(lot);
		return "Processo finalizado";
	}	//	doIt
}	//	ProcLotReturn
