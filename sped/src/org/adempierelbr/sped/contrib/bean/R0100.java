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

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.bean.I_R0100;

/**
 * 	REGISTRO 0100:
 * 		DADOS DO CONTABILISTA
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0100.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0100 extends RegSped implements I_R0100
{
	@XMLFieldProperties(maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=11, maxSize=11, id="CPF", isNumber=true)
	private String CPF;
	
	@XMLFieldProperties(maxSize=15, id="CRC")
	private String CRC;
	
	@XMLFieldProperties(maxSize=14, id="CNPJ", isNumber=true, isMandatory=false)
	private String CNPJ;
	
	@XMLFieldProperties(maxSize=8, id="CEP", isMandatory=false, isNumber=true)
	private String CEP;
	
	@XMLFieldProperties(maxSize=60, id="END", isMandatory=false)
	private String END;
	
	@XMLFieldProperties(id="NUM", isMandatory=false)
	private String NUM;
	
	@XMLFieldProperties(maxSize=60, id="COMPL", isMandatory=false)
	private String COMPL;
	
	@XMLFieldProperties(maxSize=60, id="BAIRRO", isMandatory=false)
	private String BAIRRO;
	
	@XMLFieldProperties(maxSize=10, id="FONE", isMandatory=false, isNumber=true)
	private String FONE;
	
	@XMLFieldProperties(maxSize=10, id="FAX", isMandatory=false, isNumber=true)
	private String FAX;
	
	@XMLFieldProperties(id="EMAIL", isMandatory=false)
	private String EMAIL;
	
	@XMLFieldProperties(maxSize=7, id="COD_MUN", isMandatory=false, isNumber=true)
	private String COD_MUN;

	public void setNOME(String nOME)
	{
		NOME = nOME;
	}

	public void setCPF(String cPF)
	{
		CPF = cPF;
	}

	public void setCRC(String cRC)
	{
		CRC = cRC;
	}

	public void setCNPJ(String cNPJ)
	{
		CNPJ = cNPJ;
	}

	public void setCEP(String cEP)
	{
		CEP = cEP;
	}

	public void setEND(String eND)
	{
		END = eND;
	}

	public void setNUM(String nUM)
	{
		NUM = nUM;
	}

	public void setCOMPL(String cOMPL)
	{
		COMPL = cOMPL;
	}

	public void setBAIRRO(String bAIRRO)
	{
		BAIRRO = bAIRRO;
	}

	public void setFONE(String fONE)
	{
		FONE = fONE;
	}

	public void setFAX(String fAX)
	{
		FAX = fAX;
	}

	public void setEMAIL(String eMAIL)
	{
		EMAIL = eMAIL;
	}

	public void setCOD_MUN(String cOD_MUN)
	{
		COD_MUN = cOD_MUN;
	}
}	//	R0100
