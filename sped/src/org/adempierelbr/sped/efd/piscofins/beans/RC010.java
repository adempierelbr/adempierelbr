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
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C010: IDENTIFICAÇÃO DO ESTABELECIMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC010.java, 20/01/2011, 09:09:00, mgrigioni
 */
public class RC010 extends RegSped {

	private String CNPJ;
	private String IND_ESCRI;
	
	/**
	 * Constructor
	 * @param CNPJ
	 * @param IND_ESCRI
	 */
	public RC010(String CNPJ, String IND_ESCRI) 
	{
		super();
		this.CNPJ = CNPJ;
		this.IND_ESCRI = IND_ESCRI;
	}	//RC010

	/**
	 * Formata o Bloco C Registro 010
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(CNPJ), 14))
            .append(PIPE).append(TextUtil.checkSize(IND_ESCRI, 1))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
			
} //RC010