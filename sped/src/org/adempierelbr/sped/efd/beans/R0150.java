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
package org.adempierelbr.sped.efd.beans;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0150.java, 04/02/2011, 09:19:00, mgrigioni
 */
public class R0150 extends RegSped {
	
	private String COD_PART;
	private String NOME;
	private String COD_PAIS;
	private String CNPJ;
	private String CPF;
	private String IE;
	private String COD_MUN;
	private String SUFRAMA;
	private String END;
	private String NUM;
	private String COMPL;
	private String BAIRRO;
	
	/**
	 * Constructor
	 * @param COD_PART
	 * @param NOME
	 * @param COD_PAIS
	 * @param CNPJ
	 * @param CPF
	 * @param IE
	 * @param COD_MUN
	 * @param SUFRAMA
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 */
	public R0150(String COD_PART, String NOME, String COD_PAIS, String CNPJ, 
			String IE, String COD_MUN, String SUFRAMA, String END, String NUM, 
			String COMPL, String BAIRRO)
	{
		super();
		setCOD_PART(COD_PART);
		this.NOME = NOME;
		this.COD_PAIS = COD_PAIS;
		setID(CNPJ);
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.SUFRAMA = SUFRAMA;
		this.END = END;
		this.NUM = NUM;
		this.COMPL = COMPL;
		this.BAIRRO = BAIRRO;
	}	//	R0150
	
	private void setCOD_PART(String COD_PART){
		
		if (COD_PART == null || COD_PART.isEmpty())
			log.severe("COD_PART == NULL");
		else
			this.COD_PART = TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60);
	}
	
	private void setID(String CNPJ){
		CNPJ = TextUtil.toNumeric(CNPJ);
		if (CNPJ.length() == 14)
			this.CNPJ = CNPJ;
		else
			this.CPF = CNPJ;
	}
	
	public String getCOD_PART(){
		return this.COD_PART;
	}

	/**
	 * Formata o Bloco 0 Registro 150
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_PART)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 100))
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(COD_PAIS), '0', 5))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CNPJ),14))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CPF),11))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(IE),14))
            .append(PIPE).append(TextUtil.rPad(TextUtil.toNumeric(COD_MUN), '0', 7))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(SUFRAMA),9))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(END), 60))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NUM),10))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COMPL), 60))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(BAIRRO), 60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		R0150 other = (R0150) obj;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		return true;
	}

} // R0150