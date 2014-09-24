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
import org.adempierelbr.sped.bean.I_RX990;

/**
 * 	REGISTRO C990:
 * 		ENCERRAMENTO DO BLOCO C
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC990.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC990 extends RegSped implements I_RX990
{
	@XMLFieldProperties(id="QTD_LIN_C",scale=0)
	private BigDecimal QTD_LIN_C;

	public BigDecimal getQTD_LIN_C()
	{
		return QTD_LIN_C;
	}

	public void setQTD_LIN_C(BigDecimal qTD_LIN_C)
	{
		QTD_LIN_C = qTD_LIN_C;
	}

	public void setQTD_LIN(BigDecimal qtd)
	{
		setQTD_LIN_C (qtd);
	}
}	//	RC990
