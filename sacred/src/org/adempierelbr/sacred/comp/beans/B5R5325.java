package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5325 OPERAÇÕES GERADORAS DE CRÉDITO ACUMULADO
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5325.java, 25/10/2010, 12:11, mgrigioni
 */
public class B5R5325 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5325";

	private String COD_LEGAL = "";
	
	private BigDecimal VALOR_OP_ITEM  = null;
	private BigDecimal ICMS_GERA_ITEM = null;
	
	/**
	 * Constructor
	 * @param COD_LEGAL
	 * @param IVA_UTILIZADO
	 * @param PER_MED_ICMS
	 * @param CRED_EST_ICMS
	 * @param ICMS_GERA
	 */
	public B5R5325(String COD_LEGAL, BigDecimal VALOR_OP_ITEM, BigDecimal ICMS_GERA_ITEM) {
		this.COD_LEGAL = COD_LEGAL;
		this.VALOR_OP_ITEM = VALOR_OP_ITEM;
		this.ICMS_GERA_ITEM = ICMS_GERA_ITEM;
		//
		addCounter();
	} // B5R5325
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + COD_LEGAL
			+ PIPE + TextUtil.toNumeric(VALOR_OP_ITEM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_GERA_ITEM,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5325