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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I020 - LIVROS AUXILIARES AO DIÁRIO
 * 
 * Ocorrência - vários (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI012.java, 16/11/2010, 16:09:00, mgrigioni
 */
public class RI012 extends RegSped {

	private String NAT_LIVR;
	private String COD_HASH_AUX;
	
	private int NUM_ORD;
	private int TIPO; 

	/**
	 * Constructor
	 * @param NUM_ORD
	 * @param NAT_LIVR
	 * @param TIPO
	 * @param COD_HASH_AUX
	 */
	public RI012(int NUM_ORD, String NAT_LIVR, int TIPO, 
			String COD_HASH_AUX) {
		super();
		this.NUM_ORD 		= NUM_ORD;
		this.NAT_LIVR 		= NAT_LIVR;
		this.TIPO 			= TIPO;
		this.COD_HASH_AUX 	= COD_HASH_AUX;
	} // BIRI012

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(NUM_ORD)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NAT_LIVR), 80))
            .append(PIPE).append(TIPO)
            .append(PIPE).append(TextUtil.checkSize(COD_HASH_AUX, 40))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI012