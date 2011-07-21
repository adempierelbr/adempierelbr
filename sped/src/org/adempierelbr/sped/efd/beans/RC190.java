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

import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC190.java, 08/02/2011, 10:18:00, mgrigioni
 */
public class RC190 extends RegSped implements Comparable<Object> {

	private String CST_ICMS;
	private String CFOP;
	private String COD_OBS;
	
	private BigDecimal ALIQ_ICMS;
	private BigDecimal VL_OPR;
	private BigDecimal VL_BC_ICMS;
	private BigDecimal VL_ICMS;
	private BigDecimal VL_BC_ICMS_ST;
	private BigDecimal VL_ICMS_ST;
	private BigDecimal VL_RED_BC;
	private BigDecimal VL_IPI;
	
	private String NUM_DOC;
	private Timestamp DT_DOC;
	
	/**
	 * Constructor
	 * @param CST_ICMS
	 * @param CFOP
	 * @param ALIQ_ICMS
	 * @param VL_OPR
	 * @param VL_BC_ICMS
	 * @param VL_ICMS
	 * @param VL_BC_ICMS_ST
	 * @param VL_ICMS_ST
	 * @param VL_RED_BC
	 * @param VL_IPI
	 * @param COD_OBS
	 * @param NUM_DOC
	 * @param DT_DOC
	 */
	public RC190 (String CST_ICMS, String CFOP, BigDecimal ALIQ_ICMS, BigDecimal VL_OPR,
			BigDecimal VL_BC_ICMS, BigDecimal VL_ICMS, BigDecimal VL_BC_ICMS_ST, 
			BigDecimal VL_ICMS_ST, BigDecimal VL_RED_BC, BigDecimal VL_IPI, String COD_OBS,
			String NUM_DOC, Timestamp DT_DOC)
	{	
		super();
		this.CST_ICMS = CST_ICMS;
		this.CFOP = CFOP;
		this.ALIQ_ICMS = ALIQ_ICMS;
		this.VL_OPR = VL_OPR;
		this.VL_BC_ICMS =  VL_BC_ICMS;
		this.VL_ICMS = VL_ICMS;
		this.VL_BC_ICMS_ST = VL_BC_ICMS_ST;
		this.VL_ICMS_ST = VL_ICMS_ST;
		this.VL_RED_BC = VL_RED_BC;
		this.VL_IPI = VL_IPI;
		this.COD_OBS = COD_OBS;
		setNUM_DOC(NUM_DOC);
		this.DT_DOC = DT_DOC;
	}//RC190
	
	public void addValues(RC190 otherC190){
		this.VL_OPR        = getVL_OPR().add(otherC190.getVL_OPR());
		this.VL_BC_ICMS    = getVL_BC_ICMS().add(otherC190.getVL_BC_ICMS());
		this.VL_ICMS       = getVL_ICMS().add(otherC190.getVL_ICMS());
		this.VL_BC_ICMS_ST = getVL_BC_ICMS_ST().add(otherC190.getVL_BC_ICMS_ST());
		this.VL_ICMS_ST    = getVL_ICMS_ST().add(otherC190.getVL_ICMS_ST());
		this.VL_RED_BC     = getVL_RED_BC().add(otherC190.getVL_RED_BC());
		this.VL_IPI        = getVL_IPI().add(otherC190.getVL_IPI());
	}
	
	private void setNUM_DOC(String NUM_DOC){
		this.NUM_DOC = TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9);
	}
	
	public String getCFOP(){
		return this.CFOP;
	}
	
	public String getNUM_DOC(){
		return NUM_DOC;
	}
	
	public Timestamp getDT_DOC(){
		return DT_DOC;
	}
	
	protected Object get_Value(String attribute){
		
		if (attribute == null || attribute.trim().isEmpty())
			return "";
		
		if (attribute.equals("isSOTrx")){
		
			if (CFOP.startsWith("1") ||
				CFOP.startsWith("2") ||
				CFOP.startsWith("3")){
				return false;
			}
			else{
				return true;
			}
		}
		
		if (attribute.equals("isSameRegion")){
			
			if (CFOP.startsWith("1") || CFOP.startsWith("5")){
				return true;
			}
			else{
				return false;
			}
		}
		
		if (attribute.equals("isReversal")){
			
			String CFOP = this.CFOP;
			if (CFOP.length() == 4){
				CFOP = CFOP.subSequence(0, 1) + "." + CFOP.substring(1);
				MLBRCFOP cfop = MLBRCFOP.getCFOP(Env.getCtx(), CFOP, null);
				
				if (cfop.getDescription() != null && 
					(cfop.getDescription().toUpperCase()).indexOf("DEVOL") != -1)
					return true;		
			}
			
			return false;
		}
		
		if (attribute.equals("VL_ICMS")){
			return getVL_ICMS();
		}
		
		if (attribute.equals("VL_BC_ICMS")){
			return getVL_BC_ICMS();
		}
		
		if (attribute.equals("VL_ICMS_ST")){
			return getVL_ICMS_ST();
		}
		
		if (attribute.equals("VL_BC_ICMS_ST")){
			return getVL_BC_ICMS_ST();
		}
		
		if (attribute.equals("NUM_DOC")){
			return getNUM_DOC();
		}
		
		if (attribute.equals("DT_DOC")){
			return getDT_DOC();
		}
		
		return "";
	}
	
	private BigDecimal getVL_OPR() {
		return VL_OPR ==  null ? Env.ZERO : VL_OPR;
	}

	private BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS == null ? Env.ZERO : VL_BC_ICMS;
	}

	private BigDecimal getVL_ICMS() {
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}

	private BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST == null ? Env.ZERO : VL_BC_ICMS_ST;
	}

	private BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST == null ? Env.ZERO : VL_ICMS_ST;
	}

	private BigDecimal getVL_RED_BC() {
		return VL_RED_BC == null ? Env.ZERO : VL_RED_BC;
	}

	private BigDecimal getVL_IPI() {
		return VL_IPI == null ? Env.ZERO : VL_IPI;
	}

	/**
	 * Formata o Bloco C Registro 190
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(CST_ICMS, 3,3))
            .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(CFOP),4))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_OPR, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_RED_BC, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_IPI, 2))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_OBS), 6))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((ALIQ_ICMS == null) ? 0 : ALIQ_ICMS.hashCode());
		result = prime * result + ((CFOP == null) ? 0 : CFOP.hashCode());
		result = prime * result
				+ ((CST_ICMS == null) ? 0 : CST_ICMS.hashCode());
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