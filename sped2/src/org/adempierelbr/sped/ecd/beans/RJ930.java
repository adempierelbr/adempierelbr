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

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J930 - IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ESCRITURAÇÃO
 * 
 * Ocorrência - 1:N Chave: [IDENT_CPF]+[COD_ASSIN]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ930.java, 18/11/2010, 14:24:00, mgrigioni
 */

public class RJ930 implements RegSped {
	
	private final String REG = "J930";
	
	private String IDENT_NOM;
	private String IDENT_CPF;
	private String IDENT_QUALIF;
	private String COD_ASSIM;
	private String IND_CRC;

	/**
	 * Constructor
	 */
	public RJ930(String IDENT_NOM, String IDENT_CPF, String IDENT_QUALIF,
			String COD_ASSIM, String IND_CRC)
	{
		this.IDENT_NOM = IDENT_NOM;
		this.IDENT_CPF = IDENT_CPF;
		this.IDENT_QUALIF = IDENT_QUALIF;
		this.COD_ASSIM = COD_ASSIM;
		this.IND_CRC = IND_CRC;
		//
		addCounter();
	} // RJ930

	/**
	 * Formata o Bloco J Registro 930
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(IDENT_NOM), 0, 255)
			+ PIPE + TextUtil.toNumeric(IDENT_CPF)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(IDENT_QUALIF), 0, 255)
			+ PIPE + TextUtil.checkSize(COD_ASSIM, 0, 3)
			+ PIPE + TextUtil.checkSize(IND_CRC, 0, 11)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} // RJ930