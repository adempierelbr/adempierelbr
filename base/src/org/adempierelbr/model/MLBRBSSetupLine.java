package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 * 		Bank Statement Line Setup
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRBSSetupLine.java, v1.0 2016/06/21 12:17:03 PM, ralexsander Exp $
 */
public class MLBRBSSetupLine extends X_LBR_BSSetupLine
{
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_BSSetupLine_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRBSSetupLine (Properties ctx, int LBR_BSSetupLine_ID, String trx)
	{
		super (ctx, LBR_BSSetupLine_ID, trx);
	}	//	MLBRBSSetupLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBSSetupLine (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRBSSetupLine
}	//	MLBRBSSetupLine
