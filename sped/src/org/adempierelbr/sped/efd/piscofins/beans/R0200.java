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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0200.java, 19/01/2011, 11:03:00, mgrigioni
 */
public class R0200 extends RegSped {
	
	private String COD_ITEM;
	private String DESCR_ITEM;
	private String COD_BARRA;
	private String COD_ANT_ITEM;
	private String UNID_INV;
	private String TIPO_ITEM;
	private String COD_NCM;
	private String EX_IPI;
	private String COD_GEN;
	private String COD_LST;
	
	private BigDecimal ALIQ_ICMS;
	
	/**
	 * Constructor
	 * @param COD_ITEM
	 * @param DESCR_ITEM
	 * @param COD_BARRA
	 * @param COD_ANT_ITEM
	 * @param UNID_INV
	 * @param TIPO_ITEM
	 * @param COD_NCM
	 * @param EX_IPI
	 * @param COD_GEN
	 * @param COD_LST
	 * @param ALIQ_ICMS
	 */
	public R0200(String COD_ITEM, String DESCR_ITEM, String COD_BARRA, String COD_ANT_ITEM,
			String UNID_INV, String TIPO_ITEM, String COD_NCM, String EX_IPI, String COD_GEN,
			String COD_LST, BigDecimal ALIQ_ICMS)
	{
		this.COD_ITEM = COD_ITEM;
		this.DESCR_ITEM = DESCR_ITEM;
		this.COD_BARRA = COD_BARRA;
		this.COD_ANT_ITEM = COD_ANT_ITEM;
		this.UNID_INV = UNID_INV;
		this.TIPO_ITEM = TIPO_ITEM;
		this.COD_NCM = COD_NCM;
		this.EX_IPI = EX_IPI;
		this.COD_GEN = COD_GEN;
		this.COD_LST = COD_LST;
		this.ALIQ_ICMS = ALIQ_ICMS;
		//
		addCounter();
	}	//	R0200

	/**
	 * Formata o Bloco 0 Registro 200
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60)  
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR_ITEM),255)
			+ PIPE + TextUtil.checkSize(COD_BARRA,255)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ANT_ITEM),60)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(UNID_INV),6)
			+ PIPE + TIPO_ITEM
			+ PIPE + TextUtil.checkSize(COD_NCM, 8)
			+ PIPE + TextUtil.checkSize(EX_IPI,3)
			+ PIPE + TextUtil.lPad(TextUtil.toNumeric(COD_GEN), 2)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(COD_LST), 4)
			+ PIPE + TextUtil.toNumeric(ALIQ_ICMS,2,false)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0200