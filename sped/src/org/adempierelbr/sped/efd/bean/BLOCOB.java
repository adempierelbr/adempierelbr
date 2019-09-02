/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.adempierelbr.sped.efd.bean;

import org.adempierelbr.annotation.XMLFieldProperties;

/**
 * BLOCO B: ESCRITURAÇÃO E APURAÇÃO DO ISS
 * 
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: BLOCOB.java, v1.0 2019/02/12 14:23:01, kenos_rfeitosa Exp $
 */
public class BLOCOB {
	@XMLFieldProperties(needsValidation = true, id = "RB001")
	private RB001 rB001;

	@XMLFieldProperties(needsValidation = true, id = "RB990")
	private RB990 rB990;

	public RB001 getRB001() {
		return rB001;
	}

	public void setRB001(RB001 rB001) {
		this.rB001 = rB001;
	}

	public RB990 getRB990() {
		return rB990;
	}

	public void setRB990(RB990 rB990) {
		this.rB990 = rB990;
	}
	
	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rB001);

		// counter
		result.append(rB990);

		//
		return result.toString();
	}

} // BLOCOB