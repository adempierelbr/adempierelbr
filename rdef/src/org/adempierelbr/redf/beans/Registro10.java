/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
package org.adempierelbr.redf.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 *	Identificação do Arquivo
 *	
 *	Tipo 10 - Registro obrigatório, cabeçalho do arquivo, 
 *		identificador do estabelecimento emitente. 
 *	Deve ser informado exatamente 1 (um) registro por arquivo. 
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro10,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro10
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "10";
	private final BigDecimal	VersaoDoLeiaute = Env.ONE;	//	1,00
	private String				CNPJ;
	private Timestamp			DataInicio;
	private Timestamp			DataFinal;
	
	/**
	 * Constructor
	 */
	public Registro10 (String CNPJ, Timestamp DataInicio, Timestamp DataFinal)
	{	
		this.CNPJ 		= CNPJ;
		this.DataInicio = DataInicio;
		this.DataFinal 	= DataFinal;
		
	}	//	Registro10
	
	/**
	 * Formata o Registro 10
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		return new StringBuffer(TipoDeRegistro 					+ PIPE +
				TextUtil.toNumeric(VersaoDoLeiaute, 1, 4) 		+ PIPE +
				TextUtil.lPad(CNPJ, 14)		 					+ PIPE +
				TextUtil.timeToString(DataInicio, "dd/MM/yyyy")	+ PIPE +
				TextUtil.timeToString(DataFinal,  "dd/MM/yyyy") + TextUtil.EOL_WIN32);
	}
}	//	Registro10