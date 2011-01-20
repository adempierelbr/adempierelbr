package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5335 OPERAÇÕES GERADORAS APURADAS NA FICHA 6C OU 6D
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5335.java, 25/10/2010, 12:23, mgrigioni
 */
public class B5R5335 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5335";
	
	private String NUM_DECL_EXP = "";
	private String COMP_OPER    = "";
	
	private BigDecimal SERV_COMUN   = null;
	
	/**
	 * Constructor
	 * @param NUM_DECL_EXP
	 * @param COMP_OPER
	 * @param SERV_COMUN
	 */
	public B5R5335(String NUM_DECL_EXP, String COMP_OPER, BigDecimal SERV_COMUN) {
		this.NUM_DECL_EXP = NUM_DECL_EXP;
		this.COMP_OPER = COMP_OPER;
		this.SERV_COMUN = SERV_COMUN;
		//
		addCounter();
	} // B5R5335
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + NUM_DECL_EXP
			+ PIPE + COMP_OPER
			+ PIPE + TextUtil.toNumeric(SERV_COMUN,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5335