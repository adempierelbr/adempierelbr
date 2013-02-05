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
public class R1600 extends RegSped 
{	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "COD_MOD", maxSize = 2, minSize = 2)
	private String REG;
	private String COD_PART;
	private String TOT_CREDITO;
	private String TOT_DEBITO;

	/**
	 * Constructor
	 */
	public R1600() {
		super();
	}
	
	public String getREG() {
		return REG;
	}

	public void setREG(String rEG) {
		REG = rEG;
	}
	
	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}
	
	public String getTOT_CREDITO() {
		return TOT_CREDITO;
	}

	public void setTOT_CREDITO(String tOT_CREDITO) {
		TOT_CREDITO = tOT_CREDITO;
	}
	
	public String getTOT_DEBITO() {
		return TOT_DEBITO;
	}

	public void setTOT_DEBITO(String tOT_DEBITO) {
		TOT_DEBITO = tOT_DEBITO;
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // R1001