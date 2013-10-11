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

public class BtpChaveRPS
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpChaveRPS.class);
	
	String InscricaoPrestador;
	String SerieRPS;
	String NumeroRPS;
	/**
	 * @return the tpInscricaoPrestador
	 */
	public String getInscricaoPrestador()
	{
		return InscricaoPrestador;
	}
	
	/**
	 * @param inscricaoPrestador the tpInscricaoPrestador to set
	 */
	public void setInscricaoPrestador(String inscricaoPrestador)
	{
		inscricaoPrestador = TextUtil.toNumeric(inscricaoPrestador);
		//
		if (inscricaoPrestador == null || inscricaoPrestador.length() < 1 
				|| inscricaoPrestador.length() > 19)
			log.warning("tpInscricaoEstadual deve ter entre 1 e 19 caracteres");
		//
		this.InscricaoPrestador = inscricaoPrestador;
	}
	
	/**
	 * @return the tpSerieRPS
	 */
	public String getSerieRPS()
	{
		return SerieRPS;
	}
	/**
	 * @param serieRPS the tpSerieRPS to set
	 */
	public void setSerieRPS(String serieRPS)
	{
		if (serieRPS != null && (serieRPS.length() < 1 
				|| serieRPS.length() > 5))
			log.warning("tpSerieRPS deve ter entre 1 e 5 dígitos");
		//
		if (serieRPS != null && serieRPS.isEmpty())
			this.SerieRPS = null;
		else
			this.SerieRPS = serieRPS;
	}	//	setSerieRPS
	
	/**
	 * @return the tpNumero
	 */
	public String getNumero()
	{
		return NumeroRPS;
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
		this.NumeroRPS = numero;
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
}
