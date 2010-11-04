package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 9999: ENCERRAMENTO DO ARQUIVO DIGITAL
 * 
 * @author Mario Grigioni
 * @version $Id: B9R9999.java, 14/04/2010, 14:44, mgrigioni
 */
public class B9R9999 implements RegSacred{

	private final String BLOCO   = "B9";
	private final String REG     = "9999";

	private String QTD_LIN = ""; 
	
	/**
	 * Constructor
	 */
	public B9R9999() {
		//
		addCounter();
	} // B9R9990
	
	public String toString(){
		
		QTD_LIN = "" + CounterSacred.getTotalCounter();
		
		String format = 
			REG + PIPE + QTD_LIN;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B9R9999