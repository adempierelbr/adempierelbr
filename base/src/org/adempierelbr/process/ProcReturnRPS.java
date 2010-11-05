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
import org.adempierelbr.util.TextUtil;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;


/**
 * ProcReturnRPS
 * 
 * Process Return RPS
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
 * @contributor Ricardo Santana (Kenos, www.kenos.com.br), rsantana
 * @version $Id: ProcReturnRPS.java, 06/08/2008 11:15:00 mgrigioni
 */
public class ProcReturnRPS extends SvrProcess
{
	
	/**	Arquivo            */
	private String p_FileName = "";

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
		log.info("ReturnRPS Process " + "Arquivo: " + p_FileName);
			
		if (p_FileName == null || p_FileName.equals(""))
			throw new IllegalArgumentException("Arquivo Inválido");
		
		String[] linhas = TextUtil.readFile(p_FileName);
		for (int i = 1; i < linhas.length; i++)
		{
			//BUGFIX: String index out of range: 419
			if(linhas[i].length() < 419)
				continue;
			
			String rpsNumber = linhas[i].substring(41, 53).trim();
			String NFeNo     = linhas[i].substring(1, 9).trim();
			String status    = linhas[i].substring(418, 419).trim();
			int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID(rpsNumber, true, get_TrxName());
			if (LBR_NotaFiscal_ID != -1)
			{
				
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),LBR_NotaFiscal_ID,get_TrxName());
				nf.setIsPrinted(true); //MARCA IMPRESSO PARA CANCELAR OS DOCUMENTOS VINCULADOS
				nf.set_ValueOfColumn("lbr_NFENo", NFeNo);
				if (status.equalsIgnoreCase("C")){
					nf.voidIt();
				}
				nf.save(get_TrxName());
				
			}
				
		}
		
		return "ReturnRPS Process Completed " + "Arquivo: " + p_FileName;
	}	//	doIt
	
}	//	ProcReturnRPS