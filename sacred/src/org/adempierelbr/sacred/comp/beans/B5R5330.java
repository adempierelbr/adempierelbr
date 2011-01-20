package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5330 OPERAÇÕES GERADORAS APURADAS NAS FICHAS 6A OU 6B
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5330.java, 25/10/2010, 12:17, mgrigioni
 */
public class B5R5330 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5330";
	
	private BigDecimal VALOR_BC_ITEM = null;
	private BigDecimal ALIQ_ITEM = null;
	private BigDecimal ICMS_DEB_ITEM = null;
	
	/**
	 * Constructor
	 * @param VALOR_BC_ITEM
	 * @param ALIQ_ITEM
	 * @param ICMS_DEB_ITEM
	 */
	public B5R5330(BigDecimal VALOR_BC_ITEM, BigDecimal ALIQ_ITEM, BigDecimal ICMS_DEB_ITEM) {
		this.VALOR_BC_ITEM = VALOR_BC_ITEM;
		this.ALIQ_ITEM = ALIQ_ITEM;
		this.ICMS_DEB_ITEM = ICMS_DEB_ITEM;
		//
		addCounter();
	} // B5R5330
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.toNumeric(VALOR_BC_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ALIQ_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_DEB_ITEM,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5330