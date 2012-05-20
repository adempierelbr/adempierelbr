/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import java.math.BigDecimal;

import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 		XML Util
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: XMLUtil.java, v1.0 2012/05/20 5:10:45 PM, ralexsander Exp $
 */
public class XMLUtil
{
	/**
	 * 		Get the int value of XML node
	 * 	
	 * 	@param doc
	 * 	@return 0 or int value
	 */
	public static int getElementAsInt (Document document, String value)
	{
		return getElementAsInt (document, 0, value);
	}	//	getElementAsInt
	
	/**
	 * 		Get the int value of XML node
	 * 	
	 * 	@param doc
	 * 	@return 0 or int value
	 */
	public static int getElementAsInt (Document document, int index, String value)
	{
		String result = getElement (document, index, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return Integer.parseInt (result);
			}
			catch (Exception e) 
			{
				return 0;
			}
		}
		return 0;
	}	//	getElementAsInt
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static boolean getElementAsBool (Document document, String value)
	{
		return getElementAsBool (document, value, false);
	}	//	getElementAsBool
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static boolean getElementAsBool (Document document, String value, boolean defValue)
	{
		return getElementAsBool (document, value, 0, defValue);
	}	//	getElementAsBool
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static boolean getElementAsBool (Document document, String value, int index, boolean defValue)
	{
		String result = getElement (document, index, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return Boolean.parseBoolean (result);
			}
			catch (Exception e) 
			{
				return defValue;
			}
		}
		return defValue;
	}	//	getElementAsBool
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static BigDecimal getElementAsBD (Document document, String value)
	{
		return getElementAsBD (document, 0, value);
	}	//	getElementAsBD
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static BigDecimal getElementAsBD (Document document, int index, String value)
	{
		String result = getElement (document, index, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return new BigDecimal (result);
			}
			catch (Exception e) 
			{
				return Env.ZERO;
			}
		}
		return Env.ZERO;
	}	//	getElementAsBD
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param index
	 * 	@param value
	 * 	@return "" or result
	 */
	public static String getElement (Document document, String value)
	{
		return getElement (document, 0, value);
	}	//	getElement
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param index
	 * 	@param value
	 * 	@return "" or result
	 */
	public static String getElement (Document document, int index, String value)
	{
		if (document == null || value == null)
			return "";
		//
		NodeList dl = document.getElementsByTagName(value);
		if (dl == null || dl.getLength() < 1)
			return "";
		//
		String result = dl.item(index).getTextContent();
		if (result == null || "null".equals (result.trim ()))
			return "";
		//
		return result.trim();
	}	//	getElement
	
	/**
	 * 		Get the int value of XML node
	 * 	
	 * 	@param doc
	 * 	@return 0 or int value
	 */
	public static int getElementAsInt (NodeList nl, String value)
	{
		String result = getElement (nl, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return Integer.parseInt (result);
			}
			catch (Exception e) 
			{
				return 0;
			}
		}
		return 0;
	}	//	getElementAsInt
	
	/**
	 * 		Get the int value of XML node
	 * 	
	 * 	@param doc
	 * 	@return 0 or int value
	 */
	public static int getElementAsInt (NodeList nl, int index, String value)
	{
		String result = getElement (nl, index, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return Integer.parseInt (result);
			}
			catch (Exception e) 
			{
				return 0;
			}
		}
		return 0;
	}	//	getElementAsInt
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static BigDecimal getElementAsBD (NodeList nl, String value)
	{
		String result = getElement (nl, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return new BigDecimal (result);
			}
			catch (Exception e) 
			{
				return Env.ZERO;
			}
		}
		return Env.ZERO;
	}	//	getElementAsBD
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param value
	 * 	@return "" or result
	 */
	public static BigDecimal getElementAsBD (NodeList nl, int index, String value)
	{
		String result = getElement (nl, index, value);
		//
		if (result.length() > 0)
		{
			try
			{
				return new BigDecimal (result);
			}
			catch (Exception e) 
			{
				return Env.ZERO;
			}
		}
		return Env.ZERO;
	}	//	getElementAsBD
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param index
	 * 	@param value
	 * 	@return "" or result
	 */
	public static String getElement (NodeList nl, String value)
	{
		if (nl == null || value == null)
			return "";
		//
		String result = nl.item(0).getTextContent ();
		if (result == null || "null".equals (result.trim ()))
			return "";
		//
		return result.trim();
	}	//	getElement
	
	/**
	 * 		Get the result of XML node
	 * 	
	 * 	@param doc
	 * 	@param index
	 * 	@param value
	 * 	@return "" or result
	 */
	public static String getElement (NodeList nl, int index, String value)
	{
		if (nl == null || value == null)
			return "";
		//
		NamedNodeMap nmap = nl.item (index).getAttributes();
		if (nmap == null)
			return "";
		//
		Node node = nmap.getNamedItem (value);
		if (node == null)
			return "";
		//
		String result = node.getTextContent ();
		if (result == null || "null".equals (result.trim ()))
			return "";
		//
		return result.trim();
	}	//	getElement
}	//	XMLUtil
