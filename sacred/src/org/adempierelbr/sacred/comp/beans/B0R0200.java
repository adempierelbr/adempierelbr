package org.adempierelbr.sacred.comp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0200.java, 01/09/2010, 08:39, mgrigioni
 */
public class B0R0200 implements RegSacred{

	private final String BLOCO   = "B0";
	private final String REG     = "0200";

	private String COD_ITEM   = "";
	private String DESCR_ITEM = "";
	private String UNI        = "";
	private String COD_GEN    = ""; //Capítulo NCM (2 primeiros dígitos)
	
	/**
	 * Constructor
	 * @param COD_ITEM
	 * @param DESCR_ITEM
	 * @param UNI
	 * @param COD_GEN
	 */
	public B0R0200(String COD_ITEM, String DESCR_ITEM, String UNI, String COD_GEN) {
		this.COD_ITEM = COD_ITEM;
		this.DESCR_ITEM = DESCR_ITEM;
		this.UNI = UNI;
		this.COD_GEN = COD_GEN;
		//
		addCounter();
	} // B0R0200
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM),0,255)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(DESCR_ITEM),0,255)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(UNI),0,255)
			+ PIPE + TextUtil.lPad(TextUtil.formatStringCodes(COD_GEN),2);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0200