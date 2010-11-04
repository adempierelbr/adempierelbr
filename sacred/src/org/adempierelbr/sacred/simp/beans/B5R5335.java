package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5335 OPERAÇÕES GERADORAS APURADAS NA FICHA 6C OU 6D
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5335.java, 13/04/2010, 15:33, mgrigioni
 */
public class B5R5335 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5335";
	
	private String NUM_DECL_EXP = "";
	private String COMP_OPER    = "";
	

	public B5R5335(String NUM_DECL_EXP, String COMP_OPER) {
		this.NUM_DECL_EXP = NUM_DECL_EXP;
		this.COMP_OPER = COMP_OPER;
		//
		addCounter();
	} // B5R5335
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + NUM_DECL_EXP
			+ PIPE + COMP_OPER;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5335