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
 * REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0400.java, 19/01/2011, 11:27:00, mgrigioni
 */
public class R0400 extends RegSped {
	
	private String COD_NAT;
	private String DESCR_NAT;
	
	/**
	 * Construtor
	 * @param COD_NAT
	 * @param DESCR_NAT
	 */
	public R0400(String COD_NAT, String DESCR_NAT)
	{
		this.COD_NAT = COD_NAT;
		this.DESCR_NAT = DESCR_NAT;
		//
		addCounter();
	}	//	R0400

	/**
	 * Formata o Bloco 0 Registro 400
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_NAT, 10)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR_NAT), 255)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0400