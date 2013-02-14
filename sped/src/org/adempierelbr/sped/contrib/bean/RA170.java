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
 * 	REGISTRO A170: 
 * 		COMPLEMENTO DO DOCUMENTO - ITENS DO DOCUMENTO
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RA170.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class RA170 extends RegSped
{
	@XMLFieldProperties(maxSize=4, id = "NUM_ITEM", isNumber=true)
	private String NUM_ITEM;
	
	@XMLFieldProperties(maxSize=60, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(isMandatory=false, id = "DESCR_COMPL")
	private String DESCR_COMPL;
	
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_DESC")
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(minSize=2, maxSize=2, isMandatory=false, id = "NAT_BC_CRED")
	private String NAT_BC_CRED;
	
	@XMLFieldProperties(minSize=1, maxSize=1, isMandatory=false, id = "IND_ORIG_CRED")
	private String IND_ORIG_CRED;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_PIS", isNumber=true)
	private String CST_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS")
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_PIS")
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_PIS")
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_COFINS", isNumber=true)
	private String CST_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_BC_COFINS")
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_COFINS")
	private BigDecimal ALIQ_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_COFINS")
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(maxSize=60, isMandatory=false, id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(maxSize=60, isMandatory=false, id = "COD_CCUS")
	private String COD_CCUS;

	public void setNUM_ITEM(String nUM_ITEM)
	{
		NUM_ITEM = nUM_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM)
	{
		COD_ITEM = cOD_ITEM;
	}

	public void setDESCR_COMPL(String dESCR_COMPL)
	{
		DESCR_COMPL = dESCR_COMPL;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM)
	{
		VL_ITEM = vL_ITEM;
	}

	public void setVL_DESC(BigDecimal vL_DESC)
	{
		VL_DESC = vL_DESC;
	}

	public void setNAT_BC_CRED(String nAT_BC_CRED)
	{
		NAT_BC_CRED = nAT_BC_CRED;
	}

	public void setIND_ORIG_CRED(String iND_ORIG_CRED)
	{
		IND_ORIG_CRED = iND_ORIG_CRED;
	}

	public void setCST_PIS(String cST_PIS)
	{
		CST_PIS = cST_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS)
	{
		VL_BC_PIS = vL_BC_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS)
	{
		ALIQ_PIS = aLIQ_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS)
	{
		VL_PIS = vL_PIS;
	}

	public void setCST_COFINS(String cST_COFINS)
	{
		CST_COFINS = cST_COFINS;
	}

	public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS)
	{
		VL_BC_COFINS = vL_BC_COFINS;
	}

	public void setALIQ_COFINS(BigDecimal aLIQ_COFINS)
	{
		ALIQ_COFINS = aLIQ_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS)
	{
		VL_COFINS = vL_COFINS;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}

	public void setCOD_CCUS(String cOD_CCUS)
	{
		COD_CCUS = cOD_CCUS;
	}
}	//	RA170
