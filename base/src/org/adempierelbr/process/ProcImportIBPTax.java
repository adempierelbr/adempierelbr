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

import org.adempierelbr.model.MLBRIBPTax;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcImportIBPTax
 *
 *	Importar impostos da tabela de impostos aproximados
 *	Ticket: LBR-81
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li> Parametro para apagar registros antigos
 *		<li> Correção de File_Directory para FileName
 *
 *	@author Pablo Boff Pigozzo
 *	@version $Id: ProcImportIBPTax.java, 29/07/2013
 */
public class ProcImportIBPTax extends SvrProcess
{
	/**	File to be imported	*/
	private String p_File;

	/**	Delete old records	*/
	private boolean p_DeleteOld = false;

	/**	Region				*/
	private int p_C_Region_ID = 0;
	
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
			else if (name.equals("FileName"))
				p_File = para[i].getParameter().toString();
			else if (name.equals("DeleteOld"))
				p_DeleteOld = para[i].getParameterAsBoolean();
			else if (name.equals("C_Region_ID"))
				p_C_Region_ID = para[i].getParameterAsInt();
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
		// import 
		MLBRIBPTax.ImportFromCSV (getCtx(), p_File, p_C_Region_ID, p_DeleteOld, get_TrxName());
		
		// return message 
		return "Importação realizada com sucesso!";
	}	//	doIt
}	//	ProcImportIBPTax