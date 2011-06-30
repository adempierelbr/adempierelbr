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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDBalance;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * Bloco I Registro I155 - DETALHE DOS SALDOS PERIÓDICOS Ocorrência – 1:N 1-
 * Apresentar registros apenas para as contas analíticas e que tenham tido saldo
 * ou movimento no período; 2- Campos 05 (IND_DC_IN) e 09(IND_CD_FIN), quando
 * saldos zero, preencher com D ou C; 3- Campos de 04 (VL_SLD_INI), 06 (VL_DEB),
 * 07 (VL_CRED) e 08 (VL_SLD_FIN), na inexistência de saldo inicial, final ou de
 * movimentação, preencher com zero. Chave: [COD_CTA]+[COD_CCUS]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI155.java, 17/11/2010, 11:37:00, mgrigioni
 */
public class RI155 extends RegSped {
	
	private String COD_CTA;
	private String COD_CCUS;
	private BigDecimal VL_SLD_INI;
	private String IND_DC_INI;
	private BigDecimal VL_DEB;
	private BigDecimal VL_CRED;
	private BigDecimal VL_SLD_FIN;
	private String IND_DC_FIN;

	/**
	 * Constructor
	 */
	public RI155(String COD_CTA, String COD_CCUS, BigDecimal VL_SLD_INI,String IND_DC_INI,
			BigDecimal VL_DEB, BigDecimal VL_CRED, BigDecimal VL_SLD_FIN,String IND_DC_FIN) {
		super();
		this.COD_CTA    = COD_CTA;
		this.COD_CCUS   = COD_CCUS;
		this.VL_SLD_INI = VL_SLD_INI;
		this.IND_DC_INI = IND_DC_INI;
		this.VL_DEB     = VL_DEB == null ? Env.ZERO : VL_DEB;
		this.VL_CRED    = VL_CRED == null ? Env.ZERO : VL_CRED;
		this.VL_SLD_FIN = VL_SLD_FIN;
		this.IND_DC_FIN = IND_DC_FIN;
	} // RI155
	
	/**
	 * Constructor
	 */
	public RI155(ECDBalance balance, BigDecimal VL_DEB, BigDecimal VL_CRED) {
		this(balance.getAccount().getValue(),"",balance.getBeginBalance().abs(),
			 balance.getBeginBalance().signum() == 1 ? "D" : "C",
			 VL_DEB.abs(), VL_CRED.abs(),
			 balance.getBeginBalance().add(VL_DEB.abs()).subtract(VL_CRED.abs()).abs(),
			 balance.getBeginBalance().add(VL_DEB).subtract(VL_CRED).signum() == 1 ? "D" : "C");
	} //RI155

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
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_INI))
            .append(PIPE).append(TextUtil.checkSize(IND_DC_INI, 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_DEB))
            .append(PIPE).append(TextUtil.toNumeric(VL_CRED))
            .append(PIPE).append(TextUtil.toNumeric(VL_SLD_FIN))
            .append(PIPE).append(TextUtil.checkSize(IND_DC_FIN, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI155