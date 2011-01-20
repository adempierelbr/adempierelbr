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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C110: COMPLEMENTO DO DOCUMENTO - INFORMAÇÃO COMPLEMENTAR DA NOTA FISCAL 
 * (CÓDIGOS 01, 1B, 04 e 55)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC110.java, 20/01/2011, 11:26:00, mgrigioni
 */
public class RC110 extends RegSped  {
	
	private String COD_INF;
	private String TXT_COMPL;

	/**
	 * Constructor
	 * 
	 * @param COD_INF
	 * @param TXT_COMPL
	 */
	public RC110(String COD_INF, String TXT_COMPL) 
	{
		this.COD_INF = COD_INF;
		this.TXT_COMPL = TXT_COMPL;
		//
		addCounter();
	} //RC110

	/**
	 * Formata o Bloco C Registro 110
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_INF, 1, 6)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(TXT_COMPL), 255)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString
	
} //RC110