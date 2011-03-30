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
 * REGISTRO E530: AJUSTES DA APURAÇÃO DO IPI
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE530.java, 21/03/2011, 16:15:00, mgrigioni
 */
public class RE530 extends RegSped {
	
	private String IND_AJ;
	private BigDecimal VL_AJ;
	private String COD_AJ;
	private String IND_DOC;
	private String NUM_DOC;
	private String DESCR_AJ;
	
	/**
	 * Constructor
	 * @param IND_AJ
	 * @param VL_AJ
	 * @param COD_AJ
	 * @param IND_DOC
	 * @param NUM_DOC
	 * @param DESCR_AJ
	 */
	public RE530(String IND_AJ, BigDecimal VL_AJ, String COD_AJ, String IND_DOC,
			String NUM_DOC, String DESCR_AJ)
	{
		super();
		this.IND_AJ = IND_AJ;
		this.VL_AJ = VL_AJ;
		this.COD_AJ = COD_AJ;
		this.IND_DOC = IND_DOC;
		this.NUM_DOC = NUM_DOC;
		this.DESCR_AJ = DESCR_AJ;
	}	// RE530

	/**
	 * Formata o Bloco E Registro 530
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(IND_AJ)
            .append(PIPE).append(TextUtil.toNumeric(VL_AJ))
            .append(PIPE).append(TextUtil.checkSize(COD_AJ, 3))
            .append(PIPE).append(IND_DOC)
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_AJ), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE530