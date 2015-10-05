/******************************************************************************
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *                                                                            *
 *  Copyright (C) 2015 Kenos Assessoria e Consultoria de Sistemas Ltda        *
 *****************************************************************************/

package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.X_I_Replenish;
import org.compiere.model.MProduct;
import org.compiere.model.MReplenish;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Import Replenish for Products
 *
 * 	@author Rogério Alves Feitosa (Kenos, www.kenos.com.br)	
 * 	@version $Id: ImportReplenish.java, v1.0 2015/MM/DD 19:26:52, rfeitosa Exp $
 */
public class ImportReplenish extends SvrProcess
{
	/**	Client to be imported to		*/
	private int 			p_AD_Client_ID = 0;
	/**	Delete old Imported			*/
	private boolean			p_DeleteOldImported = false;
	/**	Import						*/
	private int				p_I_Replenish_ID = 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				p_DeleteOldImported = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_I_Replenish_ID = getRecord_ID();
		
	} //prepare

	/**
	 * 	doIt
	 *	@return info
	 */
	protected String doIt() throws Exception
	{
		log.info("I_Replenish_ID=" + p_I_Replenish_ID);
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = " AND AD_Client_ID=" + p_AD_Client_ID;
		
		//	Delete Old Imported
		if (p_DeleteOldImported)
		{
			sql = new StringBuffer ("DELETE FROM I_Replenish "
				  + "WHERE I_IsImported='Y'").append (clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.fine("Delete Old Impored =" + no);
		}
		
		//		Set IsActive, Created/Updated
			sql = new StringBuffer ("UPDATE I_Replenish "
				+ "SET IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = '',"
				+ " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info ("Reset=" + no);
			
			//	Error Product
			sql = new StringBuffer ("UPDATE I_Replenish r "
				+ "SET I_IsImported='N', I_ErrorMsg=I_ErrorMsg||'ERR=Value AND M_Product_ID CAN NOT BE NULL' "
				+ "WHERE (M_Product_ID IS NULL AND Value IS NULL) "
				+ "AND I_IsImported<>'Y'");
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			if (no != 0)
				log.warning ("Invalid Replenish=" + no);
			
			//	Error Warehouse
			sql = new StringBuffer ("UPDATE I_Replenish r "
				+ "SET I_IsImported='N', I_ErrorMsg=I_ErrorMsg||'ERR=Warehouse CAN NOT BE NULL' "
				+ "WHERE (M_Warehouse_ID IS NULL) "
				+ "AND I_IsImported<>'Y'");
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			if (no != 0)
				log.warning ("Invalid Replenish=" + no);
			
			//	Error ReplenishType
			sql = new StringBuffer ("UPDATE I_Replenish r "
				+ "SET I_IsImported='N', I_ErrorMsg=I_ErrorMsg||'ERR=ReplenishType CAN NOT BE NULL' "
				+ "WHERE (ReplenishType IS NULL) "
				+ "AND I_IsImported<>'Y'");
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			if (no != 0)
				log.warning ("Invalid Replenish=" + no);
			
			commitEx();
			/*********************************************************************/
			
			int noInsert = 0;
			int noUpdate = 0;
			
			PreparedStatement pstmt = null;
			sql = new StringBuffer ("SELECT * FROM I_Replenish "
				+ "WHERE I_IsImported='N' AND I_ErrorMsg = ''").append (clientCheck)
				.append(" ORDER BY I_Replenish_ID");
			no = 0;
			try
			{
				pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
				ResultSet rs = pstmt.executeQuery ();
				boolean updated = false;
				
				while (rs.next ())
				{	
					updated = false;
					X_I_Replenish importLine = new X_I_Replenish (getCtx(), rs, get_TrxName());
					if (importLine == null || importLine.get_ID() == 0)
					{
						continue;
					}
					else
					{
						MProduct product = null;
						
						if (importLine.getM_Product_ID() != 0)
							product = new MProduct (Env.getCtx(), importLine.getM_Product_ID(), null);
						else if (!importLine.getValue().isEmpty())
						{
							product = new Query(Env.getCtx(), MProduct.Table_Name, "Value = ? AND AD_Client_ID = ?", null)
												.setParameters(importLine.getValue(), p_AD_Client_ID)
												.first();
						}
						
						if (product != null)
						{
							List <MReplenish> listRep = MReplenish.getForProduct(Env.getCtx(), product.getM_Product_ID(), get_TrxName());
							for (MReplenish repfromlist : listRep)
							{
								//	Se o Reabastecimento já estiver cadastrado para o mesmo armazém.
								//	atualizar as informações
								if (repfromlist.getM_Warehouse_ID() == importLine.getM_Warehouse_ID())
								{
									if (repfromlist.getM_Locator_ID() == 0)
										repfromlist.setM_Locator_ID(importLine.getM_Locator_ID());
									repfromlist.setLevel_Min(importLine.getLevel_Min());
									repfromlist.setLevel_Max(importLine.getLevel_Max());
									
									if (repfromlist.save())
									{
										// Import
										importLine.setI_IsImported(true);
										importLine.setProcessed(true);
										if (importLine.save())
										{
											noUpdate++;
											updated = true;
										}
									}
								}
							}
							//	Se o Reabastecimento para o armazém não existir, cadastrar.
							if (!updated)
							{
								MReplenish rep = new MReplenish (Env.getCtx(), 0, get_TrxName());
								rep.set_ValueOfColumn("AD_Client_ID", product.getAD_Client_ID());
								rep.setAD_Org_ID(product.getAD_Org_ID());
								rep.setM_Product_ID(product.getM_Product_ID());
								rep.setM_Warehouse_ID(importLine.getM_Warehouse_ID());
								rep.setM_Locator_ID(importLine.getM_Locator_ID());
								rep.setReplenishType(importLine.getReplenishType());
								rep.setLevel_Min(importLine.getLevel_Min());
								rep.setLevel_Max(importLine.getLevel_Max());
								if (rep.save())
								{
									//	Import
									importLine.setI_IsImported(true);
									importLine.setProcessed(true);
									if (importLine.save())
										noInsert++;
								}
							}
						}
					}
				}
				rs.close ();
				pstmt.close ();
				pstmt = null;
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, sql.toString(), e);
			}
			try
			{
				if (pstmt != null)
					pstmt.close ();
				pstmt = null;
			}
			catch (Exception e)
			{
				pstmt = null;
			}
			
			addLog (0, null, new BigDecimal (no), "@Errors@");
			addLog (0, null, new BigDecimal (noInsert), "@M_Replenish_ID@: @Inserted@");
			addLog (0, null, new BigDecimal (noUpdate), "@M_Replenish_ID@: @Updated@");
			return "";
	}	//	doIt
}