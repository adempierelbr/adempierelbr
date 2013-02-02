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
 * 	REGISTRO M100: 
 * 		CRÉDITO DE PIS/PASEP RELATIVO AO PERÍODO
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RM100.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class RM100 extends RegSped
{
	@XMLFieldProperties(minSize=3, maxSize=3, id = "COD_CRED")
	private String COD_CRED;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_CRED_ORI", isNumber=true)
	private String IND_CRED_ORI;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_BC_PIS")
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_PIS", scale=4)
	private BigDecimal ALIQ_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "QUANT_BC_PIS", scale=3)
	private BigDecimal QUANT_BC_PIS;
	
	@XMLFieldProperties(isMandatory=false, id = "ALIQ_PIS_QUANT")
	private BigDecimal ALIQ_PIS_QUANT;
	
	@XMLFieldProperties(id = "VL_CRED")
	private BigDecimal VL_CRED;
	
	@XMLFieldProperties(id = "VL_AJUS_ACRES")
	private BigDecimal VL_AJUS_ACRES;
	
	@XMLFieldProperties(id = "VL_AJUS_REDUC")
	private BigDecimal VL_AJUS_REDUC;
	
	@XMLFieldProperties(id = "VL_CRED_DIF")
	private BigDecimal VL_CRED_DIF;
	
	@XMLFieldProperties(id = "VL_CRED_DISP")
	private BigDecimal VL_CRED_DISP;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_DESC_CRED")
	private String IND_DESC_CRED;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_CRED_DESC")
	private BigDecimal VL_CRED_DESC;
	
	@XMLFieldProperties(id = "SLD_CRED")
	private BigDecimal SLD_CRED;
}	//	RM100
