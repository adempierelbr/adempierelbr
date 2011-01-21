package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=26 – IESubstituto
 * 
 * @author Mario Grigioni
 * @version $Id: CR26.java, 17/06/2010, 15:56, mgrigioni
 */
public class CR26 implements RegGIA{

	private final String CR = "26";

	/**
	 * Constructor //TODO
	 */
	public CR26() {
		//
		addCounter();
	} // CR26
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR26