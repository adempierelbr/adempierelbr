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
 * 	REGISTRO 0111:
 * 		TABELA DE RECEITA BRUTA MENSAL PARA FINS DE RATEIO DE CRÉDITOS COMUNS
 * 
 * 	@author Rogério Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: R0111.java, v1.0 2013/02/02 11:39:22 AM, rfeitosa Exp $
 */
public class R0111 extends RegSped
{
	@XMLFieldProperties(id="REC_BRU_NCUM_TRIB_MI")
	private BigDecimal REC_BRU_NCUM_TRIB_MI;
	
	@XMLFieldProperties(id="REC_BRU_NCUM_NT_MI")
	private BigDecimal REC_BRU_NCUM_NT_MI;
	
	@XMLFieldProperties(id="REC_BRU_NCUM_EXP")
	private BigDecimal REC_BRU_NCUM_EXP;
	
	@XMLFieldProperties(id="REC_BRU_CUM")
	private BigDecimal REC_BRU_CUM;
	
	@XMLFieldProperties(id="REC_BRU_TOTAL")
	private BigDecimal REC_BRU_TOTAL;	
}	//	R0111
