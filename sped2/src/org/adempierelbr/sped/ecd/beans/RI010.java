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

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 * Identificação do Arquivo
 * 
 * Bloco I Registro I010 - IDENTIFICAÇÃO DA ESCRITURAÇÃO CONTÁBIL
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI010.java, 16/11/2010, 16:03:00, mgrigioni
 */
public class RI010 implements RegSped
{
	/** Logger */
	private static CLogger log = CLogger.getCLogger(RI010.class);
	//
	private final String REG   = "I010";

	/**
	 * Indicador da forma de escrituração contábil:
	 * 
	 * G - Livro Diário (Completo, sem escrituração auxiliar); R - Livro Diário
	 * com Escrituração Resumida (com escrituração auxiliar); A - Livro Diário
	 * Auxiliar ao Diário com Escrituração Resumida; B - Livro Balancetes
	 * Diários e Balanços; Z – Razão Auxiliar (Livro Contábil Auxiliar conforme
	 * leiaute definido nos registros I500 a I555).
	 * 
	 */
	private String IND_ESC;
	private final String COD_VER_LC = "1.00";

	/**
	 * Constructor
	 */
	public RI010(String IND_ESC) {
		if (IND_ESC == null || IND_ESC.length() != 1 || "GRABZ".indexOf(IND_ESC) == -1)
			log.warning("O indicador da forma de escrituração é inválido.");
		//
		this.IND_ESC = IND_ESC;
		//
		addCounter();
	} //RI010

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		String format = 
			  PIPE + REG
			+ PIPE + TextUtil.checkSize(IND_ESC, 1, 1)
			+ PIPE + TextUtil.checkSize(COD_VER_LC, 0, 255)
			+ PIPE;
		
		return TextUtil.removeEOL(format) + EOL;
	} //toString
	
	public void addCounter() {
		CounterSped.register(REG);
	}
	
} //RI010