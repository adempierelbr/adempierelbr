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

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0600: CENTRO DE CUSTOS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0600.java, 03/03/2011, 16:50:00, mgrigioni
 */
public class R0600 extends RegSped  {
	
	private Timestamp DT_ALT;
	
	private String COD_CCUS;
	private String CCUS;
	
	/**
	 * Constructor
	 * @param DT_ALT
	 * @param COD_CCUS
	 * @param CCUS
	 */
	public R0600(Timestamp DT_ALT, String COD_CCUS, String CCUS)
	{
		super();
		this.DT_ALT = DT_ALT;
		setCOD_CCUS(COD_CCUS);
		this.CCUS = CCUS;
	}	//R0600
	
	private void setCOD_CCUS(String COD_CCUS){
		this.COD_CCUS = TextUtil.checkSize(RemoverAcentos.remover(COD_CCUS), 60);
	}
	
	public String getCOD_CCUS(){
		return this.COD_CCUS;
	}
	
	/**
	 * Formata Bloco 0 Registro 600
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_ALT, "ddMMyyyy"))
            .append(PIPE).append(COD_CCUS)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CCUS), 60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_CCUS == null) ? 0 : COD_CCUS.hashCode());
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
		R0600 other = (R0600) obj;
		if (COD_CCUS == null) {
			if (other.COD_CCUS != null)
				return false;
		} else if (!COD_CCUS.equals(other.COD_CCUS))
			return false;
		return true;
	}
		
}	// R0600