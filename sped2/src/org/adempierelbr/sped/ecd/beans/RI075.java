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
 * Bloco I Registro I075 - TABELA DE HISTÓRICO PADRONIZADO Ocorrência - vários
 * (por arquivo) Campo 02- O código de histórico padronizado deve ser único para
 * todo o período a que se refere a escrituração. Chave: [COD_HIST]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: BIRI075.java, 17/11/2010, 10:48:00, mgrigioni
 */
public class RI075 implements RegSped {
	
	private final String REG   = "I075";

	private String COD_HIST;
	private String DESCR_HIST;

	/**
	 * Constructor
	 */
	public RI075(String COD_HIST, String DESCR_HIST) {
		this.COD_HIST = COD_HIST;
		this.DESCR_HIST = DESCR_HIST;
		//
		addCounter();
	} //RI075

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(COD_HIST), 0, 255)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(DESCR_HIST), 0, 255)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RI075