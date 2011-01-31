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

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C990: ENCERRAMENTO DO BLOCO C
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC990.java, 31/01/2011, 10:19:00, mgrigioni
 */
public class RC990 extends RegSped {

	private String QTD_LIN_C = "";

	/**
	 * Constructor
	 */
	public RC990() 
	{
		//
		addCounter();
	} //RC990

	public String toString(){
		
		QTD_LIN_C = "" + CounterSped.getBlockCounter(REG);
		
		String format = 
			  PIPE + REG
			+ PIPE + QTD_LIN_C
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}
	
} //RC990