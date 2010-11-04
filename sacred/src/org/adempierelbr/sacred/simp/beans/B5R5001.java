package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5001: ABERTURA DO BLOCO 5
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5001.java, 13/04/2010, 14:19, mgrigioni
 */
public class B5R5001 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5001";

	private String IND_MOV = ""; //0- Bloco com dados informados 1- Bloco sem dados informados

	/**
	 * Constructor
	 * @param IND_MOV
	 */
	public B5R5001(String IND_MOV) {
		this.IND_MOV = IND_MOV;
		//
		addCounter();
	} // B5R5001
	
	public String toString(){
		
		String format = 
			REG + PIPE + IND_MOV;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5001