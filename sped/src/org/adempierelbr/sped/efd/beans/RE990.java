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
 * REGISTRO E990: ENCERRAMENTO DO BLOCO E
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE990.java, 08/02/2011, 12:04:00, mgrigioni
 */
public class RE990 extends RegSped {
	
	private String QTD_LIN_E = "";

	/**
	 * Constructor
	 */
	public RE990() 
	{
		super();
	} //RE990

	public String toString(){
		
		QTD_LIN_E = "" + CounterSped.getBlockCounter(REG);
		
		StringBuilder format = new StringBuilder 
			       (PIPE).append(REG)
	        .append(PIPE).append(QTD_LIN_E)
	        .append(PIPE).append(EOL);
		
		return format.toString();
	}

} //RE990