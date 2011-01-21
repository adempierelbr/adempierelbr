package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=25 – IEs
 * 
 * @author Mario Grigioni
 * @version $Id: CR25.java, 17/06/2010, 15:56, mgrigioni
 */
public class CR25 implements RegGIA{

	private final String CR = "25";

	/**
	 * Constructor //TODO
	 */
	public CR25() {
		//
		addCounter();
	} // CR25
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR25