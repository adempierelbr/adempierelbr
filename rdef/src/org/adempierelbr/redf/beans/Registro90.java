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

import org.adempierelbr.util.TextUtil;

/**
 *	Rodapé
 *	
 *	Tipo 90 - Registro obrigatório, rodapé totalizador da quantidade 
 *		de registros no arquivo. Deve ser informado exatamente 1 (um) 
 *		registro por arquivo.
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro90,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro90
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "90";
	private Integer 			QtdRegistros20;
	private Integer 			QtdRegistros30;
	private Integer 			QtdRegistros40;
	private Integer 			QtdRegistros50;
	private Integer 			QtdRegistros60;
		
	/**
	 * Constructor
	 */
	public Registro90 (Integer QtdRegistros20, Integer QtdRegistros30, 
			Integer QtdRegistros40, Integer QtdRegistros50, 
			Integer QtdRegistros60)
	{	
		this.QtdRegistros20 		= QtdRegistros20;
		this.QtdRegistros30			= QtdRegistros30;
		this.QtdRegistros40			= QtdRegistros40;
		this.QtdRegistros50			= QtdRegistros50;
		this.QtdRegistros60			= QtdRegistros60;
	}	//	Registro90
	
	/**
	 * Formata o Registro 60
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		return new StringBuffer(TipoDeRegistro + PIPE +
				TextUtil.lPad ("" + QtdRegistros20, 5) 	+ PIPE +
				TextUtil.lPad ("" + QtdRegistros30, 5) 	+ PIPE +
				TextUtil.lPad ("" + QtdRegistros40, 5) 	+ PIPE +
				TextUtil.lPad ("" + QtdRegistros50, 5) 	+ PIPE +
				TextUtil.lPad ("" + QtdRegistros60, 5) 	+ TextUtil.EOL_WIN32);
	}
}	//	Registro90