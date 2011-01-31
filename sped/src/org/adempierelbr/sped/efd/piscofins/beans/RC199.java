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

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C199: COMPLEMENTO DO DOCUMENTO - OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 55) 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC199.java, 31/01/2011, 09:06:00, mgrigioni
 */
public class RC199 extends RegSped {

	private String COD_DOC_IMP;
	private String NUM_DOC_IMP;
	private String NUM_ACDRAW;
	
	private BigDecimal VL_PIS_IMP;
	private BigDecimal VL_COFINS_IMP;
	
	/**
	 * Constructor
	 * @param NUM_PROC
	 * @param IND_PROC
	 */
	public RC199(String COD_DOC_IMP, String NUM_DOC_IMP, String NUM_ACDRAW, BigDecimal VL_PIS_IMP,
			BigDecimal VL_COFINS_IMP) {
		this.COD_DOC_IMP = COD_DOC_IMP;
		this.NUM_DOC_IMP = NUM_DOC_IMP;
		this.NUM_ACDRAW = NUM_ACDRAW;
		this.VL_PIS_IMP = VL_PIS_IMP;
		this.VL_COFINS_IMP = VL_COFINS_IMP;
		//
		addCounter();
	} //RC199

	/**
	 * Formata o Bloco C Registro 199
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_DOC_IMP, 1, 1)
			+ PIPE + TextUtil.checkSize(NUM_DOC_IMP, 10)
			+ PIPE + TextUtil.toNumeric(VL_PIS_IMP, 2)
			+ PIPE + TextUtil.toNumeric(VL_COFINS_IMP, 2)
			+ PIPE + TextUtil.checkSize(NUM_ACDRAW, 20)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC199