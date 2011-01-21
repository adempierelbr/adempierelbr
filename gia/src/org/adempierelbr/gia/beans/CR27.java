package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=27 – IESubstituído
 * 
 * @author Mario Grigioni
 * @version $Id: CR27.java, 17/06/2010, 15:57, mgrigioni
 */
public class CR27 implements RegGIA{

	private final String CR = "27";

	/**
	 * Constructor //TODO
	 */
	public CR27() {
		//
		addCounter();
	} // CR27
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR27