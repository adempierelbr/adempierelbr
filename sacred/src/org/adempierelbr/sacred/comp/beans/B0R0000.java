package org.adempierelbr.sacred.comp.beans;

import java.sql.Timestamp;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DO CONTRIBUINTE
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0000.java, 01/09/2010, 08:30, mgrigioni
 */
public class B0R0000 implements RegSacred{

	private final String BLOCO      = "B0";
	private final String REG        = "0000";
	private final String LADCA      = "LADCA";
	private final String COD_VER    = "01"; //Portaria CAT-207 de 13-10-2009
	private final String COD_FIN    = "01"; //Remessa Regular
	
	private String NOME       = "";
	private String CNPJ       = "";
	private String IE         = "";
	private String CNAE       = "";
	private String COD_MUN    = "";
	private String OP_CRD_OUT = ""; //Somente para empresas de transporte
	private String IE_INTIMA  = "";
	
	private Timestamp PERIODO = null;
	
	/**
	 * Constructor
	 * @param PERIODO
	 * @param NOME
	 * @param CNPJ
	 * @param IE
	 * @param CNAE
	 * @param COD_MUN
	 */
	public B0R0000(Timestamp PERIODO, String NOME, String CNPJ,
			String IE, String CNAE, String COD_MUN) {
		this.PERIODO = PERIODO;
		this.NOME = NOME;
		this.CNPJ = CNPJ;
		this.IE = IE;
		this.CNAE = CNAE;
		this.COD_MUN = COD_MUN;
		//
		addCounter();
	} // B0R0000
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + LADCA 
			+ PIPE + COD_VER
			+ PIPE + COD_FIN
			+ PIPE + TextUtil.timeToString(PERIODO, "MMyyyy")
			+ PIPE + TextUtil.checkSize(NOME,1,255)
			+ PIPE + TextUtil.toNumeric(CNPJ)
			+ PIPE + TextUtil.toNumeric(IE)
			+ PIPE + TextUtil.toNumeric(CNAE)
			+ PIPE + COD_MUN
			+ PIPE + OP_CRD_OUT
			+ PIPE + IE_INTIMA;
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0000