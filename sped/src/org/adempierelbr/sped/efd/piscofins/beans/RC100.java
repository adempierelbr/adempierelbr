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
 * REGISTRO C100: DOCUMENTO - NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), 
 * NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC010.java, 04/02/2011, 15:45:00, mgrigioni
 */
public class RC100 extends RegSped implements Comparable<Object>{	
	
	private String 		IND_OPER;
	private String 		IND_EMIT;
	private String 		COD_PART;
	private String 		COD_MOD;
	private String 		COD_SIT;
	private String 		SER;
	private String 		NUM_DOC;
	private String 		CHV_NFE;
	private String 		IND_PGTO;
	private String 		IND_FRT;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_E_S;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal	VL_DESC;
	private BigDecimal 	VL_ABAT_NT;
	private BigDecimal 	VL_MERC;
	private BigDecimal 	VL_FRT;
	private BigDecimal 	VL_SEG;
	private BigDecimal 	VL_OUT_DA;
	private BigDecimal 	VL_BC_ICMS;
	private BigDecimal 	VL_ICMS;
	private BigDecimal 	VL_BC_ICMS_ST;
	private BigDecimal 	VL_ICMS_ST;
	private BigDecimal 	VL_IPI;
	private BigDecimal 	VL_COFINS;
	private BigDecimal 	VL_PIS_ST;
	private BigDecimal 	VL_COFINS_ST;
	private BigDecimal 	VL_PIS;

	private boolean isCancelled = false; //Documento Cancelado
	
	/**
	 * Constructor
	 * 
	 * @param IND_OPER
	 * @param IND_EMIT
	 * @param COD_PART
	 * @param COD_MOD
	 * @param COD_SIT
	 * @param SER
	 * @param NUM_DOC
	 * @param CHV_NFE
	 * @param DT_DOC
	 * @param DT_E_S
	 * @param VL_DOC
	 * @param IND_PGTO
	 * @param VL_DESC
	 * @param VL_ABAT_NT
	 * @param VL_MERC
	 * @param IND_FRT
	 * @param VL_FRT
	 * @param VL_SEG
	 * @param VL_OUT_DA
	 * @param VL_BC_ICMS_ST
	 * @param VL_ICMS
	 * @param VL_BC_ICMS
	 * @param VL_IPI
	 * @param VL_ICMS_ST
	 * @param VL_COFINS
	 * @param VL_PIS_ST
	 * @param VL_COFINS_ST
	 * @param VL_PIS
	 */
	public RC100(String IND_OPER, String IND_EMIT, String COD_PART,
			String COD_MOD, String COD_SIT, String SER, String NUM_DOC,
			String CHV_NFE, Timestamp DT_DOC, Timestamp DT_E_S,
			BigDecimal VL_DOC, String IND_PGTO, BigDecimal VL_DESC,
			BigDecimal VL_ABAT_NT, BigDecimal VL_MERC, String IND_FRT,
			BigDecimal VL_FRT, BigDecimal VL_SEG, BigDecimal VL_OUT_DA,
			BigDecimal VL_BC_ICMS, BigDecimal VL_ICMS,
			BigDecimal VL_BC_ICMS_ST, BigDecimal VL_ICMS_ST, BigDecimal VL_IPI,
			BigDecimal VL_PIS, BigDecimal VL_COFINS,
			BigDecimal VL_PIS_ST, BigDecimal VL_COFINS_ST)
	{		
		super();
		this.IND_OPER 	= IND_OPER;
		this.IND_EMIT 	= IND_EMIT;
		setCOD_MOD(COD_MOD);
		setCOD_SIT(COD_SIT);
		setSER(SER);
		setNUM_DOC(NUM_DOC);
		setCOD_PART(COD_PART); //definido para comparação e verificado na toString()
		this.CHV_NFE	= CHV_NFE;
		
		if (!isCancelled){
			this.DT_DOC 	= DT_DOC;
			this.DT_E_S 	= DT_E_S;
			this.VL_DOC 	= VL_DOC;
			this.IND_PGTO 	= IND_PGTO;
			this.VL_DESC 	= VL_DESC;
			this.VL_ABAT_NT = VL_ABAT_NT;
			this.VL_MERC 	= VL_MERC;
			this.IND_FRT 	= IND_FRT;
			this.VL_FRT 	= VL_FRT;
			this.VL_SEG 	= VL_SEG;
			this.VL_OUT_DA 	= VL_OUT_DA;
			this.VL_BC_ICMS = VL_BC_ICMS;
			this.VL_ICMS 	= VL_ICMS;
			this.VL_BC_ICMS_ST 	= VL_BC_ICMS_ST;
			this.VL_IPI 	= VL_IPI;
			this.VL_COFINS 	= VL_COFINS;
			this.VL_PIS_ST 	= VL_PIS_ST;
			this.VL_COFINS_ST 	= VL_COFINS_ST;
			this.VL_ICMS_ST = VL_ICMS_ST;
			this.VL_PIS 	= VL_PIS;
		}
	}//	RC100
	
	public void addValues(RC100 otherC100){
		this.VL_DOC        = getVL_DOC().add(otherC100.getVL_DOC());
		this.VL_DESC       = getVL_DESC().add(otherC100.getVL_DESC());
		this.VL_ABAT_NT    = getVL_ABAT_NT().add(otherC100.getVL_ABAT_NT());
		this.VL_MERC       = getVL_MERC().add(otherC100.getVL_MERC());
		this.VL_FRT        = getVL_FRT().add(otherC100.getVL_FRT());
		this.VL_SEG        = getVL_SEG().add(otherC100.getVL_SEG());
		this.VL_OUT_DA     = getVL_OUT_DA().add(otherC100.getVL_OUT_DA());
		this.VL_BC_ICMS    = getVL_BC_ICMS().add(otherC100.getVL_BC_ICMS());
		this.VL_ICMS       = getVL_ICMS().add(otherC100.getVL_ICMS());
		this.VL_BC_ICMS_ST = getVL_BC_ICMS_ST().add(otherC100.getVL_BC_ICMS_ST());
		this.VL_ICMS_ST    = getVL_ICMS_ST().add(otherC100.getVL_ICMS_ST());
		this.VL_IPI        = getVL_IPI().add(otherC100.getVL_IPI());
		this.VL_COFINS     = getVL_COFINS().add(otherC100.getVL_COFINS());
		this.VL_PIS_ST     = getVL_PIS_ST().add(otherC100.getVL_PIS_ST());
		this.VL_COFINS_ST  = getVL_COFINS_ST().add(otherC100.getVL_COFINS_ST());
		this.VL_PIS        = getVL_PIS().add(otherC100.getVL_PIS());
	}
	
	private void setCOD_MOD(String COD_MOD){
				
		if (COD_MOD == null || COD_MOD.trim().isEmpty() || COD_MOD.trim().length() != 2 )
			log.severe("MODELO NF = NULL");
		else if (!(COD_MOD.equals("01") || //Nota Fiscal
				   COD_MOD.equals("1B") || //Nota Fiscal Avulsa
				   COD_MOD.equals("04") || //Nota Fiscal Produtor
				   COD_MOD.equals("55")))  //NFe
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
	
	public String getCOD_MOD(){
		return COD_MOD;
	}
	
	private BigDecimal getVL_DOC() {
		return VL_DOC == null ? Env.ZERO : VL_DOC;
	}

	private BigDecimal getVL_DESC() {
		return VL_DESC == null ? Env.ZERO : VL_DESC;
	}

	private BigDecimal getVL_ABAT_NT() {
		return VL_ABAT_NT == null ? Env.ZERO : VL_ABAT_NT;
	}

	private BigDecimal getVL_MERC() {
		return VL_MERC == null ? Env.ZERO : VL_MERC;
	}

	private BigDecimal getVL_FRT() {
		return VL_FRT == null ? Env.ZERO : VL_FRT;
	}

	private BigDecimal getVL_SEG() {
		return VL_SEG == null ? Env.ZERO : VL_SEG;
	}

	private BigDecimal getVL_OUT_DA() {
		return VL_OUT_DA == null ? Env.ZERO : VL_OUT_DA;
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

	private BigDecimal getVL_IPI() {
		return VL_IPI == null ? Env.ZERO : VL_IPI;
	}

	private BigDecimal getVL_COFINS() {
		return VL_COFINS == null ? Env.ZERO : VL_COFINS;
	}

	private BigDecimal getVL_PIS_ST() {
		return VL_PIS_ST == null ? Env.ZERO : VL_PIS_ST;
	}

	private BigDecimal getVL_COFINS_ST() {
		return VL_COFINS_ST == null ? Env.ZERO : VL_COFINS_ST;
	}

	private BigDecimal getVL_PIS() {
		return VL_PIS == null ? Env.ZERO : VL_PIS;
	}

	/**
	 * Formata o Bloco C Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(IND_OPER, 1, 1))
            .append(PIPE).append(TextUtil.checkSize(IND_EMIT, 1))
            .append(PIPE).append(isCancelled ? "" : COD_PART) //verifica se está cancelado
            .append(PIPE).append(COD_MOD) 
            .append(PIPE).append(COD_SIT)
            .append(PIPE).append(SER)
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append((IND_EMIT.equals("1") || isCancelled) ? "" : TextUtil.checkSize(TextUtil.toNumeric(CHV_NFE), 44))
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_E_S, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(IND_PGTO, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ABAT_NT), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_MERC), 255))
            .append(PIPE).append(TextUtil.checkSize(IND_FRT, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_FRT), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_SEG), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_OUT_DA), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS_ST), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS_ST), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_IPI), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS_ST), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS_ST), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

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
		else if (o1 instanceof RC100
				&& o2 instanceof RC100)
		{
			RC100 e1 = (RC100) o1;
			RC100 e2 = (RC100) o2;
			//
			if (e1.DT_E_S == null)						//	Depois
				return 1;
			else if (e2.DT_E_S == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_E_S.compareTo(e2.DT_E_S);
			
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
		
} //RC100