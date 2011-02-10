/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.adempierelbr.sped.efd.beans;

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0000.java, 03/02/2011, 16:44:00, mgrigioni
 */
public class R0000 extends RegSped {
	
	private String COD_VER;
	private String COD_FIN;
	private Timestamp DT_INI;
	private Timestamp DT_FIN;
	private String NOME;
	private String CNPJ;
	private String CPF;
	private String UF;
	private String IE;
	private String COD_MUN;
	private String IM;
	private String SUFRAMA;
	private String IND_PERFIL;
	private String IND_ATIV;

	/**
	 * Constructor
	 * 
	 * @param COD_VER
	 * @param COD_FIN
	 * @param DT_INI
	 * @param DT_FIN
	 * @param NOME
	 * @param CNPJ
	 * @param CPF
	 * @param UF
	 * @param IE
	 * @param COD_MUN
	 * @param IM
	 * @param SUFRAMA
	 * @param IND_PERFIL
	 * @param IND_ATIV
	 */
	public R0000(String COD_VER, String COD_FIN, Timestamp DT_INI,
			Timestamp DT_FIN, String NOME, String CNPJ, String CPF, String UF,
			String IE, String COD_MUN, String IM, String SUFRAMA, String IND_PERFIL,
			String IND_ATIV)
	{
		super();
		this.COD_VER 	= COD_VER;
		this.COD_FIN 	= COD_FIN;
		this.DT_INI 	= DT_INI;
		this.DT_FIN 	= DT_FIN;
		this.NOME 		= NOME;
		this.CNPJ 		= CNPJ;
		this.CPF 		= CPF;
		this.UF 		= UF;
		this.IE 		= IE;
		this.COD_MUN 	= COD_MUN;
		this.IM 		= IM;
		this.SUFRAMA 	= SUFRAMA;
		this.IND_PERFIL = IND_PERFIL;
		this.IND_ATIV 	= IND_ATIV;
	} 	//R0000

	/**
	 * Formata o Bloco 0 Registro 000
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
				   (PIPE).append(REG) 
		    .append(PIPE).append(COD_VER)
		    .append(PIPE).append(COD_FIN)
		    .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
		    .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME), 0, 255))
		    .append(PIPE).append(TextUtil.toNumeric(CNPJ))
		    .append(PIPE).append(TextUtil.toNumeric(CPF))
		    .append(PIPE).append(TextUtil.checkSize(UF, 0, 2))
		    .append(PIPE).append(TextUtil.toNumeric(IE))
		    .append(PIPE).append(TextUtil.toNumeric(COD_MUN))
		    .append(PIPE).append(TextUtil.toNumeric(IM))
		    .append(PIPE).append(TextUtil.toNumeric(SUFRAMA)) 
		    .append(PIPE).append(IND_PERFIL)
		    .append(PIPE).append(IND_ATIV) 
		    .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R0000