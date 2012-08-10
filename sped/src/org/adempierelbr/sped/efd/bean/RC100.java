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

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO C100 - NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version 04/02/2011, 15:45:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version 07/08/2012, 14:00, pablobp4
 */
public class RC100 extends RegSped {

	private String IND_OPER;
	private String IND_EMIT;
	private String COD_PART;
	private String COD_MOD;
	private String COD_SIT;
	private String SER;
	private String NUM_DOC;
	private String CHV_NFE;
	private Timestamp DT_DOC;
	private Timestamp DT_E_S;
	private BigDecimal VL_DOC;
	private String IND_PGTO;
	private BigDecimal VL_DESC;
	private BigDecimal VL_ABAT_NT;
	private BigDecimal VL_MERC;
	private String IND_FRT;
	private BigDecimal VL_FRT;
	private BigDecimal VL_SEG;
	private BigDecimal VL_OUT_DA;
	private BigDecimal VL_BC_ICMS;
	private BigDecimal VL_ICMS;
	private BigDecimal VL_BC_ICMS_ST;
	private BigDecimal VL_ICMS_ST;
	private BigDecimal VL_IPI;
	private BigDecimal VL_PIS;
	private BigDecimal VL_COFINS;
	private BigDecimal VL_PIS_ST;
	private BigDecimal VL_COFINS_ST;

	@XMLFieldProperties(needsValidation = true, id = "RC120")
	private ArrayList<RC120> rC120 = new ArrayList<RC120>();

	@XMLFieldProperties(needsValidation = true, id = "RC130")
	private ArrayList<RC130> rC130 = new ArrayList<RC130>();

	@XMLFieldProperties(needsValidation = true, id = "RC140")
	private RC140 rC140;

	@XMLFieldProperties(needsValidation = true, id = "RC170")
	private ArrayList<RC170> rC170 = new ArrayList<RC170>();

	@XMLFieldProperties(needsValidation = true, id = "RC190")
	private ArrayList<RC190> rC190 = new ArrayList<RC190>();

	@XMLFieldProperties(needsValidation = true, id = "RC195")
	private ArrayList<RC195> rC195 = new ArrayList<RC195>();

	/**
	 * Constructor
	 */
	public RC100() {
		super();
	}

	public String getIND_OPER() {
		return IND_OPER;
	}

	public void setIND_OPER(String iND_OPER) {
		IND_OPER = iND_OPER;
	}

	public String getIND_EMIT() {
		return IND_EMIT;
	}

	public void setIND_EMIT(String iND_EMIT) {
		IND_EMIT = iND_EMIT;
	}

	public String getCOD_PART() {
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART) {
		COD_PART = cOD_PART;
	}

	public String getCOD_MOD() {
		return COD_MOD;
	}

	public void setCOD_MOD(String cOD_MOD) {
		COD_MOD = cOD_MOD;
	}

	public String getCOD_SIT() {
		return COD_SIT;
	}

	public void setCOD_SIT(String cOD_SIT) {
		COD_SIT = cOD_SIT;
	}

	public String getSER() {
		return SER;
	}

	public void setSER(String sER) {
		SER = sER;
	}

	public String getNUM_DOC() {
		return NUM_DOC;
	}

	public void setNUM_DOC(String nUM_DOC) {
		NUM_DOC = nUM_DOC;
	}

	public String getCHV_NFE() {
		return CHV_NFE;
	}

	public void setCHV_NFE(String cHV_NFE) {
		CHV_NFE = cHV_NFE;
	}

	public Timestamp getDT_DOC() {
		return DT_DOC;
	}

	public void setDT_DOC(Timestamp dT_DOC) {
		DT_DOC = dT_DOC;
	}

	public Timestamp getDT_E_S() {
		return DT_E_S;
	}

	public void setDT_E_S(Timestamp dT_E_S) {
		DT_E_S = dT_E_S;
	}

	public BigDecimal getVL_DOC() {
		return VL_DOC;
	}

	public void setVL_DOC(BigDecimal vL_DOC) {
		VL_DOC = vL_DOC;
	}

	public String getIND_PGTO() {
		return IND_PGTO;
	}

	public void setIND_PGTO(String iND_PGTO) {
		IND_PGTO = iND_PGTO;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public BigDecimal getVL_ABAT_NT() {
		return VL_ABAT_NT;
	}

	public void setVL_ABAT_NT(BigDecimal vL_ABAT_NT) {
		VL_ABAT_NT = vL_ABAT_NT;
	}

	public BigDecimal getVL_MERC() {
		return VL_MERC;
	}

	public void setVL_MERC(BigDecimal vL_MERC) {
		VL_MERC = vL_MERC;
	}

	public String getIND_FRT() {
		return IND_FRT;
	}

	public void setIND_FRT(String iND_FRT) {
		IND_FRT = iND_FRT;
	}

	public BigDecimal getVL_FRT() {
		return VL_FRT;
	}

	public void setVL_FRT(BigDecimal vL_FRT) {
		VL_FRT = vL_FRT;
	}

	public BigDecimal getVL_SEG() {
		return VL_SEG;
	}

	public void setVL_SEG(BigDecimal vL_SEG) {
		VL_SEG = vL_SEG;
	}

	public BigDecimal getVL_OUT_DA() {
		return VL_OUT_DA;
	}

	public void setVL_OUT_DA(BigDecimal vL_OUT_DA) {
		VL_OUT_DA = vL_OUT_DA;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public BigDecimal getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public BigDecimal getVL_PIS_ST() {
		return VL_PIS_ST;
	}

	public void setVL_PIS_ST(BigDecimal vL_PIS_ST) {
		VL_PIS_ST = vL_PIS_ST;
	}

	public BigDecimal getVL_COFINS_ST() {
		return VL_COFINS_ST;
	}

	public void setVL_COFINS_ST(BigDecimal vL_COFINS_ST) {
		VL_COFINS_ST = vL_COFINS_ST;
	}

	public ArrayList<RC120> getrC120() {
		return rC120;
	}

	public void setrC120(ArrayList<RC120> rC120) {
		this.rC120 = rC120;
	}

	public ArrayList<RC130> getrC130() {
		return rC130;
	}

	public void setrC130(ArrayList<RC130> rC130) {
		this.rC130 = rC130;
	}

	public RC140 getrC140() {
		return rC140;
	}

	public void setrC140(RC140 rC140) {
		this.rC140 = rC140;
	}

	public ArrayList<RC170> getrC170() {
		return rC170;
	}

	public void setrC170(ArrayList<RC170> rC170) {
		this.rC170 = rC170;
	}

	public ArrayList<RC190> getrC190() {
		return rC190;
	}

	public void setrC190(ArrayList<RC190> rC190) {
		this.rC190 = rC190;
	}

	public ArrayList<RC195> getrC195() {
		return rC195;
	}

	public void setrC195(ArrayList<RC195> rC195) {
		this.rC195 = rC195;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((CHV_NFE == null) ? 0 : CHV_NFE.hashCode());
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
		result = prime * result + ((SER == null) ? 0 : SER.hashCode());
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
		RC100 other = (RC100) obj;
		if (CHV_NFE == null) {
			if (other.CHV_NFE != null)
				return false;
		} else if (!CHV_NFE.equals(other.CHV_NFE))
			return false;
		if (COD_MOD == null) {
			if (other.COD_MOD != null)
				return false;
		} else if (!COD_MOD.equals(other.COD_MOD))
			return false;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		if (COD_SIT == null) {
			if (other.COD_SIT != null)
				return false;
		} else if (!COD_SIT.equals(other.COD_SIT))
			return false;
		if (IND_EMIT == null) {
			if (other.IND_EMIT != null)
				return false;
		} else if (!IND_EMIT.equals(other.IND_EMIT))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		if (SER == null) {
			if (other.SER != null)
				return false;
		} else if (!SER.equals(other.SER))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {

		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RC100 && o2 instanceof RC100) {
			RC100 e1 = (RC100) o1;
			RC100 e2 = (RC100) o2;
			//
			if (e1.DT_E_S == null) // Depois
				return 1;
			else if (e2.DT_E_S == null) // Antes
				return -1;

			int compare = e1.DT_E_S.compareTo(e2.DT_E_S);

			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC); // Comparar
			else
				return compare;
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}

} // RC100