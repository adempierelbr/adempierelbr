package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
 * 
 * @author Mario Grigioni
 * @version $Id: B9R9990.java, 14/04/2010, 14:38, mgrigioni
 */
public class B9R9990 implements RegSacred{

	private final String BLOCO   = "B9";
	private final String REG     = "9990";

	private String QTD_LIN_0 = ""; 
	
	/**
	 * Constructor
	 */
	public B9R9990() {
		//
		addCounter();
	} // B9R9990
	
	public String toString(){
		
		QTD_LIN_0 = "" + CounterSacred.getBlockCounter(BLOCO);
		
		String format = 
			REG + PIPE + QTD_LIN_0;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B9R9990