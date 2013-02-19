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
import java.util.HashSet;
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.bean.I_RC500;

/**
 * 	REGISTRO C500:
 * 		NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06), NOTA 
 * 		FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E NOTA FISCAL
 * 		CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28) E NF-e (CÓDIGO 55)– DOCUMENTOS DE
 * 		ENTRADA/AQUISIÇÃO COM CRÉDITO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC500.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC500 extends RegSped implements I_RC500
{
	@XMLFieldProperties(maxSize = 60, id = "COD_PART")
	private String COD_PART;
		
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_MOD")
	private String COD_MOD;
	
	@XMLFieldProperties(minSize=2, maxSize = 2, id = "COD_SIT", isNumber=true)
	private String COD_SIT;
	
	@XMLFieldProperties(maxSize = 4, id = "SER", isMandatory=false)
	private String SER;
	
	@XMLFieldProperties(maxSize = 3, id = "SUB", isMandatory=false, isNumber=true)
	private String SUB;
	
	@XMLFieldProperties(minSize=1, maxSize = 9, id = "NUM_DOC", isNumber=true)
	private String NUM_DOC;
	
	@XMLFieldProperties(id = "DT_DOC")
	private Timestamp DT_DOC;
	
	@XMLFieldProperties(id = "DT_ENT", isMandatory=false)
	private Timestamp DT_ENT;
	
	@XMLFieldProperties(id = "VL_DOC")
	private BigDecimal VL_DOC;
	
	@XMLFieldProperties(id = "VL_ICMS", isMandatory=false)
	private BigDecimal VL_ICMS;
	
	@XMLFieldProperties(maxSize=6, id = "COD_INF", isMandatory=false)
	private String COD_INF;
	
	@XMLFieldProperties(id = "VL_PIS", isMandatory=false)
	private BigDecimal VL_PIS;	
	
	@XMLFieldProperties(id = "VL_COFINS", isMandatory=false)
	private BigDecimal VL_COFINS;
	
	private Set<RC120> _RC120 = new HashSet<RC120>();
	private Set<RC170> _RC170 = new HashSet<RC170>();

	public void setCOD_PART(String cOD_PART)
	{
		COD_PART = cOD_PART;
	}

	public void setCOD_MOD(String cOD_MOD)
	{
		COD_MOD = cOD_MOD;
	}

	public void setCOD_SIT(String cOD_SIT)
	{
		COD_SIT = cOD_SIT;
	}

	public void setSER(String sER)
	{
		SER = sER;
	}

	public void setSUB(String sUB)
	{
		SUB = sUB;
	}

	public void setNUM_DOC(String nUM_DOC)
	{
		NUM_DOC = nUM_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC)
	{
		DT_DOC = dT_DOC;
	}

	public void setDT_ENT(Timestamp dT_ENT)
	{
		DT_ENT = dT_ENT;
	}

	public void setVL_DOC(BigDecimal vL_DOC)
	{
		VL_DOC = vL_DOC;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS)
	{
		VL_ICMS = vL_ICMS;
	}

	public void setCOD_INF(String cOD_INF)
	{
		COD_INF = cOD_INF;
	}

	public void setVL_PIS(BigDecimal vL_PIS)
	{
		VL_PIS = vL_PIS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS)
	{
		VL_COFINS = vL_COFINS;
	}

	public void addC120 (RC120 rC120)
	{
		_RC120.add (rC120);
	}

	public void addC170 (RC170 rC170)
	{
		_RC170.add (rC170);
	}	
}	//	RC500
