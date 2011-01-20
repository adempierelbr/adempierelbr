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
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco 0 Registro 0000 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DO
 * EMPRESÁRIO OU DA SOCIEDADE EMPRESÁRIA.
 * 
 * Deve ser informado exatamente 1 (um) registro por arquivo.
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0000.java, 16/11/2010, 15:14:00, mgrigioni
 */
public class R0000 extends RegSped {

	private final String LECD  = "LECD";
	
	private String NOME;
	private String CNPJ;
	private String UF;
	private String IE;
	private String COD_MUN;
	private String IM;
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	private BigDecimal IND_SIT_ESP;

	/**
	 * Constructor
	 */
	public R0000(Timestamp DT_INI, Timestamp DT_FIN, String NOME, String CNPJ,
			String UF, String IE, String COD_MUN, String IM,
			BigDecimal IND_SIT_ESP) {
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.IM = IM;
		this.IND_SIT_ESP = IND_SIT_ESP;
		//
		addCounter();
	} //R0000

	/**
	 * Formata o Bloco 0 Registro 000
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG 
			+ PIPE + LECD
			+ PIPE + TextUtil.timeToString(DT_INI, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_FIN, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(NOME), 255)
			+ PIPE + TextUtil.toNumeric(CNPJ)
			+ PIPE + TextUtil.checkSize(UF, 0, 2)
			+ PIPE + TextUtil.toNumeric(IE)
			+ PIPE + TextUtil.toNumeric(COD_MUN)
			+ PIPE + TextUtil.toNumeric(IM) 
			+ PIPE + TextUtil.toNumeric(IND_SIT_ESP, 0, 1)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}	//toString
	
} //R0000