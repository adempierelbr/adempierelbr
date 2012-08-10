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
package org.adempierelbr.sped.efd.bean;

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO C001: ABERTURA DO BLOCO C
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC001.java, 04/02/2011, 10:42:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class RC001 extends RegSped
{
	private String IND_MOV;

	/**
	 * Constructor
	 * 
	 */
	public RC001() 
	{
		super();
	} //RC001

	
	public String getIND_MOV() {
		return IND_MOV;
	}


	public void setIND_MOV(String iND_MOV) {
		IND_MOV = iND_MOV;
	}


	/**
	 * Formata o Bloco C Registro 001
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
	
} //RC001