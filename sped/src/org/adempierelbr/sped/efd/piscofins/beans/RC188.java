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
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C188: PROCESSO REFERENCIADO 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC188.java, 21/01/2011, 14:40:00, mgrigioni
 */
public class RC188 extends RegSped {

	private String NUM_PROC;
	private String IND_PROC;
	
	/**
	 * Constructor
	 * @param NUM_PROC
	 * @param IND_PROC
	 */
	public RC188(String NUM_PROC, String IND_PROC) {
		this.NUM_PROC = NUM_PROC;
		this.IND_PROC = IND_PROC;
		//
		addCounter();
	} //RC188

	/**
	 * Formata o Bloco C Registro 188
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(NUM_PROC, 20)
			+ PIPE + TextUtil.checkSize(IND_PROC, 1)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC188