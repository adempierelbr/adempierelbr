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
 * REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0150.java, 19/01/2011, 09:40:00, mgrigioni
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
	public R0150(String COD_PART, String NOME, String COD_PAIS, String CNPJ, String CPF, 
			String IE, String COD_MUN, String SUFRAMA, String END, String NUM, 
			String COMPL, String BAIRRO)
	{
		this.COD_PART = COD_PART;
		this.NOME = NOME;
		this.COD_PAIS = COD_PAIS;
		this.CNPJ = CNPJ;
		this.CPF = CPF;
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.SUFRAMA = SUFRAMA;
		this.END = END;
		this.NUM = NUM;
		this.COMPL = COMPL;
		this.BAIRRO = BAIRRO;
		//
		addCounter();
	}	//	R0150

	/**
	 * Formata o Bloco 0 Registro 150
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60)  
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(NOME), 100)
			+ PIPE + TextUtil.lPad(TextUtil.toNumeric(COD_PAIS), '0', 5)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CNPJ),14)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CPF),11)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(IE),14)
			+ PIPE + TextUtil.rPad(TextUtil.toNumeric(COD_MUN), '0', 7)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(SUFRAMA),9)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(END), 60)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(NUM),255)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COMPL), 60)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(BAIRRO), 60)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0150