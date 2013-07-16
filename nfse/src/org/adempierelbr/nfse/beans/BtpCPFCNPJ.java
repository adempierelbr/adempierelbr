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

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 * 		Bean para CPF CNPJ
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BtpCPFCNPJ.java, v1.0 2013/06/25 6:23:51 PM, ralexsander Exp $
 */
public class BtpCPFCNPJ
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpCPFCNPJ.class);
	
	String CPF;
	String CNPJ;
	
	public String getCPF()
	{
		return CPF;
	}
	
	public void setCPF(String CPF)
	{
		CPF = TextUtil.toNumeric (CPF);
		//
		if (CPF == null || CPF.length() != 11)
			log.warning("tpCPF must has 11 char lenght");
		//
		this.CPF = CPF;
	}
	
	public String getCNPJ()
	{
		return CNPJ;
	}
	
	public void setCNPJ(String CNPJ)
	{
		CNPJ = TextUtil.toNumeric (CNPJ);
		//
		if (CNPJ == null || CNPJ.length() != 11)
			log.warning("tpCNPJ must has 14 char lenght");
		//
		this.CNPJ = CNPJ;
	}
	
	public String getDoc()
	{
		if (CNPJ != null && !CNPJ.equals(""))
			return CNPJ;
		else if (CPF != null && !CPF.equals(""))
			return CPF;
		else
			return null;
	}
	
	/**
	 * 	Indicador para CNPJ/CPF com 1 posição
	 * 
	 * 		Valor 1 para CPF
	 * 		Valor 2 para CNPJ
	 * 		Valor 3 para Não-Informado
	 * 
	 * 	@return Indicador de tipo de documento
	 */
	public String getIndicacaoCNPJF()
	{
		if (CNPJ != null && !CNPJ.equals(""))
			return "2";
		else if (CPF != null && !CPF.equals(""))
			return "1";
		else
			return "3";
	}	//	getIndicacaoCNPJF
}	//	BtpCPFCNPJ
