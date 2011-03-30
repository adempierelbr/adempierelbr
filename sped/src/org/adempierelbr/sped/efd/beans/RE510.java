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
 * REGISTRO E510: CONSOLIDAÇÃO DOS VALORES DO IPI.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE510.java, 09/02/2011, 09:43:00, mgrigioni
 */
public class RE510 extends RegSped implements Comparable<Object>{
	
	private String CFOP;
	private String CST_IPI;
	
	private BigDecimal VL_CONT_IPI;
	private BigDecimal VL_BC_IPI;
	private BigDecimal VL_IPI;

	/**
	 * Constructor
	 * @param CFOP
	 * @param CST_IPI
	 * @param VL_CONT_IPI
	 * @param VL_BC_IPI
	 * @param VL_IPI
	 */
	public RE510(String CFOP, String CST_IPI, BigDecimal VL_CONT_IPI,
			BigDecimal VL_BC_IPI, BigDecimal VL_IPI)
	{
		super();
		this.CFOP = CFOP;
		this.CST_IPI = CST_IPI;
		this.VL_CONT_IPI = VL_CONT_IPI;
		this.VL_BC_IPI = VL_BC_IPI;
		this.VL_IPI = VL_IPI;
	}	// RE510

	public void addValues(RE510 otherE510){
		this.VL_CONT_IPI = getVL_CONT_IPI().add(otherE510.getVL_CONT_IPI());
		this.VL_BC_IPI   = getVL_BC_IPI().add(otherE510.getVL_BC_IPI());
		this.VL_IPI      = getVL_IPI().add(otherE510.getVL_IPI());
	}
	
	public boolean isSOTrx(){
		
		if (CFOP.startsWith("1") ||
			CFOP.startsWith("2") ||
			CFOP.startsWith("3")){
			return false;
		}
		
		return true;
	}
	
	private BigDecimal getVL_CONT_IPI(){
		return VL_CONT_IPI == null ? Env.ZERO : VL_CONT_IPI;
	}
	
	private BigDecimal getVL_BC_IPI(){
		return VL_BC_IPI == null ? Env.ZERO : VL_BC_IPI;
	}
	
	public BigDecimal getVL_IPI(){
		return VL_IPI == null ? Env.ZERO : VL_IPI;
	}
	
	/**
	 * Formata o Bloco E Registro 510
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(CFOP),4))
            .append(PIPE).append(TextUtil.checkSize(CST_IPI, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_CONT_IPI)) 
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_IPI))
            .append(PIPE).append(TextUtil.toNumeric(VL_IPI))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((CFOP == null) ? 0 : CFOP.hashCode());
		result = prime * result + ((CST_IPI == null) ? 0 : CST_IPI.hashCode());
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
		RE510 other = (RE510) obj;
		if (CFOP == null) {
			if (other.CFOP != null)
				return false;
		} else if (!CFOP.equals(other.CFOP))
			return false;
		if (CST_IPI == null) {
			if (other.CST_IPI != null)
				return false;
		} else if (!CST_IPI.equals(other.CST_IPI))
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
		else if (o1 instanceof RE510
				&& o2 instanceof RE510)
		{
			RE510 e1 = (RE510) o1;
			RE510 e2 = (RE510) o2;
			//
			if (e1.CFOP == null || e1.CST_IPI == null)	//	Depois
				return 1;
			else if (e2.CFOP == null || e2.CST_IPI == null) // 	Antes
				return -1;
			
			int compare = e1.CFOP.compareTo(e2.CFOP);	//	Comparar
			
			if (compare == 0){
				compare = e1.CST_IPI.compareTo(e2.CST_IPI);
			}

			return compare;
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
	
} 	// RE510