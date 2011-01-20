package org.adempierelbr.sacred.simp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5350: OPERAÇÕES NÃO GERADORAS DE CRÉDITO ACUMULADO – FICHA 6F
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5350.java, 14/04/2010, 14:26, mgrigioni
 */
public class B5R5350 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5350";
	
	private String NUM_DECL_EXP_IND = "";
	
	private BigDecimal VALOR_BC = null;
	private BigDecimal ICMS_DEB = null;
	

	public B5R5350(BigDecimal VALOR_BC, BigDecimal ICMS_DEB, String NUM_DECL_EXP_IND) {
		this.VALOR_BC = VALOR_BC;
		this.ICMS_DEB = ICMS_DEB;
		this.NUM_DECL_EXP_IND = NUM_DECL_EXP_IND;
		//
		addCounter();
	} // B5R5350
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.toNumeric(VALOR_BC,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_DEB,2,true)
			+ PIPE + NUM_DECL_EXP_IND;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5350