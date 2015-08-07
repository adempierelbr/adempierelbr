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
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.SPEDSet;

/**
 * 	REGISTRO M605: 
 * 		CONTRIBUIÇÃO PARA O COFINS A RECOLHER – DETALHAMENTO POR CÓDIGO DE RECEITA
 * 
 * 	@author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: RM605.java, v1.0 2015/MM/DD 14:28:57, rfeitosa Exp $
 */
public class RM605 extends RegSped
{

	@XMLFieldProperties(minSize=2, maxSize=2, id = "NUM_CAMPO")
	private String NUM_CAMPO;
	
	@XMLFieldProperties(minSize=6, maxSize=6, id = "COD_REC")
	private String COD_REC;
	
	@XMLFieldProperties(isMandatory=true, id = "VL_DEBITO")
	private BigDecimal VL_DEBITO;

	@XMLFieldProperties (id = "RM600")
	private Set<RM600> _RM600 = new SPEDSet<RM600>();
	

	public String getNUM_CAMPO()
	{
		return NUM_CAMPO;
	}

	public void setNUM_CAMPO(String nUM_CAMPO)
	{
		NUM_CAMPO = nUM_CAMPO;
	}
	
	public String getCOD_REC()
	{
		return COD_REC;
	}

	public void setCOD_REC(String cOD_REC)
	{
		COD_REC = cOD_REC;
	}
	
	public BigDecimal getVL_DEBITO()
	{
		return VL_DEBITO;
	}
	
	public void setVL_DEBITO(BigDecimal vL_DEBITO)
	{
		VL_DEBITO = vL_DEBITO;
	}
	
	public Set<RM600> get_RM600()
	{
		return _RM600;
	}

	public void addRM600 (RM600 rM600)
	{
		_RM600.add(rM600);
	}
}	//	RM605
