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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
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
public class RJ005 extends RegSped {
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;
	private BigDecimal ID_DEM;
	private String CAB_DEM;

	/**
	 * Constructor
	 */
	public RJ005(Timestamp DT_INI, Timestamp DT_FIN, BigDecimal ID_DEM,String CAB_DEM) 
	{
		super();
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
		this.ID_DEM = ID_DEM;
		this.CAB_DEM = CAB_DEM;
	} //RJ005

	/**
	 * Formata o Bloco J Registro 005
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.toNumeric(ID_DEM, 0, 1))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CAB_DEM), 65535))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
		
} //RJ005 