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
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C120: OPERAÇÕES DE IMPORTAÇÃO (CÓDIGO 01).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC120.java, 07/02/2011, 08:02:00, mgrigioni
 */
public class RC120 extends RegSped {

	private String COD_DOC_IMP;
	private String NUM_DOC_IMP;
	private String NUM_ACDRAW;
	
	private BigDecimal PIS_IMP;
	private BigDecimal COFINS_IMP;

	/**
	 * Constructor
	 * @param COD_DOC_IMP
	 * @param NUM_DOC_IMP
	 * @param PIS_IMP
	 * @param COFINS_IMP
	 * @param NUM_ACDRAW
	 */
	public RC120(String COD_DOC_IMP, String NUM_DOC_IMP, BigDecimal PIS_IMP,
			BigDecimal COFINS_IMP, String NUM_ACDRAW) {
		super();
		this.COD_DOC_IMP = COD_DOC_IMP;
		this.NUM_DOC_IMP = NUM_DOC_IMP;
		this.PIS_IMP = PIS_IMP;
		this.COFINS_IMP = COFINS_IMP;
		this.NUM_ACDRAW = NUM_ACDRAW;
	} //RC120
	
	public void addValues(RC120 otherC120){
		this.PIS_IMP     = getPIS_IMP().add(otherC120.getPIS_IMP());
		this.COFINS_IMP  = getCOFINS_IMP().add(otherC120.getCOFINS_IMP());
	}
	
	private BigDecimal getPIS_IMP() {
		return PIS_IMP ==  null ? Env.ZERO : PIS_IMP;
	}

	private BigDecimal getCOFINS_IMP() {
		return COFINS_IMP == null ? Env.ZERO : COFINS_IMP;
	}
	
	/**
	 * Formata o Bloco C Registro 120
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(COD_DOC_IMP, 1))
            .append(PIPE).append(TextUtil.checkSize(NUM_DOC_IMP, 10))
            .append(PIPE).append(TextUtil.toNumeric(PIS_IMP))
            .append(PIPE).append(TextUtil.toNumeric(COFINS_IMP))
            .append(PIPE).append(TextUtil.checkSize(NUM_ACDRAW,20))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ACDRAW == null) ? 0 : NUM_ACDRAW.hashCode());
		result = prime * result
				+ ((NUM_DOC_IMP == null) ? 0 : NUM_DOC_IMP.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RC120 other = (RC120) obj;
		if (NUM_ACDRAW == null) {
			if (other.NUM_ACDRAW != null)
				return false;
		} else if (!NUM_ACDRAW.equals(other.NUM_ACDRAW))
			return false;
		if (NUM_DOC_IMP == null) {
			if (other.NUM_DOC_IMP != null)
				return false;
		} else if (!NUM_DOC_IMP.equals(other.NUM_DOC_IMP))
			return false;
		return true;
	}
	
} //RC120