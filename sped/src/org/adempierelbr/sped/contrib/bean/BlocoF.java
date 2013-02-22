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
 *	@version $Id: BlocoF.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class BlocoF extends BlocoSPED
{
	@XMLFieldProperties (id = "RF001")
	private I_RX001 rF001;
	
	@XMLFieldProperties (id = "RF990")
	private I_RX990 rF990;

	public I_RX001 getRF001()
	{
		return rF001;
	}

	public void setRF001(I_RX001 rF001)
	{
		this.rF001 = rF001;
	}

	public I_RX990 getRF990()
	{
		return rF990;
	}

	public void setRF990(I_RX990 rF990)
	{
		this.rF990 = rF990;
	}
}	//	BlocoF
