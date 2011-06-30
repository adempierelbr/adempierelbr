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
import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDUtil;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MElementValue;
import org.compiere.util.Env;

/**
 * Bloco I Registro I050 - PLANO DE CONTAS Ocorrência - vários (por arquivo)
 * Chave: [DT_ALT]+[ COD_CTA] Campo 05 – NÍVEL: Número crescente a partir da
 * conta/grupo de menor detalhamento (Ativo, Passivo, etc.). Deve ser acrescido
 * de 1 a cada mudança de nível.
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RI050.java, 17/11/2010, 09:57:00, mgrigioni
 */
public class RI050 extends RegSped {
	
	private Timestamp DT_ALT;
	private String COD_NAT;
	private String IND_CTA;
	private BigDecimal NIVEL;
	private String COD_CTA;
	private String COD_CTA_SUP;
	private String CTA;
	//
	private static List<Integer> _SummaryAccounts = new ArrayList<Integer> ();
	private static StringBuffer summary = new StringBuffer();

	/**
	 * Constructor
	 * Conta o nível da conta de acordo com a quantidade
	 * 	de pontos "." +1 no código da conta.
	 * 
	 * Ex: 	1.1.01.0001 = 3 pontos + 1 = nível 4
	 * 		5.1.01      = 2 pontos + 1 = nível 3
	 */
	public RI050 (Timestamp DT_FIN, Timestamp DT_ALT, String COD_NAT, String IND_CTA, 
			String COD_CTA, String CTA) {
		
		super();
		
		if (COD_CTA == null)
			COD_CTA = "";
		//
		this.NIVEL = new BigDecimal (COD_CTA.replaceAll("[^.]","").length() + 1);
		//
		if (COD_CTA.indexOf(".") == -1)
			this.COD_CTA_SUP = "";
		else
			this.COD_CTA_SUP = COD_CTA.substring(0, COD_CTA.lastIndexOf("."));
		// BF: Data de alteração não deve ser > que data final da escrituração
		if (DT_FIN.before(DT_ALT))
			this.DT_ALT = DT_FIN;
		else
			this.DT_ALT = DT_ALT;
		
		this.IND_CTA 	= IND_CTA;
		this.COD_CTA 	= COD_CTA;
		this.CTA 		= CTA;
		this.COD_NAT    = ECDUtil.getCOD_NAT(COD_NAT);
		
		//	Registra a conta superior
		int SummaryElement_ID = AdempiereLBR.getC_ElementValue_ID(this.COD_CTA_SUP,null);
		if (SummaryElement_ID > 0 && !_SummaryAccounts.contains(SummaryElement_ID))
		{
			_SummaryAccounts.add(SummaryElement_ID);
			//
			MElementValue ev = new MElementValue (Env.getCtx(), SummaryElement_ID, null);
			if (ev.isSummary())
			{
				RI050 rI050 = new RI050 (DT_FIN, ev.getCreated(), ev.getAccountType(), "S", ev.getValue(), ev.getName());
				summary.append(rI050);
			}
		}
		//
		
	}	//RI050
	
	/**
	 * 	Get Account Parent
	 * @return
	 */
	public static String getAccountParent ()
	{
		return summary.toString();
	}	//	getAccountParent
	
	/**
	 * 	Limpa as variáveis estáticas
	 */
	public static void clear ()
	{
		_SummaryAccounts.clear();
		summary = new StringBuffer("");
	}	//	clear

	/**
	 * Formata
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_ALT, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(COD_NAT, 2))
            .append(PIPE).append(TextUtil.checkSize(IND_CTA, 1, 1))
            .append(PIPE).append(TextUtil.toNumeric(NIVEL, 0))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA_SUP, 255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CTA), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} //RI050