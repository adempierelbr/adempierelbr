package org.adempierelbr.sacred.simp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5330 OPERAÇÕES GERADORAS APURADAS NAS FICHAS 6A OU 6B
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5330.java, 13/04/2010, 15:06, mgrigioni
 */
public class B5R5330 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5330";
	
	private BigDecimal VALOR_BC = null;
	private BigDecimal ICMS_DEB = null;
	
	/**
	 * Constructor
	 * @param VALOR_BC
	 * @param ICMS_DEB
	 */
	public B5R5330(BigDecimal VALOR_BC, BigDecimal ICMS_DEB) {
		this.VALOR_BC = VALOR_BC;
		this.ICMS_DEB = ICMS_DEB;
		//
		addCounter();
	} // B5R5330
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.toNumeric(VALOR_BC,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_DEB,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5330