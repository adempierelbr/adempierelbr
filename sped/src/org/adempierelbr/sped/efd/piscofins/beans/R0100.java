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
 * REGISTRO 0100: DADOS DO CONTABILISTA
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0100.java, 17/01/2011, 14:21:00, mgrigioni
 */
public class R0100 extends RegSped {

	private String NOME;
	private String CPF;
	private String CRC;
	private String CNPJ;
	private String CEP;
	private String END;
	private String NUM;
	private String COMPL;
	private String BAIRRO;
	private String FONE;
	private String FAX;
	private String EMAIL;
	private String COD_MUN;

	/**
	 * Constructor
	 * @param NOME
	 * @param CPF
	 * @param CRC
	 * @param CNPJ
	 * @param CEP
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 * @param FONE
	 * @param FAX
	 * @param EMAIL
	 * @param COD_MUN
	 */
	public R0100(String NOME, String CPF, String CRC, String CNPJ, String CEP,
			String END, String NUM, String COMPL, String BAIRRO, String FONE,
			String FAX, String EMAIL, String COD_MUN)
	{
		super();
		this.NOME = NOME;
		this.CPF = CPF;
		this.CRC = CRC;
		this.CNPJ = CNPJ;
		this.CEP = CEP;
		this.END = END;
		this.NUM = NUM;
		this.COMPL = COMPL;
		this.BAIRRO = BAIRRO;
		this.FONE = FONE;
		this.FAX = FAX;
		this.EMAIL = EMAIL;
		this.COD_MUN = COD_MUN;
	}	//	R0100

	/**
	 * Formata o Bloco 0 Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 100))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CPF),11))
            .append(PIPE).append(TextUtil.checkSize(CRC,15))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CNPJ),14))
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(CEP), 8))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(END), 60))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NUM), 10))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COMPL), 60))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(BAIRRO), 60))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(FONE), 10))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(FAX), 10))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.itrim(EMAIL),255))
            .append(PIPE).append(TextUtil.rPad(TextUtil.toNumeric(COD_MUN), '0', 7))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} // R0100