package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=30 – DIPAM-B
 * 
 * @author Mario Grigioni
 * @version $Id: CR30.java, 17/06/2010, 15:59, mgrigioni
 */
public class CR30 implements RegGIA{

	private final String CR = "30";

	/**
	 * Constructor //TODO
	 */
	public CR30() {
		//
		addCounter();
	} // CR30
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR30