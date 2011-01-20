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
 * REGISTRO A100: IDENTIFICAÇÃO DO ESTABELECIMENTO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RA100.java, 19/01/2011, 11:56:00, mgrigioni
 */
public class RA100 extends RegSped {
	
	private String IND_OPER;
	private String IND_EMIT;
	private String COD_PART;
	private String COD_SIT;
	private String SER;
	private String SUB;
	private String NUM_DOC;
	private String CHV_NFSE;
	private String IND_PGTO;
	
	private BigDecimal VL_DOC;
	private BigDecimal VL_DESC;
	private BigDecimal VL_BC_PIS;
	private BigDecimal VL_PIS;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal VL_COFINS;
	private BigDecimal VL_PIS_RET;
	private BigDecimal VL_COFINS_RET;
	private BigDecimal VL_ISS;

	private Timestamp DT_DOC;
	private Timestamp DT_EXE_SERV;
	
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
	 * @param IND_PGTO
	 * @param VL_DOC
	 * @param VL_DESC
	 * @param VL_BC_PIS
	 * @param VL_PIS
	 * @param VL_BC_COFINS
	 * @param VL_COFINS
	 * @param VL_PIS_RET
	 * @param VL_COFINS_RET
	 * @param VL_ISS
	 * @param DT_DOC
	 * @param DT_EXE_SERV
	 */
	public RA100(String IND_OPER, String IND_EMIT, String COD_PART, String COD_SIT, String SER,
			String SUB, String NUM_DOC, String CHV_NFSE, String IND_PGTO, BigDecimal VL_DOC,
			BigDecimal VL_DESC, BigDecimal VL_BC_PIS, BigDecimal VL_PIS, BigDecimal VL_BC_COFINS,
			BigDecimal VL_COFINS, BigDecimal VL_PIS_RET, BigDecimal VL_COFINS_RET, 
			BigDecimal VL_ISS, Timestamp DT_DOC, Timestamp DT_EXE_SERV)  
	{
		this.IND_OPER = IND_OPER;
		this.IND_EMIT = IND_EMIT;
		this.COD_PART = COD_PART;
		this.COD_SIT = COD_SIT;
		this.SER = SER;
		this.SUB = SUB;
		this.NUM_DOC = NUM_DOC;
		this.CHV_NFSE = CHV_NFSE;
		this.IND_PGTO = IND_PGTO;
		this.VL_DOC = VL_DOC;
		this.VL_DESC = VL_DESC;
		this.VL_BC_PIS = VL_BC_PIS;
		this.VL_PIS = VL_PIS;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.VL_COFINS = VL_COFINS;
		this.VL_PIS_RET = VL_PIS_RET;
		this.VL_COFINS_RET = VL_COFINS_RET;
		this.VL_ISS = VL_ISS;
		this.DT_DOC = DT_DOC;
		this.DT_EXE_SERV = DT_EXE_SERV;
		//
		addCounter();
	}	//RA100

	/**
	 * Formata o Bloco A Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(IND_OPER, 1, 1, '0')
			+ PIPE + TextUtil.checkSize(IND_EMIT, 1, 1, '0')
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60)
			+ PIPE + TextUtil.checkSize(COD_SIT, 2, 2, '0')
			+ PIPE + TextUtil.checkSize(SER, 20)
			+ PIPE + TextUtil.checkSize(SUB, 20)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 60)
			+ PIPE + TextUtil.checkSize(TextUtil.toNumeric(CHV_NFSE), 60)
			+ PIPE + TextUtil.timeToString(DT_DOC, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_EXE_SERV, "ddMMyyyy")
			+ PIPE + TextUtil.toNumeric(VL_DOC,2,true)
			+ PIPE + TextUtil.checkSize(IND_PGTO, 1, 1, '0')
			+ PIPE + TextUtil.toNumeric(VL_DESC,2,true)
			+ PIPE + TextUtil.toNumeric(VL_BC_PIS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_PIS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_BC_COFINS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_COFINS,2,true)
			+ PIPE + TextUtil.toNumeric(VL_PIS_RET,2,true)
			+ PIPE + TextUtil.toNumeric(VL_COFINS_RET,2,true)
			+ PIPE + TextUtil.toNumeric(VL_ISS,2,true)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RA100