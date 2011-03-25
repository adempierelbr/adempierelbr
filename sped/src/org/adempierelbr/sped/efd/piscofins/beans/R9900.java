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

/**
 * REGISTRO 9900: REGISTROS DO ARQUIVO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9900.java, 07/02/2011, 14:44:00, mgrigioni
 */
public class R9900 extends RegSped {
	
	private String REG_BLC     = "";
	private String QTD_REG_BLC = "";

	/**
	 * Constructor
	 */
	public R9900(String REG_BLC, String QTD_REG_BLC) {
		super();
		this.REG_BLC = REG_BLC;
		this.QTD_REG_BLC = QTD_REG_BLC;
	} //R9900

	public String toString(){
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG)
            .append(PIPE).append(REG_BLC)
            .append(PIPE).append(QTD_REG_BLC)
            .append(PIPE).append(EOL);

		return format.toString();
	} //toString
	
} //R9900