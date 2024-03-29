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

import org.adempierelbr.sped.CounterSped;
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
public class RI355 implements RegSped {
	
	private final String REG   = "I355";
	
	private String COD_CTA;
	private String COD_CCUS;
	private BigDecimal VL_CTA;
	private String IND_DC;

	/**
	 * Constructor
	 */
	public RI355(String COD_CTA, String COD_CCUS, BigDecimal VL_CTA,
			String IND_DC) {
		
		this.COD_CTA  = COD_CTA;
		this.COD_CCUS = COD_CCUS;
		this.VL_CTA   = VL_CTA;
		this.IND_DC   = IND_DC;
		//
		addCounter();
	} // RI355

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(COD_CTA, 0, 255)
			+ PIPE + TextUtil.checkSize(COD_CCUS, 0, 255)
			+ PIPE + TextUtil.toNumeric(VL_CTA, 0, 255)
			+ PIPE + TextUtil.checkSize(IND_DC, 1, 1)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RI355