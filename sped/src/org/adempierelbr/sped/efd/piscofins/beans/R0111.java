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
 * REGISTRO 0111: TABELA DE RECEITA BRUTA MENSAL PARA FINS DE RATEIO DE CRÉDITOS COMUNS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0111.java, 28/02/2011, 16:26:00, mgrigioni
 */
public class R0111 extends RegSped {
	
	private BigDecimal REC_BRU_NCUM_TRIB_MI;
	private BigDecimal REC_BRU_NCUM_NT_MI;
	private BigDecimal REC_BRU_NCUM_EXP;
	private BigDecimal REC_BRU_CUM;
	private BigDecimal REC_BRU_TOTAL;


	public R0111(BigDecimal REC_BRU_NCUM_TRIB_MI, BigDecimal REC_BRU_NCUM_NT_MI,
			BigDecimal REC_BRU_NCUM_EXP, BigDecimal REC_BRU_CUM, BigDecimal REC_BRU_TOTAL)
	{
		super();
		this.REC_BRU_NCUM_TRIB_MI = REC_BRU_NCUM_TRIB_MI;
		this.REC_BRU_NCUM_NT_MI = REC_BRU_NCUM_NT_MI;
		this.REC_BRU_NCUM_EXP = REC_BRU_NCUM_EXP;
		this.REC_BRU_CUM = REC_BRU_CUM;
		this.REC_BRU_TOTAL = REC_BRU_TOTAL;
	}	//	R0111

	/**
	 * Formata o Bloco 0 Registro 111
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.toNumeric(REC_BRU_NCUM_TRIB_MI))
            .append(PIPE).append(TextUtil.toNumeric(REC_BRU_NCUM_NT_MI))
            .append(PIPE).append(TextUtil.toNumeric(REC_BRU_NCUM_EXP))
            .append(PIPE).append(TextUtil.toNumeric(REC_BRU_CUM))
            .append(PIPE).append(TextUtil.toNumeric(REC_BRU_TOTAL))
            .append(PIPE).append(EOL);

		return format.toString();
	} // toString
		
} // R0111