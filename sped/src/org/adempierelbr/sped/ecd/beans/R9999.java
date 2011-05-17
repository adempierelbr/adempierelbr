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
 * Bloco 9 Registro 9999 - ENCERRAMENTO DO ARQUIVO DIGITAL
 * 
 * Registro obrigatório Nível hierárquico - 0 Ocorrência - um (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9999.java, 16/11/2010, 15:52:00, mgrigioni
 */
public class R9999 extends RegSped {

	private String QTD_LIN = ""; 
	
	/**
	 * Constructor
	 */
	public R9999() {
		super();
	} // R9999
	
	public String toString(){
		
		QTD_LIN = "" + CounterSped.getTotalCounter();
		
		String format = 
			PIPE + REG 
		  + PIPE + QTD_LIN
		  + PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}
	
} // R9999