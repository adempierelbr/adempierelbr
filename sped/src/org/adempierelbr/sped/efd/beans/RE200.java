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
package org.adempierelbr.sped.efd.beans;

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO E200: PERÍODO DA APURAÇÃO DO ICMS - SUBSTITUIÇÃO TRIBUTÁRIA.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE200.java, 14/06/2011, 12:13:00, mgrigioni
 */
public class RE200 extends RegSped {
	
	private String UF;
	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * @param UF
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RE200(String UF, Timestamp DT_INI, Timestamp DT_FIN)
	{
		super();
		this.UF = UF;
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
	}	// RE200

	/**
	 * Formata o Bloco E Registro 200
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(UF, 2))
            .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE200