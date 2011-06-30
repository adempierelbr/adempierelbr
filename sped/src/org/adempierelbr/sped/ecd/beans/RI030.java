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
 * Bloco I Registro I030 - TERMO DE ABERTURA DO LIVRO Ocorrência - um (por
 * arquivo) Deve ser utilizada uma seqüência específica de numeração para o
 * campo NUM_ORD por NAT_LIVR.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI030.java, 16/11/2010, 16:27:00, mgrigioni
 */
public class RI030 extends RegSped {

	private final String DNRC_ABERT = "TERMO DE ABERTURA";
	
	private int NUM_ORD;
	private String NAT_LIVR;
	private BigDecimal QTD_LIN;
	private String NOME;
	private String NIRE;
	private String CNPJ;
	private Timestamp DT_ARQ;
	private Timestamp DT_ARQ_CONV;
	private String DESC_MUN;

	/**
	 * Constructor
	 */
	public RI030(int NUM_ORD, String NAT_LIVR,
			String NOME, String NIRE, String CNPJ,
			Timestamp DT_ARQ, Timestamp DT_ARQ_CONV, String DESC_MUN)
	{
		this(NUM_ORD, NAT_LIVR, null, NOME, NIRE, 
				CNPJ,DT_ARQ, DT_ARQ_CONV, DESC_MUN);
	}
	
	/**
	 * Constructor
	 */
	public RI030(int NUM_ORD, String NAT_LIVR,
			BigDecimal QTD_LIN, String NOME, String NIRE, String CNPJ,
			Timestamp DT_ARQ, Timestamp DT_ARQ_CONV, String DESC_MUN)
	{
		super();
		this.NUM_ORD = NUM_ORD;
		this.NAT_LIVR = NAT_LIVR;
		this.QTD_LIN = QTD_LIN;
		this.NOME = NOME;
		this.NIRE = NIRE;
		this.CNPJ = CNPJ;
		this.DT_ARQ = DT_ARQ;
		this.DT_ARQ_CONV = DT_ARQ_CONV;
		this.DESC_MUN = DESC_MUN;
	} // RI030

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(DNRC_ABERT, 17))
            .append(PIPE).append(NUM_ORD)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NAT_LIVR), 80) )
            .append(PIPE).append((QTD_LIN == null ? "XXXXQtdTotalDeLinhasXXXX" : TextUtil.toNumeric(QTD_LIN, 0)))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 255))
            .append(PIPE).append(TextUtil.toNumeric(NIRE))
            .append(PIPE).append(TextUtil.toNumeric(CNPJ))
            .append(PIPE).append(TextUtil.timeToString(DT_ARQ, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_ARQ_CONV, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESC_MUN), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} // RI030