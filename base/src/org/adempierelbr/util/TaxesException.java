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

/**
 *	ADempiereLBR
 *
 *	Utility class for Taxes Exceptions
 *	
 *	@author Mario Grigioni
 *	@version $Id: TaxesException.java, 05/02/2010 14:37:00 mgrigioni
 */
public class TaxesException{
	
	private Integer LBR_Tax_ID;
	private Integer LBR_LegalMessage_ID;
	private String  lbr_TaxStatus;
	private boolean isSOTrx;
	
	TaxesException(){}
	
	public TaxesException(Integer LBR_Tax_ID, Integer LBR_LegalMessage_ID, 
			String lbr_TaxStatus, boolean isSOTrx){
		
		setLBR_Tax_ID(LBR_Tax_ID);
		setLBR_LegalMessage_ID(LBR_LegalMessage_ID);
		setlbr_TaxStatus(lbr_TaxStatus);
		setSOTrx(isSOTrx);
		
	}

	public Integer getLBR_Tax_ID() {
		return LBR_Tax_ID;
	}

	public void setLBR_Tax_ID(Integer tax_ID) {
		LBR_Tax_ID = tax_ID;
	}

	public Integer getLBR_LegalMessage_ID() {
		return LBR_LegalMessage_ID;
	}

	public void setLBR_LegalMessage_ID(Integer legalMessage_ID) {
		LBR_LegalMessage_ID = legalMessage_ID;
	}

	public String getlbr_TaxStatus() {
		return lbr_TaxStatus;
	}

	public void setlbr_TaxStatus(String lbr_TaxStatus) {
		this.lbr_TaxStatus = lbr_TaxStatus;
	}

	public boolean isSOTrx() {
		return isSOTrx;
	}

	public void setSOTrx(boolean isSOTrx) {
		this.isSOTrx = isSOTrx;
	}
} //TaxesException