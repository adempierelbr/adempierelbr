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
		this.COD_EST = COD_EST;
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.IM = IM;
		this.SUFRAMA = SUFRAMA;
		//
		addCounter();
	}	//	R0140

	/**
	 * Formata o Bloco 0 Registro 140
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_EST), 60)  
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(NOME), 100)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CNPJ),14) 
			+ PIPE + TextUtil.checkSize(UF, 2)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(IE),14)
			+ PIPE + TextUtil.rPad(TextUtil.retiraEspecial(COD_MUN), '0', 7)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(IM),255)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(SUFRAMA),9)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} 	//	toString
	
} // R0140