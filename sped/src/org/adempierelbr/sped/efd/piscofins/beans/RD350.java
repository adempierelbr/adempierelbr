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
 * REGISTRO D350: RESUMO DIÁRIO DE CUPOM FISCAL EMITIDO POR ECF - (CÓDIGOS 2E, 13, 14, 15 e 16)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD350.java, 31/01/2011, 11:04:00, mgrigioni
 */
public class RD350 extends RegSped  {
	
	/**
	 * TODO - RD350
	 */
	
	public RD350() 
	{
		//
		addCounter();
	} //RD350

	/**
	 * Formata o Bloco D Registro 350
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString
		
} //RD350