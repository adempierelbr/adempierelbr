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

import org.adempierelbr.util.TextUtil;

/**
 *	Valores Totais da NF 
 *	
 *	Discriminador dos valores constantes no documento fiscal. 
 *		Na hipótese de criação ou retificação de registro deverá ser 
 *		informado exatamente 1 (um) registro por documento; na hipótese 
 *		de cancelamento, este registro não deverá ser informado.
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro40,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro40
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "40";
	private BigDecimal 			BaseCalcICMS;
	private BigDecimal 			ValorICMS;
	private BigDecimal 			BaseCalcICMSST;
	private BigDecimal 			ValorICMSST;
	private BigDecimal			ValorTotalProdServ;
	private BigDecimal			ValorFrete;
	private BigDecimal			ValorSeguro;
	private BigDecimal			ValorDesconto;
	private BigDecimal			ValorIPI;
	private BigDecimal			OutrasDesp;
	private BigDecimal			ValorTotalNF;
	private BigDecimal			ValorTotalServSemICMS;
	private BigDecimal			AliqISS;
	private BigDecimal			ValorISS;
		
	/**
	 * Constructor
	 */
	public Registro40 (BigDecimal BaseCalcICMS, BigDecimal ValorICMS, 
			BigDecimal BaseCalcICMSST, 	BigDecimal ValorICMSST, 
			BigDecimal ValorTotalProdServ, BigDecimal ValorFrete, 
			BigDecimal ValorSeguro, BigDecimal ValorDesconto, 
			BigDecimal ValorIPI, BigDecimal OutrasDesp, BigDecimal ValorTotalNF, 
			BigDecimal ValorTotalServSemICMS, BigDecimal AliqISS, 
			BigDecimal ValorISS)
	{	
		this.BaseCalcICMS 			= BaseCalcICMS;
		this.ValorICMS 				= ValorICMS;
		this.BaseCalcICMSST 		= BaseCalcICMSST;
		this.ValorICMSST 			= ValorICMSST;
		this.ValorTotalProdServ 	= ValorTotalProdServ;
		this.ValorFrete 			= ValorFrete;
		this.ValorSeguro 			= ValorSeguro;
		this.ValorDesconto 			= ValorDesconto;
		this.ValorIPI 				= ValorIPI;
		this.OutrasDesp				= OutrasDesp;
		this.ValorTotalNF 			= ValorTotalNF;
		this.ValorTotalServSemICMS 	= ValorTotalServSemICMS;
		this.AliqISS 				= AliqISS;
		this.ValorISS 				= ValorISS;
	}	//	Registro40
	
	/**
	 * Formata o Registro 40
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		return new StringBuffer(TipoDeRegistro 						+ PIPE +
				TextUtil.toNumeric(BaseCalcICMS, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorICMS, 				15, 15)	+ PIPE +
				TextUtil.toNumeric(BaseCalcICMSST, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorICMSST, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorTotalProdServ, 		15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorFrete, 				15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorSeguro, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorDesconto, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorIPI	, 				15, 15)	+ PIPE +
				TextUtil.toNumeric(OutrasDesp, 				15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorTotalNF, 			15, 15)	+ PIPE +
				TextUtil.toNumeric(ValorTotalServSemICMS, 	15, 15)	+ PIPE +
				TextUtil.toNumeric(AliqISS, 				 5, 15)	+ PIPE +
				TextUtil.toNumeric(ValorISS, 				15, 15) + PIPE + TextUtil.EOL_WIN32);
	}
}	//	Registro40