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

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class RegistroNFSe
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(RegistroNFSe.class);
	
	protected String tpValor (String tpValor, boolean nullable)
	{
		if (nullable && tpValor == null)
			return null;
		else if (tpValor == null)
			tpValor = "0";
		else if (tpValor.length() > 15)
			log.warning ("tpValor deve ter no máximo 15 digitos");
		//
		return tpValor;
	}
	
	protected String tpValor (BigDecimal tpValor, boolean nullable)
	{
		if (nullable && tpValor == null)
			return null;
		else if (tpValor == null)
		{
			log.warning("tpValor obrigatório não foi preenchido");
			tpValor = Env.ZERO;
		}
		//
		return tpValor (tpValor.abs().setScale(2, BigDecimal.ROUND_HALF_UP).toString(), nullable);
	}
	
	protected String tpCodigoServico (String codigoServico)
	{
		codigoServico = TextUtil.toNumeric (codigoServico);
		//
		if (codigoServico.equals(""))
		{
			log.warning("tpCodigoServico obrigatório não foi preenchido");
			codigoServico = TextUtil.lPad("0", 5);
		}
		else if (codigoServico.length() < 4 || codigoServico.length() > 5)
		{
			log.warning("tpCodigoServico inválido");
			codigoServico = TextUtil.lPad(codigoServico, 5);
		}
		return codigoServico;
	}
	
	protected String tpAliquota (String aliquota)
	{
		if (aliquota == null)
			return "0";
		else if (aliquota.length() < 3 || aliquota.length() > 5)
			log.warning ("tpValor deve ter no máximo 15 digitos");
		//
		return aliquota;
	}
	
	protected String tpAliquota (BigDecimal aliquota)
	{
		if (aliquota == null)
			aliquota = Env.ZERO;
		return tpAliquota (aliquota.setScale(2, BigDecimal.ROUND_HALF_UP).toString());
	}
	
	protected String tpBoolean (String boo)
	{
		if (boo == null || !(boo.equals("true") || boo.equals("false")))
		{
			log.warning("tpBoolean inválido");
			return null;
		}
		else
			return boo;
	}
	
	protected String tpBoolean (boolean boo)
	{
		return tpBoolean (boo ? "true" : "false");
	}
	
	protected String tpInscricaoMunicipal (String inscricaoMunucipal)
	{
		inscricaoMunucipal = TextUtil.toNumeric(inscricaoMunucipal);
		//
		if (inscricaoMunucipal.length() != 8)
			log.warning("tpInscricaoMunucipal deve ter 8 digitos");
		//
		return inscricaoMunucipal;
	}
	
	protected String tpInscricaoEstadual (String inscricaoEstadual)
	{
		inscricaoEstadual = TextUtil.toNumeric(inscricaoEstadual);
		//
		if (inscricaoEstadual.length() < 1 && inscricaoEstadual.length() > 18)
			log.warning("tpInscricaoEstadual deve ter entre 1 e 18 digitos");
		//
		return inscricaoEstadual;
	}
	
	protected String tpRazaoSocial (String razaoSocial)
	{
		if (razaoSocial == null)
			return null;
		else if (razaoSocial.length() > 75)
		{
			log.info ("tpRazaoSocial deve ter no máximo 75 digitos");
			razaoSocial = razaoSocial.substring(0, 75);
		}
		//
		return razaoSocial;
	}
	
	protected String tpEmail (String email)
	{
		if (email == null)
			return null;
		else if (email.length() > 75)
		{
			log.info ("tpEmail deve ter no máximo 75 digitos");
			return null;
		}
		else if (email.indexOf("@") == -1)
		{
			log.info ("tpEmail inválido");
			return null;
		}
		//
		return email;
	}	//	tpEmail
	
	protected String tpDiscriminacao (String discriminacao)
	{
		if (discriminacao == null)
			return null;
		else if (discriminacao.length() > 2000)
		{
			log.info ("tpDiscriminacao deve ter no máximo 2000 digitos");
			discriminacao = discriminacao.substring(0, 2000);
		}
		//
		discriminacao = discriminacao.replace("\n", "|").replace("\r", "|").trim();
		//
		while (discriminacao.endsWith("|"))
			discriminacao = discriminacao.substring(0, discriminacao.length()-1);
		//
		return discriminacao;
	}
	
	protected String tpDate (Timestamp ts)
	{
		if (ts == null)
			return null;
		//
		return 		TextUtil.timeToString(ts, "yyyy-MM-dd");
	}	//	tpDate
}
