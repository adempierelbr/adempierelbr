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

import org.adempierelbr.util.BPartnerUtil;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Model for Tax Definition
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: MLBRNCMTax.java, v1.0 2011/11/14 9:38:36 AM, ralexsander Exp $
 */
public class MLBRTaxDefinition extends X_LBR_TaxDefinition
{
	/**
	 *	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Valid Tokens
	 */
	private static final String validTokens = MLBRTaxDefinition.COLUMNNAME_AD_Org_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_C_BPartner_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_C_DocType_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_C_Region_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_To_Region_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_BPartnerCategory_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_FiscalGroup_BPartner_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_IndIEDest
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_FiscalGroup_Product_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_NCM_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_ProductCategory_ID
			 + "," + MLBRTaxDefinition.COLUMNNAME_lbr_IsSubTributaria
			 + "," + MLBRTaxDefinition.COLUMNNAME_IsSOTrx
			 + "," + MLBRTaxDefinition.COLUMNNAME_lbr_TransactionType
			 + "," + MLBRTaxDefinition.COLUMNNAME_lbr_ProductSource
			 + "," + MLBRTaxDefinition.COLUMNNAME_lbr_DestionationType
			 + "," + MLBRTaxDefinition.COLUMNNAME_LBR_TaxRegime
			 + "," + MLBRTaxDefinition.COLUMNNAME_M_Product_ID;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxDefinition (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRTaxDefinition

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxDefinition (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxDefinition
	
	/**
	 * 		Retorna o grupo mais relevante de impost0
	 */
	public static MLBRTaxDefinition[] get (int AD_Org_ID, int C_BPartner_ID, int C_DocType_ID, 
			int C_Region_ID, int To_Region_ID, int LBR_BPartnerCategory_ID, int LBR_FiscalGroup_BPartner_ID, String LBR_IEDest,
			int LBR_FiscalGroup_Product_ID, int LBR_NCM_ID, int LBR_ProductCategory_ID, boolean lbr_IsSubTributaria,
			boolean isSOTrx, String lbr_TransactionType, Timestamp validFrom, String LBR_ProductSource, 
			String lbr_DestionationType, String lbr_TaxRegime, int M_Product_ID)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) ";
		//
		where += "AND (C_BPartner_ID IS NULL OR C_BPartner_ID=?) ";
		where += "AND (C_DocType_ID IS NULL OR C_DocType_ID=?) ";
		where += "AND (C_Region_ID IS NULL OR C_Region_ID=?) ";
		where += "AND (To_Region_ID IS NULL OR To_Region_ID=?) ";
		where += "AND (LBR_BPartnerCategory_ID IS NULL OR LBR_BPartnerCategory_ID=?) ";
		where += "AND (LBR_FiscalGroup_BPartner_ID IS NULL OR LBR_FiscalGroup_BPartner_ID=?) ";
		where += "AND (LBR_FiscalGroup_Product_ID IS NULL OR LBR_FiscalGroup_Product_ID=?) ";
		where += "AND (LBR_NCM_ID IS NULL OR LBR_NCM_ID=?) ";
		where += "AND (LBR_ProductCategory_ID IS NULL OR LBR_ProductCategory_ID=?) ";
		where += "AND LBR_IsSubTributaria IN ('B', ?) ";
		where += "AND IsSOTrx IN ('B', ?) ";
		where += "AND (LBR_TransactionType IS NULL OR lbr_TransactionType=?) ";
		where += "AND (LBR_IndIEDest IS NULL OR LBR_IndIEDest=?) ";
		where += "AND (lbr_DestionationType IS NULL OR lbr_DestionationType=?) ";
		where += "AND (LBR_TaxRegime IS NULL OR LBR_TaxRegime=?) ";
		where += "AND (lbr_ProductSource IS NULL OR lbr_ProductSource=?) ";
		where += "AND (M_Product_ID IS NULL OR M_Product_ID=?) ";
		
		//
		if (validFrom != null)
			where += "AND ValidFrom <= " + DB.TO_DATE(validFrom) + " AND (ValidTo IS NULL OR ValidTo >= " + DB.TO_DATE(validFrom) + ") ";
		
		where += regionFrom (C_Region_ID);
		where += regionTo (To_Region_ID);
		
		//
		List<MLBRTaxDefinition> list = new Query (Env.getCtx(), MLBRTaxDefinition.Table_Name, where, null)
			.setParameters(new Object[]{AD_Org_ID, C_BPartner_ID, C_DocType_ID, C_Region_ID, To_Region_ID, 
					LBR_BPartnerCategory_ID, LBR_FiscalGroup_BPartner_ID, LBR_FiscalGroup_Product_ID, LBR_NCM_ID, 
					LBR_ProductCategory_ID, (lbr_IsSubTributaria ? "Y" : "N"), (isSOTrx ? "Y" : "N"), lbr_TransactionType, 
					LBR_IEDest, lbr_DestionationType, lbr_TaxRegime, LBR_ProductSource, M_Product_ID})
			.setOrderBy("PriorityNo, ValidFrom").list();
		//
		return list.toArray(new MLBRTaxDefinition[list.size()]);
	}	//	get

	private static String regionFrom (int C_Region_ID)
	{
		return region (C_Region_ID, MLBRTaxDefinition.COLUMNNAME_LBR_RegionFrom);		
	}	//	regionFrom
	private static String regionTo (int C_Region_ID)
	{
		return region (C_Region_ID, MLBRTaxDefinition.COLUMNNAME_LBR_RegionTo);
	}	//	regionTo
	private static String region (int C_Region_ID, String column)
	{
		String where = "";
		//
		String region = BPartnerUtil.getBRRegion (C_Region_ID);
		if (region != null)
		{
			where += "AND (" + column + " IS NULL OR " + column + " IN ";

			if (MLBRTaxDefinition.LBR_REGIONFROM_Sul.equals(region))
				where += "('0','5','7')) ";	//	[Sul], [Sul e Sudeste], [Sul, Sudeste exceto ES] 
			
			else if (MLBRTaxDefinition.LBR_REGIONFROM_Sudeste.equals(region))
			{
				where += "('1','5',";		//	[Sudeste], [Sul e Sudeste]
				
				//	ES - Espírito Santo
				if (C_Region_ID != 448)
					where += "'7')) ";		//	[Sul, Sudeste exceto ES] 
				else
					where += "'8')) ";		//	[Norte, Nordeste, Centro-Oeste e ES]
			}
			
			else if (MLBRTaxDefinition.LBR_REGIONFROM_Norte.equals(region))
				where += "('2','6','8')) ";	//	[Norte], [Norte, Nordeste e Centro-Oeste], [Norte, Nordeste, Centro-Oeste e ES]
			
			else if (MLBRTaxDefinition.LBR_REGIONFROM_Nordeste.equals(region))
				where += "('3','6','8')) ";	//	[Nordeste], [Norte, Nordeste e Centro-Oeste], [Norte, Nordeste, Centro-Oeste e ES]
			
			else if (MLBRTaxDefinition.LBR_REGIONFROM_Centro_Oeste.equals(region))
				where += "('4','6','8')) ";	//	[Centro-Oeste], [Norte, Nordeste e Centro-Oeste], [Norte, Nordeste, Centro-Oeste e ES]
		}
		return where;
	}	//	region

	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		//	Validar datas
		if (getValidTo() != null && getValidTo().before(getValidFrom()))
		{
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@Invalid@ @ValidTo@"));
			return false;
		}
		
		/**
		 * 	Validate Script
		 */
		if (getScript() != null && !getScript().isEmpty())
		{
			String token;
			String inStr = getScript();
			StringBuffer outStr = new StringBuffer();

			int i = inStr.indexOf('@');
			while (i != -1)
			{
				outStr.append(inStr.substring(0, i));			// up to @
				inStr = inStr.substring(i+1, inStr.length());	// from first @

				int j = inStr.indexOf('@');						// next @
				if (j < 0)
				{
					log.saveError("Error", "No second tag: " + inStr);
					return false;						//	no second tag
				}

				token = inStr.substring(0, j);

				if (validTokens.indexOf(token) == -1)
				{
					log.saveError("Error", "Invalid token in script: " + token);
					return false;
				}
				
				inStr = inStr.substring(j+1, inStr.length());	// from second @
				i = inStr.indexOf('@');
			}
		}
		
		//	Nõa calcular a prioridade quando a configuração for manual
		if (isManual() && getPriorityNo() != 0)
			return true;
		
		int priorityNo = 0;

		//	Prioridades
		if (getAD_Org_ID() > 0)
			priorityNo += 1000;
		if (getC_BPartner_ID() > 0)
			priorityNo += 10;
		if (getC_DocType_ID() > 0)
			priorityNo += 10;
		if (getC_Region_ID() > 0)
			priorityNo += 10;
		if (getTo_Region_ID() > 0)
			priorityNo += 10;
		if (getLBR_BPartnerCategory_ID() > 0)
			priorityNo += 10;
		if (getLBR_FiscalGroup_BPartner_ID() > 0)
			priorityNo += 10;
		if (getLBR_FiscalGroup_Product_ID() > 0)
			priorityNo += 10;
		if (getLBR_NCM_ID() > 0)
			priorityNo += 10;
		if (getLBR_ProductCategory_ID() > 0)
			priorityNo += 10;
		if (LBR_ISSUBTRIBUTARIA_Both.equals(getlbr_IsSubTributaria()))
			priorityNo += 10;
		if (getlbr_TransactionType() != null && getlbr_TransactionType().length() > 0)
			priorityNo += 10;
		// 	Product Source -> LBR-72
		if (getlbr_ProductSource() != null && getlbr_ProductSource().length() > 0)
			priorityNo += 10;
		if (getLBR_RegionFrom() != null)
			priorityNo += 10;
		if (getLBR_RegionTo() != null)
			priorityNo += 10;
		if (getLBR_IndIEDest() != null && !getLBR_IndIEDest().isEmpty())
			priorityNo += 10;
		if (getM_Product_ID() > 0)
			priorityNo += 10;
		if (getlbr_DestionationType() != null && !getlbr_DestionationType().isEmpty())
			priorityNo += 10;
		if (getLBR_TaxRegime() != null && !getLBR_TaxRegime().isEmpty())
			priorityNo += 10;
		
		//
		setPriorityNo(priorityNo);
		//
		return true;
	}	//	beforeSave
}	//	MLBRTaxDefinition
