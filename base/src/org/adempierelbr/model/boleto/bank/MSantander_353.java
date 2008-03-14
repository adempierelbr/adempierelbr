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
package org.adempierelbr.model.boleto.bank;

import java.util.HashMap;
import java.util.Properties;

import org.adempierelbr.model.boleto.MBoleto;


/**
 * MSantander
 * 
 * Bank Santander Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MSantander_353.java, 22/11/2007 10:46:00 mgrigioni
 */
public class MSantander_353
{
	private static String banco     = "353";
	private static String bancoName = "SANTANDER";
	private static String especie   = "01";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		//TODO
	} //generateCNAB
	
	public static void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx){
	//TODO
	}
	
} //MSantander