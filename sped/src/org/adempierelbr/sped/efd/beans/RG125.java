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
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO G125 – MOVIMENTAÇÃO DE BEM OU COMPONENTE DO ATIVO IMOBILIZADO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG125.java, 23/03/2011, 16:35:00, mgrigioni
 */
public class RG125 extends RegSped
{

	String COD_IND_BEM;
	String TIPO_MOV;
	
	Timestamp DT_MOV;
	
	BigDecimal VL_IMOB_ICMS_OP;
	BigDecimal VL_IMOB_ICMS_ST;
	BigDecimal VL_IMOB_ICMS_FRT;
	BigDecimal VL_IMOB_ICMS_DIF;
	BigDecimal VL_PARC_PASS;
	
	int NUM_PARC;
	
	public RG125(String COD_IND_BEM, Timestamp DT_MOV, String TIPO_MOV, BigDecimal VL_IMOB_ICMS_OP,
			BigDecimal VL_IMOB_ICMS_ST, BigDecimal VL_IMOB_ICMS_FRT, BigDecimal VL_IMOB_ICMS_DIF,
			int NUM_PARC, BigDecimal VL_PARC_PASS) 
	{
		super();
		this.COD_IND_BEM = COD_IND_BEM;
		this.DT_MOV = DT_MOV;
		this.TIPO_MOV = TIPO_MOV;
		this.VL_IMOB_ICMS_OP = VL_IMOB_ICMS_OP;
		this.VL_IMOB_ICMS_ST = VL_IMOB_ICMS_ST;
		this.VL_IMOB_ICMS_FRT = VL_IMOB_ICMS_FRT;
		this.VL_IMOB_ICMS_DIF = VL_IMOB_ICMS_DIF;
		this.NUM_PARC = NUM_PARC;
		this.VL_PARC_PASS = VL_PARC_PASS;
	} //RG125

	/**
	 * Formata o Bloco G Registro 125
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_IND_BEM), 60))
	        .append(PIPE).append(TextUtil.timeToString(DT_MOV, "ddMMyyyy", false))
	        .append(PIPE).append(TextUtil.checkSize(TIPO_MOV,2))
	        .append(PIPE).append(TextUtil.toNumeric(VL_IMOB_ICMS_OP,2,false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_IMOB_ICMS_ST,2,false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_IMOB_ICMS_FRT,2,false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_IMOB_ICMS_DIF,2,false))
	        .append(PIPE).append(NUM_PARC)
	        .append(PIPE).append(TextUtil.toNumeric(VL_PARC_PASS,2,false))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RG125