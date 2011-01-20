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
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C180: CONSOLIDAÇÃO DE NOTAS FISCAIS ELETRÕNICAS EMITIDAS PELA PESSOA JURÍDICA
 * (CÓDIGO 55) – OPERAÇÕES DE VENDAS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC180.java, 20/01/2011, 15:33:00, mgrigioni
 */
public class RC181 extends RegSped {

	private String COD_MOD;
	private String COD_ITEM;
	private String COD_NCM;
	private String EX_IPI;
	
	private Timestamp DT_DOC_INI;
	private Timestamp DT_DOC_FIN;
	
	private BigDecimal VL_TOT_ITEM;
	
	/**
	 * Constructor
	 * 
	 * @param COD_DOC_IMP
	 * @param NUM_DOC_IMP
	 * @param PIS_IMP
	 * @param COFINS_IMP
	 */
	public RC181(String COD_MOD, String COD_ITEM, String  COD_NCM, String EX_IPI,
			Timestamp DT_DOC_INI, Timestamp DT_DOC_FIN, BigDecimal VL_TOT_ITEM) {
		this.COD_MOD = COD_MOD;
		this.COD_ITEM = COD_ITEM;
		this.COD_NCM = COD_NCM;
		this.EX_IPI = EX_IPI;
		this.DT_DOC_INI = DT_DOC_INI;
		this.DT_DOC_FIN = DT_DOC_FIN;
		this.VL_TOT_ITEM = VL_TOT_ITEM;
		//
		addCounter();
	} //RC180

	/**
	 * Formata o Bloco C Registro 180
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_MOD, 2, 2)
			+ PIPE + TextUtil.timeToString(DT_DOC_INI, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_DOC_FIN, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60)
			+ PIPE + TextUtil.checkSize(COD_NCM, 8)
			+ PIPE + TextUtil.checkSize(EX_IPI,3)
			+ PIPE + TextUtil.toNumeric(VL_TOT_ITEM, 2, true)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString

} //RC180