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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I100 - CENTRO DE CUSTOS Ocorrência - vários (por arquivo)
 * Chave: [DT_ALT]+[COD_CCUS] Registro obrigatório para todos os que utilizem,
 * em seu sistema contábil, centros de custo, mesmo que não necessários nos
 * registros I051 e I052.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI100.java, 17/11/2010, 10:53:00, mgrigioni
 */
public class RI100 extends RegSped {

	private Timestamp DT_ALT;
	private String COD_CCUS;
	private String CCUS;

	/**
	 * Constructor
	 */
	public RI100(Timestamp DT_ALT, String COD_CCUS, String CCUS) {
		super();
		this.DT_ALT = DT_ALT;
		this.COD_CCUS = COD_CCUS;
		this.CCUS = CCUS;
	} //RI100

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_ALT, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(COD_CCUS, 255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CCUS), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
		
} //RI100