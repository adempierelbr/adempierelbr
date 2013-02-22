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
import org.adempierelbr.sped.bean.I_RX001;
import org.adempierelbr.sped.bean.I_RX990;

/**
 * 		Registro hierárquico do SPED Contribuições
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoM.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoM extends BlocoSPED
{
	@XMLFieldProperties (id = "RM001")
	private I_RX001 rM001;
	
	@XMLFieldProperties (id = "RM100")
	private RM100 rM100;
	
	@XMLFieldProperties (id = "RM990")
	private I_RX990 rM990;
	
	public I_RX001 getRM001()
	{
		return rM001;
	}
	public void setRM001(I_RX001 rM001)
	{
		this.rM001 = rM001;
	}
	public RM100 getRM100()
	{
		return rM100;
	}
	public void setRM100(RM100 rM100)
	{
		this.rM100 = rM100;
	}
	public I_RX990 getRM990()
	{
		return rM990;
	}
	public void setRM990(I_RX990 rM990)
	{
		this.rM990 = rM990;
	}
}	//	BlocoM
