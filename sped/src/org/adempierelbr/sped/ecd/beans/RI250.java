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
import java.util.HashMap;
import java.util.Map;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDBalance;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * Bloco I Registro I250 - PARTIDAS DO LANÇAMENTO
 * 
 * Ocorrência – 1:N 1- No caso de um lançamento com um débito e um crédito,
 * utiliza-se um registro que represente o débito e um registro que represente o
 * crédito; 2- No caso de um lançamento com um débito e diversos créditos,
 * utiliza-se um registro que represente o débito e tantos registros quantos
 * sejam necessários para representar os créditos; 3- No caso de um lançamento
 * com um crédito e diversos débitos, utiliza-se um registro que represente o
 * crédito e tantos registros quantos sejam necessários para representar débitos
 * 4- No caso de um lançamento com diversos débitos e diversos créditos,
 * utilizam-se tantos registros quantos sejam necessários para representar os
 * créditos e tantos registros quantos sejam necessários para representar os
 * débitos; Campo 07 – COD_HIST_PAD: quando utilizada tabela de padronização de
 * histórico, observar os registros I075; Campo 08 - HIST: quando utilizado como
 * histórico complementar ao histórico padrão (Campo 07), deverá contemplar
 * apenas as informações que ficariam no final do histórico, isto é, sua
 * visualização deve ser possível com a utilização da fórmula: [DESCR_HIST] do
 * Registro I075 + “ “ + [HIST] do registro I250;
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI250.java, 17/11/2010, 14:42:00, mgrigioni
 */
public class RI250 extends RegSped {
	
	private String 			COD_CTA;
	private String 			COD_CCUS;
	private BigDecimal 		VL_DC;
	private String 			IND_DC;
	private String 			NUM_ARQ;
	private String 			COD_HIST_PAD;
	private String 			HIST;
	private String 			COD_PART;
	
	/**	Contador de Registros	*/
	private static Map<String, RI200> _rI200 = new HashMap<String, RI200>();

	/**
	 * Constructor
	 */
	public RI250 (String COD_CTA, String COD_CCUS, BigDecimal VL_DC,
			String NUM_ARQ, String COD_HIST_PAD, String HIST,
			String COD_PART, Timestamp DT_LCTO, String NUM_LCTO)
	{
		super();
		this.COD_CTA 	  = COD_CTA;
		this.COD_CCUS 	  = COD_CCUS;
		this.VL_DC 		  = VL_DC.abs();
		this.IND_DC 	  = VL_DC.signum() == 1 ? "D" : "C";
		this.NUM_ARQ 	  = NUM_ARQ;
		this.COD_HIST_PAD = COD_HIST_PAD;
		this.HIST 		  = TextUtil.removeEOL(RemoverAcentos.remover(HIST));
		//
		if (COD_PART != null && !COD_PART.equals("0"))
			this.COD_PART 	  = COD_PART;
		//
		RI200 rI200 = null;
		if (!_rI200.containsKey(NUM_LCTO))
		{
			rI200 = new RI200 (NUM_LCTO, DT_LCTO, 
					VL_DC.signum() == 1 ? VL_DC : Env.ZERO, "N");
		}
		else
		{
			rI200 = _rI200.get(NUM_LCTO);
			rI200.add(VL_DC.signum() == 1 ? VL_DC : Env.ZERO);
			_rI200.remove (NUM_LCTO);
		}
		_rI200.put (NUM_LCTO, rI200);
		
		ECDBalance.addBalance(COD_CTA, VL_DC);
	} 	// R250
	
	/**
	 * 	Limpa os valores estáticos
	 */
	public static void clear ()
	{
		_rI200.clear();
	}	//	clear

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_CCUS, 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_DC, 0, 255))
            .append(PIPE).append(TextUtil.checkSize(IND_DC, 1))
            .append(PIPE).append(TextUtil.checkSize(NUM_ARQ, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_HIST_PAD, 255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(HIST), 65535))
            .append(PIPE).append(TextUtil.checkSize(COD_PART, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
	/**
	 * 	Get BIR200
	 * 
	 * @param key
	 * @return
	 */
	public static RI200 getRI200 (String key)
	{
		return _rI200.get(key);
	}	//	getRI200
	
} //RI250