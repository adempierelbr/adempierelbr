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

import java.sql.Timestamp;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * REGISTRO E100: PERÍODO DA APURAÇÃO DO ICMS.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE100.java, 08/02/2011, 12:13:00, mgrigioni
 */
public class RE100 extends RegSped {
	
	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(id = "DT_INI", maxSize = 8, isNumber = true)
	private Timestamp DT_INI;
	
	@XMLFieldProperties(id = "DT_FIN", maxSize = 8, isNumber = true)
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RE100()
	{
		super();
	}	// RE100


	public Timestamp getDT_INI() {
		return DT_INI;
	}


	public void setDT_INI(Timestamp dT_INI) {
		DT_INI = dT_INI;
	}


	public Timestamp getDT_FIN() {
		return DT_FIN;
	}


	public void setDT_FIN(Timestamp dT_FIN) {
		DT_FIN = dT_FIN;
	}


	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}
	
} 	// RE100