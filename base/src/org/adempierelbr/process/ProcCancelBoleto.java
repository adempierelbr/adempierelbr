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

import org.adempierelbr.model.MLBRBoleto;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcCancelBoleto
 *
 *	Process to Cancel Boleto
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcCancelBoleto.java, 12/03/2008 15:14:00 mgrigioni
 */
public class ProcCancelBoleto extends SvrProcess
{
	
	/** Invoice               */
	private static int p_C_Invoice_ID = 0;
	
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
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{	
		log.info("ProcCancelBoleto Process " + "Fatura: " + p_C_Invoice_ID);
		
		p_C_Invoice_ID = getRecord_ID();
		if (p_C_Invoice_ID != 0){
			MLBRBoleto.cancelBoleto(getCtx(), p_C_Invoice_ID, get_TrxName());
		}
    
		return "ProcCancelBoleto Process Completed " + "Fatura: " + p_C_Invoice_ID;
		
	}	//	doIt
	

}	//	ProcCancelBoleto