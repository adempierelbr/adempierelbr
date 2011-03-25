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

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO 0110: REGIMES DE APURAÇÃO DA CONTRIBUIÇÃO SOCIAL E DE APROPRIAÇÃO DE CRÉDITO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0110.java, 18/01/2011, 16:00:00, mgrigioni
 */
public class R0110 extends RegSped {
	
	private String COD_INC_TRIB;
	private String IND_APRO_CRED;
	private String COD_TIPO_CONT;

	/**
	 * Constructor
	 * @param COD_INC_TRIB
	 * @param IND_APRO_CRED
	 * @param COD_TIPO_CONT
	 */
	public R0110(String COD_INC_TRIB, String IND_APRO_CRED, String COD_TIPO_CONT)
	{
		super();
		this.COD_INC_TRIB = COD_INC_TRIB;
		this.IND_APRO_CRED = IND_APRO_CRED;
		this.COD_TIPO_CONT = COD_TIPO_CONT;
	}	//	R0110

	/**
	 * Formata o Bloco 0 Registro 110
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_INC_TRIB)
            .append(PIPE).append(IND_APRO_CRED)
            .append(PIPE).append(COD_TIPO_CONT)
            .append(PIPE).append(EOL);

		return format.toString();
	} // toString
		
} // R0110