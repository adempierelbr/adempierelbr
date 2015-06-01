package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 		Sales with Credit Card
 * 
 * 	@author Priscila Pinheiro (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRSalesCardTotal.java, v1.0 2013/02/26 11:04:57 AM, ralexsander Exp $
 */
public class MLBRSalesCardTotal extends X_LBR_SalesCardTotal
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 	Constructor
	 * 
	 * @param ctx
	 * @param LBR_SalesCardTotal_ID
	 * @param trxName
	 */
	public MLBRSalesCardTotal (Properties ctx, int LBR_SalesCardTotal_ID, String trxName)
	{
		super (ctx, LBR_SalesCardTotal_ID, trxName);
	}	//	MLBRSalesCardTotal

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRSalesCardTotal (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRSalesCardTotal
	
	/**
	 * Retornar Vendas com cartão de crédito e débito
	 * 
	 * @param ctx
	 * @param Period
	 * @param AD_Org_IDs Array com um conjunto de organizações ou NULL para todas 
	 * @return
	 */
	public static MLBRSalesCardTotal[] get (Properties ctx, Integer C_Period_ID, String trxName) throws Exception
	{
		// Client
		String whereClause = " AD_Client_ID = ? ";

		// Period
		if(C_Period_ID != null)
		{
			whereClause += " AND C_Period_ID = ? "; 
		}		
		
		// query
		MTable table = MTable.get(ctx, MLBRSalesCardTotal.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		
		// parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx), C_Period_ID});

		// convert to array
		List<MLBRSalesCardTotal> list = q.list();
		MLBRSalesCardTotal[] cards = new MLBRSalesCardTotal[list.size()];
		return list.toArray(cards);
	}	//	get
}	//	MLBRSalesCardTotal
