/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.process;

import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.adempierelbr.model.X_LBR_AverageCostLine;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Average Cost BR
 *	
 *  @author Ricardo Santana
 *  @contributor Mario Grigioni
 *  @version $Id: ProcAvgCostConfirm.java, 30/07/2006 00:51:01 ralexsander Exp $
 */
public class ProcAvgCostConfirm extends SvrProcess
{

	private int	   p_LBR_AverageCost_ID = 0;
	private String costType = "";
	
	public String trxName = null;

	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("lbr_AvgCostType"))
				costType = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_LBR_AverageCost_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		if (p_LBR_AverageCost_ID == 0) {
			log.warning("LBR_AverageCost_ID=" + p_LBR_AverageCost_ID);
			return "ERR: No LBR_AverageCost_ID";
		}
		
		X_LBR_AverageCost avgCost = new X_LBR_AverageCost(getCtx(), p_LBR_AverageCost_ID, trxName);
		
		X_LBR_AverageCostLine[] lines = getLines(p_LBR_AverageCost_ID, costType);
		for (X_LBR_AverageCostLine line : lines){
			
			String sql = "UPDATE M_Cost SET CurrentCostPrice = ? " +
					     "WHERE AD_Client_ID = ? AND M_CostElement_ID = ? " +
					     "AND M_Product_ID = ?";
			DB.executeUpdate(sql, 
					new Object[]{line.getFutureCostPrice(), line.getAD_Client_ID(),
					             avgCost.getM_CostElement_ID(),line.getM_Product_ID()}, 
					false, trxName);
		}
		
		if(costType.equals(X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Purchased)){ //COMPRADO
			avgCost.setlbr_AvgStep2(true);
		}
		else{ //FABRICADO
			avgCost.setlbr_AvgStep4(true);
		}
		
		avgCost.save(trxName);
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	public X_LBR_AverageCostLine[] getLines (int ID, String costType)
	{
		String whereClause = "lbr_AvgCostType=? AND LBR_AverageCost_ID=?";
		
		MTable table = MTable.get(getCtx(), X_LBR_AverageCostLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, trxName);
	 		  query.setParameters(new Object[]{costType,ID});

	 	List<X_LBR_AverageCostLine> list = query.list();
	 	return list.toArray(new X_LBR_AverageCostLine[list.size()]);
	}	//	getLines
	
} //ProcAvgCostConfirm