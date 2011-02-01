package org.adempierelbr.sacred.comp.beans;

import java.math.BigDecimal;

import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.RegSacred;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 5310: ABERTURA DE FICHA 3A
 * 
 * @author Mario Grigioni
 * @version $Id: B5R5310.java, 25/10/2010, 11:13, mgrigioni
 */
public class B5R5310 implements RegSacred{

	private final String BLOCO   = "B5";
	private final String REG     = "5310";

	private String COD_ITEM      = "";
	private BigDecimal QUANT_INI = null; //Quantidade Inicial (Mês Anterior)
	private BigDecimal CUS_INI   = null; //Custo Inicial (Mês Anterior)
	private BigDecimal ICMS_INI  = null; //ICMS Inicial (Mês Anterior)
	private BigDecimal QUANT_FIM = null; //Quantidade Final (Atual)
	private BigDecimal CUS_FIM   = null; //Custo Final (Atual)
	private BigDecimal ICMS_FIM  = null; //ICMS Final (Atual)
	
	/**
	 * Constructor
	 * @param COD_ITEM
	 * @param QUANT_INI
	 * @param CUS_INI
	 * @param ICMS_INI
	 * @param QUANT_FIM
	 * @param CUS_FIM
	 * @param ICMS_FIM
	 */
	public B5R5310(String COD_ITEM, BigDecimal QUANT_INI, BigDecimal CUS_INI, BigDecimal ICMS_INI,
			BigDecimal QUANT_FIM, BigDecimal CUS_FIM, BigDecimal ICMS_FIM) {
		this.COD_ITEM = COD_ITEM;
		this.QUANT_INI = QUANT_INI;
		this.CUS_INI = CUS_INI;
		this.ICMS_INI = ICMS_INI;
		this.QUANT_FIM = QUANT_FIM;
		this.CUS_FIM = CUS_FIM;
		this.ICMS_FIM = ICMS_FIM;
		//
		addCounter();
	} // B5R5310
	
	public String toString(){
		
		String format = 
			REG 
			+ PIPE + TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM),255)
			+ PIPE + TextUtil.toNumeric(QUANT_INI,5,true)
			+ PIPE + TextUtil.toNumeric(CUS_INI,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_INI,2,true)
			+ PIPE + TextUtil.toNumeric(QUANT_FIM,5,true)
			+ PIPE + TextUtil.toNumeric(CUS_FIM,2,true)
			+ PIPE + TextUtil.toNumeric(ICMS_FIM,2,true);
		
		return TextUtil.removeEOL(format) + EOL;
	}

	public void addCounter() {
		CounterSacred.register(BLOCO + REG);
	}

} // B5R5310