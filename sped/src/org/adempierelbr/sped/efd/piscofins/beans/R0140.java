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
 * REGISTRO 0140: TABELA DE CADASTRO DE ESTABELECIMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0140.java, 19/01/2011, 09:08:00, mgrigioni
 */
public class R0140 extends RegSped {
	
	private String COD_EST;
	private String NOME;
	private String CNPJ;
	private String UF;
	private String IE;
	private String COD_MUN;
	private String IM;
	private String SUFRAMA;
	
	/**
	 * Constructor
	 * @param COD_EST
	 * @param NOME
	 * @param CNPJ
	 * @param UF
	 * @param IE
	 * @param COD_MUN
	 * @param IM
	 * @param SUFRAMA
	 */
	public R0140(String COD_EST, String NOME, String CNPJ, String UF, String IE, 
			String COD_MUN, String IM, String SUFRAMA)
	{
		super();
		setCOD_EST(COD_EST);
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.IM = IM;
		this.SUFRAMA = SUFRAMA;
	}	//	R0140
	
	private void setCOD_EST(String COD_EST){
		
		if (COD_EST == null || COD_EST.isEmpty())
			log.severe("COD_EST == NULL");
		else
			this.COD_EST = TextUtil.checkSize(RemoverAcentos.remover(COD_EST), 60);
	}

	/**
	 * Formata o Bloco 0 Registro 140
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_EST)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 100))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CNPJ),14))
            .append(PIPE).append(TextUtil.checkSize(UF, 2))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(IE),14))
            .append(PIPE).append(TextUtil.rPad(TextUtil.toNumeric(COD_MUN), '0', 7))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(IM),255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(SUFRAMA),9))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} // R0140