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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I510 - DEFINIÇÃO DE CAMPOS DO LIVRO RAZÃO AUXILIAR COM
 * LEIAUTE PARAMETRIZÁVEL Ocorrência - vários (por arquivo) Os campos devem ser
 * informados, neste registro, na mesma ordem em que devam figurar da
 * visualização/impressão. Campo 7 – COL_CAMPO: Tamanho da coluna no relatório,
 * respeitado o tamanho da fonte definido no registro I500 e o espaço de um
 * caractere entre as colunas. Para campos numéricos, considerar também os
 * separadores de milhar e a vírgula. Considerar que o livro será
 * impresso/visualizado em papel A-4, com a orientação paisagem, margens de 1,5
 * cm e com fonte Courier. Quando o conteúdo do campo (inclusive do cabeçalho
 * das colunas) for de tamanho superior ao tamanho da coluna correspondente no
 * relatório, o excedente será impresso nas linhas subseqüentes. Serão
 * utilizadas tantas linhas quantas necessárias para impressão/visualização
 * integral do campo.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI510.java, 18/11/2010, 10:20:00, mgrigioni
 */
public class RI510 extends RegSped {
	
	private String NM_CAMPO;
	private String DESC_CAMPO;
	private String TIPO_CAMPO;
	private BigDecimal TAM_CAMPO;
	private BigDecimal DEC_CAMPO;
	private BigDecimal COL_CAMPO;

	/**
	 * Constructor
	 */
	public RI510(String NM_CAMPO, String DESC_CAMPO, String TIPO_CAMPO,
			BigDecimal TAM_CAMPO, BigDecimal DEC_CAMPO, BigDecimal COL_CAMPO) {
		super();
		this.NM_CAMPO   = NM_CAMPO;
		this.DESC_CAMPO = DESC_CAMPO;
		this.TIPO_CAMPO = TIPO_CAMPO;
		this.TAM_CAMPO  = TAM_CAMPO;
		this.DEC_CAMPO  = DEC_CAMPO;
		this.COL_CAMPO  = COL_CAMPO;
	} // RI510

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(NM_CAMPO, 16))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESC_CAMPO), 50))
            .append(PIPE).append(TextUtil.checkSize(TIPO_CAMPO, 1))
            .append(PIPE).append(TextUtil.toNumeric(TAM_CAMPO, 0, 3))
            .append(PIPE).append(TextUtil.toNumeric(DEC_CAMPO, 0, 2))
            .append(PIPE).append(TextUtil.toNumeric(COL_CAMPO, 0, 3))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI510