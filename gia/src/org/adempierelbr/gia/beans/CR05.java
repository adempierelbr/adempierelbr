package org.adempierelbr.gia.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * CR=05 – Cabeçalho do Documento Fiscal
 * 
 * @author Mario Grigioni
 * @version $Id: CR05.java, 16/06/2010, 15:14, mgrigioni
 */
public class CR05 implements RegGIA{

	private final String CR           = "05";
	private final String CNAE         = "0000000"; //Campo igual a 0000000 para qualquer referência
	private final String REGTRIB      = "01"; //01 – RPA (Regime Periódico de Apuração) 
	private final String REFINICIAL   = "000000"; //01 (RPA) , RefInicial =  000000 (ZEROS)
	private final String TIPO         = "01"; //NORMAL
	private final String MOVIMENTO    = "1"; //INDICA QUE HA MOVIMENTOS
	private final String TRANSMITIDA  = "0"; //0 NAO TRANSMITIDA
	private final String ORIGEMPREDIG = "0"; //GERADO POR SISTEMA PROPRIO
	
	private String IE             = "";          
	private String CNPJ           = "";
	private String ORIGEMSOFTWARE = ""; //CNPJ DA EMPRESA
	
	private BigDecimal SALDOCREDPERIODOANT   = Env.ZERO;
	private BigDecimal SALDOCREDPERIODOANTST = Env.ZERO;
	private BigDecimal ICMSFIXPER            = Env.ZERO;
	private BigDecimal CHAVEINTERNA          = Env.ZERO; //ZEROS, QUANDO SISTEMA PROPRIO
	
	private int Q10 = 0; //Quantidade CR=10
	private int Q20 = 0; //Quantidade CR=20
	private int Q30 = 0; //Quantidade CR=30
	private int Q31 = 0; //Quantidade CR=31
	
	private Timestamp REF = null; //Referência (Ano e Mês da GIA)
	
	/**
	 * Constructor
	 * @param IE
	 * @param CNPJ
	 * @param REF (MES)
	 * @param SALDOCREDPERIODOANT (SALDO PERIODO ANTERIOR)
	 */
	public CR05(String IE, String CNPJ, Timestamp REF, BigDecimal SALDOCREDPERIODOANT){
		
		this.IE   = IE;
		this.CNPJ = CNPJ;
		this.ORIGEMSOFTWARE = CNPJ;
		this.REF  = REF;
		this.SALDOCREDPERIODOANT = SALDOCREDPERIODOANT;
		//
		addCounter();
	} // CR05
	
	public String toString(){
		
		Q10 = CounterGIA.getCounter("10");
		Q20 = CounterGIA.getCounter("20");
		Q30 = CounterGIA.getCounter("30");
		Q31 = CounterGIA.getCounter("31");
	
		String format = 
			CR 
			+ TextUtil.lPad(IE, 12)
			+ TextUtil.lPad(CNPJ, 14)
			+ TextUtil.lPad(CNAE, 7)
			+ REGTRIB
			+ TextUtil.timeToString(REF, "yyyyMM")
			+ TextUtil.lPad(REFINICIAL, 6)
			+ TIPO
			+ MOVIMENTO
			+ TRANSMITIDA
			+ TextUtil.lPad(SALDOCREDPERIODOANT, 15)
			+ TextUtil.lPad(SALDOCREDPERIODOANTST, 15)
			+ TextUtil.lPad(ORIGEMSOFTWARE, 14)
			+ ORIGEMPREDIG
			+ TextUtil.lPad(ICMSFIXPER, 15)
			+ TextUtil.lPad(CHAVEINTERNA, 32)
			+ TextUtil.lPad(Q10, 4)
			+ TextUtil.lPad(Q20, 4)
			+ TextUtil.lPad(Q30, 4)
			+ TextUtil.lPad(Q31, 4);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR05