package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;


public class MLBRNFConfig extends X_LBR_NFConfig
{
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFConfig (Properties ctx, int LBR_NFConfig_ID, String trx)
	{
		super (ctx, LBR_NFConfig_ID, trx);
	}	//	MLBRNFConfig

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFConfig (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNFConfig
	
	/**
	 * 	Before Save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Modo de Contingência ATIVADO
		if (!LBR_TPEMIS_EmissãoNormal.equals (getLBR_TPEmis()))
		{
			if (getlbr_DateScan() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "lbr_DateScan"));
				return false;
			}
			
			if (getlbr_MotivoScan() == null)
			{
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "lbr_MotivoScan"));
				return false;
			}
			
			int length = getlbr_MotivoScan().length();
			if (length < 15 || length > 255)
			{
				log.saveError("FillMandatory", "Tamanho do motivo não permitido (mínimo 15 - máximo 255)");
				return false;
			}
		}
		
		else
		{
			setlbr_DateScan(null);
			setlbr_MotivoScan(null);
		}

		return true;
	}	//	beforeSave
	
	/**
	 * 	Get Configuration for this Organization
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRNFConfig get (int AD_Org_ID)
	{
		return new Query (Env.getCtx(), Table_Name, "AD_Org_ID=?", null).setParameters(AD_Org_ID).first();
	}	//	get
}	//	MLBRNFConfig
