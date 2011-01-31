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
package org.adempierelbr.sped.efd.piscofins.beans;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO D300: RESUMO DA ESCRITURAÇÃO DIÁRIA - BILHETES CONSOLIDADOS DE PASSAGEM RODOVIÁRIO 
 * (CÓDIGO 13), DE PASSAGEM AQUAVIÁRIO (CÓDIGO 14), DE PASSAGEM E NOTA DE BAGAGEM (CÓDIGO 15), 
 * DE PASSAGEM FERROVIÁRIO (CÓDIGO 16) E RESUMO DE MOVIMENTO DIÁRIO (CÓDIGO 18) 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD300.java, 31/01/2011, 11:04:00, mgrigioni
 */
public class RD300 extends RegSped  {
	
	/**
	 * TODO - RD300
	 */
	
	public RD300() 
	{
		//
		addCounter();
	} //RD300

	/**
	 * Formata o Bloco D Registro 300
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString
		
} //RD300