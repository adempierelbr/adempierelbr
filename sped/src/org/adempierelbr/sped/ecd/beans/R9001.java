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
 * Bloco 9 Registro 9001 - ABERTURA DO BLOCO 9
 * 
 * Ocorrência - um (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9001.java, 16/11/2010, 15:33:00, mgrigioni
 */

public class R9001 extends RegSped {

	private String IND_DAD; //0 = CONTEM DADOS, 1 = NAO CONTEM DADOS

	/**
	 * Constructor
	 */
	public R9001(Boolean hasTransaction)  {
		super();
		this.IND_DAD = hasTransaction ? "0" : "1";
	} //R9001

	/**
	 * Formata o Bloco 9 Registro 9001
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
	
} //R9001