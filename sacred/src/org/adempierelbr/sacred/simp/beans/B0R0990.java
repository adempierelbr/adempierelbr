package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0990.java, 13/04/2010, 14:15, mgrigioni
 */
public class B0R0990 implements RegSacred{

	private final String BLOCO   = "B0";
	private final String REG     = "0990";

	private String QTD_LIN_0 = ""; 
	
	/**
	 * Constructor
	 */
	public B0R0990() {
		//
		addCounter();
	} // B0R0990
	
	public String toString(){
		
		QTD_LIN_0 = "" + CounterSacred.getBlockCounter(BLOCO);
		
		String format = 
			REG + PIPE + QTD_LIN_0;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0990