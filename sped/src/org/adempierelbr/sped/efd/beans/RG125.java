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
import org.compiere.util.Env;

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
	int LBR_NotaFiscalLine_ID;
	
	/**
	 * Constructor
	 * @param COD_IND_BEM
	 * @param DT_MOV
	 * @param TIPO_MOV
	 * @param VL_IMOB_ICMS_OP
	 * @param VL_IMOB_ICMS_ST
	 * @param VL_IMOB_ICMS_FRT
	 * @param VL_IMOB_ICMS_DIF
	 * @param NUM_PARC
	 * @param VL_PARC_PASS
	 * @param LBR_NotaFiscalLine_ID
	 */
	public RG125(String COD_IND_BEM, Timestamp DT_MOV, String TIPO_MOV, BigDecimal VL_IMOB_ICMS_OP,
			BigDecimal VL_IMOB_ICMS_ST, BigDecimal VL_IMOB_ICMS_FRT, BigDecimal VL_IMOB_ICMS_DIF,
			int NUM_PARC, BigDecimal VL_PARC_PASS, int LBR_NotaFiscalLine_ID) 
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
		this.LBR_NotaFiscalLine_ID = LBR_NotaFiscalLine_ID;
	} //RG125
	
	public BigDecimal getVL_IMOB_ICMS_OP(){
		return VL_IMOB_ICMS_OP == null ? Env.ZERO : VL_IMOB_ICMS_OP;
	}
	
	public BigDecimal getVL_IMOB_ICMS_DIF(){
		return VL_IMOB_ICMS_DIF == null ? Env.ZERO : VL_IMOB_ICMS_DIF;
	}
	
	public BigDecimal getVL_PARC_PASS(){
		return VL_PARC_PASS == null ? Env.ZERO : VL_PARC_PASS;
	}
	
	public String getTIPO_MOV(){
		return TIPO_MOV == null ? "" : TIPO_MOV;
	}
	
	public int getLBR_NotaFiscalLine_ID(){
		return this.LBR_NotaFiscalLine_ID;
	}
	
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
	        .append(PIPE).append(NUM_PARC == 0 ? "" : NUM_PARC)
	        .append(PIPE).append(TextUtil.toNumeric(VL_PARC_PASS,2,false))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_IND_BEM == null) ? 0 : COD_IND_BEM.hashCode());
		result = prime * result
				+ ((TIPO_MOV == null) ? 0 : TIPO_MOV.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RG125 other = (RG125) obj;
		if (COD_IND_BEM == null) {
			if (other.COD_IND_BEM != null)
				return false;
		} else if (!COD_IND_BEM.equals(other.COD_IND_BEM))
			return false;
		if (TIPO_MOV == null) {
			if (other.TIPO_MOV != null)
				return false;
		} else if (!TIPO_MOV.equals(other.TIPO_MOV))
			return false;
		return true;
	}
		
} //RG125