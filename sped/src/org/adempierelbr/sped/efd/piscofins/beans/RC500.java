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
package org.adempierelbr.sped.efd.piscofins.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C500: NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06), 
 * NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29) E 
 * NOTA FISCAL CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28) – DOCUMENTOS DE ENTRADA/AQUISIÇÃO COM CRÉDITO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC500.java, 21/02/2011, 10:08:00, mgrigioni
 */
public class RC500 extends RegSped implements Comparable<Object>{	
	
	private String 		COD_PART;
	private String 		COD_MOD;
	private String 		COD_SIT;
	private String 		SER;
	private String      SUB;
	private String 		NUM_DOC;
	private String      COD_INF;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_ENT;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal 	VL_ICMS;
	private BigDecimal 	VL_PIS;
	private BigDecimal 	VL_COFINS;
	
	public RC500(String COD_PART, String COD_MOD, String COD_SIT, String SER,
			String SUB, String NUM_DOC, Timestamp DT_DOC, Timestamp DT_ENT,
			BigDecimal VL_DOC, BigDecimal VL_ICMS, String COD_INF, BigDecimal VL_PIS, 
			BigDecimal VL_COFINS)
	{		
		super();
		setCOD_MOD(COD_MOD);
		setCOD_SIT(COD_SIT);
		setSER(SER);
		this.SUB = SUB;
		setNUM_DOC(NUM_DOC);
		setCOD_PART(COD_PART);
		this.DT_DOC 	= DT_DOC;
		this.DT_ENT 	= DT_ENT;
		this.VL_DOC 	= VL_DOC;
		this.COD_INF    = COD_INF;
		this.VL_PIS 	= VL_PIS;
		this.VL_COFINS 	= VL_COFINS;
	}//	RC500
	
	public void addValues(RC500 otherC500){
		this.VL_DOC        = getVL_DOC().add(otherC500.getVL_DOC());
		this.VL_ICMS       = getVL_ICMS().add(otherC500.getVL_ICMS());
		this.VL_PIS        = getVL_PIS().add(otherC500.getVL_PIS());
		this.VL_COFINS     = getVL_COFINS().add(otherC500.getVL_COFINS());
	}
	
	private void setCOD_MOD(String COD_MOD){
				
		if (COD_MOD == null || COD_MOD.trim().isEmpty() || COD_MOD.trim().length() != 2 )
			log.severe("MODELO NF = NULL");
		else if (!(COD_MOD.equals("06") || //CONTA DE ENERGIA ELÉTRICA
				   COD_MOD.equals("28") || //CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA
				   COD_MOD.equals("29")))  //FORNECIMENTO DE GÁS
			log.severe("MODELO NF INVALIDO");
		else
			this.COD_MOD = COD_MOD;
	}
	
	private void setCOD_SIT(String COD_SIT){
		
		if (COD_SIT == null || COD_SIT.trim().isEmpty() || COD_SIT.trim().length() != 2 ){
			log.severe("SITUACAO NF = NULL");
			return;
		}
		else if (COD_SIT.equals("02") || //cancelado
				 COD_SIT.equals("03") || //cancelado extemporâneo
				 COD_SIT.equals("04") || //Nota Fiscal Eletrônica (NF-e) denegada
				 COD_SIT.equals("05")){  //numeração inutilizada
			log.finer("NF cancelada");
		}
		
		this.COD_SIT = COD_SIT;
	}
	
	private void setNUM_DOC(String NUM_DOC){
		this.NUM_DOC = TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9);
	}
	
	private void setSER(String SER){
		this.SER = TextUtil.checkSize(SER, 3);
	}
	
	private void setCOD_PART(String COD_PART){
		this.COD_PART = TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60);
	}
	
	public String getCOD_MOD(){
		return COD_MOD;
	}
	
	private BigDecimal getVL_DOC() {
		return VL_DOC == null ? Env.ZERO : VL_DOC;
	}

	private BigDecimal getVL_ICMS() {
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}

	private BigDecimal getVL_PIS() {
		return VL_PIS == null ? Env.ZERO : VL_PIS;
	}

	private BigDecimal getVL_COFINS() {
		return VL_COFINS == null ? Env.ZERO : VL_COFINS;
	}

	/**
	 * Formata o Bloco C Registro 500
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_PART)
            .append(PIPE).append(COD_MOD) 
            .append(PIPE).append(COD_SIT)
            .append(PIPE).append(SER)
            .append(PIPE).append(TextUtil.checkSize(SUB, 3))
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_ENT, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_INF, 6))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
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
		RC500 other = (RC500) obj;
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
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
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
		else if (o1 instanceof RC500
				&& o2 instanceof RC500)
		{
			RC500 e1 = (RC500) o1;
			RC500 e2 = (RC500) o2;
			//
			if (e1.DT_ENT == null)						//	Depois
				return 1;
			else if (e2.DT_ENT == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_ENT.compareTo(e2.DT_ENT);
			
			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC);	//	Comparar
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
		
} //RC500