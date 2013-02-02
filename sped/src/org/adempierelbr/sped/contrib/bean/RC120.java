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
 * 	REGISTRO C120:
 * 		COMPLEMENTO IMPORTAÇÃO (CÓDIGO 01) DO DOCUMENTO - OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01)
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RC120.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class RC120 extends RegSped
{
	@XMLFieldProperties(minSize=1, maxSize = 1, id = "COD_DOC_IMP")
	private String COD_DOC_IMP;
		
	@XMLFieldProperties(minSize=1, maxSize = 10, id = "NUM_DOC_IMP")
	private String NUM_DOC_IMP;
	
	@XMLFieldProperties(id = "VL_PIS_IMP", isMandatory=false)
	private String VL_PIS_IMP;
	
	@XMLFieldProperties(id = "VL_COFINS_IMP", isMandatory=false)
	private String VL_COFINS_IMP;
	
	@XMLFieldProperties(maxSize = 20, id = "NUM_ACDRAW", isMandatory=false)
	private String NUM_ACDRAW;	
}	//	RC120
