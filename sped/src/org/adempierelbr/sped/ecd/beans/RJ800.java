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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J800 - BALANÇO PATRIMONIAL
 * 
 * Ocorrência - 1:N Os registros devem ser gerados na mesma ordem em que devem
 * ser visualizados. Campo 02 – COD_AGL. Devem ser informados códigos para todas
 * as linhas nas quais exista valor. Campo 05 – DESCR_COD_AGL. A definição da
 * descrição, função e funcionamento do código de aglutinação são prerrogativa e
 * responsabilidade do empresário ou sociedade empresária.
 * 
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ800.java, 18/11/2010, 11:43:00, mgrigioni
 */

public class RJ800 extends RegSped {

	private String ARQ_RTF;
	private String IND_FIM_RTF;

	/**
	 * Constructor
	 */
	public RJ800(String ARQ_RTF, String IND_FIM_RTF) {
		super();
		this.ARQ_RTF = ARQ_RTF;
		this.IND_FIM_RTF = IND_FIM_RTF;
	} //RJ800

	/**
	 * Formata o Bloco J Registro 800
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(ARQ_RTF)
            .append(PIPE).append(TextUtil.checkSize(IND_FIM_RTF, 7))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RJ800