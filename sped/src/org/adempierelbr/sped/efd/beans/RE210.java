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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO E210: APURAÇÃO DO ICMS – SUBSTITUIÇÃO TRIBUTÁRIA.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE210.java, 14/06/2011, 08:39:00, mgrigioni
 */
public class RE210 extends RegSped {
	
	private final String IND_MOV_ST = "1";
	
	private BigDecimal VL_SLD_CRED_ANT_ST;
	private BigDecimal VL_DEVOL_ST;
	private BigDecimal VL_RESSARC_ST;
	private BigDecimal VL_OUT_CRED_ST;
	private BigDecimal VL_AJ_CREDITOS_ST;
	private BigDecimal VL_RETENÇAO_ST;
	private BigDecimal VL_OUT_DEB_ST;
	private BigDecimal VL_AJ_DEBITOS_ST;
	private BigDecimal VL_SLD_DEV_ANT_ST;
	private BigDecimal VL_DEDUÇÕES_ST;
	private BigDecimal VL_ICMS_RECOL_ST;
	private BigDecimal VL_SLD_CRED_ST_TRANSPORTAR;
	private BigDecimal DEB_ESP_ST;

	public RE210(BigDecimal VL_SLD_CRED_ANT_ST, BigDecimal VL_DEVOL_ST, BigDecimal VL_RESSARC_ST,
			BigDecimal VL_OUT_CRED_ST, BigDecimal VL_AJ_CREDITOS_ST, BigDecimal VL_RETENÇAO_ST,
			BigDecimal VL_OUT_DEB_ST, BigDecimal VL_AJ_DEBITOS_ST, BigDecimal VL_SLD_DEV_ANT_ST,
			BigDecimal VL_DEDUÇÕES_ST, BigDecimal VL_ICMS_RECOL_ST, BigDecimal VL_SLD_CRED_ST_TRANSPORTAR,
			BigDecimal DEB_ESP_ST)
	{
		super();
		this.VL_SLD_CRED_ANT_ST = VL_SLD_CRED_ANT_ST;
		this.VL_DEVOL_ST = VL_DEVOL_ST;
		this.VL_RESSARC_ST = VL_RESSARC_ST;
		this.VL_OUT_CRED_ST = VL_OUT_CRED_ST;
		this.VL_AJ_CREDITOS_ST = VL_AJ_CREDITOS_ST;
		this.VL_RETENÇAO_ST = VL_RETENÇAO_ST;
		this.VL_OUT_DEB_ST = VL_OUT_DEB_ST;
		this.VL_AJ_DEBITOS_ST = VL_AJ_DEBITOS_ST;
		this.VL_SLD_DEV_ANT_ST = VL_SLD_DEV_ANT_ST;
		this.VL_DEDUÇÕES_ST = VL_DEDUÇÕES_ST;
		this.VL_ICMS_RECOL_ST = VL_ICMS_RECOL_ST;
		this.VL_SLD_CRED_ST_TRANSPORTAR = VL_SLD_CRED_ST_TRANSPORTAR;
		this.DEB_ESP_ST = DEB_ESP_ST;
	}	// RE210
	
	public BigDecimal getVL_ICMS_RECOL_ST(){
		return VL_ICMS_RECOL_ST == null ? Env.ZERO : VL_ICMS_RECOL_ST;
	}

	/**
	 * Formata o Bloco E Registro 210
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG)
            .append(PIPE).append(IND_MOV_ST)
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_CRED_ANT_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_DEVOL_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_RESSARC_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_OUT_CRED_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ_CREDITOS_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_RETENÇAO_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_OUT_DEB_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ_DEBITOS_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_DEV_ANT_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_DEDUÇÕES_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS_RECOL_ST))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_CRED_ST_TRANSPORTAR))
            .append(PIPE).append(TextUtil.toNumeric(DEB_ESP_ST))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE210