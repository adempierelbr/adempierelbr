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
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRApuracaoICMS
 *
 *	Model for X_LBR_ApuracaoICMS
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRApuracaoICMS.java, 21/03/2011 14:57:00 mgrigioni
 */
public class MLBRApuracaoICMS extends X_LBR_ApuracaoICMS {

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
	public MLBRApuracaoICMS(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRApuracaoICMS (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public static MLBRApuracaoICMS get(Properties ctx, int C_Period_ID, int AD_Org_ID){
		String sql = "SELECT MAX(LBR_ApuracaoICMS_ID) FROM LBR_ApuracaoICMS " +
				     "WHERE C_Period_ID = ? AND AD_Org_ID = ?";
		
		int LBR_ApuracaoICMS_ID = DB.getSQLValue(null, sql, new Object[]{C_Period_ID,AD_Org_ID});
		return new MLBRApuracaoICMS(ctx,LBR_ApuracaoICMS_ID,null);
	}
	
	/**
	 * Retorna SALDO do PERIODO ANTERIOR
	 * @param ctx
	 * @param C_Period_ID
	 * @return BigDecimal CumulatedAmt
	 */
	public static BigDecimal getCumulatedAmt(Properties ctx, int C_Period_ID){
		
		BigDecimal amt = null;
		
		String sql = "SELECT TotalAmt FROM LBR_ApuracaoICMS ai " +
				     "WHERE ai.C_Period_ID = " +
				     	"(SELECT p1.C_Period_ID FROM C_Period p1 " +
				     	"WHERE p1.StartDate = " +
				     		"(SELECT TRUNC(p2.StartDate-1,'MM') FROM C_Period p2 " +
				     		"WHERE p2.C_Period_ID = ?) AND p1.AD_Client_ID = ?)";
		
		amt = DB.getSQLValueBD(null, sql, 
				new Object[]{C_Period_ID,Env.getAD_Client_ID(ctx)});
		
		if (amt == null || amt.signum() != 1)
			amt =  Env.ZERO;
		
		return amt;
	} //getCumulatedAmt
	
	/**
	 * Retorna Soma das Linhas por Tipo de Ajuste
	 * @return BigDecimal amt
	 */
	public BigDecimal getAmtByType(String type){
		
		BigDecimal amt = null;
		
		String sql = "SELECT SUM(al.Amt) FROM LBR_ApuracaoICMSLine al " +
				     "WHERE al.LBR_ApuracaoICMS_ID = ? AND al.Type = ?";
		
		amt = DB.getSQLValueBD(null, sql, new Object[]{get_ID(),type});
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getAmtByType
	
	/**************************************************************************
	 *  getLines
	 *  @return X_LBR_ApuracaoICMSLine[] lines
	 */
	public X_LBR_ApuracaoICMSLine[] getLines(){

		String whereClause = "LBR_ApuracaoICMS_ID=?";
		
		MTable table = MTable.get(getCtx(), X_LBR_ApuracaoICMSLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(get_ID());
	 		  query.setOrderBy("Type");

	 	List<X_LBR_ApuracaoICMSLine> list = query.list();
	 	return list.toArray(new X_LBR_ApuracaoICMSLine[list.size()]);
	} //getLines
	
} //MLBRApuracaoICMS