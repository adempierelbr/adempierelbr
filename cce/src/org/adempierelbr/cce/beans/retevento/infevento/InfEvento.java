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
package org.adempierelbr.cce.beans.retevento.infevento;

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * 		InfEvento Bean
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfEvento.java, v1.0 2012/05/20 7:11:11 PM, ralexsander Exp $
 */
@XStreamAlias ("infEvento")
public class InfEvento
{
	private String tpAmb;
	private String verAplic;
	private String cOrgao;
	private String cStat;
	private String xMotivo;
	private String chNFe;
	private String tpEvento;
	private String xEvento;
	private String nSeqEvento;
	private String CNPJDest;
	private String CPFDest;
	private String emailDest;
	private String dhRegEvento;
	private String nProt;
	private String Signature;
	
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
	public String getChNFe()
	{
		return chNFe;
	}	//	getChNFe
	public String getTpEvento()
	{
		return tpEvento;
	}	//	getTpEvento
	public String getxEvento()
	{
		return xEvento;
	}	//	getxEvento
	public String getnSeqEvento()
	{
		return nSeqEvento;
	}	//	getnSeqEvento
	public String getCNPJDest()
	{
		return CNPJDest;
	}	//	getCNPJDest
	public String getCPFDest()
	{
		return CPFDest;
	}	//	getCPFDest
	public String getEmailDest()
	{
		return emailDest;
	}	//	getEmailDest
	public Timestamp getDhRegEventoTS()
	{
		return TextUtil.stringToTime (getDhRegEvento (), "yyyy-MM-dd'T'hh:mm:ss");
	}	//	getDhRegEventoTS
	public String getDhRegEvento()
	{
		return dhRegEvento;
	}	//	getDhRegEvento
	public String getnProt()
	{
		return nProt;
	}	//	getnProt
	public String getSignature()
	{
		return Signature;
	}	//	getSignature
}	//	InfEvento
