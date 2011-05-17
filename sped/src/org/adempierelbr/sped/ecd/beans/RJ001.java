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
package org.adempierelbr.sped.ecd.beans;

import org.adempierelbr.sped.RegSped;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J001 - ABERTURA DO BLOCO J
 * 
 * Deve ser informado exatamente 1 (um) registro por arquivo.
 * 
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ001.java, 18/11/2010, 10:46:00, mgrigioni
 */
public class RJ001 extends RegSped{

	private String IND_DAD = "0";

	/**
	 * Constructor
	 */
	public RJ001(Boolean hasTransaction) 
	{
		super();
		this.IND_DAD = hasTransaction ? "0" : "1";
	} // RJ001

	/**
	 * Formata o Bloco 0 Registro 0001
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(IND_DAD)
            .append(PIPE).append(EOL);

		return format.toString();
	}
	
} //RJ001