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

import java.util.Set;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoA.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
@SuppressWarnings("unused")
public class BlocoA
{
	private RA001 rA001;
	private Set<RA010> rA010;
	private Set<RA100> rA100;
	private RA990 rA990;
	
	public void setrA001(RA001 rA001)
	{
		this.rA001 = rA001;
	}
	public void setrA010(Set<RA010> rA010)
	{
		this.rA010 = rA010;
	}
	public void setrA100(Set<RA100> rA100)
	{
		this.rA100 = rA100;
	}
	public void setrA990(RA990 rA990)
	{
		this.rA990 = rA990;
	}
}	//	BlocoA
