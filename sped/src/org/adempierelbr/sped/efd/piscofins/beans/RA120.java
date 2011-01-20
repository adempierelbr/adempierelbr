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
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO A120: INFORMAÇÃO COMPLEMENTAR - OPERAÇÕES DE IMPORTAÇÃO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RA120.java, 19/01/2011, 17:02:00, mgrigioni
 */
public class RA120 extends RegSped {

	private String LOC_EXE_SERV;
	
	private BigDecimal VL_TOT_SERV;
	private BigDecimal VL_BC_PIS;
	private BigDecimal VL_PIS_IMP;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal VL_COFINS_IMP;
	
	private Timestamp DT_PAG_PIS;
	private Timestamp DT_PAG_COFINS;
	
	/**
	 * Constructor
	 * @param LOC_EXE_SERV
	 * @param VL_TOT_SERV
	 * @param VL_BC_PIS
	 * @param VL_PIS_IMP
	 * @param VL_BC_COFINS
	 * @param VL_COFINS_IMP
	 * @param DT_PAG_PIS
	 * @param DT_PAG_COFINS
	 */
	public RA120(String LOC_EXE_SERV, BigDecimal VL_TOT_SERV, BigDecimal VL_BC_PIS,
			BigDecimal VL_PIS_IMP, BigDecimal VL_BC_COFINS, BigDecimal VL_COFINS_IMP,
			Timestamp DT_PAG_PIS, Timestamp DT_PAG_COFINS)  
	{
		this.LOC_EXE_SERV = LOC_EXE_SERV;
		this.VL_TOT_SERV = VL_TOT_SERV;
		this.VL_BC_PIS = VL_BC_PIS;
		this.VL_PIS_IMP = VL_PIS_IMP;
		this.VL_BC_COFINS = VL_BC_COFINS;
		this.VL_COFINS_IMP = VL_COFINS_IMP;
		this.DT_PAG_PIS = DT_PAG_PIS;
		this.DT_PAG_COFINS = DT_PAG_COFINS;
		//
		addCounter();
	}	//RA120

	/**
	 * Formata o Bloco A Registro 120
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.toNumeric(VL_TOT_SERV, 2, true)
			+ PIPE + TextUtil.toNumeric(VL_BC_PIS, 2, true)
			+ PIPE + TextUtil.toNumeric(VL_PIS_IMP, 2, true)
			+ PIPE + TextUtil.timeToString(DT_PAG_PIS, "ddMMyyyy")
			+ PIPE + TextUtil.toNumeric(VL_BC_COFINS, 2, true)
			+ PIPE + TextUtil.toNumeric(VL_COFINS_IMP, 2, true)
			+ PIPE + TextUtil.timeToString(DT_PAG_COFINS, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(LOC_EXE_SERV, 1)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
		
	} //toString
	
} //RA120