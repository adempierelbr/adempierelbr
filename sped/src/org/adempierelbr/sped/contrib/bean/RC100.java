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
import java.sql.Timestamp;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * 	REGISTRO C100:
 * 		DOCUMENTO - NOTA FISCAL (CÓDIGO 01), 
 * 		NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC100.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC100 extends RegSped
{
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_OPER")
	private String IND_OPER;
		
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_EMIT")
	private String IND_EMIT;
	
	@XMLFieldProperties(minSize=1, maxSize = 60, id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD")
	private String COD_MOD;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_SIT", isNumber=true)
	private String COD_SIT;
	
	@XMLFieldProperties(maxSize = 3, id = "SER", isMandatory=false)
	private String SER;
	
	@XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
	private String NUM_DOC;
	
	@XMLFieldProperties(minSize=44, maxSize = 44, id = "CHV_NFE", isMandatory=false, isNumber=true)
	private String CHV_NFE;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_E_S", isMandatory=false)
	private Timestamp DT_E_S;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "IND_PGTO")
	private String IND_PGTO;
	
	@XMLFieldProperties(id = "VL_DESC", isMandatory=false)
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_ABAT_NT", isMandatory=false)
	private BigDecimal VL_ABAT_NT;
	
	@XMLFieldProperties(id = "VL_MERC", isMandatory=false)
	private BigDecimal VL_MERC;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_FRT")
	private String IND_FRT;
	
	@XMLFieldProperties(id = "VL_FRT", isMandatory=false)
	private BigDecimal VL_FRT;
	
	@XMLFieldProperties(id = "VL_SEG", isMandatory=false)
	private BigDecimal VL_SEG;
	
	@XMLFieldProperties(id = "VL_OUT_DA", isMandatory=false)
	private BigDecimal VL_OUT_DA;
	
	@XMLFieldProperties(id = "VL_BC_ICMS", isMandatory=false)
	private BigDecimal VL_BC_ICMS;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(id = "VL_BC_ICMS_ST", isMandatory=false)
	private BigDecimal VL_BC_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_ICMS_ST", isMandatory=false)
	private BigDecimal VL_ICMS_ST;
	
	@XMLFieldProperties(id = "VL_IPI", isMandatory=false)
	private BigDecimal VL_IPI;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(id = "VL_PIS_ST", isMandatory=false)
	private BigDecimal VL_PIS_ST;
	
	@XMLFieldProperties(id = "VL_COFINS_ST", isMandatory=false)
	private BigDecimal VL_COFINS_ST;
}	//	RC100
