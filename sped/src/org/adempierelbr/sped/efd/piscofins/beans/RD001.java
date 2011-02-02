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
 * REGISTRO D001: ABERTURA DO BLOCO D
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD001.java, 31/01/2011, 10:21:00, mgrigioni
 */
public class RD001 extends RegSped {
	
	private String IND_MOV; //0 = CONTEM DADOS, 1 = NAO CONTEM DADOS

	/**
	 * Constructor
	 * 
	 * @param IND_MOV
	 */
	public RD001(Boolean hasTransaction) 
	{
		this.IND_MOV = hasTransaction ? "0" : "1";
		//
		addCounter();
	}	//RD001

	/**
	 * Formata o Bloco D Registro 001
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + IND_MOV
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RD001