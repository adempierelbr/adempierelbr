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
package org.adempierelbr.sped.ecd.beans;

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo Bloco 0 Registro 0180 - IDENTIFICAÇÃO DO
 * RELACIONAMENTO COM O PARTICIPANTE Ocorrência - 1:N Somente preencher este
 * registro quando o participante se enquadrar em uma das hipóteses indicadas no
 * campo 02 - COD_REL.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0180.java, 16/11/2010, 15:18:00, mgrigioni
 */
public class R0180 extends RegSped {
	
	private String 			COD_REL;
	private Timestamp 		DT_INI_REL;
	private Timestamp 		DT_FIN_REL;

	/**
	 * Constructor
	 * @param COD_REL
	 * @param DT_INI_REL
	 * @param DT_FIN_REL
	 */
	public R0180(String COD_REL, Timestamp DT_INI_REL, Timestamp DT_FIN_REL) {
		super();
		this.DT_FIN_REL 	= DT_FIN_REL;
		this.DT_INI_REL 	= DT_INI_REL;
		this.COD_REL 		= COD_REL;
	}	//R0180

	/**
	 * Formata o Bloco 0 Registro 0180
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_REL)
            .append(PIPE).append(TextUtil.timeToString(DT_INI_REL, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN_REL, "ddMMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}

} 	//R0180