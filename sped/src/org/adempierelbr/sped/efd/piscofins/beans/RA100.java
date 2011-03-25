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
 * REGISTRO A100: IDENTIFICAÇÃO DO ESTABELECIMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RA100.java, 19/01/2011, 11:56:00, mgrigioni
 */
public class RA100 extends RegSped implements Comparable<Object>{	
	
	private String 		IND_OPER;
	private String 		IND_EMIT;
	private String 		COD_PART;
	private String 		COD_SIT;
	private String 		SER;
	private String      SUB;
	private String 		NUM_DOC;
	private String 		CHV_NFSE;
	private String 		IND_PGTO;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_EXE_SERV;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal	VL_DESC;
	private BigDecimal 	VL_BC_PIS;
	private BigDecimal 	VL_PIS;
	private BigDecimal 	VL_BC_COFINS;
	private BigDecimal 	VL_COFINS;
	private BigDecimal  VL_PIS_RET;
	private BigDecimal  VL_COFINS_RET;
	private BigDecimal  VL_ISS;
	
	private boolean isCancelled = false;

	/**
	 * Constructor
	 * @param IND_OPER
	 * @param IND_EMIT
	 * @param COD_PART
	 * @param COD_SIT
	 * @param SER
	 * @param SUB
	 * @param NUM_DOC
	 * @param CHV_NFSE
	 * @param DT_DOC
	 * @param DT_EXE_SERV
	 * @param VL_DOC
	 * @param IND_PGTO
	 * @param VL_DESC
	 * @param VL_BC_PIS
	 * @param VL_PIS
	 * @param VL_BC_COFINS
	 * @param VL_COFINS
	 * @param VL_PIS_RET
	 * @param VL_COFINS_RET
	 * @param VL_ISS
	 */
	public RA100(String IND_OPER, String IND_EMIT, String COD_PART,
			String COD_SIT, String SER, String SUB, String NUM_DOC,
			String CHV_NFSE, Timestamp DT_DOC, Timestamp DT_EXE_SERV,
			BigDecimal VL_DOC, String IND_PGTO, BigDecimal VL_DESC,
			BigDecimal VL_BC_PIS, BigDecimal VL_PIS, BigDecimal VL_BC_COFINS, 
			BigDecimal VL_COFINS, BigDecimal VL_PIS_RET, BigDecimal VL_COFINS_RET,
			BigDecimal VL_ISS)
	{		
		super();
		this.IND_OPER 	= IND_OPER;
		this.IND_EMIT 	= IND_EMIT;
		setCOD_SIT(COD_SIT);
		setSER(SER);
		setNUM_DOC(NUM_DOC);
		setCOD_PART(COD_PART);
		if (!isCancelled){
			this.CHV_NFSE      = CHV_NFSE;
			this.DT_DOC 	   = DT_DOC;
			this.DT_EXE_SERV   = DT_EXE_SERV;
			this.VL_DOC 	   = VL_DOC;
			this.IND_PGTO 	   = IND_PGTO;
			this.VL_DESC 	   = VL_DESC;
			this.VL_BC_PIS     = VL_BC_PIS;
			this.VL_PIS 	   = VL_PIS;
			this.VL_BC_COFINS  = VL_BC_COFINS;
			this.VL_COFINS     = VL_COFINS;
			this.VL_PIS_RET    = VL_PIS_RET;
			this.VL_COFINS_RET = VL_COFINS_RET;
			this.VL_ISS        = VL_ISS;
		}
	}//	RA100
	
	public void addValues(RA100 otherA100){
		this.VL_DOC        = getVL_DOC().add(otherA100.getVL_DOC());
		this.VL_DESC       = getVL_DESC().add(otherA100.getVL_DESC());
		this.VL_BC_PIS     = getVL_BC_PIS().add(otherA100.getVL_BC_PIS());
		this.VL_PIS        = getVL_PIS().add(otherA100.getVL_PIS());
		this.VL_BC_COFINS  = getVL_BC_COFINS().add(otherA100.getVL_BC_COFINS());
		this.VL_COFINS     = getVL_COFINS().add(otherA100.getVL_COFINS());
		this.VL_PIS_RET    = getVL_PIS_RET().add(otherA100.getVL_PIS_RET());
		this.VL_COFINS_RET = getVL_COFINS_RET().add(otherA100.getVL_COFINS_RET());
		this.VL_ISS        = getVL_ISS().add(otherA100.getVL_ISS());
	}
	
	private void setCOD_SIT(String COD_SIT){
		
		if (COD_SIT == null || COD_SIT.trim().isEmpty() || COD_SIT.trim().length() != 2 ){
			log.severe("SITUACAO NF = NULL");
			return;
		}
		else if (COD_SIT.equals("02")){ //cancelado
			log.finer("NF cancelada");
			isCancelled = true;
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
	
	public String getIND_EMIT(){
		return IND_EMIT;
	}
	
	private BigDecimal getVL_DOC() {
		return VL_DOC == null ? Env.ZERO : VL_DOC;
	}

	private BigDecimal getVL_DESC() {
		return VL_DESC == null ? Env.ZERO : VL_DESC;
	}
	
	private BigDecimal getVL_BC_PIS() {
		return VL_BC_PIS == null ? Env.ZERO : VL_BC_PIS;
	}
	
	private BigDecimal getVL_PIS() {
		return VL_PIS == null ? Env.ZERO : VL_PIS;
	}
	
	private BigDecimal getVL_BC_COFINS() {
		return VL_BC_COFINS == null ? Env.ZERO : VL_BC_COFINS;
	}
	
	private BigDecimal getVL_COFINS() {
		return VL_COFINS == null ? Env.ZERO : VL_COFINS;
	}
	
	private BigDecimal getVL_PIS_RET() {
		return VL_PIS_RET == null ? Env.ZERO : VL_PIS_RET;
	}
	
	private BigDecimal getVL_COFINS_RET() {
		return VL_COFINS_RET == null ? Env.ZERO : VL_COFINS_RET;
	}

	private BigDecimal getVL_ISS() {
		return VL_ISS == null ? Env.ZERO : VL_ISS;
	}

	/**
	 * Formata o Bloco A Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(IND_OPER, 1, 1))
            .append(PIPE).append(TextUtil.checkSize(IND_EMIT, 1))
            .append(PIPE).append(isCancelled ? "" : COD_PART)
            .append(PIPE).append(COD_SIT)
            .append(PIPE).append(SER)
            .append(PIPE).append(TextUtil.checkSize(SUB, 3))
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CHV_NFSE), 60))
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_EXE_SERV, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(IND_PGTO, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_COFINS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS_RET), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS_RET), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ISS), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result
				+ ((IND_OPER == null) ? 0 : IND_OPER.hashCode());
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
		RA100 other = (RA100) obj;
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
		if (IND_OPER == null) {
			if (other.IND_OPER != null)
				return false;
		} else if (!IND_OPER.equals(other.IND_OPER))
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
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof RA100
				&& o2 instanceof RA100)
		{
			RA100 e1 = (RA100) o1;
			RA100 e2 = (RA100) o2;
			//
			if (e1.DT_EXE_SERV == null)						//	Depois
				return 1;
			else if (e2.DT_EXE_SERV == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_EXE_SERV.compareTo(e2.DT_EXE_SERV);
			
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
	
} //RA100