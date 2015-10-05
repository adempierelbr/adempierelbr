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

/**
 * REGISTRO G001: ABERTURA DO BLOCO G
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG001.java, 08/02/2011, 12:01:00, mgrigioni
 */
public class RG001 extends RegSped {	@XMLFieldProperties(maxSize = 1, id = "IND_MOV")
	private String IND_MOV;

	/**
	 * Constructor
	 * 
	 * @param IND_MOV
	 */
	public RG001() {
		super();
	} // RG001

	public String getIND_MOV() {
		return IND_MOV;
	}

	public void setIND_MOV(String iND_MOV) {
		IND_MOV = iND_MOV;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RG001