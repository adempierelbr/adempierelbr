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
 * REGISTRO 1100: REGISTRO DE INFORMAÇÕES SOBRE EXPORTAÇÃO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1100.java, 14/02/2011, 12:29:00, mgrigioni
 */
public class R1100 extends RegSped implements Comparable<Object>{

	private final String NAT_EXP = "0";
	
	private String IND_DOC;
	private String NRO_DE;
	private String NRO_RE;
	private String CHC_EMB;
	private String TP_CHC;
	private String PAIS;
	
	private Timestamp DT_DE;
	private Timestamp DT_RE;
	private Timestamp DT_CHC;
	private Timestamp DT_AVB;

	/**
	 * Constructor
	 * @param IND_DOC
	 * @param NRO_DE
	 * @param DT_DE
	 * @param NRO_RE
	 * @param DT_RE
	 * @param CHC_EMB
	 * @param DT_CHC
	 * @param DT_AVB
	 * @param TP_CHC
	 * @param PAIS
	 */
	public R1100(String IND_DOC, String NRO_DE, Timestamp DT_DE, String NRO_RE,
			Timestamp DT_RE, String CHC_EMB, Timestamp DT_CHC, Timestamp DT_AVB,
			String TP_CHC, String PAIS) {
		super();
		this.IND_DOC = IND_DOC;
		this.NRO_DE = NRO_DE;
		this.DT_DE = DT_DE;
		this.NRO_RE = NRO_RE;
		this.DT_RE = DT_RE;
		this.CHC_EMB = CHC_EMB;
		this.DT_CHC = DT_CHC;
		this.DT_AVB = DT_AVB;
		this.TP_CHC = TP_CHC;
		this.PAIS = PAIS;
	} //R1100
	
	/**
	 * Formata o Bloco 1 Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(IND_DOC, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NRO_DE),11))
            .append(PIPE).append(TextUtil.timeToString(DT_DE,"ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(NAT_EXP, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(NRO_RE),12))
            .append(PIPE).append(TextUtil.timeToString(DT_RE,"ddMMyyyy",false))
            .append(PIPE).append(TextUtil.checkSize(CHC_EMB,18))
            .append(PIPE).append(TextUtil.timeToString(DT_CHC,"ddMMyyyy",false))
            .append(PIPE).append(TextUtil.timeToString(DT_AVB,"ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(TP_CHC, 2))
            .append(PIPE).append(TextUtil.lPad(PAIS,3))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((NRO_DE == null) ? 0 : NRO_DE.hashCode());
		result = prime * result + ((NRO_RE == null) ? 0 : NRO_RE.hashCode());
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
		R1100 other = (R1100) obj;
		if (NRO_DE == null) {
			if (other.NRO_DE != null)
				return false;
		} else if (!NRO_DE.equals(other.NRO_DE))
			return false;
		if (NRO_RE == null) {
			if (other.NRO_RE != null)
				return false;
		} else if (!NRO_RE.equals(other.NRO_RE))
			return false;
		return true;
	}

	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof R1100
				&& o2 instanceof R1100)
		{
			R1100 e1 = (R1100) o1;
			R1100 e2 = (R1100) o2;
			//
			if (e1.DT_DE == null)						//	Depois
				return 1;
			else if (e2.DT_DE == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_DE.compareTo(e2.DT_DE);
			
			if (compare == 0)
				return e1.NRO_DE.compareTo(e2.NRO_DE);	//	Comparar
			else
				return compare;
		}
		else
			return 0;									//
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
	
} //R1100