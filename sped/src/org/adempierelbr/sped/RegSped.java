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

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

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
	
	/**	Logger			*/
	public CLogger log = CLogger.getCLogger(this.getClass());
	
	//String PIPE
	public static final String PIPE = "|";
	
	//String EOL
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	protected String REG = getClassName();
		
	//Método para retornar registro formatado
	//Todo registro do SPED deve iniciar com PIPE e terminar com PIPE
	public abstract String toString();
	
	/**
	 * Constructor
	 */
	public RegSped() {
		addCounter();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((REG == null) ? 0 : REG.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RegSped other = (RegSped) obj;
		if (REG == null) {
			if (other.REG != null)
				return false;
		} else if (!REG.equals(other.REG))
			return false;
		return true;
	}

	//Método para retornar o nome do registro
	public String getReg(){
		return REG;
	}
	
	//Método para adicionar registro ao contador
	public void addCounter(){
		CounterSped.register(getReg());
	}
	
	//Método para subtrair registro ao contador
	public void subtractCounter(){
		CounterSped.unregister(getReg());
	}
	
	//Método genérico do RegSPED, sobreescrito em beans específicos
	protected Object get_Value(String attribute){
		return "";
	}
	
	public Timestamp get_ValueAsTS(String attribute){
		Object result = get_Value(attribute);
		if (result instanceof Timestamp)
			return (Timestamp) result;
		
		return null;
	}
	
	public String get_ValueAsString(String attribute){
		Object result = get_Value(attribute);
		if (result instanceof String)
			return (String) result;
		
		return "";
	}
	
	public BigDecimal get_ValueAsBD(String attribute){
		Object result = get_Value(attribute);
		if (result instanceof BigDecimal)
			return (BigDecimal) result;
		
		return Env.ZERO;
	}
	
	public boolean get_ValueAsBoolean(String attribute){
		Object result = get_Value(attribute);
		if (result instanceof Boolean)
			return (Boolean) result;
		
		return false;
	}
	
	//Método para pegar o className e retornar o registro
	private String getClassName() {
		String FQClassName = this.getClass().getName();
		int firstChar;
		firstChar = FQClassName.lastIndexOf ('.') + 1;
		if ( firstChar > 0 ) {
			FQClassName = FQClassName.substring ( firstChar );
		}
		
		return FQClassName.substring(1);
	}
	
} //RegSped