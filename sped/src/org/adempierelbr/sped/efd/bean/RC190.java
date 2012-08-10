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
package org.adempierelbr.sped.efd.bean;

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC190.java, 08/02/2011, 10:18:00, mgrigioni
 */
public class RC190 extends RegSped implements Comparable<Object> {

	private String CST_ICMS;
	private String CFOP;
	private String COD_OBS;
	
	private String ALIQ_ICMS;
	private String VL_OPR;
	private String VL_BC_ICMS;
	private String VL_ICMS;
	private String VL_BC_ICMS_ST;
	private String VL_ICMS_ST;
	private String VL_RED_BC;
	private String VL_IPI;
	
	private String NUM_DOC;
	private String DT_DOC;
	
	/**
	 * Constructor
	 */
	public RC190 ()
	{	
		super();
	}//RC190

	public String getCST_ICMS() {
		return CST_ICMS;
	}

	public void setCST_ICMS(String cST_ICMS) {
		CST_ICMS = cST_ICMS;
	}

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public String getCOD_OBS() {
		return COD_OBS;
	}

	public void setCOD_OBS(String cOD_OBS) {
		COD_OBS = cOD_OBS;
	}

	public String getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(String aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public String getVL_OPR() {
		return VL_OPR;
	}

	public void setVL_OPR(String vL_OPR) {
		VL_OPR = vL_OPR;
	}

	public String getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(String vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public String getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(String vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public String getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(String vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public String getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(String vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getVL_RED_BC() {
		return VL_RED_BC;
	}

	public void setVL_RED_BC(String vL_RED_BC) {
		VL_RED_BC = vL_RED_BC;
	}

	public String getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(String vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(String dT_DOC) {
		DT_DOC = dT_DOC;
	}

	/**
	 * Formata o Bloco C Registro 190
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(CST_ICMS)
            .append(PIPE).append(CFOP)
            .append(PIPE).append(ALIQ_ICMS)
            .append(PIPE).append(VL_OPR)
            .append(PIPE).append(VL_BC_ICMS)
            .append(PIPE).append(VL_ICMS)
            .append(PIPE).append(VL_BC_ICMS_ST)
            .append(PIPE).append(VL_ICMS_ST)
            .append(PIPE).append(VL_RED_BC)
            .append(PIPE).append(VL_IPI)
            .append(PIPE).append(COD_OBS)
            .append(PIPE);

		return format.append(EOL).toString();
	} // toString
	
	@Override
	public int hashCode() {
		
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((ALIQ_ICMS == null) ? 0 : ALIQ_ICMS.hashCode());
		result = prime * result + ((CFOP == null) ? 0 : CFOP.trim().hashCode());
		result = prime * result
				+ ((CST_ICMS == null) ? 0 : CST_ICMS.trim().hashCode());
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
		RC190 other = (RC190) obj;
		if (ALIQ_ICMS == null) {
			if (other.ALIQ_ICMS != null)
				return false;
		} else if (!ALIQ_ICMS.equals(other.ALIQ_ICMS))
			return false;
		if (CFOP == null) {
			if (other.CFOP != null)
				return false;
		} else if (!CFOP.equals(other.CFOP))
			return false;
		if (CST_ICMS == null) {
			if (other.CST_ICMS != null)
				return false;
		} else if (!CST_ICMS.equals(other.CST_ICMS))
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
		else if (o1 instanceof RC190
				&& o2 instanceof RC190)
		{
			RC190 e1 = (RC190) o1;
			RC190 e2 = (RC190) o2;
			//
			if (e1.CFOP == null || e1.CST_ICMS == null || e1.ALIQ_ICMS == null)	//	Depois
				return 1;
			else if (e2.CFOP == null || e2.CST_ICMS == null || e2.ALIQ_ICMS == null) // 	Antes
				return -1;
			
			int compare = e1.CFOP.compareTo(e2.CFOP);	//	Comparar
			
			if (compare == 0){
				compare = e1.CST_ICMS.compareTo(e2.CST_ICMS);
			}
			
			if (compare == 0){
				compare = e1.ALIQ_ICMS.compareTo(e2.ALIQ_ICMS);
			}
			
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
	
}//RC190