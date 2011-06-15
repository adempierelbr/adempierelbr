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
 * REGISTRO D100: NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E
 * CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO DE CARGAS (CÓDIGO 08),
 * CONHECIMENTOS DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B),
 * AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE
 * CARGAS (CÓDIGO 11) E MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE
 * TRANSPORTE FERROVIÁRIO DE CARGA ( CÓDIGO 27) E CONHECIMENTO DE TRANSPORTE ELETRÔNICO – CT-e (CÓDIGO 57).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD100.java, 10/02/2011, 16:03:00, mgrigioni
 */
public class RD100 extends RegSped implements Comparable<Object>{	
	
	private String 		IND_OPER;
	private String 		IND_EMIT;
	private String 		COD_PART;
	private String 		COD_MOD;
	private String 		COD_SIT;
	private String 		SER;
	private String      SUB;
	private String 		NUM_DOC;
	private String      CHV_CTE;
	private String      TP_CT_e;
	private String      CHV_CTE_REF;
	private String      IND_FRT;
	private String      COD_INF;
	private String      COD_CTA;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_A_P;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal	VL_DESC;
	private BigDecimal 	VL_SERV;
	private BigDecimal 	VL_BC_ICMS;
	private BigDecimal 	VL_ICMS;
	private BigDecimal 	VL_NT;
	
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
	 * @param NUM_DOC
	 * @param CHV_CTE
	 * @param DT_DOC
	 * @param DT_A_P
	 * @param TP_CT_e
	 * @param CHV_CTE_REF
	 * @param VL_DOC
	 * @param VL_DESC
	 * @param IND_FRT
	 * @param VL_SERV
	 * @param VL_BC_ICMS
	 * @param VL_ICMS
	 * @param VL_NT
	 * @param COD_INF
	 * @param COD_CTA
	 */
	public RD100(String UF, String IND_OPER, String IND_EMIT, String COD_PART,
			String COD_MOD, String COD_SIT, String SER, String SUB, String NUM_DOC, 
			String CHV_CTE, Timestamp DT_DOC, Timestamp DT_A_P, String TP_CT_e,
			String CHV_CTE_REF, BigDecimal VL_DOC, BigDecimal VL_DESC,
			String IND_FRT, BigDecimal VL_SERV, BigDecimal VL_BC_ICMS, 
			BigDecimal VL_ICMS, BigDecimal VL_NT, String COD_INF, String COD_CTA)
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
			this.CHV_CTE     = CHV_CTE;
			this.DT_DOC 	 = DT_DOC;
			this.DT_A_P 	 = DT_A_P;
			this.TP_CT_e     = TP_CT_e;
			this.CHV_CTE_REF = CHV_CTE_REF;
			this.VL_DOC 	 = VL_DOC;
			this.VL_DESC 	 = VL_DESC;
			this.IND_FRT     = IND_FRT;
			this.VL_SERV     = VL_SERV;
			this.VL_BC_ICMS  = VL_BC_ICMS;
			this.VL_ICMS 	 = VL_ICMS;
			this.VL_NT 	     = VL_NT;
			this.COD_INF     = COD_INF;
			this.COD_CTA     = COD_CTA;
		}
	}//	RD100
	
	public void addValues(RD100 otherD100){
		this.VL_DOC        = getVL_DOC().add(otherD100.getVL_DOC());
		this.VL_DESC       = getVL_DESC().add(otherD100.getVL_DESC());
		this.VL_SERV       = getVL_SERV().add(otherD100.getVL_SERV());
		this.VL_BC_ICMS    = getVL_BC_ICMS().add(otherD100.getVL_BC_ICMS());
		this.VL_ICMS       = getVL_ICMS().add(otherD100.getVL_ICMS());
		this.VL_NT         = getVL_NT().add(otherD100.getVL_NT());
	}
	
	private void setCOD_MOD(String COD_MOD){
				
		if (COD_MOD == null || COD_MOD.trim().isEmpty() || COD_MOD.trim().length() != 2 )
			log.severe("MODELO NF = NULL");
		else if (!(COD_MOD.equals("07") || //SERVIÇO DE TRANSPORTE
				   COD_MOD.equals("08") || //CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO
				   COD_MOD.equals("8B") || //CONHECIMENTOS DE TRANSPORTE DE CARGAS
				   COD_MOD.equals("09") || //AQUAVIÁRIO DE CARGAS
				   COD_MOD.equals("10") || //AÉREO
				   COD_MOD.equals("11") || //FERROVIÁRIO DE CARGAS
				   COD_MOD.equals("26") || //MULTIMODAL DE CARGAS
				   COD_MOD.equals("27") || //TRANSPORTE FERROVIÁRIO DE CARGA
				   COD_MOD.equals("57")))  //CT-e
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

	private BigDecimal getVL_SERV() {
		return VL_SERV == null ? Env.ZERO : VL_SERV;
	}

	private BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS == null ? Env.ZERO : VL_BC_ICMS;
	}

	private BigDecimal getVL_ICMS() {
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}

	private BigDecimal getVL_NT() {
		return VL_NT == null ? Env.ZERO : VL_NT;
	}

	/**
	 * Formata o Bloco D Registro 100
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
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CHV_CTE), 44))
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_A_P, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(TP_CT_e),1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(CHV_CTE_REF), 44))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255))
            .append(PIPE).append(TextUtil.checkSize(IND_FRT, 1))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_SERV), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_NT), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_INF, 6))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
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
		RD100 other = (RD100) obj;
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
		else if (o1 instanceof RD100
				&& o2 instanceof RD100)
		{
			RD100 e1 = (RD100) o1;
			RD100 e2 = (RD100) o2;
			//
			if (e1.DT_A_P == null)						//	Depois
				return 1;
			else if (e2.DT_A_P == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_A_P.compareTo(e2.DT_A_P);
			
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
		
} //RD100