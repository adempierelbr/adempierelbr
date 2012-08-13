/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 		Model for LBR_FactFiscal
 * 
 * 	@author Pablo Boff Pigozzo
 *	@version $ v1.0 10/08/2012 11:35 AM $
 */
public class MLBRFactFiscal extends X_LBR_FactFiscal
{
	/**	
	 * Logger			
	 */
	private static CLogger log = CLogger.getCLogger(MLBRFactFiscal.class);
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRFactFiscal (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRADI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRFactFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRADI

	
	
	/**
	 * Retornar Fatos Fiscais de acorodo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_ID Organização ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get(Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer AD_Org_ID, Boolean IsSOTrx, String trxName) throws Exception
	{
		return get(ctx, DateFrom, DateTo, new Integer[]{AD_Org_ID}, IsSOTrx, trxName); 
	}
	
	
	/**
	 * Retornar Fatos Fiscais de acorodo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_IDs Array com um conjunto de organizações ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get(Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer[] AD_Org_IDs, Boolean IsSOTrx, String trxName) throws Exception
	{
		// Client
		String whereClause = " AD_Client_ID = ? ";
		
 		// Organizações (2000000, 2000001...) ou (2000000) ou TODAS(null)
		if(AD_Org_IDs != null && AD_Org_IDs.length > 0)
		{
			// 
			whereClause += " AND AD_Org_ID IN (";			
			for(int x = 0; x < AD_Org_IDs.length; x++)
			{
				// Ultimo elemento, fecha ()s
				if(x == AD_Org_IDs.length -1)
					whereClause += AD_Org_IDs[x] + ")";
				
				// senao só add novo ID e ,
				else 
					whereClause += AD_Org_IDs[x] + ",";
				
			}
		}
		
		// Transação de Venda/Compra
		if(IsSOTrx != null)
		{
			whereClause += " AND IsSOTrx = " + (IsSOTrx.booleanValue() ? "Y" : "N"); 
		}		
		
		// Intervalo de Datas: se for venda, usa a DateDoc(mesma data contábil) 
		// senão a lbr_DateInOut(data da entrada efetiva do material no sistama e contabilidade)
		whereClause += " AND (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END) BETWEEN ? AND ? ";
		
		
		// order by (Date, LBR_NotaFiscal_ID, DocumentNo)
		String orderBy = " (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END), LBR_NotaFiscal_ID, DocumentNo ";
	
		// query
		MTable table = MTable.get(ctx, MLBRFactFiscal.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		q.setOrderBy(orderBy);
		
		// parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx), DateFrom, DateTo });

		// convert to array
		List<MLBRFactFiscal> list = q.list();
		MLBRFactFiscal[] facts = new MLBRFactFiscal[list.size()];
		return list.toArray(facts);

	}
	
}	//	MLBRADI
