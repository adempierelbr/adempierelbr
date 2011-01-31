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
 * REGISTRO C600: CONSOLIDAÇÃO DIÁRIA DE NOTAS FISCAIS/CONTAS EMITIDAS DE ENERGIA ELÉTRICA 
 * (CÓDIGO 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E
 * NOTA FISCAL/CONTA DE FORNECIMENTO DE GÁS (CÓDIGO 28) 
 * (EMPRESAS OBRIGADAS OU NÃO OBRIGADAS AO CONVENIO ICMS 115/03) – DOCUMENTOS DE SAÍDA
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC600.java, 31/01/2011, 09:46:00, mgrigioni
 */
public class RC600 extends RegSped {
	
	/**
	 * TODO - RC600
	 */
	
	public RC600()
	{
		//
		addCounter();
	}	//	RC600

	/**
	 * Formata o Bloco C Registro 600
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // RC600