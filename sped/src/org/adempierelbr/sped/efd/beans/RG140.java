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
 * REGISTRO G140 – IDENTIFICAÇÃO DO ITEM DO DOCUMENTO FISCAL
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RG140.java, 24/03/2011, 11:01:00, mgrigioni
 */
public class RG140 extends RegSped
{

	int NUM_ITEM;
	String COD_ITEM;
	
	public RG140(int NUM_ITEM, String COD_ITEM) 
	{
		super();
		this.NUM_ITEM = NUM_ITEM;
		setCOD_ITEM(COD_ITEM);
	} //RG140
	
	private void setCOD_ITEM(String COD_ITEM){
		
		COD_ITEM   = TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60);
		if (COD_ITEM.isEmpty()){
			log.finer("DEFINIDO COD_ITEM PADRAO");
			COD_ITEM = "SEM CODIGO";
		}
		
		this.COD_ITEM   = COD_ITEM;
	}

	/**
	 * Formata o Bloco G Registro 140
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
	               (PIPE).append(REG)
	        .append(PIPE).append(NUM_ITEM)
	        .append(PIPE).append(COD_ITEM)
	        .append(PIPE).append(EOL);
	       
		return format.toString();
	} //toString
	
} //RG140