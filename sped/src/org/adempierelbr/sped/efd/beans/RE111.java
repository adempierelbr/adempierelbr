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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO E111: AJUSTE/BENEFÍCIO/INCENTIVO DA APURAÇÃO DO ICMS.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE111.java, 21/03/2011, 14:46:00, mgrigioni
 */
public class RE111 extends RegSped {
	
	private String COD_AJ_APUR;
	private String DESCR_COMPL_AJ;
	private BigDecimal VL_AJ_APUR;

	/**
	 * Constructor
	 * @param COD_AJ_APUR
	 * @param DESCR_COMPL_AJ
	 * @param VL_AJ_APUR
	 */
	public RE111(String COD_AJ_APUR, String DESCR_COMPL_AJ, BigDecimal VL_AJ_APUR)
	{
		super();
		this.COD_AJ_APUR = COD_AJ_APUR;
		this.DESCR_COMPL_AJ = DESCR_COMPL_AJ;
		this.VL_AJ_APUR = VL_AJ_APUR;
	}	// RE111
	
	/**
	 * Formata o Bloco E Registro 111
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_AJ_APUR,8))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_COMPL_AJ), 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ_APUR))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE111