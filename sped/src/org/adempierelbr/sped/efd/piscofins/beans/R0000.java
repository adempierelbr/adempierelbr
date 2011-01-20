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
 * @version $Id: R0000.java, 17/01/2011, 11:58:00, mgrigioni
 */
public class R0000 extends RegSped {

	private final String COD_VER = "002"; //ADE Cofis nº 34/2010
	private final String IND_SIT_ESP = "0"; //Abertura
	
	private String TIPO_ESCRIT;
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
	public R0000(Timestamp DT_INI, Timestamp DT_FIN, String TIPO_ESCRIT, 
			String NUM_REC_ANTERIOR, String NOME, String CNPJ, String UF, 
			String COD_MUN, String SUFRAMA, String IND_NAT_PJ, String IND_ATIV) {
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.TIPO_ESCRIT = TIPO_ESCRIT;
		this.NUM_REC_ANTERIOR = NUM_REC_ANTERIOR;
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.UF = UF;
		this.COD_MUN = COD_MUN;
		this.SUFRAMA = SUFRAMA;
		this.IND_NAT_PJ = IND_NAT_PJ;
		this.IND_ATIV = IND_ATIV;
		//
		addCounter();
	} //R0000

	/**
	 * Formata o Bloco 0 Registro 000
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG 
			+ PIPE + COD_VER
			+ PIPE + TIPO_ESCRIT
			+ PIPE + IND_SIT_ESP
			+ PIPE + NUM_REC_ANTERIOR
			+ PIPE + TextUtil.timeToString(DT_INI, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_FIN, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(NOME), 0, 255)
			+ PIPE + TextUtil.toNumeric(CNPJ)
			+ PIPE + TextUtil.checkSize(UF, 0, 2)
			+ PIPE + TextUtil.toNumeric(COD_MUN)
			+ PIPE + TextUtil.toNumeric(SUFRAMA) 
			+ PIPE + IND_NAT_PJ
			+ PIPE + IND_ATIV 
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	}	//toString
	
} //R0000