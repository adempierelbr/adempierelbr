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
 * REGISTRO C191: DETALHAMENTO DA CONSOLIDAÇÃO – OPERAÇÕES DE AQUISIÇÃO COM DIREITO A CRÉDITO, 
 * E OPERAÇÕES DE DEVOLUÇÃO DE COMPRAS E VENDAS – PIS/PASEP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC191.java, 21/01/2011, 15:30:00, mgrigioni
 */
public class RC191 extends RegSped {

	private String CNPJ_CPF_PART;
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
	 * @param CNPJ_CPF_PART
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
	public RC191(String CNPJ_CPF_PART, String CST_PIS, String CFOP, String COD_CTA, BigDecimal VL_ITEM,
			BigDecimal VL_DESC, BigDecimal VL_BC_PIS, BigDecimal ALIQ_PIS,
			BigDecimal QUANT_BC_PIS, BigDecimal ALIQ_PIS_QUANT, BigDecimal VL_PIS) {
		this.CNPJ_CPF_PART = CNPJ_CPF_PART;
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
	} //RC191

	/**
	 * Formata o Bloco C Registro 191
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CNPJ_CPF_PART), 14)
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

} //RC191