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

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C130: ISSQN, IRRF E PREVIDÊNCIA SOCIAL.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC130.java, 11/02/2011, 14:22:00, mgrigioni
 */
public class RC130 extends RegSped {

	private BigDecimal VL_SERV_NT;
	private BigDecimal VL_BC_ISSQN;
	private BigDecimal VL_ISSQN;
	private BigDecimal VL_BC_IRRF;
	private BigDecimal VL_IRRF;
	private BigDecimal VL_BC_PREV;
	private BigDecimal VL_PREV;

	/**
	 * Constructor
	 * @param VL_SERV_NT
	 * @param VL_BC_ISSQN
	 * @param VL_ISSQN
	 * @param VL_BC_IRRF
	 * @param VL_IRRF
	 * @param VL_BC_PREV
	 * @param VL_PREV
	 */
	public RC130(BigDecimal VL_SERV_NT, BigDecimal VL_BC_ISSQN, BigDecimal VL_ISSQN,
			BigDecimal VL_BC_IRRF, BigDecimal VL_IRRF, BigDecimal VL_BC_PREV, 
			BigDecimal VL_PREV) {
		super();
		this.VL_SERV_NT = VL_SERV_NT;
		this.VL_BC_ISSQN = VL_BC_ISSQN;
		this.VL_ISSQN = VL_ISSQN;
		this.VL_BC_IRRF = VL_BC_IRRF;
		this.VL_IRRF = VL_IRRF;
		this.VL_BC_PREV = VL_BC_PREV;
		this.VL_PREV = VL_PREV;
	} //RC130
	
	/**
	 * Formata o Bloco C Registro 130
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.toNumeric(VL_SERV_NT))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ISSQN))
            .append(PIPE).append(TextUtil.toNumeric(VL_ISSQN))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_IRRF))
            .append(PIPE).append(TextUtil.toNumeric(VL_IRRF))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_PREV))
            .append(PIPE).append(TextUtil.toNumeric(VL_PREV))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} //RC130