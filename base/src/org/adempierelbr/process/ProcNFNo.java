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

import org.compiere.model.MDocType;
import org.compiere.model.MSequence;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

/**
 *  Process to get Next NF Number
 *  
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcNFNo.java, v1.0 2008/06/06 13:51:55 AM, mgrigioni Exp $
 */
public class ProcNFNo extends SvrProcess
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcNFNo.class);

	/**	Document Type	*/
	private int p_C_DocType_ID = 0;
	
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
			else if (MDocType.COLUMNNAME_C_DocType_ID.equals(name))
				p_C_DocType_ID = para[i].getParameterAsInt();
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
		log.info("ProcNFNo Process");
		
		if (p_C_DocType_ID <= 0)
			return "Nenhum documento do tipo NFB cadastrado";

		MDocType docType = new MDocType(getCtx(), p_C_DocType_ID, get_TrxName());
		int AD_Sequence_ID = docType.getDocNoSequence_ID();
		if (AD_Sequence_ID == 0)
			return "Nenhum seqüência para Nota Fiscal";
		
		MSequence sequence = new MSequence(getCtx(), AD_Sequence_ID, get_TrxName());
		return "Nota Fiscal: " + sequence.getCurrentNext();
	}	//	doIt
}	//	ProcNFNo