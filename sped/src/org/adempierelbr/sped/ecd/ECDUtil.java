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
package org.adempierelbr.sped.ecd;

import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.ecd.beans.R9900;
import org.adempierelbr.sped.ecd.beans.RI050;
import org.adempierelbr.sped.ecd.beans.RI250;
import org.compiere.model.MElementValue;

/**
 *	Utilitarios para o ECD
 *
 * @author Mario Grigioni, mgrigioni
 * @version $Id: ECDUtil.java, 17/11/2010, 09:42:00, mgrigioni
 */
public class ECDUtil
{
	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(ECDUtil.class);
	
	//private static Properties ctx = null; //Context
	//private static String     trx = null; //Transaction
	
	//Identificação Livros
	public static final String[] DIARIO_GERAL 	  = {"G","DIARIO GERAL"};
	public static final String[] DIARIO_RESUMIDO  = {"R","DIARIO COM ESCRITURACAO RESUMIDA"};
	public static final String[] DIARIO_AUXILIAR  = {"A","DIARIO AUXILIAR AO DIARIO COM ESCRITURACAO RESUMIDA"};
	public static final String[] RAZAO_AUXILIAR   = {"Z","RAZAO AUXILIAR"};
	public static final String[] BALANCETES 	  = {"B","BALANCETES DIARIOS E BALANCOS"};
	
	//Código da natureza da conta/grupo de contas
	public static final String CONTA_ATIVO        = "01";
	public static final String CONTA_PASSIVO      = "02";
	public static final String PATRIMONIO_LIQUIDO = "03";
	public static final String CONTA_RESULTADO    = "04";
	public static final String CONTA_COMPENSACAO  = "05";
	public static final String OUTRAS             = "09";
	
	public static void setEnv(Properties ctx, String trx){
		
		//ECDUtil.ctx = ctx;
		//ECDUtil.trx = trx;
		
		CounterSped.clear();
		ECDBalance.clear();
		RI250.clear();
		RI050.clear();
	} //setEnvironment
	
	
	public static String getCOD_NAT(String accountType){
		
		if (accountType == null || accountType.isEmpty())
			return OUTRAS;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Asset))
			return CONTA_ATIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Liability))
			return CONTA_PASSIVO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_OwnerSEquity))
			return PATRIMONIO_LIQUIDO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Revenue))
			return CONTA_RESULTADO;
		
		if (accountType.equals(MElementValue.ACCOUNTTYPE_Expense))
			return CONTA_RESULTADO;
		
		return OUTRAS;
	} //getCOD_NAT
	
	public static R9900[] createR9900(){

		String regName = "9900";
		
		ArrayList<R9900> list = new ArrayList<R9900>();
		String[] regs = CounterSped.getRegsSped();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSped.getCounter(reg);
			list.add(new R9900(reg,""+qtd));
		}

		list.add(new R9900(regName,String.valueOf(CounterSped.getCounter(regName)+1)));
		
		return list.toArray(new R9900[list.size()]);
	} //createR9900
	
} //ECDUtil