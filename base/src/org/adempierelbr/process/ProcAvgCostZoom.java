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

import java.util.logging.*;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.adempierelbr.model.X_LBR_AverageCostLine;
import org.compiere.apps.*;
import org.compiere.model.*;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

/**
 * 	ProcAvgCostZoom
 *	
 *  @author Ricardo Santana
 *  @contributor Mario Grigioni
 *  @version $Id: ProcAvgCostZoom.java, 30/07/2006 00:51:01 ralexsander Exp $
 */
public class ProcAvgCostZoom extends SvrProcess
{

	private int	   p_LBR_AverageCostLine_ID = 0;

	private final String  MANUFACTURED = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Manufactured;
	private final String  PUCHASED     = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Purchased;

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
		
		p_LBR_AverageCostLine_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		if (p_LBR_AverageCostLine_ID == 0)
		{
			log.info("LBR_AverageCostLine_ID=" + p_LBR_AverageCostLine_ID);
			return "ERR: No LBR_AverageCostLine_ID";
		}
		
		X_LBR_AverageCostLine avgCostLine = new X_LBR_AverageCostLine(getCtx(), p_LBR_AverageCostLine_ID, null);
		X_LBR_AverageCost avgCost = new X_LBR_AverageCost(getCtx(), avgCostLine.getLBR_AverageCost_ID(), null);		
		MPeriod period = new MPeriod(getCtx(), avgCost.getC_Period_ID(), null);
				
		int AD_Window_ID = 0;
		MQuery query = new MQuery();
		String restriction = "";
		
		if(avgCostLine.getlbr_AvgCostType().equals(MANUFACTURED))
		{
			AD_Window_ID = 191;
			restriction = "M_Production_ID IN (SELECT DISTINCT pp.M_Production_ID " +
					                          "FROM M_Production pr " +
					                          " INNER JOIN M_ProductionPlan pp ON (pr.M_Production_ID = pp.M_Production_ID) " +
					                          "WHERE pr.DocStatus IN ('CL', 'CO', 'RE') " +
					                          "AND pr.AD_Client_ID=" + avgCost.getAD_Client_ID() + " " +
					                          "AND TRUNC(pr.MovementDate) BETWEEN " + DB.TO_DATE(period.getStartDate()) + " AND " + DB.TO_DATE(period.getEndDate()) + " " +
					                          "AND pp.M_Product_ID=" + avgCostLine.getM_Product_ID() + ")";
		}
		else if(avgCostLine.getlbr_AvgCostType().equals(PUCHASED))
		{
			AD_Window_ID = 183;
			restriction = "C_Invoice_ID IN (SELECT DISTINCT i.C_Invoice_ID " +
						"FROM C_Invoice i " +
							 "INNER JOIN C_InvoiceLine il ON (i.C_Invoice_ID = il.C_Invoice_ID) " +
							 "INNER JOIN C_DocType dt ON (dt.C_DocType_ID=i.C_DocTypeTarget_ID) " +
							 "INNER JOIN M_Product p ON (p.M_Product_ID = il.M_Product_ID) " +
						"WHERE i.DocStatus IN ('CL', 'CO') " +
							 "AND p.ProductType = 'I' " +
							 "AND i.AD_Client_ID = " + avgCost.getAD_Client_ID() + " " +
							 "AND i.IsSotrx = 'N' " +
							 "AND p.IsPurchased = 'Y' " +
							 "AND PriceEntered > 0 " +
							 "AND QtyEntered > 0 " +
							 "AND dt.DocBaseType = 'API' " +
							 "AND dt.lbr_HasOpenItems = 'Y' " +
							 "AND i.DateAcct BETWEEN " + DB.TO_DATE(period.getStartDate()) + " AND " + DB.TO_DATE(period.getEndDate()) + " " +
							 "AND il.M_Product_ID=" + avgCostLine.getM_Product_ID() + ")";
		}
		
		query.addRestriction(restriction);
		log.info("AD_Window_ID=" + AD_Window_ID	+ " - " + query); 
		
		AWindow frame = new AWindow(null);
		if (!frame.initWindow(AD_Window_ID, query))
			return "";
		
		AEnv.showCenterScreen(frame);
		frame = null;
		
		return "";
	}	//	doIt	
	
} //ProcAvgCostZoom