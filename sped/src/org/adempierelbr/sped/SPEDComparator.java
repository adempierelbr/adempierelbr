package org.adempierelbr.sped;

import java.util.Comparator;

import org.adempierelbr.sped.bean.I_R9900;

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
		String s1 = null, s2 = null;
		//
		if (o1 instanceof String)
			s1 = (String)o1;
		else if (o1 instanceof RegSped)
			s1 = ((RegSped) o1).getReg();
		else if (o1 instanceof I_R9900)
			s1 = ((I_R9900) o1).getREG_BLC();
		
		if (o2 instanceof String)
			s2 = (String)o2;
		else if (o2 instanceof RegSped)
			s2 = ((RegSped) o2).getReg();
		else if (o2 instanceof I_R9900)
			s2 = ((I_R9900) o2).getREG_BLC();

		if (s1 == null || s2 == null)
			return 0;
		if (s1.isEmpty() || s2.isEmpty())
			return 0;
		//		
		switch (s1.charAt(0))
		{
			case '1' : s1 = "ZZ"  + s1; break;
			case '9' : s1 = "ZZZ" + s1; break;
		}
		
		switch (s2.charAt(0))
		{
			case '1' : s2 = "ZZ"  + s2; break;
			case '9' : s2 = "ZZZ" + s2; break;
		}
		//
		return s1.compareTo (s2);
	}	//	compare

	/**
	 * 	Get new Comparator
	 *
	 * 	@return SPEDComparator
	 */
	static SPEDComparator get ()
	{
		return new SPEDComparator ();
	}	//	get	
}	//	SPEDComparator