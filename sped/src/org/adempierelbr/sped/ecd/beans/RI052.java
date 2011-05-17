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
 * Bloco I Registro I052 - INDICAÇÃO DOS CÓDIGOS DE AGLUTINAÇÃO Ocorrência - 1:N
 * Este registro somente deve ser informado para as contas analíticas do Plano
 * de Contas (Campo 04 – IND_CTA – do registro I050 = “A”). Campo 02 – COD_CCUS:
 * preencher somente quando interferir na identificação do código do plano de
 * contas referencial. Caso a vinculação da conta com o código do plano de
 * contas referencial independa do centro de custos, este deve ser informado
 * apenas no registro I100. Campo 03 – COD_AGL Utilizar o código válido da data
 * de encerramento e de maior detalhamento utilizado nas demonstrações
 * contábeis. Havendo contas passíveis de classificação em mais de um
 * grupo/conta do plano de contas referencial, adotar a mesma classificação do
 * balanço ou, não constando o balanço do arquivo, a classificação na data final
 * do período a que se refere o arquivo. (exemplo: contas que podem figurar no
 * ativo ou passivo, dependendo do saldo). Chave: [COD_CCUS]+[COD_AGL]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: BIRI052.java, 17/11/2010, 10:05:00, mgrigioni
 */
public class RI052 extends RegSped {
	
	private String COD_CCUS;
	private String COD_AGL;

	/**
	 * Constructor
	 */
	public RI052(String COD_CCUS, String COD_AGL) {
		super();
		this.COD_CCUS = COD_CCUS;
		this.COD_AGL = COD_AGL;
	} //RI052

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_CCUS, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_AGL, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} // RI052