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
 * REGISTRO C396: ITENS DO DOCUMENTO (CÓDIGOS 02, 2D, 2E e 59) – AQUISIÇÕES/ENTRADAS COM CRÉDITO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC396.java, 31/01/2011, 09:16:00, mgrigioni
 */
public class RC396 extends RegSped {
	
	/**
	 * TODO - RC396
	 */
	
	public RC396()
	{
		//
		addCounter();
	}	//	RC396

	/**
	 * Formata o Bloco C Registro 396
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // RC396