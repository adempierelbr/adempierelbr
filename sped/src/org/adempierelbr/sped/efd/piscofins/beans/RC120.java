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
 * REGISTRO C120: COMPLEMENTO DO DOCUMENTO - OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01) 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC111.java, 20/01/2011, 15:11:00, mgrigioni
 */
public class RC120 extends RegSped {

	private String COD_DOC_IMP;
	private String NUM_DOC_IMP;
	private String NUM_ACDRAW;
	
	private BigDecimal PIS_IMP;
	private BigDecimal COFINS_IMP;

	/**
	 * Constructor
	 * 
	 * @param COD_DOC_IMP
	 * @param NUM_DOC_IMP
	 * @param PIS_IMP
	 * @param COFINS_IMP
	 */
	public RC120(String COD_DOC_IMP, String NUM_DOC_IMP, BigDecimal PIS_IMP,
			BigDecimal COFINS_IMP, String NUM_ACDRAW) {
		this.COD_DOC_IMP = COD_DOC_IMP;
		this.NUM_DOC_IMP = NUM_DOC_IMP;
		this.PIS_IMP = PIS_IMP;
		this.COFINS_IMP = COFINS_IMP;
		this.NUM_ACDRAW = NUM_ACDRAW;
		//
		addCounter();
	} //RC120

	/**
	 * Formata o Bloco C Registro 120
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_DOC_IMP, 1, 1)
			+ PIPE + TextUtil.checkSize(NUM_DOC_IMP, 10)
			+ PIPE + TextUtil.toNumeric(PIS_IMP)
			+ PIPE + TextUtil.toNumeric(COFINS_IMP)
			+ PIPE + TextUtil.checkSize(NUM_ACDRAW,11)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC120