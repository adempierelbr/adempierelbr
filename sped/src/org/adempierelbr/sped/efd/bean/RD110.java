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
package org.adempierelbr.sped.efd.bean;

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE SERVIÇOS DE TRANSPORTE
 * (CÓDIGO 07)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD110.java, 10/02/2011, 17:04:00, mgrigioni
 */
public class RD110 extends RegSped {

	private Integer NUM_ITEM;
	private String COD_ITEM;
	private BigDecimal VL_SERV;
	private BigDecimal VL_OUT;

	/**
	 * Constructor
	 */
	public RD110() {
		super();
	}// RD110

	public Integer getNUM_ITEM() {
		return NUM_ITEM;
	}

	public void setNUM_ITEM(Integer nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public BigDecimal getVL_SERV() {
		return VL_SERV;
	}

	public void setVL_SERV(BigDecimal vL_SERV) {
		VL_SERV = vL_SERV;
	}

	public BigDecimal getVL_OUT() {
		return VL_OUT;
	}

	public void setVL_OUT(BigDecimal vL_OUT) {
		VL_OUT = vL_OUT;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RD110 other = (RD110) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RD110 && o2 instanceof RD110) {
			RD110 e1 = (RD110) o1;
			RD110 e2 = (RD110) o2;
			//
			if (e1.NUM_ITEM == null) // Depois
				return 1;
			else if (e2.NUM_ITEM == null) // Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM); // Comparar
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

}// RD110