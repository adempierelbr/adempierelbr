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
 * REGISTRO C195: DETALHAMENTO DA CONSOLIDAÇÃO - OPERAÇÕES DE AQUISIÇÃO COM DIREITO A CRÉDITO, 
 * E OPERAÇÕES DE DEVOLUÇÃO DE COMPRAS E VENDAS – COFINS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC195.java, 21/01/2011, 15:30:00, mgrigioni
 */
public class RC195 extends RegSped {

	private String CNPJ_CPF_PART;
	private String CST_COFINS;
	private String CFOP;
	private String COD_CTA;

	private BigDecimal VL_ITEM;
	private BigDecimal VL_DESC;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal ALIQ_COFINS;
	private BigDecimal QUANT_BC_COFINS;
	private BigDecimal ALIQ_COFINS_QUANT;
	private BigDecimal VL_COFINS;
	
	/**
	 * Constructor
	 * @param CNPJ_CPF_PART
	 * @param CST_COFINS
	 * @param CFOP
	 * @param COD_CTA
	 * @param VL_ITEM
	 * @param VL_DESC
	 * @param VL_BC_COFINS
	 * @param ALIQ_COFINS
	 * @param QUANT_BC_COFINS
	 * @param ALIQ_COFINS_QUANT
	 * @param VL_COFINS
	 */
	public RC195(String CNPJ_CPF_PART, String CST_COFINS, String CFOP, String COD_CTA, BigDecimal VL_ITEM,
			BigDecimal VL_DESC, BigDecimal VL_BC_COFINS, BigDecimal ALIQ_COFINS,
			BigDecimal QUANT_BC_COFINS, BigDecimal ALIQ_COFINS_QUANT, BigDecimal VL_COFINS) {
		this.CNPJ_CPF_PART = CNPJ_CPF_PART;
		this.CST_COFINS = CST_COFINS;
		this.CFOP = CFOP;
		this.COD_CTA = COD_CTA;
		this.VL_ITEM = VL_ITEM;
		this.VL_DESC = VL_DESC;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.ALIQ_COFINS = ALIQ_COFINS;
		this.QUANT_BC_COFINS = QUANT_BC_COFINS;
		this.ALIQ_COFINS_QUANT = ALIQ_COFINS_QUANT;
		this.VL_COFINS = VL_COFINS;
		//
		addCounter();
	} //RC195

	/**
	 * Formata o Bloco C Registro 195
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CNPJ_CPF_PART), 14)
			+ PIPE + TextUtil.lPad(CST_COFINS, 2)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CFOP),4,4)
			+ PIPE + TextUtil.toNumeric(VL_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(VL_DESC,2)
			+ PIPE + TextUtil.toNumeric(VL_BC_COFINS,2)
			+ PIPE + TextUtil.toNumeric(ALIQ_COFINS,4)
			+ PIPE + TextUtil.toNumeric(QUANT_BC_COFINS,3)
			+ PIPE + TextUtil.toNumeric(ALIQ_COFINS_QUANT,4)
			+ PIPE + TextUtil.toNumeric(VL_COFINS,2)
			+ PIPE + TextUtil.checkSize(COD_CTA, 60)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC195