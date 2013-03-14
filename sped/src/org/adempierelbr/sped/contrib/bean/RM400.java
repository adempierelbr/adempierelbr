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
 * 	REGISTRO M400: 
 * 		RECEITAS ISENTAS, NÃO ALCANÇADAS PELA INCIDÊNCIA DA CONTRIBUIÇÃO, 
 *      SUJEITAS A ALÍQUOTA ZERO OU DE VENDAS COM SUSPENSÃO – PIS/P ASEP
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM400.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM400 extends RegSped
{
	@XMLFieldProperties(minSize=2, maxSize=4, id = "CST_PIS")
	private String CST_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_REC")
	private BigDecimal VL_TOT_REC;
	
	@XMLFieldProperties(minSize=1, maxSize=60, id = "COD_CTA")
	private String COD_CTA;
	
	@XMLFieldProperties(minSize=1, maxSize=255, id = "DESC_COMPL")
	private String DESC_COMPL;

	public String getCST_PIS()
	{
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS)
	{
		CST_PIS = cST_PIS;
	}

	public BigDecimal getVL_TOT_REC()
	{
		return VL_TOT_REC;
	}

	public void setVL_TOT_REC(BigDecimal vL_TOT_REC)
	{
		VL_TOT_REC = vL_TOT_REC;
	}

	public String getCOD_CTA()
	{
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA)
	{
		COD_CTA = cOD_CTA;
	}

	public String getDESC_COMPL()
	{
		return DESC_COMPL;
	}

	public void setDESC_COMPL(String dESC_COMPL)
	{
		DESC_COMPL = dESC_COMPL;
	}
}	//	RM400
