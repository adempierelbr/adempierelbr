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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO G130 – IDENTIFICAÇÃO DO DOCUMENTO FISCAL
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG130.java, 24/03/2011, 10:51:00, mgrigioni
 */
public class RG130 extends RegSped
{

	String IND_EMIT;
	String COD_PART;
	String COD_MOD;
	String SERIE;
	String NUM_DOC;
	String CHV_NFE_CTE;
	
	Timestamp DT_DOC;
	
	/**
	 * Constructor
	 * @param IND_EMIT
	 * @param COD_PART
	 * @param COD_MOD
	 * @param SERIE
	 * @param NUM_DOC
	 * @param CHV_NFE_CTE
	 * @param DT_DOC
	 */
	public RG130(String IND_EMIT, String COD_PART, String COD_MOD, String SERIE,
			String NUM_DOC, String CHV_NFE_CTE, Timestamp DT_DOC) 
	{
		super();
		this.IND_EMIT = IND_EMIT;
		this.COD_PART = COD_PART;
		this.COD_MOD = COD_MOD;
		this.SERIE = SERIE;
		this.NUM_DOC = NUM_DOC;
		this.CHV_NFE_CTE = CHV_NFE_CTE;
		this.DT_DOC = DT_DOC;
	} //RG130

	/**
	 * Formata o Bloco G Registro 130
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(IND_EMIT)
	        .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60))
	        .append(PIPE).append(COD_MOD)
	        .append(PIPE).append(TextUtil.checkSize(SERIE, 3))
	        .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9))
	        .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CHV_NFE_CTE), 44))
	        .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RG130