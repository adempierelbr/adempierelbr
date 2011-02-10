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
 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0005.java, 03/02/2011, 16:52:00, mgrigioni
 */
public class R0005 extends RegSped  {
	
	private String FANTASIA;
	private String CEP;
	private String END;
	private String NUM;
	private String COMPL;
	private String BAIRRO;
	private String FONE;
	private String FAX;
	private String EMAIL;

	/**
	 * Constructor
	 * 
	 * @param FANTASIA
	 * @param CEP
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 * @param FONE
	 * @param FAX
	 * @param EMAIL
	 */
	public R0005(String FANTASIA, String CEP, String END, String NUM,
			String COMPL, String BAIRRO, String FONE, String FAX, String EMAIL)
	{
		super();
		this.FANTASIA 	= FANTASIA;
		this.CEP 		= CEP;
		this.END 		= END;
		this.NUM 		= NUM;
		this.COMPL 		= COMPL;
		this.BAIRRO 	= BAIRRO;
		this.FONE 		= FONE;
		this.FAX 		= FAX;
		this.EMAIL 		= EMAIL;
	}	//R0005

	/**
	 * Formata o Bloco 0 Registro 005
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
		           (PIPE).append(REG) 
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(FANTASIA), 60))
		    .append(PIPE).append(TextUtil.lPad(TextUtil.toNumeric(CEP), 8))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(END), 60))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NUM), 60))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COMPL), 60))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(BAIRRO), 60))
		    .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(FONE), 255))
		    .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(FAX), 255))
		    .append(PIPE).append(TextUtil.checkSize(EMAIL, 255))
		    .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	// toString

}	// R0005