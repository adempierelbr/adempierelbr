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
 * REGISTRO B001: ABERTURA DO BLOCO B
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: RB001.java, v1.0 2019/02/12 14:15:29, kenos_rfeitosa Exp $
 */
public class RB001 extends RegSped {
		@XMLFieldProperties(minSize = 1, maxSize = 1, id = "IND_MOV")
	private String IND_DAD;

	/**
	 * Constructor
	 * 
	 * @param IND_DAD
	 */
	public RB001() {
		super();
	} // RB001

	public String getIND_DAD() {
		return IND_DAD;
	}

	public void setIND_DAD(String iND_DAD) {
		IND_DAD = iND_DAD;
	}

	
	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

} // RH001