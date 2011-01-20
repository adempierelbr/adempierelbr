package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5350: OPERAÇÕES NÃO GERADORAS DE CRÉDITO ACUMULADO – FICHA 6F
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5350.java, 25/10/2010, 12:35, mgrigioni
 */
public class B5R5350 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5350";
	
	private BigDecimal VALOR_OP_ITEM = null;
	private BigDecimal VALOR_BC_ITEM = null;
	private BigDecimal ALIQ_ITEM = null;
	private BigDecimal ICMS_DEB_ITEM = null;
	private BigDecimal ICMS_OPER_ITEM = null;
	private BigDecimal ICMS_OPER_ITEM_CRED = null;
	
	/**
	 * Constructor
	 * @param VALOR_OP_ITEM
	 * @param VALOR_BC_ITEM
	 * @param ALIQ_ITEM
	 * @param ICMS_DEB_ITEM
	 * @param ICMS_OPER_ITEM
	 * @param ICMS_OPER_ITEM_CRED
	 */
	public B5R5350(BigDecimal VALOR_OP_ITEM, BigDecimal VALOR_BC_ITEM, BigDecimal ALIQ_ITEM,
			BigDecimal ICMS_DEB_ITEM, BigDecimal ICMS_OPER_ITEM, BigDecimal ICMS_OPER_ITEM_CRED) {
		this.VALOR_OP_ITEM = VALOR_OP_ITEM;
		this.VALOR_BC_ITEM = VALOR_BC_ITEM;
		this.ALIQ_ITEM = ALIQ_ITEM;
		this.ICMS_DEB_ITEM = ICMS_DEB_ITEM;
		this.ICMS_OPER_ITEM = ICMS_OPER_ITEM;
		this.ICMS_OPER_ITEM_CRED = ICMS_OPER_ITEM_CRED;
		//
		addCounter();
	} // B5R5350
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.toNumeric(VALOR_OP_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(VALOR_BC_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ALIQ_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_DEB_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_OPER_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_OPER_ITEM_CRED,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5350