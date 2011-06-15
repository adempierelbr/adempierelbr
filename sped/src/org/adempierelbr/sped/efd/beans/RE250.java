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
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO E250: OBRIGAÇÕES DO ICMS A RECOLHER – SUBSTITUIÇÃO TRIBUTÁRIA.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE250.java, 14/06/2011, 11:13:00, mgrigioni
 */
public class RE250 extends RegSped {
	
	private String COD_OR;
	private String COD_REC;
	private String NUM_PROC;
	private String IND_PROC;
	private String PROC;
	private String TXT_COMPL;
	
	private BigDecimal VL_OR;
	
	private Timestamp DT_VCTO;
	private Timestamp MES_REF;
	
	/**
	 * Constructor
	 * @param COD_OR
	 * @param VL_OR
	 * @param DT_VCTO
	 * @param COD_REC
	 * @param NUM_PROC
	 * @param IND_PROC
	 * @param PROC
	 * @param TXT_COMPL
	 * @param MES_REF
	 */
	public RE250(String COD_OR, BigDecimal VL_OR, Timestamp DT_VCTO, String COD_REC,
			String NUM_PROC, String IND_PROC, String PROC, String TXT_COMPL, Timestamp MES_REF)
	{
		super();
		this.COD_OR = COD_OR;
		this.VL_OR = VL_OR;
		this.DT_VCTO = DT_VCTO;
		this.COD_REC = COD_REC;
		this.NUM_PROC = NUM_PROC;
		this.IND_PROC = IND_PROC;
		this.PROC = PROC;
		this.TXT_COMPL = TXT_COMPL;
		this.MES_REF = MES_REF;
	}	// RE250

	/**
	 * Formata o Bloco E Registro 250
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_OR, 3))
            .append(PIPE).append(TextUtil.toNumeric(VL_OR))
            .append(PIPE).append(TextUtil.timeToString(DT_VCTO, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(COD_REC, 255))
            .append(PIPE).append(TextUtil.checkSize(NUM_PROC, 255))
            .append(PIPE).append(TextUtil.checkSize(IND_PROC, 255))
            .append(PIPE).append(TextUtil.checkSize(PROC, 255))
            .append(PIPE).append(TextUtil.checkSize(TXT_COMPL, 255))
            .append(PIPE).append(TextUtil.timeToString(MES_REF, "MMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE250