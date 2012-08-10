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
package org.adempierelbr.sped.ecd.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I200 - LANÇAMENTO CONTÁBIL Ocorrência - vários (por arquivo)
 * Campo 04 – VL_LANCTO: soma das partidas do lançamento que tenham o mesmo
 * indicador (“D” ou “C”). Campo 05 – IND_LCTO: tem por objetivo identificar os
 * lançamentos que zeram as contas de resultado, quando de sua apuração. Chave:
 * [NUM_LCTO]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI200.java, 17/11/2010, 11:54:00, mgrigioni
 */
public class RI200 implements RegSped{
	
	private final String REG   = "I200";
	//
	private String NUM_LCTO;
	private Timestamp DT_LCTO;
	private BigDecimal VL_LCTO;
	private String IND_LCTO;

	/**
	 * Constructor
	 */
	public RI200(String NUM_LCTO, Timestamp DT_LCTO, BigDecimal VL_LCTO, String IND_LCTO)
	{
		this.NUM_LCTO = NUM_LCTO;
		this.DT_LCTO  = DT_LCTO;
		this.VL_LCTO  = VL_LCTO;
		this.IND_LCTO = IND_LCTO;
		//
		addCounter();
	} // RI200
	
	public void add (BigDecimal VL_LCTO)
	{
		if (this.VL_LCTO == null)
			this.VL_LCTO = VL_LCTO;
		else
			this.VL_LCTO = this.VL_LCTO.add(VL_LCTO);
	}	//	add

	public String getNUM_LCTO()
	{
		if (NUM_LCTO == null)
			return "";
		//
		return NUM_LCTO;
	}

	public void setNUM_LCTO(String nUMLCTO)
	{
		NUM_LCTO = nUMLCTO;
	}

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(NUM_LCTO, 0, 255)
			+ PIPE + TextUtil.timeToString(DT_LCTO, "ddMMyyyy")
			+ PIPE + TextUtil.toNumeric(VL_LCTO, 0, 255)
			+ PIPE + TextUtil.checkSize(IND_LCTO, 0, 1) 
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RI200