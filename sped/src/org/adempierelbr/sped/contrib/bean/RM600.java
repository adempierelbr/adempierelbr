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
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.SPEDSet;

/**
 * 	REGISTRO M600: 
 * 		CONSOLIDAÇÃO DA CONTRIBUIÇÃO PARA A SEGURIDADE SOCIAL - COFINS DO PERÍODO
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: RM600.java, v1.0 2013/03/14 11:17:42 AM, ppinheiro Exp $
 */
public class RM600 extends RegSped
{

	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_NC_PER")
	private BigDecimal VL_TOT_CONT_NC_PER;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CRED_DESC")
	private BigDecimal VL_TOT_CRED_DESC;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CRED_DESC_ANT")
	private BigDecimal VL_TOT_CRED_DESC_ANT;

	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_NC_DEV")
	private BigDecimal VL_TOT_CONT_NC_DEV;

	@XMLFieldProperties(isMandatory=false, id = "VL_RET_NC")
	private BigDecimal VL_RET_NC;

	@XMLFieldProperties(isMandatory=false, id = "VL_OUT_DED_NC")
	private BigDecimal VL_OUT_DED_NC;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_NC_REC")
	private BigDecimal VL_CONT_NC_REC;

	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_CUM_PER")
	private BigDecimal VL_TOT_CONT_CUM_PER;

	@XMLFieldProperties(isMandatory=false, id = "VL_RET_CUM")
	private BigDecimal VL_RET_CUM;

	@XMLFieldProperties(isMandatory=false, id = "VL_OUT_DED_CUM")
	private BigDecimal VL_OUT_DED_CUM;

	@XMLFieldProperties(isMandatory=false, id = "VL_CONT_CUM_REC")
	private BigDecimal VL_CONT_CUM_REC;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_TOT_CONT_REC")
	private BigDecimal VL_TOT_CONT_REC;
	
	@XMLFieldProperties (id = "RM605")
	private RM605 _RM605 = new RM605();

	@XMLFieldProperties (id = "RM610")
	private Set<RM610> _RM610 = new SPEDSet<RM610>();
	

	public BigDecimal getVL_TOT_CONT_NC_PER()
	{
		return VL_TOT_CONT_NC_PER;
	}

	public void setVL_TOT_CONT_NC_PER(BigDecimal vL_TOT_CONT_NC_PER)
	{
		VL_TOT_CONT_NC_PER = vL_TOT_CONT_NC_PER;
	}
	
	public BigDecimal getVL_TOT_CRED_DESC()
	{
		return VL_TOT_CRED_DESC;
	}

	public void setVL_TOT_CRED_DESC(BigDecimal vL_TOT_CRED_DESC)
	{
		VL_TOT_CRED_DESC = vL_TOT_CRED_DESC;
	}
	
	public BigDecimal getVL_TOT_CRED_DESC_ANT()
	{
		return VL_TOT_CRED_DESC_ANT;
	}

	public void setVL_TOT_CRED_DESC_ANT(BigDecimal vL_TOT_CRED_DESC_ANT)
	{
		VL_TOT_CRED_DESC_ANT = vL_TOT_CRED_DESC_ANT;
	}
	
	public BigDecimal getVL_TOT_CONT_NC_DEV()
	{
		return VL_TOT_CONT_NC_DEV;
	}

	public void setVL_TOT_CONT_NC_DEV(BigDecimal vL_TOT_CONT_NC_DEV)
	{
		VL_TOT_CONT_NC_DEV = vL_TOT_CONT_NC_DEV;
	}
	
	public BigDecimal getVL_RET_NC()
	{
		return VL_RET_NC;
	}

	public void setVL_RET_NC(BigDecimal vL_RET_NC)
	{
		VL_RET_NC = vL_RET_NC;
	}
	
	public BigDecimal getVL_OUT_DED_NC()
	{
		return VL_OUT_DED_NC;
	}

	public void setVL_OUT_DED_NC(BigDecimal vL_OUT_DED_NC)
	{
		VL_OUT_DED_NC = vL_OUT_DED_NC;
	}
	
	public BigDecimal getVL_CONT_NC_REC()
	{
		return VL_CONT_NC_REC;
	}

	public void setVL_CONT_NC_REC(BigDecimal vL_CONT_NC_REC)
	{
		VL_CONT_NC_REC = vL_CONT_NC_REC;
	}
	
	public BigDecimal getVL_TOT_CONT_CUM_PER()
	{
		return VL_TOT_CONT_CUM_PER;
	}

	public void setVL_TOT_CONT_CUM_PER(BigDecimal vL_TOT_CONT_CUM_PER)
	{
		VL_TOT_CONT_CUM_PER = vL_TOT_CONT_CUM_PER;
	}
	
	public BigDecimal getVL_RET_CUM()
	{
		return VL_RET_CUM;
	}

	public void setVL_RET_CUM(BigDecimal vL_RET_CUM)
	{
		VL_RET_CUM = vL_RET_CUM;
	}
	
	public BigDecimal getVL_OUT_DED_CUM()
	{
		return VL_OUT_DED_CUM;
	}

	public void setVL_OUT_DED_CUM(BigDecimal vL_OUT_DED_CUM)
	{
		VL_OUT_DED_CUM = vL_OUT_DED_CUM;
	}
	
	public BigDecimal getVL_CONT_CUM_REC()
	{
		return VL_CONT_CUM_REC;
	}

	public void setVL_CONT_CUM_REC(BigDecimal vL_CONT_CUM_REC)
	{
		VL_CONT_CUM_REC = vL_CONT_CUM_REC;
	}
	
	public BigDecimal getVL_TOT_CONT_REC()
	{
		return VL_TOT_CONT_REC;
	}

	public void setVL_TOT_CONT_REC(BigDecimal vL_TOT_CONT_REC)
	{
		VL_TOT_CONT_REC = vL_TOT_CONT_REC;
	}
	
	public RM605 get_RM605()
	{
		return _RM605;
	}

	public void setRM605 (RM605 rM605)
	{
		_RM605 = rM605;
	}
	
	public Set<RM610> get_RM610()
	{
		return _RM610;
	}

	public void addRM610 (RM610 rM610)
	{
		_RM610.add(rM610);
	}
}	//	RM600
