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

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class BtpChaveNFe extends RegistroNFSe
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpChaveNFe.class);
	
	String InscricaoPrestador;
	String Numero;
	String CodigoVerificacao;
	

	public String getInscricaoPrestador()
	{
		return InscricaoPrestador;
	}
	
	public void setInscricaoPrestador(String inscricaoPrestador)
	{
		InscricaoPrestador = tpInscricaoMunicipal (inscricaoPrestador);
	}
	
	/**
	 * @return the Numero
	 */
	public String getNumero()
	{
		return Numero;
	}
	
	/**
	 * @param numero the tpNumero to set
	 */
	public void setNumero(String numero)
	{
		numero = TextUtil.toNumeric(numero);
		//
		if (numero.length() < 1 || numero.length() > 12)
		{
			log.warning("tpNumero deve ter entre 1 e 12 digitos");
			numero = numero.substring(0, 12);
		}
		//
		this.Numero = numero;
	}
	
	/**
	 * @param numero the tpNumero to set
	 */
	public void setNumero(BigDecimal numero)
	{
		if (numero == null)
		{
			log.warning("Numero invalido.");
			numero = Env.ZERO;
		}
		//
		setNumero(numero.setScale(0, BigDecimal.ROUND_HALF_UP).toString());
	}
	
	/**
	 * @return the tpCodigoVerificacao
	 */
	public String getCodigoVerificacao()
	{
		return CodigoVerificacao;
	}
	
	/**
	 * @param codigoVerificacao the tpCodigoVerificacao to set
	 */
	public void setCodigoVerificacao(String codigoVerificacao)
	{
		codigoVerificacao = TextUtil.toNumeric(codigoVerificacao);
		//
		if (codigoVerificacao == null || codigoVerificacao.length() != 8)
			log.warning("tpCodigoVerificacao deve ter 8 digitos");
		//
		this.CodigoVerificacao = codigoVerificacao;
	}
}
