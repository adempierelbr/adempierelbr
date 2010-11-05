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

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.NFeCancelamento;
import org.adempierelbr.util.NFeUtil;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcCancelNF
 *
 *	Process to Cancel Nota Fiscal
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcCancelNF.java, 20/02/2008 10:15:00 mgrigioni
 */
public class ProcCancelNF extends SvrProcess
{
	
	/** Nota Fiscal               */
	private static Integer p_LBR_NotaFiscal_ID = 0;
	
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
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{	
		log.info("ProcCancelNF Process " + "Nota: " + p_LBR_NotaFiscal_ID);
		
		if (p_LBR_NotaFiscal_ID != 0)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),p_LBR_NotaFiscal_ID,get_TrxName());
			//
			if (nf.get_Value("lbr_NFeID") != null)
			{
				if (nf.isCancelled())
					return "NF Já está cancelada.";
				//
				if (nf.getlbr_NFeStatus() != null && !nf.getlbr_NFeStatus().equals(NFeUtil.AUTORIZADA))
					return "Não é possível cancelar uma NFe não autorizada.";
				
				return NFeCancelamento.cancelNFe(nf);
			}
			if (nf.voidIt())
				nf.save(get_TrxName());
			else{
				String msg = "Nota: " + p_LBR_NotaFiscal_ID + " não cancelada. ";
					   msg += nf.getProcessMsg();
				return msg.trim();
			}
		}
    
		return "ProcCancelNF Process Completed " + "Nota: " + p_LBR_NotaFiscal_ID;
		
	}	//	doIt
	

}	//	ProcCancelNF