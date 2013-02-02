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

import java.sql.Timestamp;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * 	REGISTRO 0000: 
 * 		ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA PESSOA JURÍDICA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: R0000.java, v1.0 2013/02/02 11:17:42 AM, ralexsander Exp $
 */
public class R0000 extends RegSped
{
	@XMLFieldProperties(minSize=3, maxSize=3, id="COD_VER", isNumber=true)
	private String COD_VER;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="TIPO_ESCRIT", isNumber=true)
	private String TIPO_ESCRIT;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_SIT_ESP", isMandatory=false, isNumber=true)
	private String IND_SIT_ESP;
	
	@XMLFieldProperties(maxSize=41, id="NUM_REC_ANTERIOR")
	private String NUM_REC_ANTERIOR;
	
	@XMLFieldProperties(id="DT_INI")
	private Timestamp DT_INI;
	
	@XMLFieldProperties(id="DT_FIN")
	private Timestamp DT_FIN;
	
	@XMLFieldProperties(minSize=1, maxSize=100, id="NOME")
	private String NOME;
	
	@XMLFieldProperties(minSize=14, maxSize=14, id="CNPJ", isNumber=true)
	private String CNPJ;
	
	@XMLFieldProperties(minSize=2, maxSize=2, id="UF")
	private String UF;
	
	@XMLFieldProperties(minSize=7, maxSize=7, id="COD_MUN", isNumber=true)
	private String COD_MUN;
	
	@XMLFieldProperties(maxSize=9, id="SUFRAMA", isMandatory=false, isNumber=true)
	private String SUFRAMA;
	
	@XMLFieldProperties(maxSize=2, id="IND_NAT_PJ", isMandatory=false, isNumber=true)
	private String IND_NAT_PJ;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_ATIV", isNumber=true)
	private String IND_ATIV;
}	//	R0000
