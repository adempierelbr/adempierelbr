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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRDE
 *
 *	Model for X_LBR_DE
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRDE.java, 14/02/2011 14:04:00 mgrigioni
 */
public class MLBRDE extends X_LBR_DE {

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
	public MLBRDE(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDE (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public boolean beforeDelete(){
		
		String sql = "UPDATE LBR_NotaFiscal SET LBR_DE_ID = NULL " +
					     "WHERE LBR_DE_ID = ?";
		if (DB.executeUpdate(sql, get_ID(), false, get_TrxName()) == -1){
			log.severe("Erro ao excluir a Declaração de Exportação");
			return false;
		}
		
		return true;
	} //beforeDelete

	/**
	 * Retorna as Declarações de Exportação por período
	 * @param dateFrom
	 * @param dateTo
	 * @return MLBRDE[]
	 */
	public static MLBRDE[] get(Timestamp dateFrom, Timestamp dateTo, String trxName){

		String whereClause = "AD_Client_ID=? AND " +
				             "AD_Org_ID IN (0,?) AND " +
							 "DateTrx BETWEEN ? AND ?";

		MTable table = MTable.get(Env.getCtx(), MLBRDE.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy("DateDoc");
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),Env.getAD_Org_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRDE> list = q.list();
	    MLBRDE[] des = new MLBRDE[list.size()];
	    return list.toArray(des);
	} //get
	
	/**
	 * Retorna Notas Fiscais atribuídas a Declaração de Exportação
	 * @return MLBRNotaFiscal[]
	 */
	public MLBRNotaFiscal[] getMLBRNotaFiscal(){
		
		String whereClause = "LBR_DE_ID = ?";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), get_TrxName());
              q.setOrderBy("DocumentNo");
              q.setParameters(new Object[]{get_ID()});

        List<MLBRNotaFiscal> list = q.list();
        MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
        return list.toArray(nfs);
	} //getMLBRNotaFiscal
			
} //MLBRDE