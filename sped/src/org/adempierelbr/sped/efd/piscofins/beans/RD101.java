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
 * REGISTRO D101: COMPLEMENTO DO DOCUMENTO DE TRANSPORTE 
 * (Códigos 07,08, 8B, 09, 10, 11, 26, 27 e 57) – PIS/PASEP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC101.java, 21/02/2011, 11:50:00, mgrigioni
 */
public class RD101 extends RegSped implements Comparable<Object>{	
	
	private String      IND_NAT_FRT;
	private String 		CST_PIS;
	private String 		NAT_BC_CRED;
	private String 		COD_CTA;
	
	private BigDecimal 	VL_ITEM;
	private BigDecimal 	VL_BC_PIS;
	private BigDecimal 	ALIQ_PIS;
	private BigDecimal 	VL_PIS;
	
	/**
	 * Constructor
	 * @param IND_NAT_FRT
	 * @param CST_PIS
	 * @param VL_ITEM
	 * @param NAT_BC_CRED
	 * @param VL_BC_PIS
	 * @param ALIQ_PIS
	 * @param VL_PIS
	 * @param COD_CTA
	 */
	public RD101(String IND_NAT_FRT, String CST_PIS, BigDecimal VL_ITEM, String NAT_BC_CRED, 
			BigDecimal VL_BC_PIS, BigDecimal ALIQ_PIS, BigDecimal VL_PIS,
			String COD_CTA)
	{		
		super();
		this.IND_NAT_FRT = IND_NAT_FRT;
		this.CST_PIS = CST_PIS;
		this.VL_ITEM = VL_ITEM;
		this.NAT_BC_CRED = NAT_BC_CRED;
		this.VL_BC_PIS = VL_BC_PIS;
		this.ALIQ_PIS = ALIQ_PIS;
		this.VL_PIS = VL_PIS;
		this.COD_CTA = COD_CTA;
	}//	RD101
	
	public void addValues(RD101 otherD101){
		this.VL_ITEM   = getVL_ITEM().add(otherD101.getVL_ITEM());
		this.VL_BC_PIS = getVL_BC_PIS().add(otherD101.getVL_BC_PIS());
		this.VL_PIS    = getVL_PIS().add(otherD101.getVL_PIS());
	}
	
	private BigDecimal getVL_ITEM() {
		return VL_ITEM == null ? Env.ZERO : VL_ITEM;
	}

	private BigDecimal getVL_BC_PIS() {
		return VL_BC_PIS == null ? Env.ZERO : VL_BC_PIS;
	}

	private BigDecimal getVL_PIS() {
		return VL_PIS == null ? Env.ZERO : VL_PIS;
	}

	/**
	 * Formata o Bloco D Registro 101
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG)
            .append(PIPE).append(IND_NAT_FRT)
            .append(PIPE).append(TextUtil.toNumeric(VL_ITEM)) 
            .append(PIPE).append(CST_PIS)
            .append(PIPE).append(TextUtil.checkSize(NAT_BC_CRED, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_PIS))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_PIS, 4))
            .append(PIPE).append(TextUtil.toNumeric(VL_PIS))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA,60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((ALIQ_PIS == null) ? 0 : ALIQ_PIS.hashCode());
		result = prime * result + ((CST_PIS == null) ? 0 : CST_PIS.hashCode());
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
		RD101 other = (RD101) obj;
		if (ALIQ_PIS == null) {
			if (other.ALIQ_PIS != null)
				return false;
		} else if (!ALIQ_PIS.equals(other.ALIQ_PIS))
			return false;
		if (CST_PIS == null) {
			if (other.CST_PIS != null)
				return false;
		} else if (!CST_PIS.equals(other.CST_PIS))
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
		else if (o1 instanceof RD101
				&& o2 instanceof RD101)
		{
			RD101 e1 = (RD101) o1;
			RD101 e2 = (RD101) o2;
			//
			if (e1.CST_PIS == null)						//	Depois
				return 1;
			else if (e2.CST_PIS == null)					// 	Antes
				return -1;
			
			return e1.CST_PIS.compareTo(e2.CST_PIS);
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
		
} //RD101