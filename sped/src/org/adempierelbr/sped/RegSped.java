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
package org.adempierelbr.sped;

import org.adempierelbr.util.TextUtil;

/**
 * Interface de Registro do Projeto SPED
 * 
 * Sistema Público de Escrituração Digital
 * http://www1.receita.fazenda.gov.br/
 * 
 * @author Mario Grigioni
 * @version $Id: RegSped.java, 16/11/2010, 14:33, mgrigioni
 */
public abstract class RegSped {
	
	//String PIPE
	public static final String PIPE = "|";
	
	//String EOL
	public static final String EOL  = TextUtil.EOL_WIN32;
		
	//Método para retornar registro formatado
	//Todo registro do SPED deve iniciar com PIPE e terminar com PIPE
	public abstract String toString();
	
	//Método para retornar o nome do registro
	public abstract String getReg();
	
	//Método para adicionar registro ao contador
	public void addCounter(){
		CounterSped.register(getReg());
	}
	
} //RegSped