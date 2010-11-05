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

import java.util.logging.Level;

import org.adempierelbr.model.MLBRNFeLot;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 	Processo para consultar um Lote de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @contributor Mario Grigioni
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
		MLBRNFeLot lot = new MLBRNFeLot (Env.getCtx(), p_LBR_NFeLot_ID, get_TrxName());
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
		return lot.consultaNFe();
	}	//	doIt
	
}	//	ProcLotReturn