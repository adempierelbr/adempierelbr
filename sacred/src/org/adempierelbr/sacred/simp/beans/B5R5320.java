package org.adempierelbr.sacred.simp.beans;

import java.sql.Timestamp;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5320 DEVOLUÇÃO DE SAÍDA
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5320.java, 13/04/2010, 14:49, mgrigioni
 */
public class B5R5320 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5320";

	private String TIP_DOC      = "";
	private String SER          = "";
	private String NUM_DOC      = "";
	
	private Timestamp DT_SAI = null;
	
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
	public B5R5320(Timestamp DT_SAI, String TIP_DOC, String SER, String NUM_DOC) {
		this.DT_SAI = DT_SAI;
		this.TIP_DOC = TIP_DOC;
		this.SER = SER;
		this.NUM_DOC = NUM_DOC;
		//
		addCounter();
	} // B5R5320
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.timeToString(DT_SAI, "ddMMyyyy")
			+ PIPE + TIP_DOC
			+ PIPE + SER
			+ PIPE + NUM_DOC;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5320