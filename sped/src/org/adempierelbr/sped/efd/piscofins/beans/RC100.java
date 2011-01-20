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
 * REGISTRO C100: DOCUMENTO - NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), 
 * NOTA FISCAL DE PRODUTOR (CÓDIGO 04) e NF-e (CÓDIGO 55)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC010.java, 20/01/2011, 09:42:00, mgrigioni
 */
public class RC100 extends RegSped {	
	
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
		
		this.IND_OPER 	= IND_OPER;
		this.IND_EMIT 	= IND_EMIT;
		this.COD_MOD 	= COD_MOD;
		this.COD_SIT 	= COD_SIT;
		this.SER 		= SER;
		this.NUM_DOC 	= NUM_DOC;
		this.COD_PART 	= COD_PART;
		this.CHV_NFE	= CHV_NFE;
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
		//
		addCounter();
	}//	RC100
	
	/**
	 * Formata o Bloco C Registro 100
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
			+ PIPE + TextUtil.checkSize(SER, 3) 
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CHV_NFE), 44)
			+ PIPE + TextUtil.timeToString(DT_DOC, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_E_S, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255)
			+ PIPE + TextUtil.checkSize(IND_PGTO, 1)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_ABAT_NT), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_MERC), 255)
			+ PIPE + TextUtil.checkSize(IND_FRT, 1)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_FRT), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_SEG), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_OUT_DA), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS_ST), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS_ST), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_IPI), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_PIS_ST), 255)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS_ST), 255)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}	//toString

} //RC100