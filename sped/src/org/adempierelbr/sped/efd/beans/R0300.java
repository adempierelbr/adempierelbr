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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0300: CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0300.java, 04/02/2011, 10:02:00, mgrigioni
 */
public class R0300 extends RegSped  {
	
	private String COD_IND_BEM;
	private String IDENT_MERC;
	private String DESCR_ITEM;
	private String COD_PRNC;
	private String COD_CTA;
	private String COD_CCUS;
	private String HELP;
	
	private int NR_PARC;
	
	/**
	 * Constructor
	 * @param COD_IND_BEM
	 * @param IDENT_MERC
	 * @param DESCR_ITEM
	 * @param COD_PRNC
	 * @param COD_CTA
	 * @param NR_PARC
	 * @param COD_CCUS
	 * @param HELP
	 */
	public R0300(String COD_IND_BEM, String IDENT_MERC, String DESCR_ITEM,
			String COD_PRNC, String COD_CTA, int NR_PARC, String COD_CCUS, String HELP)
	{
		super();
		setCOD_IND_BEM(COD_IND_BEM);
		setIDENT_MERC(IDENT_MERC);
		this.DESCR_ITEM = DESCR_ITEM;
		setCOD_PRNC(COD_PRNC);
		this.COD_CTA = COD_CTA;
		this.NR_PARC = NR_PARC;
		this.COD_CCUS = COD_CCUS;
		this.HELP = HELP;
	}	//R0300
	
	private void setCOD_IND_BEM(String COD_IND_BEM) {
		
		if (COD_IND_BEM == null || COD_IND_BEM.isEmpty()){
			log.severe("COD_IND_BEM == NULL");
		}
		else
			this.COD_IND_BEM = TextUtil.checkSize(RemoverAcentos.remover(COD_IND_BEM), 60);
	}
		
	private void setIDENT_MERC(String IDENT_MERC) {
		
		if (IDENT_MERC == null || IDENT_MERC.isEmpty() || IDENT_MERC.length() > 1){
			log.warning("DEFINIDO IDENT_MERC PADRAO");
			IDENT_MERC = "1"; //BEM
		}
		
		this.IDENT_MERC = IDENT_MERC;
	}
	
	private void setCOD_PRNC(String PRNC) {
				
		if ((COD_PRNC == null || COD_PRNC.isEmpty()) && IDENT_MERC.equals("2")){ //COMPONENTE
			log.severe("COD_PRNC == NULL");
		}
		else
			this.COD_PRNC = TextUtil.checkSize(RemoverAcentos.remover(COD_PRNC), 60);;
	}
	
	public String getIDENT_MERC(){
		return this.IDENT_MERC;
	}
	
	public int getNR_PARC(){
		return this.NR_PARC;
	}
	
	public String getCOD_CCUS(){
		return this.COD_CCUS;
	}
	
	public String getHELP(){
		
		if (this.HELP == null || this.HELP.trim().isEmpty()){
			return "SEM DESCRICAO";
		}
		
		return this.HELP;
	}
	
	/**
	 * Formata Bloco 0 Registro 300
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_IND_BEM)
            .append(PIPE).append(IDENT_MERC)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_ITEM), 255))
            .append(PIPE).append(COD_PRNC)
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 60))
            .append(PIPE).append(NR_PARC)
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_IND_BEM == null) ? 0 : COD_IND_BEM.hashCode());
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
		R0300 other = (R0300) obj;
		if (COD_IND_BEM == null) {
			if (other.COD_IND_BEM != null)
				return false;
		} else if (!COD_IND_BEM.equals(other.COD_IND_BEM))
			return false;
		return true;
	}
		
}	// R0300