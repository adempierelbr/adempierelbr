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
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco 0 Registro 0007 - OUTRAS INSCRIÇÕES CADASTRAIS DO EMPRESÁRIO OU
 * SOCIEDADE EMPRESÁRIA
 * 
 * Ocorrência - vários (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0007.java, 16/11/2010, 15:15:00, mgrigioni
 */
public class R0007 extends RegSped {
	
	private String COD_ENT_REF;
	private String COD_INSCR;

	/**
	 * Constructor
	 * @param COD_ENT_REF
	 * @param COD_INSCR
	 */
	public R0007(String COD_ENT_REF, String COD_INSCR) {
		super();
		this.COD_ENT_REF = COD_ENT_REF;
		this.COD_INSCR = COD_INSCR;
	} //R0007

	/**
	 * Formata o Bloco 0 Registro 007
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_ENT_REF, 255))
            .append(PIPE).append(TextUtil.toNumeric(COD_INSCR))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //R0007