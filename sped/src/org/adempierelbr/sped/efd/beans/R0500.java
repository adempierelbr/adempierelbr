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
 * REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0500.java, 24/03/2011, 15:04:00, mgrigioni
 */
public class R0500 extends RegSped  {
	
	private Timestamp DT_ALT;
	
	private String COD_NAT_CC;
	private String IND_CTA;
	private int NIVEL;
	private String COD_CTA;
	private String NOME_CTA;
	
	/**
	 * Constructor
	 * @param DT_ALT
	 * @param COD_NAT_CC
	 * @param IND_CTA
	 * @param COD_CTA
	 * @param NOME_CTA
	 */
	public R0500(Timestamp DT_ALT, String COD_NAT_CC, String IND_CTA, String COD_CTA, String NOME_CTA)
	{
		super();
		this.DT_ALT = DT_ALT;
		this.COD_NAT_CC = COD_NAT_CC;
		this.IND_CTA = IND_CTA;
		setCOD_CTA(COD_CTA);
		this.NOME_CTA = NOME_CTA;
		setNIVEL();
	}	//R0500
	
	private void setCOD_CTA(String COD_CTA){
		this.COD_CTA = TextUtil.checkSize(RemoverAcentos.remover(COD_CTA), 60);
	}
	
	public String getCOD_CTA(){
		return this.COD_CTA;
	}
	
	private void setNIVEL(){
		this.NIVEL = COD_CTA.replaceAll("[^.]","").length() + 1;
	}
	
	/**
	 * Formata Bloco 0 Registro 500
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_ALT, "ddMMyyyy"))
            .append(PIPE).append(COD_NAT_CC)
            .append(PIPE).append(IND_CTA)
            .append(PIPE).append(NIVEL)
            .append(PIPE).append(TextUtil.checkSize(COD_CTA,60))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME_CTA), 60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_CTA == null) ? 0 : COD_CTA.hashCode());
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
		R0500 other = (R0500) obj;
		if (COD_CTA == null) {
			if (other.COD_CTA != null)
				return false;
		} else if (!COD_CTA.equals(other.COD_CTA))
			return false;
		return true;
	}
	
}	// R0500