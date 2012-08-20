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

import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.annotation.XMLFieldProperties;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * BLOCO D: DOCUMENTOS FISCAIS II - SERVIÇOS (ICMS).
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCOD {

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RD001")
	private RD001 rD001;

	@XMLFieldProperties(needsValidation = true, id = "RD100")
	private List<RD100> rD100 = new ArrayList<RD100>();

	@XMLFieldProperties(needsValidation = true, id = "RD990")
	private RD990 rD990;

	public RD001 getrD001() {
		return rD001;
	}

	public void setrD001(RD001 rD001) {
		this.rD001 = rD001;
	}

	public List<RD100> getrD100() {
		return rD100;
	}

	public void setrD100(List<RD100> rD100) {
		this.rD100 = rD100;
	}

	public RD990 getrD990() {
		return rD990;
	}

	public void setrD990(RD990 rD990) {
		this.rD990 = rD990;
	}

	/**
	 * Adicionar registo RD100 ao bloco C
	 * 
	 * @param rd100
	 */
	public void addrD100(RD100 rd100) {
		// adicionar rc100
		this.rD100.add(rd100);
	}
	
	
	/**
	 * 	To String
	 */
	@Override
	public String toString ()
	{
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rD001.toString());
		
		// CTs e registros filhos
		for(RD100 aux_rd100 : rD100)
		{
			// CT
			result.append(aux_rd100.toString());
			
			// Linhas
			for(RD110 aux_rd110 : aux_rd100.getrD110())
				result.append(aux_rd110);

			// Totalizadores por CST, ALIQ e CFOP
			for(RD190 aux_rd190 : aux_rd100.getrD190())
				result.append(aux_rd190);

		}

		// counter
		result.append(rD990.toString());

		//
		return result.toString();
	}
	

} // R0000