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

/**
 * REGISTRO D100: AQUISIÇÃO DE SERVIÇOS DE TRANSPORTE - 
 * NOTA FISCAL DE SERVIÇO DE TRANSPORTE (CÓDIGO 07) E CONHECIMENTOS DE TRANSPORTE RODOVIÁRIO 
 * DE CARGAS (CÓDIGO 08), CONHECIMENTO DE TRANSPORTE DE CARGAS AVULSO (CÓDIGO 8B), 
 * AQUAVIÁRIO DE CARGAS (CÓDIGO 09), AÉREO (CÓDIGO 10), FERROVIÁRIO DE CARGAS (CÓDIGO 11), 
 * MULTIMODAL DE CARGAS (CÓDIGO 26), NOTA FISCAL DE TRANSPORTE FERROVIÁRIO DE CARGA (CÓDIGO 27) E 
 * CONHECIMENTO DE TRANSPORTE ELETRÔNICO – CT-e (CÓDIGO 57).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD100.java, 31/01/2011, 10:25:00, mgrigioni
 */
public class RD100 extends RegSped {
	
	private String IND_OPER;
	private String IND_EMIT;
	private String COD_PART;
	private String COD_MOD;
	private String COD_SIT;
	private String SER;
	private String SUB;
	private String NUM_DOC;
	private String CHV_CTE;
	private String TP_CT_e;
	private String CHV_CTE_REF;
	private String IND_FRT;
	private String COD_INF;
	private String COD_CTA;
	
	private Timestamp DT_DOC;
	private Timestamp DT_A_P;
	
	private BigDecimal VL_DOC;
	private BigDecimal VL_DESC;
	private BigDecimal VL_SERV;
	private BigDecimal VL_BC_ICMS;
	private BigDecimal VL_ICMS;
	private BigDecimal VL_NT;
	
	/**
	 * Constructor
	 * @param IND_OPER
	 * @param IND_EMIT
	 * @param COD_PART
	 * @param COD_MOD
	 * @param COD_SIT
	 * @param SER
	 * @param SUB
	 * @param NUM_DOC
	 * @param CHV_CTE
	 * @param TP_CT_e
	 * @param CHV_CTE_REF
	 * @param IND_FRT
	 * @param COD_INF
	 * @param COD_CTA
	 * @param DT_DOC
	 * @param DT_A_P
	 * @param VL_DOC
	 * @param VL_DESC
	 * @param VL_SERV
	 * @param VL_BC_ICMS
	 * @param VL_ICMS
	 * @param VL_NT
	 */
	public RD100(String IND_OPER, String IND_EMIT, String COD_PART, String COD_MOD, String COD_SIT,
			String SER, String SUB, String NUM_DOC, String CHV_CTE, String TP_CT_e, String CHV_CTE_REF,
			String IND_FRT, String COD_INF, String COD_CTA, Timestamp DT_DOC, Timestamp DT_A_P,
			BigDecimal VL_DOC, BigDecimal VL_DESC, BigDecimal VL_SERV, BigDecimal VL_BC_ICMS, 
			BigDecimal VL_ICMS, BigDecimal VL_NT) 
	{
		this.IND_OPER = IND_OPER;
		this.IND_EMIT = IND_EMIT;
		this.COD_PART = COD_PART;
		this.COD_MOD = COD_MOD;
		this.COD_SIT = COD_SIT;
		this.SER = SER;
		this.SUB = SUB;
		this.NUM_DOC = NUM_DOC;
		this.CHV_CTE = CHV_CTE;
		this.TP_CT_e = TP_CT_e;
		this.CHV_CTE_REF = CHV_CTE_REF;
		this.IND_FRT = IND_FRT;
		this.COD_INF = COD_INF;
		this.COD_CTA = COD_CTA;
		this.DT_DOC = DT_DOC;
		this.DT_A_P = DT_A_P;
		this.VL_DOC = VL_DOC;
		this.VL_DESC = VL_DESC;
		this.VL_SERV = VL_SERV;
		this.VL_BC_ICMS = VL_BC_ICMS;
		this.VL_ICMS = VL_ICMS;
		this.VL_NT = VL_NT;
		//
		addCounter();
	}	//RD100

	/**
	 * Formata o Bloco D Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
				+ PIPE + TextUtil.checkSize(IND_OPER, 1, 1)
				+ PIPE + TextUtil.checkSize(IND_EMIT, 1)
				+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60)
				+ PIPE + TextUtil.checkSize(COD_MOD, 2)
				+ PIPE + TextUtil.toNumeric(COD_SIT)
				+ PIPE + TextUtil.checkSize(SER, 4) 
				+ PIPE + TextUtil.checkSize(SUB, 3) 
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CHV_CTE), 44)
				+ PIPE + TextUtil.timeToString(DT_DOC, "ddMMyyyy")
				+ PIPE + TextUtil.timeToString(DT_A_P, "ddMMyyyy")
				+ PIPE + TextUtil.checkSize(TP_CT_e, 1)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CHV_CTE_REF), 44)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255)
				+ PIPE + TextUtil.checkSize(IND_FRT, 1)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_SERV), 255)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255)
				+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_NT), 255)
				+ PIPE + TextUtil.checkSize(COD_INF, 6)
                + PIPE + TextUtil.checkSize(COD_CTA, 60)
				+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RD100