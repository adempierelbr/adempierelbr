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

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA PESSOA JURÍDICA
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0000.java, 17/01/2011, 12:21:00, mgrigioni
 */
public class R0000 extends RegSped {

	private String COD_VER;
	private String TIPO_ESCRIT;
	private String IND_SIT_ESP;
	private String NUM_REC_ANTERIOR;
	private String NOME;
	private String CNPJ;
	private String UF;
	private String COD_MUN;
	private String SUFRAMA;
	private String IND_NAT_PJ;
	private String IND_ATIV;
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * @param DT_INI
	 * @param DT_FIN
	 * @param TIPO_ESCRIT
	 * @param NUM_REC_ANTERIOR
	 * @param NOME
	 * @param CNPJ
	 * @param UF
	 * @param COD_MUN
	 * @param SUFRAMA
	 * @param IND_NAT_PJ
	 * @param IND_ATIV
	 */
	public R0000(String COD_VER, String TIPO_ESCRIT, String IND_SIT_ESP, String NUM_REC_ANTERIOR,
			Timestamp DT_INI, Timestamp DT_FIN, String NOME, String CNPJ, String UF, String COD_MUN,
			String SUFRAMA, String IND_NAT_PJ, String IND_ATIV) {
		super();
		this.COD_VER = COD_VER;
		this.TIPO_ESCRIT = TIPO_ESCRIT;
		this.IND_SIT_ESP = IND_SIT_ESP;
		this.NUM_REC_ANTERIOR = NUM_REC_ANTERIOR;
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.COD_MUN = COD_MUN;
		this.SUFRAMA = SUFRAMA;
		this.IND_NAT_PJ = IND_NAT_PJ;
		this.IND_ATIV = IND_ATIV;
	} //R0000

	/**
	 * Formata o Bloco 0 Registro 000
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
			       (PIPE).append(REG) 
			.append(PIPE).append(COD_VER)
			.append(PIPE).append(TIPO_ESCRIT)
			.append(PIPE).append(IND_SIT_ESP)
			.append(PIPE).append(NUM_REC_ANTERIOR)
			.append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
			.append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
			.append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 0, 255))
			.append(PIPE).append(TextUtil.toNumeric(CNPJ))
			.append(PIPE).append(TextUtil.checkSize(UF, 0, 2))
			.append(PIPE).append(TextUtil.toNumeric(COD_MUN))
			.append(PIPE).append(TextUtil.toNumeric(SUFRAMA)) 
			.append(PIPE).append(IND_NAT_PJ)
			.append(PIPE).append(IND_ATIV) 
			.append(PIPE);
		
		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} //toString
	
} //R0000