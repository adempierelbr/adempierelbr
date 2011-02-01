package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5315: MOVIMENTAÇÃO DE ITENS
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5315.java, 25/10/2010, 11:31, mgrigioni
 */
public class B5R5315 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5315";

	private String NUM_LANC  = "";
	private String HIST      = "";
	private String TIP_DOC   = "";
	private String SER       = "";
	private String NUM_DOC   = "";
	private String CFOP      = "";
	private String COD_PART  = "";
	private String COD_LANC  = "";
	private String IND       = "";
	private String COD_LEGAL = "";
	
	private BigDecimal QUAN = null;
	private BigDecimal CUST_MERC = null;
	private BigDecimal VL_ICMS = null;
	private BigDecimal PERC_CRDOUT = null;
	private BigDecimal VALOR_CRDOUT = null;
	private BigDecimal VALOR_DESP = null;
	
	private Timestamp DT_MOV = null;
	
	/**
	 * Constructor
	 * @param NUM_LANC
	 * @param DT_MOV
	 * @param HIST
	 * @param TIP_DOC
	 * @param SER
	 * @param NUM_DOC
	 * @param CFOP
	 * @param COD_PART
	 * @param COD_LANC
	 * @param isSOTrx
	 * @param QUAN
	 * @param CUST_MERC
	 * @param VL_ICMS
	 * @param PERC_CRDOUT
	 * @param VALOR_CRDOUT
	 * @param VALOR_DESP
	 */
	public B5R5315(String NUM_LANC, Timestamp DT_MOV, String HIST, String TIP_DOC, String COD_LEGAL, String SER,
			String NUM_DOC, String CFOP, String COD_PART, String COD_LANC, boolean isSOTrx, BigDecimal QUAN,
			BigDecimal CUST_MERC, BigDecimal VL_ICMS, BigDecimal PERC_CRDOUT, BigDecimal VALOR_CRDOUT,
			BigDecimal VALOR_DESP) {
		this.NUM_LANC = NUM_LANC;
		this.DT_MOV = DT_MOV;
		this.HIST = HIST;
		this.TIP_DOC = TIP_DOC;
		this.COD_LEGAL = COD_LEGAL;
		this.SER = SER;
		this.NUM_DOC = NUM_DOC;
		this.CFOP = CFOP;
		this.COD_PART = COD_PART;
		this.COD_LANC = COD_LANC;
		this.IND = isSOTrx ? "1" : "0";
		this.QUAN = QUAN;
		this.CUST_MERC = CUST_MERC;
		this.VL_ICMS = VL_ICMS;
		this.PERC_CRDOUT = PERC_CRDOUT;
		this.VALOR_CRDOUT = VALOR_CRDOUT;
		this.VALOR_DESP = VALOR_DESP;
		//
		addCounter();
	} // B5R5315
	
	public String toString(){
		
		String format = 
			REG 
			+ PIPE + NUM_LANC
			+ PIPE + TextUtil.timeToString(DT_MOV, "ddMMyyyy")
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(HIST),0,255)
			+ PIPE + TextUtil.lPad(TIP_DOC,3)
			+ PIPE + SER
			+ PIPE + NUM_DOC
			+ PIPE + TextUtil.lPad(CFOP,4)
			+ PIPE + TextUtil.toNumeric(COD_PART)
			+ PIPE + TextUtil.lPad(COD_LANC,6)
			+ PIPE + IND
			+ PIPE + TextUtil.toNumeric(QUAN,5,true)
			+ PIPE + TextUtil.toNumeric(CUST_MERC,5,true)
			+ PIPE + TextUtil.toNumeric(VL_ICMS,5,true)
			+ PIPE + TextUtil.toNumeric(PERC_CRDOUT,2,true)
			+ PIPE + TextUtil.toNumeric(VALOR_CRDOUT,2,true)
			+ PIPE + TextUtil.toNumeric(VALOR_DESP,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

	public String getCOD_LEGAL(){
		return COD_LEGAL;
	}
	
	public String getCOD_LANC(){
		return COD_LANC;
	}
} // B5R5315