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
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO D110: ITENS DO DOCUMENTO - NOTA FISCAL DE SERVIÇOS DE TRANSPORTE (CÓDIGO 07)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD110.java, 10/02/2011, 17:04:00, mgrigioni
 */
public class RD110 extends RegSped implements Comparable<Object> {

	private Integer     NUM_ITEM;
	private String      COD_ITEM;

	private BigDecimal  VL_SERV;
	private BigDecimal  VL_OUT;

	 //UTILIZADO NA SOMATORIA DO D190
	private String NUM_DOC;
	private Timestamp DT_DOC;
	private String	   CST_ICMS;
	private String	   CFOP;
	private BigDecimal VL_BC_ICMS;
	private BigDecimal ALIQ_ICMS;
	private BigDecimal VL_ICMS;
	private BigDecimal PERC_BC_ICMS;
	private BigDecimal VL_OPR;
	
	/**
	 * Constructor
	 * @param NUM_ITEM
	 * @param COD_ITEM
	 * @param VL_SERV
	 * @param VL_OUT
	 * @param CST_ICMS
	 * @param CFOP
	 * @param VL_BC_ICMS
	 * @param ALIQ_ICMS
	 * @param VL_ICMS
	 * @param PERC_BC_ICMS
	 * @param VL_OPR
	 */
	public RD110 (int NUM_ITEM, String COD_ITEM, BigDecimal VL_SERV, BigDecimal VL_OUT,
			String CST_ICMS, String CFOP, BigDecimal VL_BC_ICMS, BigDecimal ALIQ_ICMS, 
			BigDecimal VL_ICMS, BigDecimal PERC_BC_ICMS, BigDecimal VL_OPR, String NUM_DOC,
			Timestamp DT_DOC)
	{	
		super();
		this.NUM_ITEM = NUM_ITEM;
		this.COD_ITEM = COD_ITEM;
		this.VL_SERV  = VL_SERV;
		this.VL_OUT   = VL_OUT;
		this.CST_ICMS = CST_ICMS;
		setCFOP(CFOP);
		this.VL_BC_ICMS = VL_BC_ICMS;
		this.ALIQ_ICMS = ALIQ_ICMS;
		this.VL_ICMS = VL_ICMS;
		this.PERC_BC_ICMS = PERC_BC_ICMS;
		this.VL_OPR = VL_OPR;
		setNUM_DOC(NUM_DOC);
		this.DT_DOC = DT_DOC;
	}//RD110
	
	private void setCFOP(String CFOP){
		this.CFOP = TextUtil.lPad(TextUtil.toNumeric(CFOP),4);
		if (!(this.CFOP.startsWith("1") || this.CFOP.startsWith("2") ||
			  this.CFOP.startsWith("3") || this.CFOP.startsWith("5") ||	
			  this.CFOP.startsWith("6") || this.CFOP.startsWith("7"))){
			log.severe("RC510 - CFOP INVALIDO (" + this.CFOP + "). " +
					           "COD_ITEM = " + this.COD_ITEM);
		}
	}
	
	private void setNUM_DOC(String NUM_DOC){
		this.NUM_DOC = TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9);
	}
	
	public String getCST_ICMS(){
		return CST_ICMS;
	}
		
	public String getCFOP(){
		return CFOP;
	}
	
	public String getNUM_DOC(){
		return NUM_DOC;
	}
	
	public Timestamp getDT_DOC(){
		return DT_DOC;
	}
	
	public BigDecimal getALIQ_ICMS(){
		return ALIQ_ICMS == null ? Env.ZERO : ALIQ_ICMS;
	}
	
	public BigDecimal getVL_BC_ICMS(){
		return VL_BC_ICMS == null ? Env.ZERO : VL_BC_ICMS;
	}
	
	public BigDecimal getVL_ICMS(){
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}
	
	public BigDecimal getVL_RED_BC_ICMS(){
		
		BigDecimal baseICMS  = getVL_BC_ICMS();
		// redução = 1-(PERC_BC_ICMS/100)
		BigDecimal reduction = Env.ONE.subtract(getPERC_BC_ICMS().divide(Env.ONEHUNDRED, TaxBR.MCROUND));
		if (reduction.signum() != 1)
			reduction = Env.ONE;
		
		return (baseICMS.divide(reduction,TaxBR.MCROUND)).subtract(baseICMS);
	}
		
	private BigDecimal getPERC_BC_ICMS(){
		return PERC_BC_ICMS == null ? Env.ZERO : PERC_BC_ICMS;
	}
	
	public BigDecimal getVL_OPR(){
		return VL_OPR == null ? Env.ZERO : VL_OPR;
	}
	
	/**
	 * Formata o Bloco D Registro 110
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(NUM_ITEM, 3))
            .append(PIPE).append(COD_ITEM)
            .append(PIPE).append(TextUtil.toNumeric(VL_SERV, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_OUT, 2))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RD110 other = (RD110) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
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
		else if (o1 instanceof RD110
				&& o2 instanceof RD110)
		{
			RD110 e1 = (RD110) o1;
			RD110 e2 = (RD110) o2;
			//
			if (e1.NUM_ITEM == null)						//	Depois
				return 1;
			else if (e2.NUM_ITEM == null)					// 	Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM);	//	Comparar
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
	
}//RD110