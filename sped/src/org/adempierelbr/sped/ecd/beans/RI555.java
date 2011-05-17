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
 * Bloco I Registro I555 - TOTAIS NO LIVRO RAZÃO AUXILIAR COM LEIAUTE
 * PARAMETRIZÁVEL Ocorrência - vários (por arquivo) Este registro deve conter os
 * mesmos campos do registro I550. Entretanto, devem estar preenchidos apenas os
 * que serviram de chave para o cálculo dos totais e os campos que foram
 * totalizados. Os demais campos não devem ter conteúdo (“||”).
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI555.java, 18/11/2010, 10:27:00, mgrigioni
 */
public class RI555 extends RegSped {

	private String RZ_CONT_TOT;

	/**
	 * Constructor
	 */
	public RI555(String RZ_CONT_TOT) {
		super();
		this.RZ_CONT_TOT = RZ_CONT_TOT;
	} // RI555

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(RZ_CONT_TOT)
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}

} //RI555