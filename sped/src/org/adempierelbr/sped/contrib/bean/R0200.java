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
 * 	REGISTRO R0200:
 * 		TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0200.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0200 extends RegSped
{
	@XMLFieldProperties(maxSize = 60, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "DESCR_ITEM")
	private String DESCR_ITEM;
	
	@XMLFieldProperties(isMandatory = false, id = "COD_BARRA")
	private String COD_BARRA;
	
	@XMLFieldProperties(maxSize = 60, isMandatory = false, id = "COD_ANT_ITEM")
	private String COD_ANT_ITEM;
	
	@XMLFieldProperties(maxSize = 6, isMandatory = false, id = "UNID_INV")
	private String UNID_INV;
	
	@XMLFieldProperties(minSize = 2, maxSize = 2, id = "TIPO_ITEM", isNumber = true)
	private String TIPO_ITEM;
	
	@XMLFieldProperties( maxSize = 8, isMandatory = false, id = "COD_NCM")
	private String COD_NCM;
	
	@XMLFieldProperties( maxSize = 3, isMandatory = false, id = "EX_IPI")
	private String EX_IPI;
	
	@XMLFieldProperties( minSize=2, maxSize = 2, isMandatory = false, id = "COD_GEN", isNumber = true)
	private String COD_GEN;
	
	@XMLFieldProperties( maxSize = 4, isMandatory = false, id = "COD_LST", isNumber = true)
	private String COD_LST;
	
	@XMLFieldProperties( maxSize = 6, isMandatory = false, id = "ALIQ_ICMS")
	private BigDecimal ALIQ_ICMS;	
}	//	R0200
