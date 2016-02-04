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
import org.compiere.model.MOrg;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Process Return RPS for São Paulo city
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
 * @contributor Ricardo Santana (Kenos, www.kenos.com.br), rsantana
 * 	<li> Validação do CCM/IM no retorno
 * 	<li> Adicionar Organização na captura da NF pelo Número do RPS
 * @version $Id: ProcReturnRPS.java, 06/08/2008 11:15:00 mgrigioni
 */
public class ProcReturnRPS extends SvrProcess
{
	/**	Arquivo            */
	private String p_FileName = "";

	/** Organização			*/
	private int p_AD_Org_ID = 0;
	
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
			else if (name.equals(MOrg.COLUMNNAME_AD_Org_ID))
				p_AD_Org_ID = para[i].getParameterAsInt();
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
		log.info("ReturnRPS Process Arquivo: " + p_FileName);
			
		if (p_FileName == null || p_FileName.isEmpty())
			throw new IllegalArgumentException("Arquivo Inválido");
		
		String[] linhas = TextUtil.readFile(p_FileName);
		for (int i = 1; i < linhas.length; i++)
		{
			//	Check Organization
			if (i == 1)
			{
				String ccm = linhas[0].substring(4, 12).trim();	//	CCM
				int CCM_Org_ID = DB.getSQLValue (null, "SELECT AD_Org_ID FROM AD_OrgInfo WHERE AD_Client_ID=? AND REGEXP_REPLACE(LBR_CCM, '[^0-9]+', '', 'g')=?", new Object[]{Env.getAD_Client_ID(getCtx()), TextUtil.toNumeric(ccm)});
				
				//	Não prosseguir, é necessário uma organizaçõa válida
				if (CCM_Org_ID <= 0 && p_AD_Org_ID <= 0)
					return "@Error@ Organização não encontrada para o CCM/IM: " + ccm;
				
				//	Aviso, o sistema irá fazer a importação com a organização passada no parâmetro
				else if (p_AD_Org_ID > 0 && CCM_Org_ID <= 0)
					log.warning ("Não foi possível validar o CCM/IM: " + ccm);
				
				//	Não prosseguir, organização do parâmetro difere da organização do arquivo
				else if (p_AD_Org_ID != CCM_Org_ID)
					return "@Error@ Organização do arquivo de retorno é diferente da organização selecionada para o CCM/IM: " + ccm;
				
				//	Não foi passada organização via parâmetro, porém o sistema encontrou pelo CCM/IM
				if (p_AD_Org_ID <= 0)
					p_AD_Org_ID = CCM_Org_ID;
			}
			
			//	BUGFIX: String index out of range: 419
			if (linhas[i].length() < 419)
				continue;
			
			String rpsNumber = linhas[i].substring(41, 53).trim();
			String noNFe     = linhas[i].substring(1, 9).trim();
			String protNFe   = linhas[i].substring(23, 31).trim();
			String status    = linhas[i].substring(418, 419).trim();
			int LBR_NotaFiscal_ID = MLBRNotaFiscal.getLBR_NotaFiscal_ID (p_AD_Org_ID, rpsNumber, true, MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS, get_TrxName());
			if (LBR_NotaFiscal_ID > 0)
			{
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), LBR_NotaFiscal_ID, get_TrxName());
				
				//	Ignorar, NFs já processadas
				if (nf.getlbr_NFeProt() != null
						|| MLBRNotaFiscal.DOCSTATUS_Voided.equals (nf.getDocStatus()))
					continue;
				
				//	RPS Cancelado
				if (status.equalsIgnoreCase("C"))
					nf.voidIt();
				
				nf.setlbr_NFENo (noNFe);
				nf.setlbr_NFeProt (protNFe);
				nf.save();
			}
		}
		
		return "@Success@ Arquivo: " + p_FileName;
	}	//	doIt
}	//	ProcReturnRPS