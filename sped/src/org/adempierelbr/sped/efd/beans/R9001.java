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
 * REGISTRO 9001: ABERTURA DO BLOCO 9
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9001.java, 07/02/2011, 14:42:00, mgrigioni
 */
public class R9001 extends RegSped
{
	private String IND_MOV; //0 = CONTEM DADOS, 1 = NAO CONTEM DADOS

	/**
	 * Constructor
	 * 
	 * @param IND_MOV
	 */
	public R9001(Boolean hasTransaction) 
	{
		super();
		this.IND_MOV = hasTransaction ? "0" : "1";
	} //R9001

	/**
	 * Formata o Bloco 9 Registro 001
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
	
} //R9001