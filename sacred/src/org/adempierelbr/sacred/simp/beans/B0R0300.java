package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0300: ENQUADRAMENTO LEGAL DA OPERAÇÃO/PRESTAÇÃO 
 * GERADORA DE CRÉDITO ACUMULDO ICMS
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0150.java, 13/04/2010, 12:01, mgrigioni
 */
public class B0R0300 implements RegSacred{

	private final String BLOCO   = "B0";
	private final String REG     = "0300";

	private String COD_LEGAL = "";
	private String DESC      = "";
	private String ANEX      = "";
	private String ART       = "";
	private String INC		 = "";
	private String ALIN		 = "";
	private String PRG		 = "";
	private String ITM		 = "";
	private String LTR		 = "";
	private String OBS	     = "";
	
	/**
	 * Constructor
	 * @param COD_LEGAL
	 * @param DESC
	 * @param ANEX
	 * @param ART
	 * @param INC
	 * @param ALIN
	 * @param PRG
	 * @param ITM
	 * @param LTR
	 * @param OBS
	 */
	public B0R0300(String COD_LEGAL, String DESC, String ANEX, String ART,
			String INC, String ALIN, String PRG, String ITM, String LTR, String OBS) {
		this.COD_LEGAL = COD_LEGAL;
		this.DESC = DESC;
		this.ANEX = ANEX;
		this.ART = ART;
		this.INC = INC;
		this.ALIN = ALIN;
		this.PRG = PRG;
		this.ITM = ITM;
		this.LTR = LTR;
		this.OBS = OBS;
		//
		addCounter();
	} // B0R0300
	
	public B0R0300(String COD_LEGAL,String ART, String INC, String OBS) {
		this(COD_LEGAL,COD_LEGAL,null,ART,INC,null,null,null,null,OBS);
	}
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.lPad(COD_LEGAL, 4) 
			+ PIPE + TextUtil.lPad(DESC, 2)
			+ PIPE + RemoverAcentos.remover(ANEX)
			+ PIPE + RemoverAcentos.remover(ART)
			+ PIPE + RemoverAcentos.remover(INC)
			+ PIPE + RemoverAcentos.remover(ALIN)
			+ PIPE + RemoverAcentos.remover(PRG)
			+ PIPE + RemoverAcentos.remover(ITM)
			+ PIPE + RemoverAcentos.remover(LTR)
			+ PIPE + RemoverAcentos.remover(OBS);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0300