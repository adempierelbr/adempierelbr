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
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO G110 – ICMS – ATIVO PERMANENTE – CIAP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG110.java, 23/03/2011, 16:48:00, mgrigioni
 */
public class RG110 extends RegSped
{
	
	Timestamp DT_INI;
	Timestamp DT_FIN;
	
	BigDecimal SALDO_IN_ICMS;
	BigDecimal SOM_PARC;
	BigDecimal VL_TRIB_EXP;
	BigDecimal VL_TOTAL;
	BigDecimal IND_PER_SAI;
	BigDecimal ICMS_APROP;
	BigDecimal SOM_ICMS_OC;
	
	/**
	 * Constructor
	 * @param DT_INI
	 * @param DT_FIN
	 * @param SALDO_IN_ICMS
	 * @param SOM_PARC
	 * @param VL_TRIB_EXP
	 * @param VL_TOTAL
	 * @param IND_PER_SAI
	 * @param ICMS_APROP
	 * @param SOM_ICMS_OC
	 */
	public RG110(Timestamp DT_INI, Timestamp DT_FIN, BigDecimal SALDO_IN_ICMS, BigDecimal SOM_PARC,
			BigDecimal VL_TRIB_EXP, BigDecimal VL_TOTAL, BigDecimal IND_PER_SAI,
			BigDecimal ICMS_APROP, BigDecimal SOM_ICMS_OC) 
	{
		super();
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.SALDO_IN_ICMS = SALDO_IN_ICMS;
		this.SOM_PARC = SOM_PARC;
		this.VL_TRIB_EXP = VL_TRIB_EXP;
		this.VL_TOTAL = VL_TOTAL;
		this.IND_PER_SAI = IND_PER_SAI;
		this.ICMS_APROP = ICMS_APROP;
		this.SOM_ICMS_OC = SOM_ICMS_OC;
	} //RG110

	/**
	 * Formata o Bloco G Registro 110
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy", false))
	        .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy", false))
	        .append(PIPE).append(TextUtil.toNumeric(SALDO_IN_ICMS, 2, false))
	        .append(PIPE).append(TextUtil.toNumeric(SOM_PARC, 2, false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_TRIB_EXP, 2, false))
	        .append(PIPE).append(TextUtil.toNumeric(VL_TOTAL, 2, false))
	        .append(PIPE).append(TextUtil.toNumeric(IND_PER_SAI, 4, false))
	        .append(PIPE).append(TextUtil.toNumeric(ICMS_APROP, 2, false))
	        .append(PIPE).append(TextUtil.toNumeric(SOM_ICMS_OC, 2, false))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RG110