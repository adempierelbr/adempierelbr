package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=18 – ZFM/ALC
 * 
 * @author Mario Grigioni
 * @version $Id: CR18.java, 17/06/2010, 15:34, mgrigioni
 */
public class CR18 implements RegGIA{

	private final String CR = "18";

	/**
	 * Constructor //TODO
	 */
	public CR18() {
		//
		addCounter();
	} // CR18
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR18