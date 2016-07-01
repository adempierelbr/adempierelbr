package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class MLBRNFConfigSVC extends X_LBR_NFConfig_SVC
{
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFConfigSVC (Properties ctx, int LBR_NFConfig_SVC_ID, String trx)
	{
		super (ctx, LBR_NFConfig_SVC_ID, trx);
	}	//	MLBRNFConfigSVC

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFConfigSVC (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNFConfigSVC
	
	/**
	 * 	Before Save
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		//	Força a mesma Organização da Aba principal
		if (newRecord)
			setAD_Org_ID(getLBR_NFConfig().getAD_Org_ID());
		
		if (getDateFrom().after(getDateTo()))
		{
			log.saveError("FillMandatory", "Data Inicial não pode ser posterior a Data Final");
			return false;
		}
		
		if (getlbr_DateScan().before(getDateFrom()) || getlbr_DateScan().after(getDateTo()))
		{
			log.saveError("FillMandatory", "Data da Contingência não pode ser anterior a Data Inicial ou posterior a Data Final");
			return false;
		}
		
		int length = getlbr_MotivoScan().length();
		if (length < 15 || length > 255)
		{
			log.saveError("FillMandatory", "Tamanho do motivo não permitido (mínimo 15 - máximo 255)");
			return false;
		}
		
		if (LBR_TPEMIS_EmissãoNormal.equals(getLBR_TPEmis()))
		{
			log.saveError("FillMandatory", "Tipo de Emissão inválido, selecione um tipo de emissão de contingência");
			return false;
		}
		return true;
	}	//	beforeSave
	
	/**
	 * 	Get Configuration for this Organization
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRNFConfigSVC get (int AD_Org_ID, Timestamp dh)
	{
		String where = "IsActive='Y' AND AD_Org_ID=? AND " 
					+ DB.TO_DATE (dh, false) + " BETWEEN DateFrom AND DateTo";
		//
		return new Query (Env.getCtx(), Table_Name, where, null)
				.setParameters(AD_Org_ID)
				.setOrderBy("DateFrom DESC").first();
	}
}	//	MLBRNFConfigSVC
