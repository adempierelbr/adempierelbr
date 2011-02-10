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
package org.adempierelbr.sped.efd.beans;

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1990.java, 08/02/2011, 12:08:00, mgrigioni
 */
public class R1990 extends RegSped {
	
	private String QTD_LIN_1 = "";

	/**
	 * Constructor
	 */
	public R1990() 
	{
		super();
	} //R1990

	public String toString(){
		
		QTD_LIN_1 = "" + CounterSped.getBlockCounter(REG);
		
		StringBuilder format = new StringBuilder 
			       (PIPE).append(REG)
	        .append(PIPE).append(QTD_LIN_1)
	        .append(PIPE).append(EOL);
		
		return format.toString();
	}

} //R1990