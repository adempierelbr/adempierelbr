package org.adempierelbr.gia.beans;

import java.math.BigDecimal;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * CR=10 – Detalhes CFOPs
 * 
 * @author Mario Grigioni
 * @version $Id: CR10.java, 17/06/2010, 14:30, mgrigioni
 */
public class CR10 implements RegGIA, Comparable<Object>{

	private final String CR = "10";
	
	private String CFOP = "";
	
	private BigDecimal VALORCONTABIL  = Env.ZERO;
	private BigDecimal BASECALCULO    = Env.ZERO;
	private BigDecimal IMPOSTO        = Env.ZERO;
	private BigDecimal ISENTAS        = Env.ZERO;
	private BigDecimal OUTRAS         = Env.ZERO;
	private BigDecimal IMPOSTOST      = Env.ZERO; //Imposto Retido por Substituição Tributária
	private BigDecimal IMPSUBSST      = Env.ZERO; //Imposto lançado para contribuinte do tipo Substituto
	private BigDecimal IMPRETSUBSST   = Env.ZERO; //Imposto Retido por Substituição Tributária (Substituído)
	private BigDecimal OUTROSIMPOSTOS = Env.ZERO; //IPI
	
	private int Q14 = 0; //Quantidade CR=14

	/**
	 * Constructor
	 */
	public CR10(String CFOP, BigDecimal VALORCONTABIL, BigDecimal BASECALCULO, BigDecimal IMPOSTO,
			BigDecimal ISENTAS, BigDecimal OUTRAS, BigDecimal OUTROSIMPOSTOS) {
		
		this.CFOP = CFOP;
		this.VALORCONTABIL = VALORCONTABIL;
		this.BASECALCULO = BASECALCULO;
		this.IMPOSTO = IMPOSTO;
		this.ISENTAS = ISENTAS;
		this.OUTRAS = OUTRAS;
		this.OUTROSIMPOSTOS = OUTROSIMPOSTOS;
		//
		addCounter();
	} // CR10
	
	public String getCFOP(){
		return this.CFOP;
	}
	
	public String toString(){
		
		Q14 = CounterGIA.getCounter("14" + CFOP);
		
		String format = 
			CR 
			+ TextUtil.rPad(TextUtil.toNumeric(CFOP), '0', 6)
			+ TextUtil.lPad(VALORCONTABIL, 15)
			+ TextUtil.lPad(BASECALCULO, 15)
			+ TextUtil.lPad(IMPOSTO, 15)
			+ TextUtil.lPad(ISENTAS, 15)
			+ TextUtil.lPad(OUTRAS, 15)
			+ TextUtil.lPad(IMPOSTOST, 15)
			+ TextUtil.lPad(IMPSUBSST, 15)
			+ TextUtil.lPad(IMPRETSUBSST, 15)
			+ TextUtil.lPad(OUTROSIMPOSTOS, 15)
			+ TextUtil.lPad(Q14, 4);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
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
		else if (o1 instanceof CR10
				&& o2 instanceof CR10)
		{
			CR10 e1 = (CR10) o1;
			CR10 e2 = (CR10) o2;
			//
			if (e1.CFOP == null)						//	Depois
				return 1;
			else if (e2.CFOP == null)					// 	Antes
				return -1;
			else
				return e1.CFOP.compareTo(e2.CFOP);	//	Comparar
		}
		else
			return 0;									//	Não é EstadoBR
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
	
} //CR10