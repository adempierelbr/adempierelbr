/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.adempierelbr.sped.contrib.bean;

import java.math.BigDecimal;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * 	REGISTRO C501:
 * 		COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 06, 28 e 29) – PIS/PASEP
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC501.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC501 extends RegSped
{
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "CST_PIS", isNumber=true)
	private String CST_PIS;
		
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "NAT_BC_CRED", isNumber=true, isMandatory=false)
	private String NAT_BC_CRED;
	
	@XMLFieldProperties(id = "VL_BC_PIS")
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS", scale=4)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(id = "VL_PIS")
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(maxSize = 60, id = "COD_CTA", isMandatory=false)
	private String COD_CTA;
}	//	RC501
