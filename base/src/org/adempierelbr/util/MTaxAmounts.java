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