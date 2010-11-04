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
 *	Informações Adicionais e de Cobrança
 *	
 *	Tipo 60 - Informações adicionais e de cobrança. 
 *		Na hipótese de criação ou retificação de registro poderá ser informado 
 *		exatamente 1 (um) ou nenhum registro por documento; na hipótese de 
 *		cancelamento, este registro não deverá ser informado. 
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro60,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro60
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "60";
	private String 				DadosFatura;
	private String 				InfoInteresseFisco;
	private String 				InfCompl;
		
	/**
	 * Constructor
	 */
	public Registro60 (String DadosFatura, String InfoInteresseFisco, String InfCompl)
	{	
		this.DadosFatura 		= DadosFatura;
		this.InfoInteresseFisco	= InfoInteresseFisco;
		this.InfCompl			= InfCompl;
	}	//	Registro60

	/**
	 * Constructor
	 */
	public Registro60() 
	{

	}
	
	/**
	 * Formata o Registro 60
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		return new StringBuffer(TipoDeRegistro + PIPE +
				TextUtil.checkSize (DadosFatura, 		1, 256, false) 	+ PIPE +
				TextUtil.checkSize (InfoInteresseFisco,	1, 256, false)	+ PIPE +
				TextUtil.checkSize (InfCompl, 			1, 5000, false)	+ PIPE + TextUtil.EOL_WIN32);
	}
}	//	Registro60