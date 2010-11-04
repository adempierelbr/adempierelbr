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
package org.adempierelbr.util;

import java.util.Locale;

/**
 *	SQLUtils
 *
 *	Utility class for ADempiereLBR project - FR 3046238
 *
 *	@author Marcelo Luiz Onhate (onhate)
 *	@version $Id: SQLUtils.java, 16/08/2010 10:16:00 onhate
 */
public class SQLUtils {

	/**
	 * @param String value
	 * Parametro recebido seria o texto a ser buscado como "calculadora hp12c"
	 *
	 * @return Retorna a quantia de Strings "quebradas" para colocar nos parametros da consulta
	 * SQL, para o exemplo acima seria ["%calculadora%","%hp12c"]
	 */
	public static String[] likeParameters(String value){
		String [] values = value.split(" ");
		for (int i = 0; i < values.length; i++) {
			if(!values[i].startsWith("%")) values[i]="%"+values[i];
			if(!values[i].endsWith("%")) values[i]=values[i]+"%";
		}
		return values;
	}


	/**
	 * @param field O nome do campo para gerar a SQL
	 * @param value O valor da consulta como "calculadora hp12c"
	 * @return SQL com exemplo acima seria
	 * 		and(upper(name) like ?) and(upper(name) like ?)
	 * dois parametros a serem preenchidos
	 */
	public static String likeField(String field, String value){
		value = value.toUpperCase(Locale.getDefault());
		String[] values = value.split(" ");
		String ret="";
		for (int i = 0; i < values.length; i++) {
			ret += " AND (UPPER("+field+") LIKE ?)";
		}
		return ret;
	}
}