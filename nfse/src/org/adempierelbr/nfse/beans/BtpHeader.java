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

import java.math.BigDecimal;
import java.sql.Timestamp;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BtpHeader.java, v1.0 2013/06/25 7:30:09 PM, ralexsander Exp $
 */
public class BtpHeader extends RegistroNFSe
{
	@XStreamAsAttribute
	final String Versao = "1";
	
	@XStreamAsAttribute
	final String xmlns="";
	
	@XStreamAlias ("CPFCNPJRemetente")
	BtpCPFCNPJ CNPJRemetente;
	
	String dtInicio;
	String dtFim;
	String QtdRPS;
	String ValorTotalServicos;
	
	public BtpCPFCNPJ getCNPJRemetente()
	{
		return CNPJRemetente;
	}
	public void setCNPJRemetente(BtpCPFCNPJ cNPJRemetente)
	{
		CNPJRemetente = cNPJRemetente;
	}
	public String getDtInicio()
	{
		return dtInicio;
	}
	public void setDtInicio(String dtInicio)
	{
		this.dtInicio = dtInicio;
	}
	public void setDtInicio(Timestamp dtInicio)
	{
		this.dtInicio = tpDate (dtInicio);
	}
	public String getDtFim()
	{
		return dtFim;
	}
	public void setDtFim(String dtFim)
	{
		this.dtFim = dtFim;
	}
	public void setDtFim(Timestamp dtFim)
	{
		this.dtFim = tpDate (dtFim);
	}
	public String getQtdRPS()
	{
		return QtdRPS;
	}
	public void setQtdRPS(int qtdRPS)
	{
		QtdRPS = "" + qtdRPS;
	}
	public void setQtdRPS(String qtdRPS)
	{
		QtdRPS = qtdRPS;
	}
	public String getValorTotalServicos()
	{
		return ValorTotalServicos;
	}
	public void setValorTotalServicos(BigDecimal valorTotalServicos)
	{
		ValorTotalServicos = tpValor (valorTotalServicos, false);
	}
}	//	BtpHeader
