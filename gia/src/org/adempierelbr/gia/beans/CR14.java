package org.adempierelbr.gia.beans;

import java.math.BigDecimal;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * CR=14 – Detalhes Interestaduais
 * 
 * @author Mario Grigioni
 * @version $Id: CR14.java, 17/06/2010, 15:06, mgrigioni
 */
public class CR14 implements RegGIA, Comparable<Object>{

	private final String CR = "14";
	private final String BENEF = "0";
	
	private String CFOP   = "";
	private String UF     = "";
	private String CODIGO = "";
	
	private BigDecimal VALOR_CONT_1 = Env.ZERO;
	private BigDecimal BASE_CALC_1  = Env.ZERO;
	private BigDecimal VALOR_CONT_2 = Env.ZERO;
	private BigDecimal BASE_CALC_2  = Env.ZERO;
	private BigDecimal IMPOSTO      = Env.ZERO;
	private BigDecimal OUTRAS       = Env.ZERO;
	private BigDecimal ICMSST       = Env.ZERO;
	private BigDecimal PETROLEOENER = Env.ZERO;
	private BigDecimal OUTROSPROD   = Env.ZERO;
	
	private int Q18 = 0; //Quantidade CR=18

	/**
	 * Constructor
	 * @param UF
	 * @param VALOR_CONT_1
	 * @param BASE_CALC_1
	 * @param VALOR_CONT_2 (CFOP 6.107 e 6.108)
	 * @param BASE_CALC_2  (CFOP 6.107 e 6.108)
	 * @param IMPOSTO
	 * @param OUTRAS
	 */
	public CR14(String CFOP, String UF, BigDecimal VALOR_CONT_1, BigDecimal BASE_CALC_1, 
			BigDecimal VALOR_CONT_2, BigDecimal BASE_CALC_2, BigDecimal IMPOSTO, BigDecimal OUTRAS) {
		
		this.CFOP = CFOP;
		this.UF = UF;
		this.VALOR_CONT_1 = VALOR_CONT_1;
		this.BASE_CALC_1 = BASE_CALC_1;
		this.VALOR_CONT_2 = VALOR_CONT_2;
		this.BASE_CALC_2 = BASE_CALC_2;
		this.IMPOSTO = IMPOSTO;
		this.OUTRAS = OUTRAS;
		
		this.CODIGO = TextUtil.toNumeric(CFOP) + TextUtil.toNumeric(UF);
		//
		addCounter();
	} // CR14
	
	public String toString(){
		
		Q18 = CounterGIA.getCounter("18");
		
		String format = 
			CR 
			+ UF
			+ TextUtil.lPad(VALOR_CONT_1, 15)
			+ TextUtil.lPad(BASE_CALC_1, 15)
			+ TextUtil.lPad(VALOR_CONT_2, 15)
			+ TextUtil.lPad(BASE_CALC_2, 15)
			+ TextUtil.lPad(IMPOSTO, 15)
			+ TextUtil.lPad(OUTRAS, 15)
			+ TextUtil.lPad(ICMSST, 15)
			+ TextUtil.lPad(PETROLEOENER, 15)
			+ TextUtil.lPad(OUTROSPROD, 15)
			+ BENEF
			+ TextUtil.lPad(Q18, 4);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR + CFOP);
	}
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof CR14
				&& o2 instanceof CR14)
		{
			CR14 e1 = (CR14) o1;
			CR14 e2 = (CR14) o2;
			//
			if (e1.CODIGO == null)						//	Depois
				return 1;
			else if (e2.CODIGO == null)					// 	Antes
				return -1;
			else
				return e1.CODIGO.compareTo(e2.CODIGO);	//	Comparar
		}
		else
			return 0;									//
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}

} //CR14