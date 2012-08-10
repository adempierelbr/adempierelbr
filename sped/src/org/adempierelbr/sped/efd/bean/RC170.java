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
 * REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC170.java, 07/02/2011, 09:39:00, mgrigioni
 */
public class RC170 extends RegSped implements Comparable<Object> {

	private String NUM_ITEM;
	private String COD_ITEM;
	private String DESCR_COMPL;
	private String QTD;
	private String UNID;
	private String VL_ITEM;
	private String VL_DESC;
	private String IND_MOV;
	private String CST_ICMS;
	private String CFOP;
	private String COD_NAT;
	private String VL_BC_ICMS;
	private String ALIQ_ICMS;
	private String VL_ICMS;
	private String VL_BC_ICMS_ST;
	private String ALIQ_ST;
	private String VL_ICMS_ST;
	private String IND_APUR;
	private String CST_IPI;
	private String COD_ENQ;
	private String CST_PIS;
	private String CST_COFINS;
	private String COD_CTA;
	private String VL_BC_IPI;
	private String ALIQ_IPI;
	private String VL_IPI;
	private String VL_BC_PIS;
	private String ALIQ_PIS_PER;
	private String QUANT_BC_PIS;
	private String ALIQ_PIS;
	private String VL_PIS;
	private String VL_BC_COFINS;
	private String ALIQ_COFINS_PER;
	private String QUANT_BC_COFINS;
	private String ALIQ_COFINS;
	private String VL_COFINS;
	
	/**
	 * Constructor
	 */
	public RC170 ()
	{	
		super();

	}//RC170
	

	public String getNUM_ITEM() {
		return NUM_ITEM;
	}


	public void setNUM_ITEM(String nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}


	public String getCOD_ITEM() {
		return COD_ITEM;
	}


	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}


	public String getDESCR_COMPL() {
		return DESCR_COMPL;
	}


	public void setDESCR_COMPL(String dESCR_COMPL) {
		DESCR_COMPL = dESCR_COMPL;
	}


	public String getQTD() {
		return QTD;
	}


	public void setQTD(String qTD) {
		QTD = qTD;
	}


	public String getUNID() {
		return UNID;
	}


	public void setUNID(String uNID) {
		UNID = uNID;
	}


	public String getVL_ITEM() {
		return VL_ITEM;
	}


	public void setVL_ITEM(String vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}


	public String getVL_DESC() {
		return VL_DESC;
	}


	public void setVL_DESC(String vL_DESC) {
		VL_DESC = vL_DESC;
	}


	public String getIND_MOV() {
		return IND_MOV;
	}


	public void setIND_MOV(String iND_MOV) {
		IND_MOV = iND_MOV;
	}


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


	public String getCOD_NAT() {
		return COD_NAT;
	}


	public void setCOD_NAT(String cOD_NAT) {
		COD_NAT = cOD_NAT;
	}


	public String getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}


	public void setVL_BC_ICMS(String vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}


	public String getALIQ_ICMS() {
		return ALIQ_ICMS;
	}


	public void setALIQ_ICMS(String aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
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


	public String getALIQ_ST() {
		return ALIQ_ST;
	}


	public void setALIQ_ST(String aLIQ_ST) {
		ALIQ_ST = aLIQ_ST;
	}


	public String getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}


	public void setVL_ICMS_ST(String vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}


	public String getIND_APUR() {
		return IND_APUR;
	}


	public void setIND_APUR(String iND_APUR) {
		IND_APUR = iND_APUR;
	}


	public String getCST_IPI() {
		return CST_IPI;
	}


	public void setCST_IPI(String cST_IPI) {
		CST_IPI = cST_IPI;
	}


	public String getCOD_ENQ() {
		return COD_ENQ;
	}


	public void setCOD_ENQ(String cOD_ENQ) {
		COD_ENQ = cOD_ENQ;
	}


	public String getCST_PIS() {
		return CST_PIS;
	}


	public void setCST_PIS(String cST_PIS) {
		CST_PIS = cST_PIS;
	}


	public String getCST_COFINS() {
		return CST_COFINS;
	}


	public void setCST_COFINS(String cST_COFINS) {
		CST_COFINS = cST_COFINS;
	}


	public String getCOD_CTA() {
		return COD_CTA;
	}


	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}


	public String getVL_BC_IPI() {
		return VL_BC_IPI;
	}


	public void setVL_BC_IPI(String vL_BC_IPI) {
		VL_BC_IPI = vL_BC_IPI;
	}


	public String getALIQ_IPI() {
		return ALIQ_IPI;
	}


	public void setALIQ_IPI(String aLIQ_IPI) {
		ALIQ_IPI = aLIQ_IPI;
	}


	public String getVL_IPI() {
		return VL_IPI;
	}


	public void setVL_IPI(String vL_IPI) {
		VL_IPI = vL_IPI;
	}


	public String getVL_BC_PIS() {
		return VL_BC_PIS;
	}


	public void setVL_BC_PIS(String vL_BC_PIS) {
		VL_BC_PIS = vL_BC_PIS;
	}


	public String getALIQ_PIS_PER() {
		return ALIQ_PIS_PER;
	}


	public void setALIQ_PIS_PER(String aLIQ_PIS_PER) {
		ALIQ_PIS_PER = aLIQ_PIS_PER;
	}


	public String getQUANT_BC_PIS() {
		return QUANT_BC_PIS;
	}


	public void setQUANT_BC_PIS(String qUANT_BC_PIS) {
		QUANT_BC_PIS = qUANT_BC_PIS;
	}


	public String getALIQ_PIS() {
		return ALIQ_PIS;
	}


	public void setALIQ_PIS(String aLIQ_PIS) {
		ALIQ_PIS = aLIQ_PIS;
	}


	public String getVL_PIS() {
		return VL_PIS;
	}


	public void setVL_PIS(String vL_PIS) {
		VL_PIS = vL_PIS;
	}


	public String getVL_BC_COFINS() {
		return VL_BC_COFINS;
	}


	public void setVL_BC_COFINS(String vL_BC_COFINS) {
		VL_BC_COFINS = vL_BC_COFINS;
	}


	public String getALIQ_COFINS_PER() {
		return ALIQ_COFINS_PER;
	}


	public void setALIQ_COFINS_PER(String aLIQ_COFINS_PER) {
		ALIQ_COFINS_PER = aLIQ_COFINS_PER;
	}


	public String getQUANT_BC_COFINS() {
		return QUANT_BC_COFINS;
	}


	public void setQUANT_BC_COFINS(String qUANT_BC_COFINS) {
		QUANT_BC_COFINS = qUANT_BC_COFINS;
	}


	public String getALIQ_COFINS() {
		return ALIQ_COFINS;
	}


	public void setALIQ_COFINS(String aLIQ_COFINS) {
		ALIQ_COFINS = aLIQ_COFINS;
	}


	public String getVL_COFINS() {
		return VL_COFINS;
	}


	public void setVL_COFINS(String vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}


	/**
	 * Formata o Bloco C Registro 170
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(NUM_ITEM)
            .append(PIPE).append(COD_ITEM)
            .append(PIPE).append(DESCR_COMPL)
            .append(PIPE).append(QTD)
            .append(PIPE).append(UNID)
            .append(PIPE).append(VL_ITEM)
            .append(PIPE).append(VL_DESC)
            .append(PIPE).append(IND_MOV)
            .append(PIPE).append(CST_ICMS)
            .append(PIPE).append(CFOP)
            .append(PIPE).append(COD_NAT)
            .append(PIPE).append(VL_BC_ICMS)
            .append(PIPE).append(ALIQ_ICMS)
            .append(PIPE).append(VL_ICMS)
            .append(PIPE).append(VL_BC_ICMS_ST)
            .append(PIPE).append(ALIQ_ST)
            .append(PIPE).append(VL_ICMS_ST)
            .append(PIPE).append(IND_APUR)
            .append(PIPE).append(CST_IPI)
            .append(PIPE).append(COD_ENQ)
            .append(PIPE).append(VL_BC_IPI)
            .append(PIPE).append(ALIQ_IPI)
            .append(PIPE).append(VL_IPI)
            .append(PIPE).append(CST_PIS)
            .append(PIPE).append(VL_BC_PIS)
            .append(PIPE).append(ALIQ_PIS_PER)
            .append(PIPE).append(QUANT_BC_PIS)
            .append(PIPE).append(ALIQ_PIS)
            .append(PIPE).append(VL_PIS)
            .append(PIPE).append(CST_COFINS)
            .append(PIPE).append(VL_BC_COFINS)
            .append(PIPE).append(ALIQ_COFINS_PER)
            .append(PIPE).append(QUANT_BC_COFINS)
            .append(PIPE).append(ALIQ_COFINS)
            .append(PIPE).append(VL_COFINS)
            .append(PIPE).append(COD_CTA)
            .append(PIPE);

		return format.append(EOL).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RC170 other = (RC170) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
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
		else if (o1 instanceof RC170
				&& o2 instanceof RC170)
		{
			RC170 e1 = (RC170) o1;
			RC170 e2 = (RC170) o2;
			//
			if (e1.NUM_ITEM == null)						//	Depois
				return 1;
			else if (e2.NUM_ITEM == null)					// 	Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM);	//	Comparar
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
	
}//RC170