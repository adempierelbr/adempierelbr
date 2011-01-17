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

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I500 - PARÂMETROS DE IMPRESSÃO E VISUALIZAÇÃO DO LIVRO RAZÃO
 * AUXILIAR COM LEIAUTE PARAMETRIZÁVEL Registro obrigatório para a escrituração
 * tipo “Z” Ocorrência - um por arquivo Campo 02 – TAM_FONTE: para especificar o
 * tamanho da fonte, considerar que o livro será impresso/visualizado em papel
 * A-4, com a orientação paisagem, margens de 1,5 cm e com fonte Courier.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI500.java, 18/11/2010, 10:16:00, mgrigioni
 */
public class RI500 extends RegSped {
	
	private final String REG   = "I500";
	
	private BigDecimal TAM_FONTE;

	/**
	 * Constructor
	 */
	public RI500(BigDecimal TAM_FONTE) {

		this.TAM_FONTE = TAM_FONTE;
		//
		addCounter();
	} //RI500

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.toNumeric(TAM_FONTE, 2, 2)
			+ PIPE;
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public String getReg() {
		return REG;
	}
	
} //RI500