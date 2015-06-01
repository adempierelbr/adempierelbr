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
 * Bloco I Registro I550 - DETALHES DO LIVRO RAZÃO AUXILIAR COM LEIAUTE
 * PARAMETRIZÁVEL Registro Obrigatório para o tipo de escrituração “Z”.
 * Ocorrência - vários (por arquivo) RZ_CONT: cada linha deve conter todos os
 * campos indicados no registro “I510”, separados por “Pipe” (|).
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI550.java, 18/11/2010, 10:23:00, mgrigioni
 */
public class RI550 implements RegSped {
	
	private final String REG   = "I550";
	
	private String RZ_CONT;

	/**
	 * Constructor
	 */
	public RI550(String RZ_CONT) {
		this.RZ_CONT = RZ_CONT;
		//
		addCounter();
	} //RI550

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + RZ_CONT
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RI550