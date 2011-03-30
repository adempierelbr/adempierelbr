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

/**
 * REGISTRO E110: APURAÇÃO DO ICMS – OPERAÇÕES PRÓPRIAS.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE110.java, 09/02/2011, 09:25:00, mgrigioni
 */
public class RE110 extends RegSped {
	
	private BigDecimal VL_TOT_DEBITOS;
	private BigDecimal VL_AJ_DEBITOS;
	private BigDecimal VL_TOT_AJ_DEBITOS;
	private BigDecimal VL_ESTORNOS_CRED;
	private BigDecimal VL_TOT_CREDITOS;
	private BigDecimal VL_AJ_CREDITOS;
	private BigDecimal VL_TOT_AJ_CREDITOS;
	private BigDecimal VL_ESTORNOS_DEB;
	private BigDecimal VL_SLD_CREDOR_ANT;
	private BigDecimal VL_SLD_APURADO;
	private BigDecimal VL_TOT_DED;
	private BigDecimal VL_ICMS_RECOLHER;
	private BigDecimal VL_SLD_CREDOR_TRANSPORTAR;
	private BigDecimal DEB_ESP;

	/**
	 * Constructor
	 * @param VL_TOT_DEBITOS
	 * @param VL_AJ_DEBITOS
	 * @param VL_TOT_AJ_DEBITOS
	 * @param VL_ESTORNOS_CRED
	 * @param VL_TOT_CREDITOS
	 * @param VL_AJ_CREDITOS
	 * @param VL_TOT_AJ_CREDITOS
	 * @param VL_ESTORNOS_DEB
	 * @param VL_SLD_CREDOR_ANT
	 * @param VL_SLD_APURADO
	 * @param VL_TOT_DED
	 * @param VL_ICMS_RECOLHER
	 * @param VL_SLD_CREDOR_TRANSPORTAR
	 * @param DEB_ESP
	 */
	public RE110(BigDecimal VL_TOT_DEBITOS, BigDecimal VL_AJ_DEBITOS, BigDecimal VL_TOT_AJ_DEBITOS,
			BigDecimal VL_ESTORNOS_CRED, BigDecimal VL_TOT_CREDITOS, BigDecimal VL_AJ_CREDITOS,
			BigDecimal VL_TOT_AJ_CREDITOS, BigDecimal VL_ESTORNOS_DEB, BigDecimal VL_SLD_CREDOR_ANT,
			BigDecimal VL_SLD_APURADO, BigDecimal VL_TOT_DED, BigDecimal VL_ICMS_RECOLHER, 
			BigDecimal VL_SLD_CREDOR_TRANSPORTAR, BigDecimal DEB_ESP)
	{
		super();
		this.VL_TOT_DEBITOS = VL_TOT_DEBITOS;
		this.VL_AJ_DEBITOS = VL_AJ_DEBITOS;
		this.VL_TOT_AJ_DEBITOS = VL_TOT_AJ_DEBITOS;
		this.VL_ESTORNOS_CRED = VL_ESTORNOS_CRED;
		this.VL_TOT_CREDITOS = VL_TOT_CREDITOS;
		this.VL_AJ_CREDITOS = VL_AJ_CREDITOS;
		this.VL_TOT_AJ_CREDITOS = VL_TOT_AJ_CREDITOS;
		this.VL_ESTORNOS_DEB = VL_ESTORNOS_DEB;
		this.VL_SLD_CREDOR_ANT = VL_SLD_CREDOR_ANT;
		this.VL_SLD_APURADO = VL_SLD_APURADO;
		this.VL_TOT_DED = VL_TOT_DED;
		this.VL_ICMS_RECOLHER = VL_ICMS_RECOLHER;
		this.VL_SLD_CREDOR_TRANSPORTAR = VL_SLD_CREDOR_TRANSPORTAR;
		this.DEB_ESP = DEB_ESP;
	}	// RE110

	/**
	 * Formata o Bloco E Registro 110
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.toNumeric(VL_TOT_DEBITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ_DEBITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_TOT_AJ_DEBITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_ESTORNOS_CRED))
            .append(PIPE).append(TextUtil.toNumeric(VL_TOT_CREDITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ_CREDITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_TOT_AJ_CREDITOS))
            .append(PIPE).append(TextUtil.toNumeric(VL_ESTORNOS_DEB))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_CREDOR_ANT))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_APURADO))
            .append(PIPE).append(TextUtil.toNumeric(VL_TOT_DED))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS_RECOLHER))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_CREDOR_TRANSPORTAR))
            .append(PIPE).append(TextUtil.toNumeric(DEB_ESP))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE110