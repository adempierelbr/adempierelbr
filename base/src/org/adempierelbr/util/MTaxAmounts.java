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

public class MTaxAmounts{
	
	private BigDecimal Amt;
	private BigDecimal taxAmt;
	private BigDecimal taxExcludedAmt;
	private BigDecimal taxSubstAmt;
	
	//Default Constructor
	MTaxAmounts(){}
	
	public MTaxAmounts(BigDecimal Amt, BigDecimal taxAmt, 
			BigDecimal taxExcludedAmt, BigDecimal taxSubstAmt){
		
		setAmt(Amt);
		setTaxAmt(taxAmt);
		setTaxExcludedAmt(taxExcludedAmt);
		setTaxSubstAmt(taxSubstAmt);
	}
	
	public BigDecimal getAmt() {
		return Amt;
	}
	public void setAmt(BigDecimal Amt) {
		this.Amt = Amt;
	}
	public BigDecimal getTaxAmt() {
		return taxAmt;
	}
	public void setTaxAmt(BigDecimal taxAmt) {
		this.taxAmt = taxAmt;
	}
	public BigDecimal getTaxExcludedAmt() {
		return taxExcludedAmt;
	}
	public void setTaxExcludedAmt(BigDecimal taxExcludedAmt) {
		this.taxExcludedAmt = taxExcludedAmt;
	}
	public BigDecimal getTaxSubstAmt() {
		return taxSubstAmt;
	}
	public void setTaxSubstAmt(BigDecimal taxSubstAmt) {
		this.taxSubstAmt = taxSubstAmt;
	}
	
} //MTaxAmounts