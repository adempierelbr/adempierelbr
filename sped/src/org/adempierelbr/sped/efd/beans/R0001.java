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

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO 0001: ABERTURA DO BLOCO 0
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0001.java, 03/02/2011, 16:44:00, mgrigioni
 */
public class R0001 extends RegSped
{
	private String IND_MOV; //0 = CONTEM DADOS, 1 = NAO CONTEM DADOS

	/**
	 * Constructor
	 * 
	 * @param IND_MOV
	 */
	public R0001(Boolean hasTransaction) 
	{
		super();
		this.IND_MOV = hasTransaction ? "0" : "1";
	} //R0001

	/**
	 * Formata o Bloco 0 Registro 001
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(IND_MOV)
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //R0001