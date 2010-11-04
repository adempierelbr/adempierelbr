package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0001: ABERTURA DO BLOCO 0
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0001.java, 13/04/2010, 11:58, mgrigioni
 */
public class B0R0001 implements RegSacred{

	private final String BLOCO   = "B0";
	private final String REG     = "0001";

	private String IND_MOV = ""; //0- Bloco com dados informados 1- Bloco sem dados informados

	/**
	 * Constructor
	 * @param IND_MOV
	 */
	public B0R0001(String IND_MOV) {
		this.IND_MOV = IND_MOV;
		//
		addCounter();
	} // B0R0001
	
	public String toString(){
		
		String format = 
			REG + PIPE + IND_MOV;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0001