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
 * Bloco 0 Registro 0020 - ESCRITURAÇÃO CONTÁBIL DESCENTRALIZADA
 * 
 * Ocorrência - vários (por arquivo, quando o arquivo se referir à escrituração
 * da matriz) ou 1 (por arquivo, quando se referir à escrituração da filial).
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0020.java, 16/11/2010, 15:15:00, mgrigioni
 */
public class R0020 implements RegSped {
	
	private final String REG   = "0020";
	
	private String IND_DEC;
	private String CNPJ;
	private String UF;
	private String IE;
	private String COD_MUN;
	private String IM;
	private String NIRE;

	/*
	 * IND_DEC Indicador de descentralização: 0 – escrituração da matriz; 1 –
	 * escrituração da filial.
	 */

	/**
	 * Constructor
	 */
	public R0020(String IND_DEC, String CNPJ, String UF, String IE, String COD_MUN,
			String IM, String NIRE ) {
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.IE = IE;
		this.COD_MUN = COD_MUN;
		this.IM = IM;
		this.IND_DEC = IND_DEC;
		this.NIRE = NIRE;
		//
		addCounter();
	} //R0020

	/**
	 * Formata o Bloco 0 Registro 0020
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.toNumeric(CNPJ)
			+ PIPE + TextUtil.checkSize(UF, 0, 2)
			+ PIPE + TextUtil.checkSize(IND_DEC, 0, 1)
			+ PIPE + TextUtil.toNumeric(NIRE)
			+ PIPE + TextUtil.toNumeric(IE)
			+ PIPE + TextUtil.toNumeric(COD_MUN)
			+ PIPE + TextUtil.toNumeric(IM)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //R0020