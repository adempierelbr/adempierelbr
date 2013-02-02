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
 * 	REGISTRO 0140:
 * 		TABELA DE CADASTRO DE ESTABELECIMENTO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0140.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0140 extends RegSped
{
	@XMLFieldProperties(maxSize=60, id="COD_EST", isMandatory=false)
	private String COD_EST;
	
	@XMLFieldProperties(minSize=1, maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=14, maxSize=14, id="CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id="UF")
	private String UF;
	
	@XMLFieldProperties(maxSize=14, id="IE", isMandatory=false)
	private String IE;
	
	@XMLFieldProperties(minSize=2, maxSize=7, id="COD_MUN")
	private String COD_MUN;
	
	@XMLFieldProperties(id="IM", isMandatory=false)
	private String IM;
	
	@XMLFieldProperties(minSize=9, maxSize=9, id="SUFRAMA", isMandatory=false)
	private String SUFRAMA;
}	//	R0140
