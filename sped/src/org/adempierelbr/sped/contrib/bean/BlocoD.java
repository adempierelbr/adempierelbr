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

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.bean.I_RD100;
import org.adempierelbr.sped.bean.I_RD500;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoD.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoD extends RegSped
{
	@XMLFieldProperties (id = "RD001")
	private RD001 rD001;
	
	@XMLFieldProperties (id = "RD010")
	private Set<RD010> rD010;
	
	@XMLFieldProperties (id = "RD100")
	private Set<I_RD100> rD100;
	
	@XMLFieldProperties (id = "RD500")
	private Set<I_RD500> rD500;
	
	@XMLFieldProperties (id = "RD990")
	private RD990 rD990;
	
	public RD001 getrD001()
	{
		return rD001;
	}
	public void setrD001(RD001 rD001)
	{
		this.rD001 = rD001;
	}
	public Set<RD010> getrD010()
	{
		return rD010;
	}
	public void setrD010(Set<RD010> rD010)
	{
		this.rD010 = rD010;
	}
	public Set<I_RD100> getrD100()
	{
		return rD100;
	}
	public void setrD100(Set<I_RD100> rD100)
	{
		this.rD100 = rD100;
	}
	public Set<I_RD500> getrD500()
	{
		return rD500;
	}
	public void setrD500(Set<I_RD500> rD500)
	{
		this.rD500 = rD500;
	}
	public RD990 getrD990()
	{
		return rD990;
	}
	public void setrD990(RD990 rD990)
	{
		this.rD990 = rD990;
	}
}	//	BlocoD
