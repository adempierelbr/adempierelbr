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
 * REGISTRO E520: APURAÇÃO DO IPI.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE520.java, 09/02/2011, 09:50:00, mgrigioni
 */
public class RE520 extends RegSped {
	
	private BigDecimal VL_SD_ANT_IPI;
	private BigDecimal VL_DEB_IPI;
	private BigDecimal VL_CRED_IPI;
	private BigDecimal VL_OD_IPI;
	private BigDecimal VL_OC_IPI;
	private BigDecimal VL_SC_IPI;
	private BigDecimal VL_SD_IPI;

	/**
	 * Constructor
	 * @param VL_SD_ANT_IPI
	 * @param VL_DEB_IPI
	 * @param VL_CRED_IPI
	 * @param VL_OD_IPI
	 * @param VL_OC_IPI
	 * @param VL_SC_IPI
	 * @param VL_SD_IPI
	 */
	public RE520(BigDecimal VL_SD_ANT_IPI, BigDecimal VL_DEB_IPI, BigDecimal VL_CRED_IPI,
			BigDecimal VL_OD_IPI, BigDecimal VL_OC_IPI, BigDecimal VL_SC_IPI, BigDecimal VL_SD_IPI)
	{
		super();
		this.VL_SD_ANT_IPI = VL_SD_ANT_IPI;
		this.VL_DEB_IPI = VL_DEB_IPI;
		this.VL_CRED_IPI = VL_CRED_IPI;
		this.VL_OD_IPI = VL_OD_IPI;
		this.VL_OC_IPI = VL_OC_IPI;
		this.VL_SC_IPI = VL_SC_IPI;
		this.VL_SD_IPI = VL_SD_IPI;
	}	// RE520

	/**
	 * Formata o Bloco E Registro 520
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.toNumeric(VL_SD_ANT_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_DEB_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_CRED_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_OD_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_OC_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_SC_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_SD_IPI))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE520