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

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J990 - ENCERRAMENTO DO BLOCO J
 * 
 * Ocorrência - um (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ990.java, 18/11/2010, 14:30:00, mgrigioni
 */

public class RJ990 implements RegSped {
	
	private final String REG = "J990";
	
	private String QTD_LIN_J;

	/**
	 * Constructor
	 */
	public RJ990() {
		//
		addCounter();
	} //RJ990

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		QTD_LIN_J = "" + CounterSped.getBlockCounter(REG);
		
		String format = 
			  PIPE + REG
			+ PIPE + QTD_LIN_J
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}	//toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} // RJ990