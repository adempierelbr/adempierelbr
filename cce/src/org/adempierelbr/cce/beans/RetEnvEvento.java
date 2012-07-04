/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.cce.beans;

import org.adempierelbr.cce.beans.retevento.RetEvento;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * 		RetEnvEvento Bean
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RetEnvEvento.java, v1.0 2012/05/20 7:11:11 PM, ralexsander Exp $
 */
@XStreamAlias ("retEnvEvento")
public class RetEnvEvento
{
	private String idLote;
	private String tpAmb;
	private String verAplic;
	private String cOrgao;
	private String cStat;
	private String xMotivo;
	private RetEvento retEvento;
	
	public String getIdLote()
	{
		return idLote;
	}	//	getIdLote
	public String getTpAmb()
	{
		return tpAmb;
	}	//	getTpAmb
	public String getVerAplic()
	{
		return verAplic;
	}	//	getVerAplic
	public String getcOrgao()
	{
		return cOrgao;
	}	//	getcOrgao
	public String getcStat()
	{
		return cStat;
	}	//	getcStat
	public String getxMotivo()
	{
		return xMotivo;
	}	//	getxMotivo
	public RetEvento getRetEvento()
	{
		return retEvento;
	}	//	getRetEvento
}	//	RetEnvEvento
