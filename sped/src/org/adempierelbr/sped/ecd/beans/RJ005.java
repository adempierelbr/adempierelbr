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
 * Identificação do Arquivo
 * 
 * Bloco J Registro J005 - DEMONSTRAÇÕES CONTÁBEIS
 * 
 * Ocorrência – vários (por arquivo) Campo 05 – CAB_DEM: preencher somente
 * quando campo 04 = “2”
 * 
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ005.java, 18/11/2010, 10:48:00, mgrigioni
 */
public class RJ005 implements RegSped {
	
	private final String REG   = "J005";
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;
	private BigDecimal ID_DEM;
	private String CAB_DEM;

	/**
	 * Constructor
	 */
	public RJ005(Timestamp DT_INI, Timestamp DT_FIN, BigDecimal ID_DEM,String CAB_DEM) 
	{
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.ID_DEM = ID_DEM;
		this.CAB_DEM = CAB_DEM;
		//
		addCounter();
	} //RJ005

	/**
	 * Formata o Bloco J Registro 005
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.timeToString(DT_INI, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_FIN, "ddMMyyyy")
			+ PIPE + TextUtil.toNumeric(ID_DEM, 0, 1)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(CAB_DEM), 0, 65535)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RJ005 