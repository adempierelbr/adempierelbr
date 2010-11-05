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

import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.ReturnCNABUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;


/**
 * ProcReturnCNAB
 *
 * Process Return CNAB
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: ProcReturnCNAB.java, 03/12/2007 09:21:00 mgrigioni
 */
public class ProcReturnCNAB extends SvrProcess
{

	/**	Arquivo            */
	private String p_FileName = "";
	/** Diretório Arquivo de Log */
	private String p_FilePath = "";

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
				p_FileName = (String)para[i].getParameter();
			else if(name.equals("File_Directory"))
				p_FilePath = (String)para[i].getParameter();
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
		log.info("ReturnCNAB Process " + "Arquivo: " + p_FileName);

		if (p_FileName == null || p_FileName.equals(""))
			throw new IllegalArgumentException("Arquivo Inválido");

		String[] linhas = TextUtil.readFile(p_FileName);

	    if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
	    	p_FilePath += AdempiereLBR.getFileSeparator();

		String RoutingNo = linhas[0].substring(76, 79); //Cód. Banco
		int LBR_Bank_ID = AdempiereLBR.getLBR_Bank_ID(RoutingNo, get_TrxName());

		if (LBR_Bank_ID == -1) throw new IllegalArgumentException("Arquivo Inválido");

		ReturnCNABUtil.returnCNAB(LBR_Bank_ID, p_FilePath, linhas, get_TrxName());

		return "ReturnCNAB Process Completed " + "Arquivo: " + p_FileName;

	}	//	doIt

}	//	ProcReturnCNAB