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
 * REGISTRO G990: ENCERRAMENTO DO BLOCO G
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG990.java, 08/02/2011, 12:06:00, mgrigioni
 */
public class RG990 extends RegSped {
		@XMLFieldProperties(id = "QTD_LIN_E")
	private String QTD_LIN_G = "";

	/**
	 * Constructor
	 */
	public RG990() 
	{
		super();
	} //RG990

	public String getQTD_LIN_G() {
		return QTD_LIN_G;
	}

	public void setQTD_LIN_G(String qTD_LIN_G) {
		QTD_LIN_G = qTD_LIN_G;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}


} //RG990