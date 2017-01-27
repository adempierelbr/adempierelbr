package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRCSC extends X_LBR_CSC
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5756020518483727188L;

	public MLBRCSC(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCSC

	public MLBRCSC (Properties ctx, int LBR_CSC_ID, String trxName)
	{
		super (ctx, LBR_CSC_ID, trxName);
	}	//	MLBRCSC
	
	/**
	 * 	Get CSC by Org
	 * 
	 * @param AD_Org_ID
	 * @return MRDTConfig
	 */
	public static MLBRCSC get (int AD_Org_ID)
	{
		return get (MLBRNFConfig.get(AD_Org_ID, MLBRNFConfig.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica));
	}	//	get
	
	/**
	 * 	Get CSC by Config
	 * 
	 * @param AD_Org_ID
	 * @return MRDTConfig
	 */
	public static MLBRCSC get (MLBRNFConfig nfConfig)
	{
		// WHERE
		String where = "LBR_NFConfig_ID=? AND IsActive='Y' ";
		
		// Query
		Query q = new Query(Env.getCtx(), MLBRCSC.Table_Name, where, null)
				.setParameters(new Object[] { nfConfig.getLBR_NFConfig_ID() })
				.setOrderBy("Value DESC");
		//
		return q.first();
	}	//	get
}	//	MLBRCSC
