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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C140: FATURA 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC140.java, 07/02/2011, 08:01:00, mgrigioni
 */
public class RC140 extends RegSped {

	private final String IND_TIT = "00"; //Duplicata
	
	private String IND_EMIT;
	private String DESC_TIT;
	private String NUM_TIT;
	
	private BigDecimal QTD_PARC;
	private BigDecimal VL_TIT;

	/**
	 * Constructor
	 * @param IND_EMIT
	 * @param DESC_TIT
	 * @param NUM_TIT
	 * @param QTD_PARC
	 * @param VL_TIT
	 */
	public RC140(String IND_EMIT, String DESC_TIT, String NUM_TIT,
			BigDecimal QTD_PARC, BigDecimal VL_TIT) {
		super();
		this.IND_EMIT = IND_EMIT;
		this.DESC_TIT = DESC_TIT;
		this.NUM_TIT = NUM_TIT;
		this.QTD_PARC = QTD_PARC;
		this.VL_TIT = VL_TIT;
	} //RC140

	/**
	 * Formata o Bloco C Registro 140
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(IND_EMIT,1))
            .append(PIPE).append(IND_TIT)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESC_TIT), 255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NUM_TIT), 255))
            .append(PIPE).append(TextUtil.toNumeric(QTD_PARC, 0))
            .append(PIPE).append(TextUtil.toNumeric(VL_TIT))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

} //RC140