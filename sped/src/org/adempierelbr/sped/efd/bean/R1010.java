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

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO 1010: REGISTROS DO BLOCO 1
 * 
 * @author Priscila Pinheiro, ppinheiro Kenos
 * @version $Id: R1010.java, 05/02/2013, 12:03:00, ppinheiro
 */
public class R1010 extends RegSped 
{	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	private String REG;
	private String IND_EXP;
	private String IND_CCRF;
	private String IND_COMB;
	private String IND_USINA;
	private String IND_VA;
	private String IND_EE;
	private String IND_CART;
	private String IND_FORM;
	private String IND_AER;

	/**
	 * Constructor
	 */
	public R1010() {
		super();
	}
	
	public String getREG() {
		return REG;
	}

	public void setREG(String rEG) {
		REG = rEG;
	}
	
	public String getIND_EXP() {
		return IND_EXP;
	}

	public void setIND_EXP(String iND_EXP) {
		IND_EXP = iND_EXP;
	}
	
	public String getIND_CCRF() {
		return IND_CCRF;
	}

	public void setIND_CCRF(String iND_CCRF) {
		IND_CCRF = iND_CCRF;
	}
	
	public String getIND_COMB() {
		return IND_COMB;
	}

	public void setIND_COMB(String iND_COMB) {
		IND_COMB = iND_COMB;
	}
	
	public String getIND_USINA() {
		return IND_USINA;
	}

	public void setIND_USINA(String iND_USINA) {
		IND_USINA = iND_USINA;
	}
	
	public String getIND_VA() {
		return IND_VA;
	}

	public void setIND_VA(String iND_VA) {
		IND_VA = iND_VA;
	}
	
	public String getIND_EE() {
		return IND_EE;
	}

	public void setIND_EE(String iND_EE) {
		IND_EE = iND_EE;
	}
	
	public String getIND_CART() {
		return IND_CART;
	}

	public void setIND_CART(String iND_CART) {
		IND_CART = iND_CART;
	}
	
	public String getIND_FORM() {
		return IND_FORM;
	}

	public void setIND_FORM(String iND_FORM) {
		IND_FORM = iND_FORM;
	}
	
	public String getIND_AER() {
		return IND_AER;
	}

	public void setIND_AER(String iND_AER) {
		IND_AER = iND_AER;
	}


	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R1001