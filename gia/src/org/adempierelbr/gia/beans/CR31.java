package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=31 – Registro de Exportação
 * 
 * @author Mario Grigioni
 * @version $Id: CR31.java, 17/06/2010, 16:00, mgrigioni
 */
public class CR31 implements RegGIA{

	private final String CR = "31";

	/**
	 * Constructor //TODO
	 */
	public CR31() {
		//
		addCounter();
	} // CR31
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR31