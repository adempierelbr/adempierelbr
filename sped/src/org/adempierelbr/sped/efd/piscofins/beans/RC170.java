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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO C170: COMPLEMENTO DO DOCUMENTO - ITENS DO DOCUMENTO (CÓDIGOS 01, 1B, 04 e 55)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC170.java, 20/01/2011, 15:13:00, mgrigioni
 */
public class RC170 extends RegSped {

	private String          	NUM_ITEM;
	private String              COD_ITEM;
	private String              DESCR_COMPL;
	private String              UNID;
	private String              IND_MOV;
	private String				CST_ICMS;
	private String				CFOP;
	private String              COD_NAT;
	private String              IND_APUR;
	private String              CST_IPI;
	private String              COD_ENQ;
	private String				CST_PIS;
	private String				CST_COFINS;	
	private String              COD_CTA;

	private BigDecimal          QTD;
	private BigDecimal          VL_ITEM;
	private BigDecimal          VL_DESC;
	private BigDecimal          VL_BC_ICMS;
	private BigDecimal          ALIQ_ICMS;
	private BigDecimal          VL_ICMS;
	private BigDecimal          VL_BC_ICMS_ST;
	private BigDecimal          ALIQ_ST;
	private BigDecimal          VL_ICMS_ST;
	private BigDecimal          VL_BC_IPI;
	private BigDecimal          ALIQ_IPI;
	private BigDecimal          VL_IPI;
	private BigDecimal          VL_BC_PIS;
	private BigDecimal          ALIQ_PIS_PER;
	private BigDecimal          QUANT_BC_PIS;
	private BigDecimal          ALIQ_PIS;
	private BigDecimal          VL_PIS;
	private BigDecimal          VL_BC_COFINS;
	private BigDecimal          ALIQ_COFINS_PER;
	private BigDecimal          QUANT_BC_COFINS;
	private BigDecimal          ALIQ_COFINS;
	private BigDecimal          VL_COFINS;
	
	/**
	 * Constructor
	 * @param NUM_DOC
	 * @param NUM_ITEM
	 * @param COD_ITEM
	 * @param DESCR_COMPL
	 * @param QTD
	 * @param UNID
	 * @param VL_ITEM
	 * @param VL_DESC
	 * @param IND_MOV
	 * @param CST_ICMS
	 * @param CFOP
	 * @param COD_NAT
	 * @param VL_BC_ICMS
	 * @param ALIQ_ICMS
	 * @param VL_ICMS
	 * @param VL_BC_ICMS_ST
	 * @param ALIQ_ST
	 * @param VL_ICMS_ST
	 * @param IND_APUR
	 * @param CST_IPI
	 * @param COD_ENQ
	 * @param VL_BC_IPI
	 * @param ALIQ_IPI
	 * @param VL_IPI
	 * @param CST_PIS
	 * @param VL_BC_PIS
	 * @param ALIQ_PIS
	 * @param QUANT_BC_PIS
	 * @param ALIQ_PIS_PER
	 * @param VL_PIS
	 * @param CST_COFINS
	 * @param VL_BC_COFINS
	 * @param ALIQ_COFINS_PER
	 * @param QUANT_BC_COFINS
	 * @param ALIQ_COFINS
	 * @param VL_COFINS
	 * @param COD_CTA
	 */
	public RC170 (String NUM_DOC, String NUM_ITEM, String COD_ITEM, String DESCR_COMPL, BigDecimal QTD,
			       String UNID, BigDecimal VL_ITEM, BigDecimal VL_DESC, String IND_MOV, 
			       String CST_ICMS, String CFOP, String COD_NAT, BigDecimal VL_BC_ICMS, 
			       BigDecimal ALIQ_ICMS, BigDecimal VL_ICMS, BigDecimal VL_BC_ICMS_ST, BigDecimal ALIQ_ST,
			       BigDecimal VL_ICMS_ST, String IND_APUR, String CST_IPI, String COD_ENQ, BigDecimal VL_BC_IPI,
			       BigDecimal ALIQ_IPI, BigDecimal VL_IPI, String CST_PIS, BigDecimal VL_BC_PIS, BigDecimal ALIQ_PIS,
			       BigDecimal QUANT_BC_PIS, BigDecimal ALIQ_PIS_PER, BigDecimal VL_PIS, String CST_COFINS,
			       BigDecimal VL_BC_COFINS, BigDecimal ALIQ_COFINS_PER, BigDecimal QUANT_BC_COFINS, BigDecimal ALIQ_COFINS,
			       BigDecimal VL_COFINS, String COD_CTA)
	{	

	
		this.NUM_ITEM = NUM_ITEM;
		this.COD_ITEM = COD_ITEM;
		this.DESCR_COMPL = DESCR_COMPL;
		this.QTD = QTD;
		this.UNID = UNID;
		this.VL_ITEM = VL_ITEM;
		this.VL_DESC = VL_DESC;
		this.IND_MOV = IND_MOV;
		this.CST_ICMS = CST_ICMS;
		this.CFOP = CFOP;
		this.COD_NAT = COD_NAT;
		this.VL_BC_ICMS = VL_BC_ICMS;
		this.ALIQ_ICMS = ALIQ_ICMS;
		this.VL_ICMS = VL_ICMS;
		this.VL_BC_ICMS_ST = VL_BC_ICMS_ST;
		this.ALIQ_ST = ALIQ_ST;
		this.VL_ICMS_ST = VL_ICMS_ST;
		this.IND_APUR = IND_APUR;
		this.CST_IPI = CST_IPI;
		this.COD_ENQ = COD_ENQ;
		this.VL_BC_IPI = VL_BC_IPI;
		this.ALIQ_IPI = ALIQ_IPI;
		this.VL_IPI	= VL_IPI;
		this.CST_PIS = CST_PIS;
		this.VL_BC_PIS = VL_BC_PIS;
		this.ALIQ_PIS_PER = ALIQ_PIS_PER;
		this.QUANT_BC_PIS = QUANT_BC_PIS;
		this.ALIQ_PIS = ALIQ_PIS;
		this.VL_PIS = VL_PIS;
		this.CST_COFINS = CST_COFINS;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.ALIQ_COFINS_PER = ALIQ_COFINS_PER;
		this.QUANT_BC_COFINS = QUANT_BC_COFINS;
		this.ALIQ_COFINS = ALIQ_COFINS;
		this.VL_COFINS = VL_COFINS;
		this.COD_CTA = COD_CTA;
		//
		addCounter();
	}//RC170
	
	/**
	 * Formata o Bloco C Registro 170
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.lPad(NUM_ITEM, 3)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR_COMPL), 255)
			+ PIPE + TextUtil.toNumeric(QTD, 5)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(UNID), 6)
			+ PIPE + TextUtil.toNumeric(VL_ITEM, 2)
			+ PIPE + TextUtil.toNumeric(VL_DESC, 2)
			+ PIPE + TextUtil.checkSize(IND_MOV, 1,1)
			+ PIPE + TextUtil.checkSize(CST_ICMS, 3,3)
			+ PIPE + TextUtil.toNumeric(CFOP)
			+ PIPE + TextUtil.checkSize(COD_NAT, 10)
			+ PIPE + TextUtil.toNumeric(VL_BC_ICMS, 2)
			+ PIPE + TextUtil.toNumeric(ALIQ_ICMS, 2)
			+ PIPE + TextUtil.toNumeric(VL_ICMS, 2)
			+ PIPE + TextUtil.toNumeric(VL_BC_ICMS_ST, 2)
			+ PIPE + TextUtil.toNumeric(ALIQ_ST, 2)
			+ PIPE + TextUtil.toNumeric(VL_ICMS_ST, 2)
			+ PIPE + TextUtil.checkSize(IND_APUR, 1,1)
			+ PIPE + TextUtil.checkSize(CST_IPI, 2)
			+ PIPE + TextUtil.checkSize(COD_ENQ, 3)
			+ PIPE + TextUtil.toNumeric(VL_BC_IPI, 2)
			+ PIPE + TextUtil.toNumeric(ALIQ_IPI, 2)
			+ PIPE + TextUtil.toNumeric(VL_IPI, 2)
			+ PIPE + TextUtil.checkSize(CST_PIS, 2)
			+ PIPE + TextUtil.toNumeric(VL_BC_PIS, 2)
			+ PIPE + TextUtil.toNumeric(ALIQ_PIS_PER, 2)
			+ PIPE + TextUtil.toNumeric(QUANT_BC_PIS, 3)
			+ PIPE + TextUtil.toNumeric(ALIQ_PIS, 4)
			+ PIPE + TextUtil.toNumeric(VL_PIS, 2)
			+ PIPE + TextUtil.checkSize(CST_COFINS, 2)
			+ PIPE + TextUtil.toNumeric(VL_BC_COFINS, 2)
			+ PIPE + TextUtil.toNumeric(ALIQ_COFINS_PER, 2)
			+ PIPE + TextUtil.toNumeric(QUANT_BC_COFINS, 3)
			+ PIPE + TextUtil.toNumeric(ALIQ_COFINS, 4)
			+ PIPE + TextUtil.toNumeric(VL_COFINS, 2)
			+ PIPE + TextUtil.checkSize(COD_CTA, 255)
			+ PIPE;
			
		return TextUtil.removeEOL(format) + EOL;
	}//toString
	
}//RC170