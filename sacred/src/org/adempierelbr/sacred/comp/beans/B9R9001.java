package org.adempierelbr.sacred.comp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 9001: ABERTURA DO BLOCO 9
 * 
 * @author Mario Grigioni
 * @version $Id: B9R9001.java, 14/04/2010, 14:35, mgrigioni
 */
public class B9R9001 implements RegSacred{

	private final String BLOCO   = "B9";
	private final String REG     = "9001";

	private String IND_MOV = "0";

	/**
	 * Constructor
	 * @param IND_MOV
	 */
	public B9R9001() {
		//
		addCounter();
	} // B9R9001
	
	public String toString(){
		
		String format = 
			REG + PIPE + IND_MOV;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B9R9001