package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 * 		NF DI
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFDI.java, v1.0 2016/02/10 5:49:41 PM, ralexsander Exp $
 */
public class MLBRNFDI extends X_LBR_NFDI
{
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFDI (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRNFDI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFDI (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFDI
	
	/**
	 * 	Before Save
	 * 
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (newRecord || is_ValueChanged(COLUMNNAME_lbr_BPRegion))
		{
			if (getlbr_BPRegion() == null)
				return true;
			
			/**
			 * 	Valida se o estado (UF) é válido
			 */
			int count = DB.getSQLValue(null,  "SELECT COUNT('1') FROM C_Region WHERE C_Country_ID=139 AND Name=UPPER(?)", getlbr_BPRegion());
			if (count != 1)
			{
				log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ @lbr_BPRegion@"));
				return false;
			}
			else
				setlbr_BPRegion(getlbr_BPRegion().toUpperCase());
		}
		return true;
	}	//	beforeSave
}	//	MLBRNFDI
