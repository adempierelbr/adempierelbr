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
 * Bloco I Registro I020 - CAMPOS ADICIONAIS
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI020.java, 16/11/2010, 16:27:00, mgrigioni
 */
public class RI020 extends RegSped {

	private String REG_COD;
	private String CAMPO;
	private String DESCRICAO;
	private String TIPO;
	
	private int NUM_AD;

	/**
	 * Constructor
	 * @param REG_COD
	 * @param NUM_AD
	 * @param CAMPO
	 * @param DESCRICAO
	 * @param TIPO
	 */
	public RI020(String REG_COD, int NUM_AD, String CAMPO, 
			String DESCRICAO, String TIPO) {
		super();
		this.REG_COD   = REG_COD;
		this.NUM_AD    = NUM_AD;
		this.CAMPO     = CAMPO;
		this.DESCRICAO = DESCRICAO;
		this.TIPO      = TIPO;;
	} //RI012

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(REG_COD, 4))
            .append(PIPE).append(NUM_AD)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CAMPO), 100))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCRICAO), 100))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(TIPO), 100))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}

} //RI012