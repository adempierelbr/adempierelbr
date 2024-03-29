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
public class RD501 extends RegSped
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

	public String getCST_PIS()
	{
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS)
	{
		CST_PIS = cST_PIS;
	}

	public BigDecimal getVL_ITEM()
	{
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM)
	{
		VL_ITEM = vL_ITEM;
	}

	public String getNAT_BC_CRED()
	{
		return NAT_BC_CRED;
	}

	public void setNAT_BC_CRED(String nAT_BC_CRED)
	{
		NAT_BC_CRED = nAT_BC_CRED;
	}

	public BigDecimal getVL_BC_PIS()
	{
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
	{
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS()
	{
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS)
	{
		ALIQ_PIS = aLIQ_PIS;
	}

	public BigDecimal getVL_PIS()
	{
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS)
	{
		VL_PIS = vL_PIS;
	}

	public String getCOD_CTA()
	{
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}
}	//	RC501
