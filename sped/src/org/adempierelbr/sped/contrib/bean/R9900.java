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
 * 	REGISTRO 9900: 
 * 		REGISTROS DO ARQUIVO
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: R9900.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class R9900 extends RegSped
{
	@XMLFieldProperties(maxSize=4, id = "REG_BLC")
	private String REG_BLC;
	
	@XMLFieldProperties(id = "QTD_REG_BLC", scale=0)
	private BigDecimal QTD_REG_BLC;

	public String getREG_BLC()
	{
		return REG_BLC;
	}

	public void setREG_BLC(String rEG_BLC)
	{
		REG_BLC = rEG_BLC;
	}

	public BigDecimal getQTD_REG_BLC()
	{
		return QTD_REG_BLC;
	}

	public void setQTD_REG_BLC(BigDecimal qTD_REG_BLC)
	{
		QTD_REG_BLC = qTD_REG_BLC;
	}
}	//	R9900
