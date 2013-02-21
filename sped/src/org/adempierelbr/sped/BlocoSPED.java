/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
import java.util.List;
import java.util.Set;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.util.TextUtil;

/**
 * 		Bloco SPED
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BlocoSPED.java, v1.0 2013/02/21 9:54:44 AM, ralexsander Exp $
 */
public abstract class BlocoSPED
{
	/**
	 * 	FIXME: Mudar para um método específico, pois toString 
	 * 		pode ficar muito grande e lento para debugar
	 */
	@SuppressWarnings("rawtypes")
	public String toString()
	{
		try
		{
			Class<?> clazz = getClass();
			
			if (!clazz.getSuperclass().equals (BlocoSPED.class))
				return "";

			Field[] fields = clazz.getDeclaredFields();
			StringBuilder result = new StringBuilder();
						
			for (Field field : fields) 
			{
				if (!field.isAnnotationPresent (XMLFieldProperties.class))
					continue;

				XMLFieldProperties annotation = field.getAnnotation (XMLFieldProperties.class);
				
				if(!annotation.isSPEDField())
					continue;

				String fieldName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);;
				
				Class<?> noparams[] = {};
				Object[] noargs = null;
				
				Method method = clazz.getDeclaredMethod ("get" + fieldName, noparams);
				Object content = method.invoke (this, noargs);
				
				//	Do Nothing
				if (content == null)
					;
				
				//	List
				else if (content instanceof List)
				{
					for (Object item : (List) content)
					{
						result.append (TextUtil.removeEOL (item.toString()));
						result.append (SPEDUtil.EOL);
					}
				}
				
				//	Set
				else if (content instanceof Set)
				{
					for (Object item : (Set) content)
					{
						result.append (TextUtil.removeEOL (item.toString()));
						result.append (SPEDUtil.EOL);
					}
				}
				
				//	Outros
				else 
				{
					result.append (TextUtil.removeEOL (content.toString()));
					result.append (SPEDUtil.EOL);
				}
			}
			//
			return result.toString();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
			return "";
		}
	}	//	toString
}	//	BlocoSPED
