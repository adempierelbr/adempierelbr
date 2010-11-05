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

import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.model.X_LBR_Bank;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;


/**
 *	ProcGenerateCNAB
 *
 *	Process to Generate CNAB 400 File (REMESSA)
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcGenerateCNAB.java, 20/11/2007 14:53:00 mgrigioni
 */
public class ProcGenerateCNAB extends SvrProcess
{
	/** Conta Bancária         */
	private int p_C_BankAccount_ID = 0;
	
	/**	Arquivo	               */
	private String p_FileName = null;
	
	/** Data Emissão     */
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;

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
			else if (name.equals("C_BankAccount_ID"))
				p_C_BankAccount_ID = para[i].getParameterAsInt();
			else if(name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
			{
				p_FileName = para[i].getParameter().toString();
			}
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
		log.info("GenerateCNAB Process " + "Account: " + p_C_BankAccount_ID);
		
		if (p_C_BankAccount_ID == 0)
			throw new IllegalArgumentException("Conta == 0");
		
		if (p_FileName == null || p_FileName.equals("")){
			throw new IllegalArgumentException("Informar Diretório para Geração do Arquivo");
		}
		
		Properties   ctx       = getCtx();
		String       trx       = get_TrxName();
		
		MBankAccount BankA     = new MBankAccount(ctx,p_C_BankAccount_ID,trx);
		MBank        Bank      = new MBank(ctx,BankA.getC_Bank_ID(),trx);
		X_LBR_Bank   bBank     = new X_LBR_Bank(ctx,(Integer)Bank.get_Value("LBR_Bank_ID"),trx);
		
		String       fileName  = p_FileName;
		
		int bNum = Integer.parseInt(bBank.getlbr_jBoletoNo());
		
	    if (!(fileName.endsWith(AdempiereLBR.getFileSeparator()))) 
	    	fileName += AdempiereLBR.getFileSeparator();
	    
	    fileName += MLBRCNAB.prefix + MLBRCNAB.getSystemDate(ctx) + MLBRCNAB.ext;

	    MLBRCNAB.generateFile(bNum,fileName,p_DateFrom, p_DateTo, BankA, trx);
		
		return "GenerateCNAB Process Completed<br>" + "** Arquivo: " + fileName;
		
	}	//	doIt

}	//	ProcGenerateCNAB