package org.adempierelbr.sacred.comp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 9900: REGISTROS DO ARQUIVO
 * 
 * @author Mario Grigioni
 * @version $Id: B9R9900.java, 14/04/2010, 14:42, mgrigioni
 */
public class B9R9900 implements RegSacred{

	private final String BLOCO   = "B9";
	private final String REG     = "9900";

	private String REG_BLC     = "";
	private String QTD_REG_BLC = "";
	
	/**
	 * Constructor
	 * @param REG_BLC
	 * @param QTD_REG_BLC
	 */
	public B9R9900(String REG_BLC, String QTD_REG_BLC) {
		this.REG_BLC = REG_BLC;
		this.QTD_REG_BLC = QTD_REG_BLC;
		//
		addCounter();
	} // B9R9900
	
	public String toString(){
		
		String format = 
			REG 
			+ PIPE + REG_BLC
			+ PIPE + QTD_REG_BLC;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B9R9900