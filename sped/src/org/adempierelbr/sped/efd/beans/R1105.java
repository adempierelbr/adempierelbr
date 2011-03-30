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
 * REGISTRO 1105: DOCUMENTOS FISCAIS DE EXPORTAÇÃO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1105.java, 14/02/2011, 12:48:00, mgrigioni
 */
public class R1105 extends RegSped {

	String COD_MOD;
	String SERIE;
	String NUM_DOC;
	String CHV_NFE;
	String COD_ITEM;
	
	Timestamp DT_DOC;
	
	/**
	 * Constructor
	 * @param COD_MOD
	 * @param SERIE
	 * @param NUM_DOC
	 * @param CHV_NFE
	 * @param DT_DOC
	 * @param COD_ITEM
	 */
	public R1105(String COD_MOD, String SERIE, String NUM_DOC, String CHV_NFE,
			Timestamp DT_DOC, String COD_ITEM) {
		super();
		this.COD_MOD = COD_MOD;
		this.SERIE = SERIE;
		this.NUM_DOC = NUM_DOC;
		this.CHV_NFE = CHV_NFE;
		this.DT_DOC = DT_DOC;
		this.COD_ITEM = COD_ITEM;
	} //R1105
	
	/**
	 * Formata o Bloco 1 Registro 105
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_MOD,2))
            .append(PIPE).append(TextUtil.checkSize(SERIE,2))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CHV_NFE), 44))
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy"))
            .append(PIPE).append(COD_ITEM)
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_ITEM == null) ? 0 : COD_ITEM.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
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
		R1105 other = (R1105) obj;
		if (COD_ITEM == null) {
			if (other.COD_ITEM != null)
				return false;
		} else if (!COD_ITEM.equals(other.COD_ITEM))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		return true;
	}
	
} //R1105