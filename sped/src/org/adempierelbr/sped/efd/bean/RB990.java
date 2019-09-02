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
 * REGISTRO B990: ENCERRAMENTO DO BLOCO B
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: RB990.java, v1.0 2019/02/12 14:18:12, kenos_rfeitosa Exp $
 */
public class RB990 extends RegSped {
	@XMLFieldProperties(id = "QTD_LIN_B")
	private String QTD_LIN_B;

	/**
	 * Constructor
	 */
	public RB990() {
		super();
	} // RG990

	public String getQTD_LIN_B() {
		return QTD_LIN_B;
	}

	public void setQTD_LIN_B(String qTD_LIN_B) {
		QTD_LIN_B = qTD_LIN_B;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RH990