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

import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.MOpenItem;
import org.adempierelbr.model.boleto.MBoleto;


/**
 * MUnibanco
 * 
 * Bank Unibanco Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MUnibanco.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MUnibanco
{
	private static String banco = "";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
	//TODO
	}
	
	public static void returnCNAB(ArrayList<String[]> occurType, String FilePath, String[] linhas, String trx){
	//TODO
	}
	
} //MUnibanco