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

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import org.adempierelbr.annotation.Validate;
import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.efd.bean.R0000;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * Interface de Registro do Projeto SPED
 * 
 * Sistema Público de Escrituração Digital
 * http://www1.receita.fazenda.gov.br/
 * 
 * 
 * @author Mario Grigioni
 * @version $Id: RegSped.java, 16/11/2010, 14:33, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: Bloco0.java, 07/08/2012 11:03
 * - Adicionado parte da validação das anottations
 * 
 */
public abstract class RegSped implements Comparable<Object>{
	
	/**	
	 * Logger			
	 */
	public CLogger log = CLogger.getCLogger(this.getClass());
	
	/**
	 * String PIPE
	 */
	public static final String PIPE = "|";
	
	/**
	 * String EOL
	 */
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	protected String REG = getClassName();
		
	private String errorMsg;
	
	
	/**
	 * Método abstrato para comparar os registros 
	 */
	public abstract int compareTo(Object arg0);
	
	/**
	 * Método abstrato para retornar registro formatado
	 * 
	 * Todo registro do SPED deve iniciar com PIPE e terminar com PIPE
	 */
	//public abstract String toString();
	
	
	/**
	 * 	Verifica se as informações são válidas de acordo com as Annotations
	 * 
	 * 	@return true if is valid
	 */
	public boolean isValid ()
	{
		boolean isValid = true;
		errorMsg = Validate.doIt (this);
		
		if (errorMsg != null && errorMsg.length() > 0)
			return false;
		
		
		return isValid;
	}	//	isValid
	
	
	/**
	 * Retornar a mensagem de erro
	 * 
	 * @return errorMsg
	 */
	public String getErrorMsg()
	{
		return errorMsg;
	}
	
	
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
	
	/**
	 * 	To String
	 */
	public String toString ()
	{
		try
		{
			Class<?> clazz = getClass();
			
			if (!clazz.getSuperclass().equals (RegSped.class))
				return "";

			Field[] fields = clazz.getDeclaredFields();
			StringBuilder result = new StringBuilder(PIPE);
			
			for (Field field : fields) 
			{
				// log
				log.finer ("Processing SPED: " + field);
				
				// só gerar dos campos que tem annotation
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;

				// 
				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);
				
				// verificar se é um SPED Field
				if(!annotation.isSPEDField())
					continue;
	
				// 
				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				//
				Class<?> noparams[] = {};
				Object[] noargs = null;
				
				//
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (this, noargs);
				
				//	Do Nothing
				if (content == null)
					;
				
				//	BigDecimal
				else if (content instanceof BigDecimal)
				{
					//
					BigDecimal contentBD = (BigDecimal) content;
					result.append(contentBD.setScale(annotation.scale(), BigDecimal.ROUND_HALF_UP));
				}
				
				//	Timestamp
				else if (content instanceof Timestamp)
				{
					//
					Timestamp contentTS = (Timestamp) content;
					result.append (TextUtil.timeToString (contentTS, "ddMMyyyy"));
				}
				
				//	String
				else if (content instanceof String)
				{
					
					//   
					String contentSTR = (String) content;
					
					// preencher o tamanho mínimo com zeros a esquerda 
					if(annotation.minSize() > 0)
						contentSTR = TextUtil.lPad(contentSTR, annotation.maxSize());
					
					// preencher, se for número, converter para tal. Ex.: CPF: 111.111.111-11 >> 11111111111
					if(annotation.isNumber())
						contentSTR = TextUtil.toNumeric(contentSTR);
					
					//
					result.append(contentSTR);
					
				}
				
				//	Outros
				else 
					result.append (content);
				
				//	Commons
				result.append(PIPE);
			}
			
			// 
			result.append(EOL);
			
			//
			return result.toString();
		}
		catch (Exception e)
		{
			
			e.printStackTrace();
			
			log.severe("Falha no método toString() na Classe RegSped. Erro: " + 
					e.getMessage() + "/ linha: " + e.getStackTrace()[0].getLineNumber());
			
			return "";
			
		}
		
	}	//	toString
	
	/**
	 * 	Test
	 */
	public static void main (String[] args)
	{
		R0000 r0000 = new R0000();
		r0000.setCNPJ("000-00");
		r0000.setCOD_VER("1");
		r0000.setDT_INI(new Timestamp(new Date().getTime()));
		r0000.setCOD_MUN("1234");
		
		
		//
		
		System.out.println (r0000.toString());
	}
}	//	RegSped