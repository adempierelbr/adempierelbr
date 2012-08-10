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

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;


/**
 * BLOCO 0: ABERTURA, IDENTIFICAÇÃO E REFERÊNCIAS.
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 */
public class BLOCO0 extends RegSped {
	
	@XStreamAlias ("Id")
	@XStreamAsAttribute
	@XMLFieldProperties	(needsValidation=true, id = "R0000")
	private R0000 r0000;
	
	@XMLFieldProperties	(needsValidation=true, id = "R0001")
	private R0001 r0001;
	
	@XMLFieldProperties	(needsValidation=true, id = "R0150")
	private ArrayList<R0150> r0150 = new ArrayList<R0150>();

	@XMLFieldProperties	(needsValidation=true, id = "R0190")
	private ArrayList<R0190> r0190 = new ArrayList<R0190>();

	@XMLFieldProperties	(needsValidation=true, id = "R0200")
	private ArrayList<R0200> r0200 = new ArrayList<R0200>();
	
	@XMLFieldProperties	(needsValidation=true, id = "R0990")
	private R0990 r0990;

	
	
	public R0000 getR0000() {
		return r0000;
	}

	public void setR0000(R0000 r0000) {
		this.r0000 = r0000;
	}

	public R0001 getR0001() {
		return r0001;
	}

	public void setR0001(R0001 r0001) {
		this.r0001 = r0001;
	}

	public ArrayList<R0150> getR0150() {
		return r0150;
	}

	public void setR0150(ArrayList<R0150> r0150) {
		this.r0150 = r0150;
	}

	public ArrayList<R0190> getR0190() {
		return r0190;
	}

	public void setR0190(ArrayList<R0190> r0190) {
		this.r0190 = r0190;
	}

	public ArrayList<R0200> getR0200() {
		return r0200;
	}

	public void setR0200(ArrayList<R0200> r0200) {
		this.r0200 = r0200;
	}

	public R0990 getR0990() {
		return r0990;
	}

	public void setR0990(R0990 r0990) {
		this.r0990 = r0990;
	}


	public void addr0150(R0150 r0150) {
		this.r0150.add(r0150);
	}

	public void addr0190(R0190 r0190) {
		this.r0190.add(r0190);
	}


	public void addr0200(R0200 r0200) {
		this.r0200.add(r0200);
	}

	
	/**
	 * Formata o Bloco 0
	 * 
	 * @return
	 */
	public String toString() {
		
		//
		StringBuilder format = new StringBuilder()
			.append(r0000.toString())
			.append(r0001.toString());

		// 
		for(R0150 r0150 : this.r0150)
			format.append(r0150.toString());
		
		// 
		for(R0190 r0190 : this.r0190)
			format.append(r0190.toString());
		
		// 
		for(R0200 r0200 : this.r0200)
			format.append(r0200.toString());
		
		// 
		format.append(r0990.toString());
		
		return format.toString();
	}	//	toString
	
}	//R0000