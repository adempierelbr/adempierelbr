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
 * REGISTRO C491: DETALHAMENTO DA CONSOLIDAÇÃO DE DOCUMENTOS EMITIDOS POR ECF 
 * (CÓDIGOS 02, 2D e 59)PIS/PASEP
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC491.java, 31/01/2011, 09:16:00, mgrigioni
 */
public class RC491 extends RegSped {
	
	/**
	 * TODO - RC491
	 */
	
	public RC491()
	{
		//
		addCounter();
	}	//	RC491

	/**
	 * Formata o Bloco C Registro 491
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // RC491