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
package org.adempierelbr.boleto.bank;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;

import org.adempierelbr.boleto.I_Bank;
import org.adempierelbr.model.MLBRBoleto;
import org.compiere.model.MBankAccount;

/**
 * 		Bank Santander Model
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li> Current version - Same layout of 033 - Santander BANESPA
 * 	@author Mario Grigioni (Kenos, www.kenos.com.br)
 * 		<li> Legacy version
 * 	@version $Id: MSantander_033.java, v1.0 2016/12/01 13:55:42, ralexsander Exp $
 */
public class MSantander_353 implements I_Bank
{
	/**
	 * 	Generate
	 */
	@Override
	public void generateCNAB (MLBRBoleto boleto)
	{
		new MSantander_033().generateCNAB(boleto);
	}	//	generateCNAB

	/**
	 * 	Generate CNAB File
	 */
	@Override
	public void generateFile (String fileName, Timestamp dateFrom, Timestamp dateTo, MBankAccount ba, String trxName) throws IOException
	{
		new MSantander_033().generateFile(fileName, dateFrom, dateTo, ba, trxName);
	}	//	generateFile

	/**
	 * 	Process the return file
	 */
	@Override
	public void returnCNAB (HashMap<Integer,String[]> occurType, String filePath, String[] lines, String trxName) throws IOException
	{
		new MSantander_033().returnCNAB(occurType, filePath, lines, trxName);
	}	//	returnCNAB
} 	//	MSantander_353