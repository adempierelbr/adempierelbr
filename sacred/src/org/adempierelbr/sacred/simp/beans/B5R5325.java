package org.adempierelbr.sacred.simp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5325 OPERAÇÕES GERADORAS DE CRÉDITO ACUMULADO
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5325.java, 13/04/2010, 14:53, mgrigioni
 */
public class B5R5325 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5325";

	private String COD_LEGAL = "";
	
	private BigDecimal IVA_UTILIZADO = null;
	private BigDecimal PER_MED_ICMS  = null;
	private BigDecimal CRED_EST_ICMS = null;
	private BigDecimal ICMS_GERA     = null;
	
	/**
	 * Constructor
	 * @param COD_LEGAL
	 * @param IVA_UTILIZADO
	 * @param PER_MED_ICMS
	 * @param CRED_EST_ICMS
	 * @param ICMS_GERA
	 */
	public B5R5325(String COD_LEGAL, BigDecimal IVA_UTILIZADO, BigDecimal PER_MED_ICMS,
			BigDecimal CRED_EST_ICMS, BigDecimal ICMS_GERA) {
		this.COD_LEGAL = COD_LEGAL;
		this.IVA_UTILIZADO = IVA_UTILIZADO;
		this.PER_MED_ICMS = PER_MED_ICMS;
		this.CRED_EST_ICMS = CRED_EST_ICMS;
		this.ICMS_GERA = ICMS_GERA;
		//
		addCounter();
	} // B5R5325
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + COD_LEGAL
			+ PIPE + TextUtil.toNumeric(IVA_UTILIZADO,4,true)
			+ PIPE + TextUtil.toNumeric(PER_MED_ICMS,4,true)
			+ PIPE + TextUtil.toNumeric(CRED_EST_ICMS,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_GERA,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}
	
	public String getCOD_LEGAL(){
		return COD_LEGAL;
	}

} // B5R5325