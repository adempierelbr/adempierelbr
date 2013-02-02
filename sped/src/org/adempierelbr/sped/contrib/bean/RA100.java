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
 * 	REGISTRO A100: 
 * 		DOCUMENTO - NOTA FISCAL DE SERVIÇO
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RA100.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class RA100 extends RegSped
{
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_OPER")
	private String IND_OPER;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_EMIT")
	private String IND_EMIT;
	
	@XMLFieldProperties(maxSize=60, isMandatory=false, id = "COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id = "COD_SIT")
	private String COD_SIT;
	
	@XMLFieldProperties(maxSize=20, isMandatory=false, id = "SER")
	private String SER;
	
	@XMLFieldProperties(maxSize=20, isMandatory=false, id = "SUB")
	private String SUB;
	
	@XMLFieldProperties(maxSize=60, id = "NUM_DOC")
	private String NUM_DOC;
	
	@XMLFieldProperties(maxSize=60, isMandatory=false, id = "CHV_NFSE")
	private String CHV_NFSE;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(isMandatory=false, id = "DT_EXE_SERV")
	private Timestamp DT_EXE_SERV;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id = "IND_PGTO")
	private String IND_PGTO;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_DESC")
	private BigDecimal VL_DESC;
	
	@XMLFieldProperties(id = "VL_BC_PIS")
	private BigDecimal VL_BC_PIS;
	
	@XMLFieldProperties(id = "VL_PIS")
	private BigDecimal VL_PIS;
	
	@XMLFieldProperties(id = "VL_BC_COFINS")
	private BigDecimal VL_BC_COFINS;
	
	@XMLFieldProperties(id = "VL_COFINS")
	private BigDecimal VL_COFINS;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_PIS_RET")
	private BigDecimal VL_PIS_RET;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_COFINS_RET")
	private BigDecimal VL_COFINS_RET;
	
	@XMLFieldProperties(isMandatory=false, id = "VL_ISS")
	private BigDecimal VL_ISS;
}	//	RA100
