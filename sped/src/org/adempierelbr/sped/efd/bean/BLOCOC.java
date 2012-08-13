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
import org.adempierelbr.sped.RegSped;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;


/**
 * BLOCO C: DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 */
public class BLOCOC extends RegSped {
	
	@XStreamAlias ("Id")
	@XStreamAsAttribute
	@XMLFieldProperties	(needsValidation=true, id = "RC001")
	private RC001 rC001;
	
	@XMLFieldProperties	(needsValidation=true, id = "RC100")
	private List<RC100> rC100 = new ArrayList<RC100>();
	
	@XMLFieldProperties	(needsValidation=true, id = "RC990")
	private RC990 rC990;

	@Override
	public int compareTo(Object arg0) 
	{
		
		
		return 0;
	}
	

	
	
}	//R0000