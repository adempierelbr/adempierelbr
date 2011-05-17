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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco 0 Registro 0150 - TABELA DE CADASTRO DO PARTICIPANTE
 * 
 *Ocorrência - vários (por arquivo) Este registro deve ser preenchido, na
 * escrituração contábil, somente quando se referir a participantes cujos
 * códigos de relacionamento constem da tabela interna ao Sped (relativa ao
 * campo 02 - COD_REL do registro 0180). Chave: [COD_PART]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0150.java, 16/11/2010, 15:16:00, mgrigioni
 */
public class R0150 extends RegSped {
	
	private String COD_PART;
	private String NOME;
	private String COD_PAIS;
	private String CNPJ;
	private String CPF;
	private String NIT;
	private String UF;
	private String IE;
	private String IE_ST;
	private String COD_MUN;
	private String IM;
	private String SUFRAMA;

	/**
	 * Constructor
	 * @param COD_PART
	 * @param NOME
	 * @param COD_PAIS
	 * @param CNPJ
	 * @param CPF
	 * @param NIT
	 * @param UF
	 * @param IE
	 * @param IE_ST
	 * @param COD_MUN
	 * @param IM
	 * @param SUFRAMA
	 */
	public R0150(String COD_PART, String NOME, String COD_PAIS,
			String CNPJ, String CPF, String NIT, String UF, String IE,
			String IE_ST, String COD_MUN, String IM, String SUFRAMA) {
		super();
		this.COD_PART = COD_PART;
		this.NOME = NOME;
		this.COD_PAIS = COD_PAIS;
		this.CNPJ = CNPJ;
		this.CPF = CPF;
		this.NIT = NIT;
		this.UF = UF;
		this.IE = IE;
		this.IE_ST = IE_ST;
		this.COD_MUN = COD_MUN;
		this.IM = IM;
		this.SUFRAMA = SUFRAMA;
	} //R0150

	/**
	 * Formata o Bloco 0 Registro 0150
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_PART, 255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 255))
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(COD_PAIS), '0', 5))
            .append(PIPE).append(TextUtil.toNumeric(CNPJ))
            .append(PIPE).append(TextUtil.toNumeric(CPF))
            .append(PIPE).append(TextUtil.toNumeric(NIT))
            .append(PIPE).append(TextUtil.checkSize(UF, 2))
            .append(PIPE).append(TextUtil.toNumeric(IE))
            .append(PIPE).append(TextUtil.checkSize(IE_ST, 255))
            .append(PIPE).append(TextUtil.toNumeric(COD_MUN))
            .append(PIPE).append(TextUtil.checkSize(IM, 255))
            .append(PIPE).append(TextUtil.checkSize(SUFRAMA, 9))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //R0150