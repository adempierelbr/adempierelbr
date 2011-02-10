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
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C141: VENCIMENTO DA FATURA (CÓDIGO 01).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC141.java, 07/02/2011, 08:24:00, mgrigioni
 */
public class RC141 extends RegSped {
	
	private String NUM_PARC;

	private Timestamp DL_VCTO;
	
	private BigDecimal VL_PARC;

	public RC141(String NUM_PARC, Timestamp DL_VCTO, BigDecimal VL_PARC) {
		super();
		this.NUM_PARC = NUM_PARC;
		this.DL_VCTO = DL_VCTO;
		this.VL_PARC = VL_PARC;
	} //RC141

	/**
	 * Formata o Bloco C Registro 141
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.toNumeric(NUM_PARC))
            .append(PIPE).append(TextUtil.timeToString(DL_VCTO, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.toNumeric(VL_PARC))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

} //RC141