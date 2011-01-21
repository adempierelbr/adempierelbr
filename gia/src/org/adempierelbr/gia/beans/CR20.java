package org.adempierelbr.gia.beans;

import java.math.BigDecimal;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * CR=20 – Ocorrências
 * 
 * @author Mario Grigioni
 * @version $Id: CR20.java, 17/06/2010, 15:36, mgrigioni
 */
public class CR20 implements RegGIA{

	private final String CR = "20";

	private String CODSUBITEM = "";
	private String PROPOUST   = "0";
	private String FLEGAL     = "";
	private String OCORRENCIA = "";
	
	private BigDecimal VALOR = Env.ZERO;
	
	private int Q25 = 0;
	private int Q26 = 0;
	private int Q27 = 0;
	private int Q28 = 0;
	
	/**
	 * Constructor
	 */
	public CR20(String CODSUBITEM, BigDecimal VALOR, String PROPOUST, String FLEGAL, String OCORRENCIA) {
		
		this.CODSUBITEM = CODSUBITEM;
		this.VALOR = VALOR;
		
		if (CODSUBITEM.endsWith("99")){ //APENAS QUANDO COD = XXX99
			this.PROPOUST   = PROPOUST;
			this.FLEGAL = FLEGAL;
		}
		
		this.OCORRENCIA = OCORRENCIA;
		//
		addCounter();
	} // CR20
	
	public String toString(){
		
		Q25 = CounterGIA.getCounter("25");
		Q26 = CounterGIA.getCounter("26");
		Q27 = CounterGIA.getCounter("27");
		Q28 = CounterGIA.getCounter("28");
		
		String format = 
			CR
			+ TextUtil.lPad(CODSUBITEM, 5)
			+ TextUtil.lPad(VALOR, 15)
			+ PROPOUST
			+ TextUtil.rPad(TextUtil.removeEOL(FLEGAL), 100)
			+ TextUtil.rPad(TextUtil.removeEOL(OCORRENCIA), 300)
			+ TextUtil.lPad(Q25,4)
			+ TextUtil.lPad(Q26,4)
			+ TextUtil.lPad(Q27,4)
			+ TextUtil.lPad(Q28,4);
		
		return format + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR20