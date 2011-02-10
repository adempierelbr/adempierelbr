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
 * REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC120.java, 07/02/2011, 08:02:00, mgrigioni
 */
public class RC120 extends RegSped {

	private String COD_DOC_IMP;
	private String NUM_DOC_IMP;
	private String NUM_ACDRAW;
	
	private BigDecimal PIS_IMP;
	private BigDecimal COFINS_IMP;

	/**
	 * Constructor
	 * @param COD_DOC_IMP
	 * @param NUM_DOC_IMP
	 * @param PIS_IMP
	 * @param COFINS_IMP
	 * @param NUM_ACDRAW
	 */
	public RC120(String COD_DOC_IMP, String NUM_DOC_IMP, BigDecimal PIS_IMP,
			BigDecimal COFINS_IMP, String NUM_ACDRAW) {
		super();
		this.COD_DOC_IMP = COD_DOC_IMP;
		this.NUM_DOC_IMP = NUM_DOC_IMP;
		this.PIS_IMP = PIS_IMP;
		this.COFINS_IMP = COFINS_IMP;
		this.NUM_ACDRAW = NUM_ACDRAW;
	} //RC120
	
	/**
	 * Formata o Bloco C Registro 120
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_DOC_IMP, 1, 1))
            .append(PIPE).append(TextUtil.checkSize(NUM_DOC_IMP, 10))
            .append(PIPE).append(TextUtil.toNumeric(PIS_IMP))
            .append(PIPE).append(TextUtil.toNumeric(COFINS_IMP))
            .append(PIPE).append(TextUtil.checkSize(NUM_ACDRAW,11))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

} //RC120