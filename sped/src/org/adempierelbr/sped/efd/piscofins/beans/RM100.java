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
 * REGISTRO M100: CRÉDITO DE PIS/PASEP RELATIVO AO PERÍODO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RM100.java, 21/02/2011, 14:58:00, mgrigioni
 */
public class RM100 extends RegSped {

	String COD_CRED;
	String IND_CRED_ORI;
	String IND_DESC_CRED;
	
	BigDecimal VL_BC_PIS;
	BigDecimal ALIQ_PIS;
	BigDecimal QUANT_BC_PIS;
	BigDecimal ALIQ_PIS_QUANT;
	BigDecimal VL_CRED;
	BigDecimal VL_AJUS_ACRES;
	BigDecimal VL_AJUS_REDUC;
	BigDecimal VL_CRED_DIF;
	BigDecimal VL_CRED_DISP;
	BigDecimal VL_CRED_DESC;
	BigDecimal SLD_CRED;

	public RM100(String COD_CRED, String IND_CRED_ORI, BigDecimal VL_BC_PIS,
			BigDecimal ALIQ_PIS, BigDecimal QUANT_BC_PIS, BigDecimal ALIQ_PIS_QUANT,
			BigDecimal VL_CRED, BigDecimal VL_AJUS_ACRES, BigDecimal VL_AJUS_REDUC,
			BigDecimal VL_CRED_DIF, BigDecimal VL_CRED_DISP, String IND_DESC_CRED,
			BigDecimal VL_CRED_DESC, BigDecimal SLD_CRED) 
	{
		super();
		this.COD_CRED = COD_CRED;
		this.IND_CRED_ORI = IND_CRED_ORI;
		this.VL_BC_PIS = VL_BC_PIS;
		this.ALIQ_PIS = ALIQ_PIS;
		this.QUANT_BC_PIS = QUANT_BC_PIS;
		this.ALIQ_PIS_QUANT = ALIQ_PIS_QUANT;
		this.VL_CRED = VL_CRED;
		this.VL_AJUS_ACRES = VL_AJUS_ACRES;
		this.VL_AJUS_REDUC = VL_AJUS_REDUC;
		this.VL_CRED_DIF = VL_CRED_DIF;
		this.VL_CRED_DISP = VL_CRED_DISP;
		this.IND_DESC_CRED = IND_DESC_CRED;
		this.VL_CRED_DESC = VL_CRED_DESC;
		this.SLD_CRED = SLD_CRED;
	}	//RM100

	/**
	 * Formata o Bloco M Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(TextUtil.checkSize(COD_CRED, 3))
	        .append(PIPE).append(TextUtil.checkSize(IND_CRED_ORI, 1))
	        .append(PIPE).append(TextUtil.toNumeric(VL_BC_PIS))
	        .append(PIPE).append(TextUtil.toNumeric(ALIQ_PIS,4))
	        .append(PIPE).append(TextUtil.toNumeric(QUANT_BC_PIS,2,false))
	        .append(PIPE).append(TextUtil.toNumeric(ALIQ_PIS_QUANT,2,false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_CRED))
	        .append(PIPE).append(TextUtil.toNumeric(VL_AJUS_ACRES))
	        .append(PIPE).append(TextUtil.toNumeric(VL_AJUS_REDUC))
	        .append(PIPE).append(TextUtil.toNumeric(VL_CRED_DIF))
	        .append(PIPE).append(TextUtil.toNumeric(VL_CRED_DISP))
	        .append(PIPE).append(TextUtil.checkSize(IND_DESC_CRED, 1))
	        .append(PIPE).append(TextUtil.toNumeric(VL_CRED_DESC))
	        .append(PIPE).append(TextUtil.toNumeric(SLD_CRED))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RM100