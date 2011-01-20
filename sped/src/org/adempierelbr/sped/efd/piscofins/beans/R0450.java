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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0450.java, 19/01/2011, 11:31:00, mgrigioni
 */
public class R0450 extends RegSped {
	
	private String COD_INF;
	private String TXT;
	
	/**
	 * Constructor
	 * @param COD_INF
	 * @param TXT
	 */
	public R0450(String COD_INF, String TXT)
	{
		this.COD_INF = COD_INF;
		this.TXT = TXT;
		//
		addCounter();
	}	//	R0450

	/**
	 * Formata o Bloco 0 Registro 450
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_INF, 6)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(TXT), 255)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0450