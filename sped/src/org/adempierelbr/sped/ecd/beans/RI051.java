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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * Bloco I Registro I051 - PLANO DE CONTAS REFERENCIAL
 * 
 * Ocorrência - 1:N Este registro somente deve ser informado para as contas
 * analíticas do Plano de Contas (Campo 04 – IND_CTA – do registro I050 = “A”).
 * Campo 03 – COD_CCUS: preencher somente quando interferir na identificação do
 * código do plano de contas referencial. Caso a vinculação da conta com o
 * código do plano de contas referencial independa do centro de custos, este
 * deve ser informado apenas no registro I100. Chave:
 * [COD_ENT_REF]+[COD_CCUS]+[COD_CTA_REF]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI051.java, 17/11/2010, 10:01:00, mgrigioni
 */
public class RI051 extends RegSped {
	
	private final String COD_ENT_REF = "10";
	//
	private String COD_CCUS;
	private String COD_CTA_REF;

	/**
	 * Constructor
	 */
	public RI051(String COD_CCUS, String COD_CTA_REF) {
		super();
		this.COD_CCUS = COD_CCUS;
		this.COD_CTA_REF = COD_CTA_REF;
	} //RI051

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_ENT_REF, 2))
            .append(PIPE).append(TextUtil.checkSize(COD_CCUS, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA_REF, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI051