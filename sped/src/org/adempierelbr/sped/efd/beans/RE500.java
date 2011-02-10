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
 * REGISTRO E500: PERÍODO DE APURAÇÃO DO IPI.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE500.java, 09/02/2011, 09:41:00, mgrigioni
 */
public class RE500 extends RegSped {
	
	private final String IND_APUR = "0"; //Mensal
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RE500(Timestamp DT_INI, Timestamp DT_FIN)
	{
		super();
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
	}	// RE500

	/**
	 * Formata o Bloco E Registro 500
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(IND_APUR)
            .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE500