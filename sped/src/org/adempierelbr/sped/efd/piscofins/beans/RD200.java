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
package org.adempierelbr.sped.efd.piscofins.beans;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO D200: RESUMO DA ESCRITURAÇÃO DIÁRIA – PRESTAÇÃO DE SERVIÇOS DE TRANSPORTE - 
 * NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO 
 * DE CARGAS (CÓDIGO 08), CONHECIMENTO DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B), 
 * AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE CARGAS (CÓDIGO 11), 
 * MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE TRANSPORTE FERROVIÁRIO DE CARGA (CÓDIGO 27) E 
 * CONHECIMENTO DE TRANSPORTE ELETRÔNICO – CT-e (CÓDIGO 57).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD200.java, 31/01/2011, 11:00:00, mgrigioni
 */
public class RD200 extends RegSped  {
	
	/**
	 * TODO - RD200
	 */
	
	public RD200() 
	{
		//
		addCounter();
	} //RD200

	/**
	 * Formata o Bloco D Registro 200
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString
		
} //RD200