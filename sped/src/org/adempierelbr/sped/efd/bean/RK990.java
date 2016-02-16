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
 * REGISTRO H990: ENCERRAMENTO DO BLOCO H
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: RH990.java, 08/02/2011, 12:07:00, ralexsander
 */
public class RK990 extends RegSped {
	@XMLFieldProperties(id = "QTD_LIN_K")
	private String QTD_LIN_K;

	/**
	 * Constructor
	 */
	public RK990() {
		super();
	} // RG990

	public String getQTD_LIN_K() {
		return QTD_LIN_K;
	}

	public void setQTD_LIN_K(String qTD_LIN_K) {
		QTD_LIN_K = qTD_LIN_K;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RH990