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
import org.adempierelbr.sped.BlocoSPED;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Bloco9.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class Bloco9 extends BlocoSPED
{
	@XMLFieldProperties (id = "R9001")
	private R9001 r9001;
	
	@XMLFieldProperties (id = "R9900")
	private R9900 r9900;
	
	@XMLFieldProperties (id = "R9990")
	private R9990 r9990;

	public R9001 getR9001()
	{
		return r9001;
	}

	public void setR9001(R9001 r9001)
	{
		this.r9001 = r9001;
	}

	public R9900 getR9900()
	{
		return r9900;
	}

	public void setR9900(R9900 r9900)
	{
		this.r9900 = r9900;
	}

	public R9990 getR9990()
	{
		return r9990;
	}

	public void setR9990(R9990 r9990)
	{
		this.r9990 = r9990;
	}
}	//	Bloco9
