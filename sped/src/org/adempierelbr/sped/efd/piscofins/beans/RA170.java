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
 * REGISTRO A170: COMPLEMENTO DO DOCUMENTO - ITENS DO DOCUMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RA170.java, 19/01/2011, 17:14:00, mgrigioni
 */
public class RA170 extends RegSped {
	
	private String NUM_ITEM;
	private String COD_ITEM;
	private String DESCR_COMPL;
	private String NAT_BC_CRED;
	private String IND_ORIG_CRED;
	private String CST_PIS;
	private String CST_COFINS;
	private String COD_CTA;
	private String COD_CCUS;
	
	private BigDecimal VL_ITEM;
	private BigDecimal VL_DESC;
	private BigDecimal VL_BC_PIS;
	private BigDecimal ALIQ_PIS;
	private BigDecimal VL_PIS;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal ALIQ_COFINS;
	private BigDecimal VL_COFINS;
	
	/**
	 * Constructor
	 * @param NUM_ITEM
	 * @param COD_ITEM
	 * @param DESCR_COMPL
	 * @param NAT_BC_CRED
	 * @param IND_ORIG_CRED
	 * @param CST_PIS
	 * @param CST_COFINS
	 * @param COD_CTA
	 * @param COD_CCUS
	 * @param VL_ITEM
	 * @param VL_DESC
	 * @param VL_BC_PIS
	 * @param ALIQ_PIS
	 * @param VL_PIS
	 * @param VL_BC_COFINS
	 * @param ALIQ_COFINS
	 * @param VL_COFINS
	 */
	public RA170(String NUM_ITEM, String COD_ITEM, String DESCR_COMPL, String NAT_BC_CRED,
			String IND_ORIG_CRED, String CST_PIS, String CST_COFINS, String COD_CTA, 
			String COD_CCUS, BigDecimal VL_ITEM, BigDecimal VL_DESC, BigDecimal VL_BC_PIS,
			BigDecimal ALIQ_PIS, BigDecimal VL_PIS, BigDecimal VL_BC_COFINS, 
			BigDecimal ALIQ_COFINS, BigDecimal VL_COFINS)  
	{
		this.NUM_ITEM = NUM_ITEM;
		this.COD_ITEM = COD_ITEM;
		this.DESCR_COMPL = DESCR_COMPL;
		this.NAT_BC_CRED = NAT_BC_CRED;
		this.IND_ORIG_CRED = IND_ORIG_CRED;
		this.CST_PIS = CST_PIS;
		this.CST_COFINS = CST_COFINS;
		this.COD_CTA = COD_CTA;
		this.COD_CCUS = COD_CCUS;
		this.VL_ITEM = VL_ITEM;
		this.VL_DESC = VL_DESC;
		this.VL_BC_PIS = VL_BC_PIS;
		this.ALIQ_PIS = ALIQ_PIS;
		this.VL_PIS = VL_PIS;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.ALIQ_COFINS = ALIQ_COFINS;
		this.VL_COFINS = VL_COFINS;
		//
		addCounter();
	}	//RA170

	/**
	 * Formata o Bloco A Registro 170
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.lPad(NUM_ITEM, 3)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR_COMPL), 255)
			+ PIPE + TextUtil.toNumeric(VL_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(VL_DESC,2,true)
			+ PIPE + TextUtil.checkSize(NAT_BC_CRED, 2)
			+ PIPE + TextUtil.checkSize(IND_ORIG_CRED, 1)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CST_PIS),2)
			+ PIPE + TextUtil.toNumeric(VL_BC_PIS,2,true)
			+ PIPE + TextUtil.toNumeric(ALIQ_PIS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_PIS,2,true)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CST_COFINS),2)
			+ PIPE + TextUtil.toNumeric(VL_BC_COFINS,2,true)
			+ PIPE + TextUtil.toNumeric(ALIQ_COFINS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_COFINS,2,true)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_CTA), 60)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_CCUS), 60)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RA170