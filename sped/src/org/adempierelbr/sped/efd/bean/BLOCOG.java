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

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * BLOCO H: INVENTÁRIO FÍSICO
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCOG {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RG001")
	private RG001 rG001;

	@XMLFieldProperties(needsValidation = true, id = "RG990")
	private RG990 rG990;

	public RG001 getrG001() {
		return rG001;
	}

	public void setrG001(RG001 rG001) {
		this.rG001 = rG001;
	}

	public RG990 getrG990() {
		return rG990;
	}

	public void setrG990(RG990 rG990) {
		this.rG990 = rG990;
	}

	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rG001);

		// counter
		result.append(rG990);

		//
		return result.toString();
	}

} // R0000