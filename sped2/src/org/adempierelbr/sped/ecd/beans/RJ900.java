/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.sped.ecd.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J900 - TERMO DE ENCERRAMENTO
 * 
 * Ocorrência - um (por arquivo)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ900.java, 18/11/2010, 14:20:00, mgrigioni
 */

public class RJ900 implements RegSped{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(RJ900.class);
	
	private final String REG 		= "J900";
	private final String DNRC_ENCER = "TERMO DE ENCERRAMENTO";
	
	private BigDecimal 	 NUM_ORD;
	private String 		 NAT_LIVRO;
	private String 		 NOME;
	private BigDecimal 	 QTD_LIN;
	private Timestamp 	 DT_INI_ESCR;
	private Timestamp 	 DT_FIN_ESCR;

	/**
	 * Constructor
	 */
	public RJ900 (String NAT_LIVRO, String NOME, 
			Timestamp DT_INI_ESCR, Timestamp DT_FIN_ESCR)
	{
		this (NAT_LIVRO, NOME, null, DT_INI_ESCR, DT_FIN_ESCR);
	}
	
	/**
	 * Constructor
	 */
	public RJ900 (String NAT_LIVRO, String NOME, BigDecimal QTD_LIN, 
			Timestamp DT_INI_ESCR, Timestamp DT_FIN_ESCR)
	{
		this.NUM_ORD = Env.ONEHUNDRED;
		//
		if (NAT_LIVRO == null){
			log.log (Level.SEVERE, "Tipo de Livro inválido");
		}
		else if (NAT_LIVRO.equals(ECDUtil.DIARIO_GERAL[0])){
			this.NAT_LIVRO = ECDUtil.DIARIO_GERAL[1];
		}
		else if (NAT_LIVRO.equals(ECDUtil.DIARIO_AUXILIAR[0])){
			this.NAT_LIVRO = ECDUtil.DIARIO_AUXILIAR[1];
		}
		else if (NAT_LIVRO.equals(ECDUtil.DIARIO_RESUMIDO[0])){
			this.NAT_LIVRO = ECDUtil.DIARIO_RESUMIDO[1];
		}
		else if (NAT_LIVRO.equals(ECDUtil.RAZAO_AUXILIAR[0])){
			this.NAT_LIVRO = ECDUtil.RAZAO_AUXILIAR[1];
		}
		else if (NAT_LIVRO.equals(ECDUtil.BALANCETES[0])){
			this.NAT_LIVRO = ECDUtil.BALANCETES[1];
		}
		else
			log.log (Level.SEVERE, "Tipo de Livro inválido");
		//
		this.NOME = NOME;
		this.QTD_LIN = QTD_LIN;
		this.DT_INI_ESCR = DT_INI_ESCR;
		this.DT_FIN_ESCR = DT_FIN_ESCR;
		//
		addCounter();
	} //RJ900

	/**
	 * Formata o Bloco J Registro 900
	 * 
	 * @return
	 */
	public String toString() {
		
		String format =
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(DNRC_ENCER, 0, 21)
			+ PIPE + TextUtil.toNumeric(NUM_ORD, 0)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(NAT_LIVRO), 0, 80)
			+ PIPE + TextUtil.checkSize(TextUtil.retiraEspecial(NOME), 0, 255) 
			+ PIPE + (QTD_LIN == null ? "XXXXQtdTotalDeLinhasXXXX" : TextUtil.toNumeric(QTD_LIN, 0))
			+ PIPE + TextUtil.timeToString(DT_INI_ESCR, "ddMMyyyy")
			+ PIPE + TextUtil.timeToString(DT_FIN_ESCR, "ddMMyyyy")
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RJ900