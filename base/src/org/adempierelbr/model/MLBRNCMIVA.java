/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.I_C_BPartner_Location;
import org.compiere.model.MOrgInfo;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRNCMIVA
 *
 *	Model for X_LBR_NCMIVA
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNCMIVA.java, 09/06/2011 14:46:00 mgrigioni
 */
public class MLBRNCMIVA extends X_LBR_NCMIVA {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNCMIVA(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNCMIVA (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	public static MLBRNCMIVA getLBR_NCMIVA(Properties ctx, int LBR_NCM_ID, int C_Region_ID, int To_Region_ID, boolean isSOTrx)
	{

		String sql = "SELECT MAX(LBR_NCMIVA_ID) FROM LBR_NCMIVA " +
			         "WHERE AD_Client_ID = ? AND AD_Org_ID IN (0,?) " +
			       	 "AND C_Region_ID = ? AND To_Region_ID=? AND LBR_NCM_ID = ?";

		int LBR_NCMIVA_ID = DB.getSQLValue(null, sql, 
				new Object[]{Env.getAD_Client_ID(ctx),Env.getAD_Org_ID(ctx), (isSOTrx ? C_Region_ID : To_Region_ID),
						(isSOTrx ? To_Region_ID : C_Region_ID),LBR_NCM_ID});

		return LBR_NCMIVA_ID > 0 ? new MLBRNCMIVA(ctx,LBR_NCMIVA_ID,null) : null;
	} //getLBR_NCMIVA

	public static BigDecimal getProfitPercentage(Properties ctx, int LBR_NCM_ID, int C_Region_ID, int To_Region_ID, boolean isSOTrx){
		MLBRNCMIVA iva = getLBR_NCMIVA(ctx,LBR_NCM_ID,C_Region_ID,To_Region_ID,isSOTrx);
		if (iva != null)
			return iva.getlbr_ProfitPercentage();
		
		return Env.ZERO;
	} //getProfitPercentage
	
	public static BigDecimal getProfitPercentage(Properties ctx, int LBR_NCM_ID, int AD_Org_ID, I_C_BPartner_Location bpLocation, boolean isSOTrx){
		MOrgInfo orgInfo = MOrgInfo.get(ctx,AD_Org_ID,null);
		return getProfitPercentage(ctx,LBR_NCM_ID,orgInfo.getC_Location().getC_Region_ID(),bpLocation.getC_Location().getC_Region_ID(),isSOTrx);
	} //getProfitPercentage
	
} //MLBRNCMIVA