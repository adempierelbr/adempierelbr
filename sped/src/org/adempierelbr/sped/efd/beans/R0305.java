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
package org.adempierelbr.sped.efd.beans;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0305 – INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0305.java, 04/02/2011, 10:30:00, mgrigioni
 */
public class R0305 extends RegSped  {
	
	private String COD_CCUS;
	private String FUNC;
	private int VIDA_UTIL;
	
	/**
	 * Constructor
	 * @param COD_CCUS
	 * @param FUNC
	 * @param VIDA_UTIL
	 */
	public R0305(String COD_CCUS, String FUNC, int VIDA_UTIL) {
		super();
		this.COD_CCUS = COD_CCUS;
		this.FUNC = FUNC;
		this.VIDA_UTIL = VIDA_UTIL;
	}

	/**
	 * Formata Bloco 0 Registro 305
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_CCUS), 60))
            .append(PIPE).append(RemoverAcentos.remover(TextUtil.checkSize(FUNC, 255)))
            .append(PIPE).append(VIDA_UTIL)
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
		
}	// R0305