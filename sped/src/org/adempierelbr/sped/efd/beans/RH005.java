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

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO H005: TOTAIS DO INVENTÁRIO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RH005.java, 21/03/2011, 10:55:00, mgrigioni
 */
public class RH005 extends RegSped
{
	private Timestamp DT_INV;
	private BigDecimal VL_INV;

	/**
	 * Constructor
	 * @param DT_INV
	 * @param VL_INV
	 */
	public RH005(Timestamp DT_INV, BigDecimal VL_INV) 
	{
		super();
		this.DT_INV = DT_INV;
		this.VL_INV = VL_INV;
	} //RH005

	/**
	 * Formata o Bloco H Registro 005
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(TextUtil.timeToString(DT_INV, "ddMMyyyy"))
	        .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_INV), 255))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RH005