package org.adempierelbr.sped;

import java.util.Comparator;

import org.adempierelbr.sped.bean.I_R0200;

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
		
		if (o1 instanceof I_R0200 && o2 instanceof I_R0200
				&& ((I_R0200) o1).getCOD_ITEM() != null)
		{
			return ((I_R0200) o1).getCOD_ITEM().compareTo(((I_R0200) o2).getCOD_ITEM());
		}
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