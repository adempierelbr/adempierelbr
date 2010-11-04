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
package org.adempierelbr.util;

import java.math.BigDecimal;

public class ServiceTaxes{
	
	private int LBR_TaxName_ID;
	private BigDecimal Threshold;
	private BigDecimal GrandTotal;
	
	//Default Constructor
	ServiceTaxes(){}
	
	public String toString(){
		return String.valueOf(LBR_TaxName_ID);
	}
	
	public ServiceTaxes(int LBR_TaxName_ID, BigDecimal Threshold, BigDecimal GrandTotal){
		
		setLBR_TaxName_ID(LBR_TaxName_ID);
		setThreshold(Threshold);
		setGrandTotal(GrandTotal);
	}

	public int getLBR_TaxName_ID() {
		return LBR_TaxName_ID;
	}

	public void setLBR_TaxName_ID(int taxName_ID) {
		LBR_TaxName_ID = taxName_ID;
	}

	public BigDecimal getThreshold() {
		return Threshold;
	}

	public void setThreshold(BigDecimal threshold) {
		Threshold = threshold;
	}

	public BigDecimal getGrandTotal() {
		return GrandTotal;
	}

	public void setGrandTotal(BigDecimal grandTotal) {
		GrandTotal = grandTotal;
	}
	
} //ServiceTaxes