package org.adempierelbr.sacred.comp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5990: ENCERRAMENTO DO BLOCO 5
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5990.java, 25/10/2010, 12:37, mgrigioni
 */
public class B5R5990 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5990";

	private String QTD_LIN_C = ""; 
	
	/**
	 * Constructor
	 */
	public B5R5990() {
		//
		addCounter();
	} // B5R5990
	
	public String toString(){
		
		QTD_LIN_C = "" + CounterSacred.getBlockCounter(BLOCO);
		
		String format = 
			REG + PIPE + QTD_LIN_C;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5990