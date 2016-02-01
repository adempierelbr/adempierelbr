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
import org.compiere.model.MInvoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

/**
 * 		Process to create NF
 * 
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcGenerateNF.java, v1.0 2011/07/18 7:06:39 PM, ralexsander Exp $
 *
 *		Old Version:
 *	@author Alvaro Montenegro (Kenos, www.kenos.com.br) BF # 1931334
 *	@author Mario Grigioni
 *	@author Pablo Boff Pigozzo 04/10/2010 pablobp
 */
public class ProcGenerateNF extends SvrProcess
{
	/** Nota Fiscal               */
	private Integer p_LBR_NotaFiscal_ID = 0;
	/** Documento Próprio         */
	private boolean p_IsOwnDocument 	= true;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateNF.class);

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
			else if (name.equals("lbr_IsOwnDocument"))
				p_IsOwnDocument = ((String)para[i].getParameter()).equals("Y");
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		
		//	Record ID
		if (getTable_ID() == MLBRNotaFiscal.Table_ID)
			p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("Begin - ProcGenerateNF, Table_ID=" + getTable_ID() + ", Record_ID=" + getRecord_ID());
		//
		MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		
		//	Baseado em Fatura
		if (getTable_ID() == MLBRNotaFiscal.Table_ID)
		{
			MInvoice invoice = new MInvoice (getCtx(), nf.getC_Invoice_ID(), get_TrxName());
			
			nf.generateNF(invoice, p_IsOwnDocument);
			nf.save();
		}
		return "@Success@ NF Re-processada com as informações atuais";
	}	//	doIt
}	//	ProcGenerateNF