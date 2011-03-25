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

/**
 * REGISTRO D990: ENCERRAMENTO DO BLOCO D
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD990.java, 31/01/2011, 11:14:00, mgrigioni
 */
public class RD990 extends RegSped {
	
	private String QTD_LIN_D = "";

	/**
	 * Constructor
	 */
	public RD990() 
	{
		super();
	} //RD990

	public String toString(){
		
		QTD_LIN_D = "" + CounterSped.getBlockCounter(REG);
		
		StringBuilder format = new StringBuilder 
			       (PIPE).append(REG)
	        .append(PIPE).append(QTD_LIN_D)
	        .append(PIPE).append(EOL);
		
		return format.toString();
	}

} //RD990