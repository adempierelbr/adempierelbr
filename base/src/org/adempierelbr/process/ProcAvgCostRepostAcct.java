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

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	ProcAvgCostRepostAcct
 *	
 *  @author Ricardo Santana
 *  @contributor Mario Grigioni
 *  @version $Id: ProcAvgCostRepostAcct.java, 01/01/2009 00:51:01 ralexsander Exp $
 */
public class ProcAvgCostRepostAcct extends SvrProcess
{

	private int	  p_LBR_AverageCost_ID = 0;
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
		MPeriod period = new MPeriod(getCtx(), avgCost.getC_Period_ID(), trxName);
		Timestamp startDate = period.getStartDate();
				
		DB.executeUpdate("DELETE Fact_Acct WHERE AD_Table_ID = 472 AND TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("DELETE Fact_Acct WHERE AD_Table_ID = 473 AND TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("DELETE Fact_Acct WHERE AD_Table_ID = 319 AND TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("DELETE Fact_Acct WHERE AD_Table_ID = 321 AND TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("DELETE Fact_Acct WHERE AD_Table_ID = 325 AND TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("DELETE M_CostDetail WHERE M_ProductionLine_ID IN " +
				         "(SELECT M_ProductionLine_ID FROM M_ProductionLine WHERE M_ProductionPlan_ID IN " +
				         "(SELECT M_ProductionPlan_ID FROM M_ProductionPlan WHERE M_Production_ID IN " +
				         "(SELECT M_Production_ID FROM M_Production WHERE TRUNC(MovementDate) >= ?)))", new Object[]{startDate},false, trxName);
		DB.executeUpdate("UPDATE M_InOut SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_InOut SET Posted = 'N' WHERE TRUNC(MovementDate) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("UPDATE M_Inventory SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_Inventory SET Posted = 'N' WHERE TRUNC(MovementDate) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("UPDATE M_MatchInv SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_MatchInv SET Posted = 'N' WHERE TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("UPDATE M_MatchPO SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_MatchPO SET Posted = 'N' WHERE TRUNC(DateAcct) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("UPDATE C_Invoice SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_Movement SET Processing = 'N' WHERE Processing = 'Y'", trxName);
		DB.executeUpdate("UPDATE M_Movement SET Posted = 'N' WHERE TRUNC(MovementDate) >= ?", new Object[]{startDate}, false, trxName);
		DB.executeUpdate("UPDATE M_Production SET Posted = 'N' WHERE TRUNC(MovementDate) >= ?", new Object[]{startDate}, false, trxName);
		
		avgCost.setlbr_AvgStep5(true);
		avgCost.setProcessed(true);
		avgCost.save(trxName);
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt

}	//ProcAvgCostRepostAcct