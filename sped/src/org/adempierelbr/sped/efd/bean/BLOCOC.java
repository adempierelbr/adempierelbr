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
 * BLOCO C: DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 */
public class BLOCOC 
{

	@XStreamAlias("Id")
	@XStreamAsAttribute
	@XMLFieldProperties(needsValidation = true, id = "RC001")
	private RC001 rC001;

	@XMLFieldProperties(needsValidation = true, id = "RC100")
	private List<RC100> rC100 = new ArrayList<RC100>();

	@XMLFieldProperties(needsValidation = true, id = "RC990")
	private RC990 rC990;

	public RC001 getrC001() {
		return rC001;
	}

	public void setrC001(RC001 rC001) {
		this.rC001 = rC001;
	}

	public List<RC100> getrC100() {
		return rC100;
	}

	public void setrC100(List<RC100> rC100) {
		this.rC100 = rC100;
	}

	public RC990 getrC990() {
		return rC990;
	}

	public void setrC990(RC990 rC990) {
		this.rC990 = rC990;
	}
	
	/**
	 * Adicionar registo RC100 ao bloco C
	 * 
	 * Obs.: Se o registro RC100 já existir, 
	 * removê-lo e adicionar o atualizado
	 * 
	 * @param rc100
	 */
	public void addrC100(RC100 rc100)
	{
		// se já existir, remove
		if(this.rC100.contains(rc100))
			this.rC100.remove(rc100);
			
		// adicionar rc100
		this.rC100.add(rc100);
	}
	

	public String toString()
	{
		StringBuilder format = new StringBuilder();
		
		for (RC100 rc100 : rC100)
			format.append(rc100.toString());
		
		return format.toString();
	}
	
	
} // R0000