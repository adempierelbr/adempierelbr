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

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRIBPTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
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

	/**	Organizaion			*/
	private int p_AD_Org_ID = 0;
	
	/**	Importar pela API	*/
	private boolean p_ImportFromAPI = true;
	
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
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("OProcessing"))
				p_ImportFromAPI = "Y".equals(para[i].getParameter());
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
		String result = "";
		
		MOrgInfo oi = MOrgInfo.get (getCtx(), p_AD_Org_ID, null);
		if (oi.getC_Location_ID() < 0 || oi.getC_Location().getC_Region_ID() < 0)
			return "@Error@ para fazer a importação é necessário primeiramente preencher o endereço da Organização";
		
		if (oi.getC_Location().getC_Country_ID() != MLBRNotaFiscal.BRAZIL)
			return "@Error@ por favor selecione uma Organização lotada no território brasileiro";
		
		int C_Region_ID = oi.getC_Location().getC_Region_ID();
		
		// 	Import from API
		if (p_ImportFromAPI)
		{
			I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
			if (oiW.getlbr_CNPJ() == null)
				return "@Error@ Organização sem CNPJ, impossível fazer a importação via API";
			//
			String apiKey = MSysConfig.getValue("LBR_IBPT_API_KEY", oi.getAD_Client_ID(), oi.getAD_Org_ID());
			if (apiKey == null || apiKey.isEmpty())
				return "@Error@ chave da API não encontrada. Obtenha a chave no site do IBPT para o seu CNPJ.";
			//
			result = MLBRIBPTax.importFromAPI (getCtx(), apiKey, oiW.getlbr_CNPJ(), C_Region_ID, p_DeleteOld, get_TrxName());
		}

		// 	Import from File
		else
		{
			if (p_File == null)
				return "@Error@ arquivo não encontrado para importação";
			
			result = MLBRIBPTax.importFromCSV (getCtx(), p_File, C_Region_ID, p_DeleteOld, get_TrxName());
		}
		return result;
	}	//	doIt
}	//	ProcImportIBPTax