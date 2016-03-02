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
 * BLOCO H: INVENTÁRIO FÍSICO
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCOK {
	@XMLFieldProperties(needsValidation = true, id = "RK001")
	private RK001 rK001;

	@XMLFieldProperties(needsValidation = true, id = "RK990")
	private RK990 rK990;

	public RK001 getrK001() {
		return rK001;
	}

	public void setrK001(RK001 rK001) {
		this.rK001 = rK001;
	}

	public RK990 getrK990() {
		return rK990;
	}

	public void setrK990(RK990 rK990) {
		this.rK990 = rK990;
	}
	
	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rK001);

		// counter
		result.append(rK990);

		//
		return result.toString();
	}

} // R0000