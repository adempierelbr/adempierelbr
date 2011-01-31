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
 * REGISTRO D105: COMPLEMENTO DO DOCUMENTO DE TRANSPORTE 
 * (Códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57) – COFINS.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD105.java, 31/01/2011, 10:56:00, mgrigioni
 */
public class RD105 extends RegSped {
	
	private String IND_NAT_FRT;
	private String CST_COFINS;
	private String NAT_BC_CRED;
	private String COD_CTA;

	private BigDecimal VL_ITEM;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal ALIQ_COFINS;
	private BigDecimal VL_COFINS;
	
	/**
	 * Constructor
	 * @param IND_NAT_FRT
	 * @param CST_COFINS
	 * @param NAT_BC_CRED
	 * @param COD_CTA
	 * @param VL_ITEM
	 * @param VL_BC_COFINS
	 * @param ALIQ_COFINS
	 * @param VL_COFINS
	 */
	public RD105(String IND_NAT_FRT, String CST_COFINS, String NAT_BC_CRED, String COD_CTA,
			BigDecimal VL_ITEM, BigDecimal VL_BC_COFINS, BigDecimal ALIQ_COFINS, BigDecimal VL_COFINS) 
	{
		this.IND_NAT_FRT = IND_NAT_FRT;
		this.CST_COFINS = CST_COFINS;
		this.NAT_BC_CRED = NAT_BC_CRED;
		this.COD_CTA = COD_CTA;
		this.VL_ITEM = VL_ITEM;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.ALIQ_COFINS = ALIQ_COFINS;
		this.VL_COFINS = VL_COFINS;
		//
		addCounter();
	}	//RD105

	/**
	 * Formata o Bloco D Registro 105
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
				+ PIPE + TextUtil.checkSize(IND_NAT_FRT, 1, 1)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_ITEM), 255)
				+ PIPE + TextUtil.checkSize(CST_COFINS, 2, 2)
				+ PIPE + TextUtil.checkSize(NAT_BC_CRED, 2, 2)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_BC_COFINS), 255)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(ALIQ_COFINS,4), 8)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255)
                + PIPE + TextUtil.checkSize(COD_CTA, 60)
				+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RD105