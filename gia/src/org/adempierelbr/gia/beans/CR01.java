package org.adempierelbr.gia.beans;

import java.sql.Timestamp;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=01 – Registro Mestre
 * 
 * @author Mario Grigioni
 * @version $Id: CR01.java, 16/06/2010, 14:31, mgrigioni
 */
public class CR01 implements RegGIA{

	private final String CR             = "01";
	private final String TIPODOCTO      = "01"; //01 front-end NOVA GIA
	private final String VERSAOFRONTEND = "0000"; //Deve ser igual a ZEROS
	private final String VERSAOPREF     = "0208"; //Deve ser igual a 0208
	private final String Q5             = "0001"; //quantidade de registros-filhos  05 
	
	private String DATAGERACAO = ""; //AAAAMMDD
	private String HORAGERACAO = ""; //HHMMSS
	
	/**
	 * Constructor
	 */
	public CR01() {
		//
		addCounter();
	} // CR01
	
	public String toString(){
		
		Timestamp now = new Timestamp(System.currentTimeMillis());
		DATAGERACAO = TextUtil.timeToString(now);
		HORAGERACAO = TextUtil.timeToString(now, "HHmmss");
		
		String format = 
			CR
			+ TIPODOCTO 
			+ DATAGERACAO
			+ HORAGERACAO
			+ VERSAOFRONTEND
			+ VERSAOPREF
			+ Q5;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterGIA.register(CR);
	}

} //CR01