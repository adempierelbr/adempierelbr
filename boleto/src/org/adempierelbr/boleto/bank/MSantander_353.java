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
import java.util.logging.Level;

import org.adempierelbr.boleto.I_Bank;
import org.adempierelbr.model.MLBRBoleto;
import org.compiere.model.MBankAccount;

/**
 * MSantander
 *
 * Bank Santander Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MSantander_353.java, 22/11/2007 10:46:00 mgrigioni
 */
public class MSantander_353 implements I_Bank
{

	@Override
	public void generateCNAB(MLBRBoleto boleto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void returnCNAB(HashMap<Integer, String[]> occurType,
			String FilePath, String[] linhas, String trx) throws IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void generateFile(String FileName, Timestamp DateFrom,
			Timestamp DateTo, MBankAccount BankA, String trx)
			throws IOException {
		// TODO Auto-generated method stub
		log.log (Level.WARNING, "Bank not implemented yet.");
	}

} //MSantander_353