package org.adempierelbr.sacred.simp.beans;

import java.sql.Timestamp;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5340 DADOS DA EXPORTAÇÃO INDIRETA COMPROVADA- FICHA 5H
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5340.java, 14/04/2010, 14:22, mgrigioni
 */
public class B5R5340 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5340";
	
	private String NUM_DOC_IND = "";
	private String SER_DOC_IND = "";
	private String NUM_DECL_EXP_IND = "";
	
	private Timestamp DATA_DOC_IND = null;
	
	/**
	 * Constructor
	 * @param DATA_DOC_IND
	 * @param NUM_DOC_IND
	 * @param SER_DOC_IND
	 * @param NUM_DECL_EXP_IND
	 */
	public B5R5340(Timestamp DATA_DOC_IND, String NUM_DOC_IND, String SER_DOC_IND,
			String NUM_DECL_EXP_IND) {
		this.DATA_DOC_IND = DATA_DOC_IND;
		this.NUM_DOC_IND = NUM_DOC_IND;
		this.SER_DOC_IND = SER_DOC_IND;
		this.NUM_DECL_EXP_IND = NUM_DECL_EXP_IND;
		//
		addCounter();
	} // B5R5340
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.timeToString(DATA_DOC_IND, "ddMMyyyy")
			+ PIPE + NUM_DOC_IND
			+ PIPE + SER_DOC_IND
			+ PIPE + NUM_DECL_EXP_IND;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5340