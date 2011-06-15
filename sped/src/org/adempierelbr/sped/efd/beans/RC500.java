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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C500: NOTA FISCAL/CONTA DE ENERGIA ELÉTRICA (CÓDIGO 06),
 * NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA CANALIZADA (CÓDIGO 29)
 * E NOTA FISCAL CONSUMO FORNECIMENTO DE GÁS (CÓDIGO 28).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC500.java, 10/02/2011, 14:21:00, mgrigioni
 */
public class RC500 extends RegSped implements Comparable<Object>{	
	
	private String 		IND_OPER;
	private String 		IND_EMIT;
	private String 		COD_PART;
	private String 		COD_MOD;
	private String 		COD_SIT;
	private String 		SER;
	private String      SUB;
	private String      COD_CONS;
	private String 		NUM_DOC;
	private String      COD_INF;
	private String      TP_LIGACAO;
	private String      COD_GRUPO_TENSAO;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_E_S;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal	VL_DESC;
	private BigDecimal 	VL_FORN;
	private BigDecimal 	VL_SERV_NT;
	private BigDecimal 	VL_TERC;
	private BigDecimal 	VL_DA;
	private BigDecimal 	VL_BC_ICMS;
	private BigDecimal 	VL_ICMS;
	private BigDecimal 	VL_BC_ICMS_ST;
	private BigDecimal 	VL_ICMS_ST;
	private BigDecimal 	VL_PIS;
	private BigDecimal 	VL_COFINS;
	
	private boolean isCancelled = false; //Documento Cancelado
	private String UF;
	
	/**
	 * Constructor
	 * @param UF
	 * @param IND_OPER
	 * @param IND_EMIT
	 * @param COD_PART
	 * @param COD_MOD
	 * @param COD_SIT
	 * @param SER
	 * @param SUB
	 * @param COD_CONS
	 * @param NUM_DOC
	 * @param DT_DOC
	 * @param DT_E_S
	 * @param VL_DOC
	 * @param VL_DESC
	 * @param VL_FORN
	 * @param VL_SERV_NT
	 * @param VL_TERC
	 * @param VL_DA
	 * @param VL_BC_ICMS
	 * @param VL_ICMS
	 * @param VL_BC_ICMS_ST
	 * @param VL_ICMS_ST
	 * @param COD_INF
	 * @param VL_PIS
	 * @param VL_COFINS
	 * @param TP_LIGACAO
	 * @param COD_GRUPO_TENSAO
	 */
	public RC500(String UF, String IND_OPER, String IND_EMIT, String COD_PART,
			String COD_MOD, String COD_SIT, String SER, String SUB, String COD_CONS,
			String NUM_DOC, Timestamp DT_DOC, Timestamp DT_E_S,
			BigDecimal VL_DOC, BigDecimal VL_DESC,
			BigDecimal VL_FORN, BigDecimal VL_SERV_NT, BigDecimal VL_TERC,
			BigDecimal VL_DA, BigDecimal VL_BC_ICMS, BigDecimal VL_ICMS,
			BigDecimal VL_BC_ICMS_ST, BigDecimal VL_ICMS_ST, String COD_INF,
			BigDecimal VL_PIS, BigDecimal VL_COFINS,
			String TP_LIGACAO, String COD_GRUPO_TENSAO)
	{		
		super();
		this.UF = UF;
		this.IND_OPER 	= IND_OPER;
		this.IND_EMIT 	= IND_EMIT;
		setCOD_MOD(COD_MOD);
		setCOD_SIT(COD_SIT);
		setSER(SER);
		this.SUB = SUB;
		setNUM_DOC(NUM_DOC);
		setCOD_PART(COD_PART); //definido para comparação e verificado na toString()
		
		if (!isCancelled){
			this.DT_DOC 	= DT_DOC;
			this.DT_E_S 	= DT_E_S;
			this.VL_DOC 	= VL_DOC;
			this.VL_DESC 	= VL_DESC;
			this.VL_FORN    = VL_FORN;
			this.VL_SERV_NT = VL_SERV_NT;
			this.VL_TERC 	= VL_TERC;
			this.VL_DA 	    = VL_DA;
			this.VL_BC_ICMS = VL_BC_ICMS;
			this.VL_ICMS 	= VL_ICMS;
			this.VL_BC_ICMS_ST 	= VL_BC_ICMS_ST;
			this.VL_ICMS_ST = VL_ICMS_ST;
			this.COD_INF    = COD_INF;
			this.VL_PIS 	= VL_PIS;
			this.VL_COFINS 	= VL_COFINS;
			this.TP_LIGACAO = TP_LIGACAO;
			this.COD_GRUPO_TENSAO = COD_GRUPO_TENSAO;
		}
	}//	RC500
	
	public void addValues(RC500 otherC500){
		this.VL_DOC        = getVL_DOC().add(otherC500.getVL_DOC());
		this.VL_DESC       = getVL_DESC().add(otherC500.getVL_DESC());
		this.VL_FORN       = getVL_FORN().add(otherC500.getVL_FORN());
		this.VL_SERV_NT    = getVL_SERV_NT().add(otherC500.getVL_SERV_NT());
		this.VL_TERC       = getVL_TERC().add(otherC500.getVL_TERC());
		this.VL_DA         = getVL_DA().add(otherC500.getVL_DA());
		this.VL_BC_ICMS    = getVL_BC_ICMS().add(otherC500.getVL_BC_ICMS());
		this.VL_ICMS       = getVL_ICMS().add(otherC500.getVL_ICMS());
		this.VL_BC_ICMS_ST = getVL_BC_ICMS_ST().add(otherC500.getVL_BC_ICMS_ST());
		this.VL_ICMS_ST    = getVL_ICMS_ST().add(otherC500.getVL_ICMS_ST());
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
	
	public String getUF(){
		return UF;
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

	private BigDecimal getVL_FORN() {
		return VL_FORN == null ? Env.ZERO : VL_FORN;
	}

	private BigDecimal getVL_SERV_NT() {
		return VL_SERV_NT == null ? Env.ZERO : VL_SERV_NT;
	}

	private BigDecimal getVL_TERC() {
		return VL_TERC == null ? Env.ZERO : VL_TERC;
	}

	private BigDecimal getVL_DA() {
		return VL_DA == null ? Env.ZERO : VL_DA;
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
            .append(PIPE).append(TextUtil.checkSize(IND_OPER, 1, 1))
            .append(PIPE).append(TextUtil.checkSize(IND_EMIT, 1))
            .append(PIPE).append(isCancelled ? "" : COD_PART) //verifica se está cancelado
            .append(PIPE).append(COD_MOD) 
            .append(PIPE).append(COD_SIT)
            .append(PIPE).append(SER)
            .append(PIPE).append(TextUtil.checkSize(SUB, 3))
            .append(PIPE).append(TextUtil.checkSize(COD_CONS, 2))
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_E_S, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_FORN), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_SERV_NT), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_TERC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DA), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS_ST), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS_ST), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_INF, 6))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(TP_LIGACAO), 1))
            .append(PIPE).append(TextUtil.checkSize(COD_GRUPO_TENSAO, 2))
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
		else if (o1 instanceof RC500
				&& o2 instanceof RC500)
		{
			RC500 e1 = (RC500) o1;
			RC500 e2 = (RC500) o2;
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
		
} //RC500