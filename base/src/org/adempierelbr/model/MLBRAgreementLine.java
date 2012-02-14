package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 * 	Agreement Line
 * 
 * 	@author Ricardo Santana (www.kenos.com.br)
 *	@version $Id: MAgreementLine.java, v1.0 2010/06/10 11:40:32 PM, ralexsander Exp $
 */
public class MLBRAgreementLine extends X_LBR_AgreementLine
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRAgreementLine.class);
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRAgreementLine (Properties ctx, int ID, String trx)
	{
		super(ctx,ID,trx);	
	}	//	MAgreementLine
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRAgreementLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MAgreementLine
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getM_Product_ID() == 0 && getLBR_NCM_ID() == 0)
		{
			log.saveError("FillMandatory", Msg.getElement(getCtx(), "M_Product_ID") 
					+ " e/ou " + Msg.getElement(getCtx(), "LBR_NCM_ID"));
			return false;
		}
		//
		if (DB.getSQLValue(null, "SELECT COUNT(*) FROM LBR_AgreementLine WHERE " +
				"LBR_Agreement_ID=? AND LBR_AgreementLine_ID<>? AND M_Product_ID=? AND " +
				"TRUNC(ValidFrom)="+DB.TO_DATE(getValidFrom()), new Object[]
				{getLBR_Agreement_ID(), getLBR_AgreementLine_ID(), getM_Product_ID()}) > 0)
		{
			log.saveError("SaveErrorNotUnique", Msg.getElement(getCtx(), "M_Product_ID"));
			return false;
		}
		//
		if (DB.getSQLValue(null, "SELECT COUNT(*) FROM LBR_AgreementLine WHERE " +
				"LBR_Agreement_ID=? AND LBR_AgreementLine_ID<>? AND LBR_NCM_ID=? AND " +
				"TRUNC(ValidFrom)="+DB.TO_DATE(getValidFrom()), new Object[]
				{getLBR_Agreement_ID(), getLBR_AgreementLine_ID(), getLBR_NCM_ID()}) > 0)
		{
			log.saveError("SaveErrorNotUnique", Msg.getElement(getCtx(), "LBR_NCM_ID"));
			return false;
		}
		//
		return true;
	}	//	beforeSave
}	//	MAgreementLine
