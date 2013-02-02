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

/**
 * 	REGISTRO R0150:
 * 		TABELA DE CADASTRO DO PARTICIPANTE
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0150.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0150 extends RegSped
{
	@XMLFieldProperties(maxSize=60, id="COD_PART")
	private String COD_PART;
	
	@XMLFieldProperties(maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=5, maxSize=5, id="COD_PAIS", isNumber=true)
	private String COD_PAIS;
	
	@XMLFieldProperties(isMandatory=false, minSize=14, maxSize=14, id="CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(isMandatory=false, minSize=11, maxSize=11, id="CPF", isNumber=true)
	private String CPF;
	
	@XMLFieldProperties(isMandatory=false, maxSize=14, id="IE")
	private String IE;
	
	@XMLFieldProperties(isMandatory=false, minSize=7, maxSize=7, id="COD_MUN")
	private String COD_MUN;
	
	@XMLFieldProperties(isMandatory=false, minSize=9, maxSize=9, id="SUFRAMA")
	private String SUFRAMA;
	
	@XMLFieldProperties(isMandatory=false, maxSize=60, id="END")
	private String END;
	
	@XMLFieldProperties(isMandatory=false, id="NUM")
	private String NUM;
	
	@XMLFieldProperties(isMandatory=false, maxSize=60, id="COMPL")
	private String COMPL;
	
	@XMLFieldProperties(isMandatory=false, maxSize=60, id="BAIRRO")
	private String BAIRRO;
}	//	R0150
