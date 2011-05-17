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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I355 - DETALHES DOS SALDOS DAS CONTAS DE RESULTADO ANTES DO
 * ENCERRAMENTO Ocorrência – 1:N Chave: [COD_CTA]+[COD_CCUS]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI355.java, 18/11/2010, 10:13:00, mgrigioni
 */
public class RI355 extends RegSped {
	
	private String COD_CTA;
	private String COD_CCUS;
	private BigDecimal VL_CTA;
	private String IND_DC;

	/**
	 * Constructor
	 */
	public RI355(String COD_CTA, String COD_CCUS, BigDecimal VL_CTA,
			String IND_DC) {
		super();
		this.COD_CTA  = COD_CTA;
		this.COD_CCUS = COD_CCUS;
		this.VL_CTA   = VL_CTA;
		this.IND_DC   = IND_DC;
	} // RI355

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_CCUS, 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_CTA, 0, 255))
            .append(PIPE).append(TextUtil.checkSize(IND_DC, 1, 1))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI355