package org.adempierelbr.sped;

import java.util.Comparator;

/**
 * 		Comparator
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@contributor Mario Grigioni
 *	@version $Id: SPEDComparator.java, v1.0 2013/02/26 12:05:33 PM, ralexsander Exp $
 */
public class SPEDComparator implements Comparator<Object>
{
	/**
	 * 	Comparator para ordenar os Arrays
	 */
	public int compare (Object o1, Object o2)
	{
		if (o1 == null || o2 == null)
			return 0;
		//
		return o1.toString().compareTo (o2.toString());
	}	//	compare

	/**
	 * 	Get new Comparator
	 *
	 * 	@return SPEDComparator
	 */
	public static SPEDComparator get ()
	{
		return new SPEDComparator ();
	}	//	get	
}	//	SPEDComparator