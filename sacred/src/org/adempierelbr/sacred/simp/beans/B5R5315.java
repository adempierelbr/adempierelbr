package org.adempierelbr.sacred.simp.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5315: OPERAÇÕES DE SAÍDA
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5315.java, 13/04/2010, 14:32, mgrigioni
 */
public class B5R5315 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5315";

	private String TIP_DOC      = "";
	private String SER          = "";
	private String NUM_DOC      = "";
	private String COD_PART     = "";
	
	private Timestamp DT_EMISSAO = null;
	
	private BigDecimal VALOR_SAI    = null;
	private BigDecimal PERC_CRDOUT  = null;
	private BigDecimal VALOR_CRDOUT = null;
	
	/**
	 * Constructor
	 * @param DT_EMISSAO
	 * @param TIP_DOC
	 * @param SER
	 * @param NUM_DOC
	 * @param COD_PART
	 * @param VALOR_SAI
	 * @param PERC_CRDOUT
	 * @param VALOR_CRDOUT
	 */
	public B5R5315(Timestamp DT_EMISSAO, String TIP_DOC, String SER, String NUM_DOC,
			String COD_PART, BigDecimal VALOR_SAI, BigDecimal PERC_CRDOUT, BigDecimal VALOR_CRDOUT) {
		this.DT_EMISSAO = DT_EMISSAO;
		this.TIP_DOC = TIP_DOC;
		this.SER = SER;
		this.NUM_DOC = NUM_DOC;
		this.COD_PART = COD_PART;
		this.VALOR_SAI = VALOR_SAI;
		this.PERC_CRDOUT = PERC_CRDOUT;
		this.VALOR_CRDOUT = VALOR_CRDOUT;
		//
		addCounter();
	} // B5R5315
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.timeToString(DT_EMISSAO, "ddMMyyyy")
			+ PIPE + TIP_DOC
			+ PIPE + SER
			+ PIPE + NUM_DOC
			+ PIPE + TextUtil.toNumeric(COD_PART)
			+ PIPE + TextUtil.toNumeric(VALOR_SAI,2,true)
			+ PIPE + TextUtil.toNumeric(PERC_CRDOUT,2,true)
			+ PIPE + TextUtil.toNumeric(VALOR_CRDOUT,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5315