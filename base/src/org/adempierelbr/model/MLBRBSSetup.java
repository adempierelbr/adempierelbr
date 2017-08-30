package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 		Bank Statement Setup
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRBSSetup.java, v1.0 2016/06/21 12:16:46 PM, ralexsander Exp $
 */
public class MLBRBSSetup extends X_LBR_BSSetup
{
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBSSetup (Properties ctx, int LBR_BSSetup_ID, String trx)
	{
		super (ctx, LBR_BSSetup_ID, trx);
	}	//	LBR_BSSetup_ID

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBSSetup (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	LBR_BSSetup_ID
	
	/**
	 * 	Return the BS Setup
	 * 	@param C_BankAccount_ID
	 * 	@return MLBRBSSetup
	 */
	public static MLBRBSSetup get (int C_BankAccount_ID)
	{
		return new Query (Env.getCtx(), Table_Name, "C_BankAccount_ID=?", null)
				.setParameters(C_BankAccount_ID)
				.first();
	}	//	get
	
	/**
	 * 	Return the BS Setup
	 * 	@param C_BankAccount_ID
	 * 	@return MLBRBSSetup
	 */
	public MLBRBSSetupLine getMatch (String memo, BigDecimal amt)
	{
		String where = MLBRBSSetupLine.COLUMNNAME_LBR_BSSetup_ID + "=? "
				+ " AND ? LIKE " + MLBRBSSetupLine.COLUMNNAME_Text
				+ " AND ? BETWEEN " + MLBRBSSetupLine.COLUMNNAME_MinAmt + " AND " + MLBRBSSetupLine.COLUMNNAME_MaxAmt;
		return new Query (Env.getCtx(), MLBRBSSetupLine.Table_Name, where, null)
				.setParameters(getLBR_BSSetup_ID(), memo, amt)
				.firstOnly();
	}	//	get
}	//	MLBRBSSetup
