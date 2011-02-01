package org.adempierelbr.sacred.simp.beans;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0150: CADASTRO DE PARTICIPANTES DE OPERAÇÕES E PRESTAÇÕES
 * 
 * @author Mario Grigioni
 * @version $Id: B0R0150.java, 13/04/2010, 12:01, mgrigioni
 */
public class B0R0150 implements RegSacred{

	private final String BLOCO   = "B0";
	private final String REG     = "0150";

	private String COD_PART = "";
	private String NOME     = "";
	private String COD_PAIS = "";
	private String CNPJ     = "";
	private String IE		= "";
	private String UF		= "";
	private String CEP		= "";
	private String END		= "";
	private String NUM		= "";
	private String COMPL	= "";
	private String BAIRRO	= "";
	private String COD_MUN	= "";
	private String FONE		= "";
	
	/**
	 * Constructor
	 * @param COD_PART
	 * @param NOME
	 * @param COD_PAIS
	 * @param CNPJ
	 * @param IE
	 * @param UF
	 * @param CEP
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 * @param COD_MUN
	 * @param FONE
	 */
	public B0R0150(String COD_PART, String NOME, String COD_PAIS, String CNPJ,
			String IE, String UF, String CEP, String END, String NUM, String COMPL,
			String BAIRRO, String COD_MUN, String FONE) {
		this.COD_PART = COD_PART;
		this.NOME = NOME;
		this.COD_PAIS = COD_PAIS;
		this.CNPJ = CNPJ;
		this.IE = IE;
		this.UF = UF;
		this.CEP = CEP;
		this.END = END;
		this.NUM = NUM;
		this.COMPL = COMPL;
		this.BAIRRO = BAIRRO;
		this.COD_MUN = COD_MUN;
		this.FONE = FONE;
		//
		addCounter();
	} // B0R0150
	
	public String toString(){
		
		String format = 
			REG
			+ PIPE + TextUtil.toNumeric(COD_PART) 
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(NOME),0,255)
			+ PIPE + TextUtil.lPad(COD_PAIS, 5)
			+ PIPE + TextUtil.formatStringCodes(CNPJ)
			+ PIPE + TextUtil.formatStringCodes(IE)
			+ PIPE + UF
			+ PIPE + TextUtil.lPad(TextUtil.toNumeric(CEP), 8)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(END),0,255)
			+ PIPE + TextUtil.toNumeric(NUM)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COMPL),0,255)
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(BAIRRO),0,255)
			+ PIPE + TextUtil.lPad(COD_MUN, 7)
			+ PIPE + TextUtil.toNumeric(FONE);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // BOR0150