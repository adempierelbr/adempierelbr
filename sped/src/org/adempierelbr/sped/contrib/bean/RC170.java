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
 * 	REGISTRO C170:
 * 		COMPLEMENTO DO DOCUMENTO - ITENS DO DOCUMENTO (CÓDIGOS 01, 1B, 04 e 55)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC170.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC170 extends RegSped
{
	@XMLFieldProperties(minSize=1, maxSize = 3, id = "NUM_ITEM", isNumber=true)
	private String NUM_ITEM;
		
	@XMLFieldProperties(minSize=1, maxSize = 10, id = "COD_ITEM")
	private String COD_ITEM;
	
	@XMLFieldProperties(id = "DESCR_COMPL", isMandatory=false)
	private String DESCR_COMPL;
	
	@XMLFieldProperties(id = "QTD", isMandatory=false, scale=5)
	private BigDecimal QTD;
	
	@XMLFieldProperties(maxSize = 6, id = "UNID", isMandatory=false)
	private String UNID;
	
	@XMLFieldProperties(id = "VL_ITEM")
	private BigDecimal VL_ITEM;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(maxSize=1, id = "IND_MOV", isMandatory=false)
	private String IND_MOV;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "CST_ICMS", isMandatory=false, isNumber=true)
	private String CST_ICMS;
	
	@XMLFieldProperties(minSize=4, maxSize=4, id = "CFOP", isNumber=true)
	private String CFOP;
	
	@XMLFieldProperties(maxSize=10, id = "COD_NAT", isMandatory=false)
	private String COD_NAT;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "ALIQ_ICMS", isMandatory=false)
	private BigDecimal ALIQ_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory=false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "ALIQ_ST", isMandatory=false)
	private BigDecimal ALIQ_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory=false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_APUR", isMandatory=false)
	private String IND_APUR;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_IPI", isMandatory=false)
	private String CST_IPI;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "COD_ENQ", isMandatory=false)
	private String COD_ENQ;
	
	@XMLFieldProperties(id = "VL_BC_IPI", isMandatory=false)
	private BigDecimal VL_BC_IPI;
	
	@XMLFieldProperties(id = "ALIQ_IPI", isMandatory=false)
	private BigDecimal ALIQ_IPI;
	
	@XMLFieldProperties(id = "VL_IPI", isMandatory=false)
	private BigDecimal VL_IPI;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_PIS", isNumber=true)
	private String CST_PIS;
	
	@XMLFieldProperties(id = "VL_BC_PIS", isMandatory=false)
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS", scale=4, isMandatory=false)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(id = "QUANT_BC_PIS", scale=3, isMandatory=false)
	private String QUANT_BC_PIS;
	
	@XMLFieldProperties(id = "ALIQ_PIS_QUANT", scale=4, isMandatory=false)
	private BigDecimal ALIQ_PIS_QUANT;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "CST_COFINS", isNumber=true)
	private BigDecimal CST_COFINS;
	
	@XMLFieldProperties(id = "VL_BC_COFINS", isMandatory=false)
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(id = "ALIQ_COFINS", isMandatory=false, scale=4)
	private BigDecimal ALIQ_COFINS;
	
	@XMLFieldProperties(minSize=3, maxSize=3, id = "QUANT_BC_COFINS", scale=3, isMandatory=false, isNumber=true)
	private BigDecimal QUANT_BC_COFINS;
	
	@XMLFieldProperties(id = "ALIQ_COFINS_QUANT", scale=4, isMandatory=false)
	private BigDecimal ALIQ_COFINS_QUANT;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(maxSize=60, id = "COD_CTA", isMandatory=false)
	private String COD_CTA;
}	//	RC170
