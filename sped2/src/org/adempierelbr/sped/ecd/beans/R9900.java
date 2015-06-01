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
 * Bloco 9 Registro 9900 - REGISTROS DO ARQUIVO
 * 
 * Registro obrigatório Nível hierárquico - 2 Ocorrência - vários (por arquivo)
 * Chave: [REG_BLC]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9900.java, 16/11/2010, 15:49:00, mgrigioni
 */

public class R9900 implements RegSped {
	
	private final String REG   = "9900";
	
	private String REG_BLC     = "";
	private String QTD_REG_BLC = "";

	/**
	 * Constructor
	 */
	public R9900(String REG_BLC, String QTD_REG_BLC) {
		this.REG_BLC = REG_BLC;
		this.QTD_REG_BLC = QTD_REG_BLC;
		//
		addCounter();
	} //R9900

	public String toString(){
		
		String format = 
			  PIPE + REG 
			+ PIPE + REG_BLC
			+ PIPE + QTD_REG_BLC
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //R9900