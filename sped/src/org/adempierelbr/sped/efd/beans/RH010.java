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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO H010: INVENTÁRIO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RH0/10.java, 28/03/2011, 14:41:00, mgrigioni
 */
public class RH010 extends RegSped
{
	private String COD_ITEM;
	private String UNID;
	private String IND_PROP;
	private String COD_PART;
	private String TXT_COMPL;
	private String COD_CTA;
	
	private BigDecimal QTD;
	private BigDecimal VL_UNIT;
	private BigDecimal VL_ITEM;


	public RH010(String COD_ITEM, String UNID, BigDecimal QTD, BigDecimal VL_UNIT,
			BigDecimal VL_ITEM, String IND_PROP, String COD_PART, String TXT_COMPL,
			String COD_CTA) 
	{
		super();
		this.COD_ITEM = COD_ITEM;
		this.UNID = UNID;
		this.QTD = QTD;
		this.VL_UNIT = VL_UNIT;
		this.VL_ITEM = VL_ITEM;
		this.IND_PROP = IND_PROP;
		this.COD_PART = COD_PART;
		this.TXT_COMPL = TXT_COMPL;
		this.COD_CTA = COD_CTA;
	} //RH010
	
	public BigDecimal getVL_ITEM(){
		return VL_ITEM == null ? Env.ZERO : VL_ITEM;
	}

	/**
	 * Formata o Bloco H Registro 010
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(COD_ITEM)
	        .append(PIPE).append(UNID)
	        .append(PIPE).append(TextUtil.toNumeric(QTD,3))
	        .append(PIPE).append(TextUtil.toNumeric(VL_UNIT,6))
	        .append(PIPE).append(TextUtil.toNumeric(VL_ITEM))
	        .append(PIPE).append(IND_PROP)
	        .append(PIPE).append(COD_PART)
	        .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(TXT_COMPL), 255))
	        .append(PIPE).append(COD_CTA)
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RH010