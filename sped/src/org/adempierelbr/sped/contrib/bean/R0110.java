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
 * 	REGISTRO R0110:
 * 		REGIMES DE APURAÇÃO DA CONTRIBUIÇÃO SOCIAL E DE APROPRIAÇÃO DE CRÉDITO
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0110.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0110 extends RegSped
{
	@XMLFieldProperties(minSize=1, maxSize=1, id="COD_INC_TRIB", isNumber=true)
	private String COD_INC_TRIB;
	
	@XMLFieldProperties(minSize=1, maxSize=1, id="IND_APRO_CRED", isNumber=true)
	private String IND_APRO_CRED;
	
	@XMLFieldProperties(maxSize=1, id="COD_TIPO_CONT", isNumber=true, isMandatory=false)
	private String COD_TIPO_CONT;
	
	@XMLFieldProperties(maxSize=1, id="IND_REG_CUM", isNumber=true, isMandatory=false)
	private String IND_REG_CUM;	
}	//	R0110
