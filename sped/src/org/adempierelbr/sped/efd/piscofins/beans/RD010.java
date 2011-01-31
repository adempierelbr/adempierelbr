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
 * REGISTRO D010: IDENTIFICAÇÃO DO ESTABELECIMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD010.java, 31/01/2011, 10:22:00, mgrigioni
 */
public class RD010 extends RegSped {
	
	private String CNPJ;

	/**
	 * Constructor
	 * 
	 * @param CNPJ
	 */
	public RD010(String CNPJ) 
	{
		this.CNPJ = CNPJ;
		//
		addCounter();
	}	//RD010

	/**
	 * Formata o Bloco D Registro 010
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.lPad(TextUtil.toNumeric(CNPJ), 14)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RD010