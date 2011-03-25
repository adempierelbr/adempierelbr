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
import org.compiere.util.Env;

/**
 * REGISTRO D105: COMPLEMENTO DO DOCUMENTO DE TRANSPORTE 
 * (Códigos 07,08, 8B, 09, 10, 11, 26, 27 e 57) – COFINS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC505.java, 21/02/2011, 11:53:00, mgrigioni
 */
public class RD105 extends RegSped implements Comparable<Object>{	
	
	private String      IND_NAT_FRT;
	private String 		CST_COFINS;
	private String 		NAT_BC_CRED;
	private String 		COD_CTA;
	
	private BigDecimal 	VL_ITEM;
	private BigDecimal 	VL_BC_COFINS;
	private BigDecimal 	ALIQ_COFINS;
	private BigDecimal 	VL_COFINS;
	
	/**
	 * Constructor
	 * @param IND_NAT_FRT
	 * @param CST_COFINS
	 * @param VL_ITEM
	 * @param NAT_BC_CRED
	 * @param VL_BC_COFINS
	 * @param ALIQ_COFINS
	 * @param VL_COFINS
	 * @param COD_CTA
	 */
	public RD105(String IND_NAT_FRT, String CST_COFINS, BigDecimal VL_ITEM, String NAT_BC_CRED, 
			BigDecimal VL_BC_COFINS, BigDecimal ALIQ_COFINS, BigDecimal VL_COFINS,
			String COD_CTA)
	{		
		super();
		this.IND_NAT_FRT = IND_NAT_FRT;
		this.CST_COFINS = CST_COFINS;
		this.VL_ITEM = VL_ITEM;
		this.NAT_BC_CRED = NAT_BC_CRED;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.ALIQ_COFINS = ALIQ_COFINS;
		this.VL_COFINS = VL_COFINS;
		this.COD_CTA = COD_CTA;
	}//	RD105
	
	public void addValues(RD105 otherD105){
		this.VL_ITEM      = getVL_ITEM().add(otherD105.getVL_ITEM());
		this.VL_BC_COFINS = getVL_BC_COFINS().add(otherD105.getVL_BC_COFINS());
		this.VL_COFINS    = getVL_COFINS().add(otherD105.getVL_COFINS());
	}
	
	private BigDecimal getVL_ITEM() {
		return VL_ITEM == null ? Env.ZERO : VL_ITEM;
	}

	private BigDecimal getVL_BC_COFINS() {
		return VL_BC_COFINS == null ? Env.ZERO : VL_BC_COFINS;
	}

	private BigDecimal getVL_COFINS() {
		return VL_COFINS == null ? Env.ZERO : VL_COFINS;
	}

	/**
	 * Formata o Bloco D Registro 105
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG)
            .append(PIPE).append(IND_NAT_FRT)
            .append(PIPE).append(TextUtil.toNumeric(VL_ITEM)) 
            .append(PIPE).append(CST_COFINS)
            .append(PIPE).append(TextUtil.checkSize(NAT_BC_CRED, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_COFINS))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_COFINS, 4))
            .append(PIPE).append(TextUtil.toNumeric(VL_COFINS))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA,60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((ALIQ_COFINS == null) ? 0 : ALIQ_COFINS.hashCode());
		result = prime * result + ((CST_COFINS == null) ? 0 : CST_COFINS.hashCode());
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
		RD105 other = (RD105) obj;
		if (ALIQ_COFINS == null) {
			if (other.ALIQ_COFINS != null)
				return false;
		} else if (!ALIQ_COFINS.equals(other.ALIQ_COFINS))
			return false;
		if (CST_COFINS == null) {
			if (other.CST_COFINS != null)
				return false;
		} else if (!CST_COFINS.equals(other.CST_COFINS))
			return false;
		return true;
	}
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof RD105
				&& o2 instanceof RD105)
		{
			RD105 e1 = (RD105) o1;
			RD105 e2 = (RD105) o2;
			//
			if (e1.CST_COFINS == null)						//	Depois
				return 1;
			else if (e2.CST_COFINS == null)					// 	Antes
				return -1;
			
			return e1.CST_COFINS.compareTo(e2.CST_COFINS);
		}
		else
			return 0;									//
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
		
} //RD105