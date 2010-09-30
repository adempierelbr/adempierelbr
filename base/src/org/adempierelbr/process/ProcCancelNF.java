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
import org.adempierelbr.nfe.NFeInutilizacao;
import org.adempierelbr.nfe.beans.InutilizacaoNF;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

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
			MDocType dt = new MDocType (Env.getCtx(), nf.getC_DocTypeTarget_ID(), null);
			String nfModel = dt.get_ValueAsString("lbr_NFModel");
			//
			if (nf.get_Value("lbr_NFeID") != null)
			{
				if (nf.isCancelled())
					return "NF Já está cancelada.";
				//
				return NFeCancelamento.cancelNFe(nf);
			}
			else if (nfModel != null && nfModel.equals("55"))
			{
				MOrgInfo oi = MOrgInfo.get(Env.getCtx(), nf.getAD_Org_ID());
				InutilizacaoNF iNF = new InutilizacaoNF(nf, oi.get_ValueAsString("lbr_NFeEnv"));
				//
				if (!iNF.isValid())
				{
					log.severe(iNF.getMsg());
					return "NF não pode ser inutilizada. Verificar log. " + iNF.getMsg();
				}
				//
				return NFeInutilizacao.invalidateNF(oi, iNF);
			}
			if (nf.voidIt())
				nf.save(get_TrxName());
			else
			{
				String msg = "Nota: " + p_LBR_NotaFiscal_ID + " não cancelada. ";
					   msg += nf.getProcessMsg();
				return msg.trim();
			}
		}
    
		return "ProcCancelNF Process Completed " + "Nota: " + p_LBR_NotaFiscal_ID;
		
	}	//	doIt
	

}	//	ProcCancelNF