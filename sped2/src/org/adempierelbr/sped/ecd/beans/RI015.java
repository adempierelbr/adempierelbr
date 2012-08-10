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
package org.adempierelbr.sped.ecd.beans;

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I015 - IDENTIFICAÇÃO DAS CONTAS DA ESCRITURAÇÃO RESUMIDA A QUE SE REFERE A ESCRITURAÇÃO AUXILIAR
 * 
 * @author Luiz Henrique (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI015.java, 16/11/2010, 16:21:00, mgrigioni
 */
public class RI015 implements RegSped {

	private final String REG   = "I015";
	
	private String COD_CTA_RES;
	
	/**
	 * Constructor
	 * @param COD_CTA_RES
	 */
	public RI015(String COD_CTA_RES) {
		this.COD_CTA_RES = COD_CTA_RES;
		//
		addCounter();
	}	//RI015
	
	/**
	 * Formata Bloco I Resgistro i015
	 * @return
	 */
	public String toString()  {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_CTA_RES, 0, 100)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}	//toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
}	//RI015