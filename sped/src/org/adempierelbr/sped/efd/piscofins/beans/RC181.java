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
 * REGISTRO C181: DETALHAMENTO DA CONSOLIDAÇÃO – OPERAÇÕES DE VENDAS – PIS/PASEP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC181.java, 21/01/2011, 14:35:00, mgrigioni
 */
public class RC181 extends RegSped {

	private String CST_PIS;
	private String CFOP;
	private String COD_CTA;

	private BigDecimal VL_ITEM;
	private BigDecimal VL_DESC;
	private BigDecimal VL_BC_PIS;
	private BigDecimal ALIQ_PIS;
	private BigDecimal QUANT_BC_PIS;
	private BigDecimal ALIQ_PIS_QUANT;
	private BigDecimal VL_PIS;
	
	/**
	 * Constructor
	 * @param CST_PIS
	 * @param CFOP
	 * @param COD_CTA
	 * @param VL_ITEM
	 * @param VL_DESC
	 * @param VL_BC_PIS
	 * @param ALIQ_PIS
	 * @param QUANT_BC_PIS
	 * @param ALIQ_PIS_QUANT
	 * @param VL_PIS
	 */
	public RC181(String CST_PIS, String CFOP, String COD_CTA, BigDecimal VL_ITEM,
			BigDecimal VL_DESC, BigDecimal VL_BC_PIS, BigDecimal ALIQ_PIS,
			BigDecimal QUANT_BC_PIS, BigDecimal ALIQ_PIS_QUANT, BigDecimal VL_PIS) {
		this.CST_PIS = CST_PIS;
		this.CFOP = CFOP;
		this.COD_CTA = COD_CTA;
		this.VL_ITEM = VL_ITEM;
		this.VL_DESC = VL_DESC;
		this.VL_BC_PIS = VL_BC_PIS;
		this.ALIQ_PIS = ALIQ_PIS;
		this.QUANT_BC_PIS = QUANT_BC_PIS;
		this.ALIQ_PIS_QUANT = ALIQ_PIS_QUANT;
		this.VL_PIS = VL_PIS;
		//
		addCounter();
	} //RC181

	/**
	 * Formata o Bloco C Registro 181
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.lPad(CST_PIS, 2)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CFOP),4,4)
			+ PIPE + TextUtil.toNumeric(VL_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(VL_DESC,2)
			+ PIPE + TextUtil.toNumeric(VL_BC_PIS,2)
			+ PIPE + TextUtil.toNumeric(ALIQ_PIS,4)
			+ PIPE + TextUtil.toNumeric(QUANT_BC_PIS,3)
			+ PIPE + TextUtil.toNumeric(ALIQ_PIS_QUANT,4)
			+ PIPE + TextUtil.toNumeric(VL_PIS,2)
			+ PIPE + TextUtil.checkSize(COD_CTA, 60)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC181