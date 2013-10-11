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
package org.adempierelbr.nfse.beans;

public class BtpEvento
{
	String 			Codigo;
	String 			Descricao;
	BtpChaveNFe 	ChaveNFe;
	BtpChaveRPS 	ChaveRPS;
	
	public String getCodigoEvento()
	{
		return Codigo;
	}
	public void setCodigoEvento(String codigoEvento)
	{
		this.Codigo = codigoEvento;
	}
	public String getDescricaoEvento()
	{
		return Descricao;
	}
	public void setDescricaoEvento(String descricaoEvento)
	{
		this.Descricao = descricaoEvento;
	}
	public BtpChaveNFe getChaveNFe()
	{
		return ChaveNFe;
	}
	public void setChaveNFe(BtpChaveNFe chaveNFe)
	{
		this.ChaveNFe = chaveNFe;
	}
	public BtpChaveRPS getChaveRPS()
	{
		return ChaveRPS;
	}
	public void setChaveRPS(BtpChaveRPS chaveRPS)
	{
		this.ChaveRPS = chaveRPS;
	}
}
