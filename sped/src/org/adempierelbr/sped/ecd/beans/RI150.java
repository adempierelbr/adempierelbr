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

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I150 - SALDOS PERIÓDICOS – IDENTIFICAÇÃO DO PERÍODO
 * Ocorrência - vários (por arquivo) A periodicidade do saldo é, no máximo,
 * mensal. Poderá conter fração de mês nos casos de abertura, fusão, cisão,
 * incorporação ou extinção. Chave: [DT_INI]+[DT_FIN]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI150.java, 17/11/2010, 11:28:00, mgrigioni
 */
public class RI150 extends RegSped {

	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 */
	public RI150(Timestamp DT_INI, Timestamp DT_FIN) {
		super();
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
	} // RI150

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI150