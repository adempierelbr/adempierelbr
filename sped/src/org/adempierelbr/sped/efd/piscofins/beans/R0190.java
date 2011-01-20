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
 * REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0190.java, 19/01/2011, 09:49:00, mgrigioni
 */
public class R0190 extends RegSped {
	
	private String UNID;
	private String DESCR;
	
	/**
	 * Constructor
	 * @param UNID
	 * @param DESCR
	 */
	public R0190(String UNID, String DESCR)
	{
		this.UNID = UNID;
		this.DESCR = DESCR;
		//
		addCounter();
	}	//	R0190

	/**
	 * Formata o Bloco 0 Registro 190
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(UNID), 6)  
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR),255)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0190