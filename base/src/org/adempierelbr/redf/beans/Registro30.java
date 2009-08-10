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
 *	Dados de Mercadoria / Produto / Serviço
 *	
 *	Discriminador dos itens das mercadorias, produtos ou serviços do 
 *		documento fiscal. Na hipótese de criação ou retificação de 
 *		registro deverá ser informado no mínimo 1 (um) registro por 
 *		documento; na hipótese de cancelamento, este registro 
 *		não deverá ser informado. 
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro30,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro30
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "30";
	private String 				CodProdServ;
	private String 				DescProdServ;
	private String 				CodNCM;
	private String 				UnidComercial;
	private BigDecimal			QtdComercial;
	private BigDecimal			ValUnit;
	private BigDecimal			ValTotal;
	private String				CST;
	private BigDecimal			AliqICMS;
	private BigDecimal			AliqIPI;
	private BigDecimal			ValIPI;
		
	/**
	 * Constructor
	 */
	public Registro30 (String CodProdServ, String DescProdServ, String CodNCM, 
			String UnidComercial, BigDecimal QtdComercial,BigDecimal ValUnit,
			BigDecimal ValTotal, String CST,BigDecimal AliqICMS, 
			BigDecimal AliqIPI,BigDecimal ValIPI)
	{	

		this.CodProdServ	=	CodProdServ;
		this.DescProdServ	=	DescProdServ;
		this.CodNCM			=	CodNCM;
		this.UnidComercial 	=	UnidComercial;
		this.QtdComercial	=	QtdComercial;
		this.ValUnit		=	ValUnit;
		this.ValTotal		=	ValTotal;
		this.CST			=	CST;
		this.AliqICMS		=	AliqICMS;
		this.AliqIPI		=	AliqIPI;
		this.ValIPI			=	ValIPI;
	}	//	Registro30
	
	/**
	 * Formata o Registro 30
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		int sizeNCM = CodNCM == null || CodNCM.equals("") ? 0 : 8;
		//
		return new StringBuffer(TipoDeRegistro 					+ PIPE +
				TextUtil.checkSize(CodProdServ, 1, 60, false) 	+ PIPE + 
				TextUtil.checkSize(DescProdServ, 1, 120) 		+ PIPE + 
				TextUtil.lPad(CodNCM, sizeNCM) 					+ PIPE + 
				TextUtil.checkSize(UnidComercial, 1, 6) 		+ PIPE + 
				TextUtil.toNumeric(QtdComercial, 12, 12, 4) 	+ PIPE + 
				TextUtil.toNumeric(ValUnit, 16, 16, 4) 			+ PIPE + 
				TextUtil.toNumeric(ValTotal, 15, 15) 			+ PIPE + 
				TextUtil.lPad(CST, 3) 							+ PIPE + 
				TextUtil.toNumeric(AliqICMS, 5, 5) 				+ PIPE + 
				TextUtil.toNumeric(AliqIPI, 5, 5, false) 		+ PIPE + 
				TextUtil.toNumeric(ValIPI, 15, 15, false)  		+ TextUtil.EOL_WIN32);
	}
}	//	Registro30