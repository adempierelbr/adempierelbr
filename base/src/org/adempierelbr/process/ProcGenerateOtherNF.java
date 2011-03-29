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
package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import javax.sql.rowset.CachedRowSet;

import org.adempierelbr.model.MLBROtherNF;
import org.adempierelbr.model.MLBROtherNFLine;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MWarehouse;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.sun.rowset.CachedRowSetImpl;

/**
 *	ProcGenerateOtherNF
 *
 *  Process to Generate Other NF
 *
 *
 *	@author Alvaro Montenegro
 *	@contributor Mario Grigioni (Kenos, www.kenos.com.br) mgrigioni
 *	@version $Id: ProcGenerateOtherNF.java, 29/08/2008 10:38:00 amontenegro
 */
public class ProcGenerateOtherNF extends SvrProcess
{
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}//prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		StringBuffer returnMsg = new StringBuffer();

		Properties ctx = getCtx();
		String     trx = get_TrxName();

		boolean isGenerated = false;
		int LBR_OtherNF_ID  = getRecord_ID();

		try{
			MLBROtherNF otherNF = new MLBROtherNF(ctx,LBR_OtherNF_ID,trx);
			isGenerated = GerarLinhas(otherNF,returnMsg);
			if(!otherNF.isGenerated())
			{
				otherNF.setIsGenerated(isGenerated);
			}
			otherNF.save(trx);
		}
		catch(Exception e){
			log.log(Level.SEVERE, "", e);
		}

		return returnMsg.toString();
	}//doIt

	private boolean GerarLinhas(MLBROtherNF otherNF,StringBuffer returnMsg)
	{
		Properties ctx = getCtx();
		String     trx = get_TrxName();
		int counter = 0;
		//The user decides which warehouse the product will be returned to
		MWarehouse warehouse = new MWarehouse(ctx,otherNF.getM_Warehouse_ID(),trx);

		if(otherNF.getlbr_OtherNF_RequestType().equalsIgnoreCase("mi") && !warehouse.get_ValueAsString("lbr_WarehouseType").equals("3RD"))
		{
			returnMsg.append(org.compiere.util.Msg.translate(ctx, "@WarehouseNotThirdParty@"));
			return false;
		}


		StringBuilder sql = new StringBuilder("SELECT ");
						sql.append("il.qtyinvoiced - ");
						sql.append("(coalesce(( ");
						sql.append("select sum(c_invoiceline.qtyinvoiced) from c_invoiceline ");
						sql.append("inner join c_invoice ON c_invoiceline.c_invoice_id = c_invoice.c_invoice_id ");
						sql.append("inner join c_doctype ON c_invoice.c_doctypetarget_id = c_doctype.c_doctype_id ");
						sql.append("where c_invoiceline.m_product_id = il.m_product_id and c_invoice.c_bpartner_id = i.c_bpartner_id and c_invoiceline.ad_client_id = il.ad_client_id AND ");
						sql.append("c_invoiceline_id = il.c_invoiceline_id AND ");
						sql.append("c_invoiceline.ad_org_id = il.ad_org_id and c_invoice.docstatus = 'CO' and (c_doctype.lbr_docbasetype = 'FARC' or c_doctype.lbr_docbasetype = 'FAFC') ");
						sql.append("),0) + ");
						sql.append("COALESCE((select sum(qty) from lbr_othernfline where processed = 'Y' and iscancelled = 'N' and c_invoiceline_id = il.c_invoiceline_id),0)) ");
						sql.append("as Qty, ");
						sql.append("il.c_invoiceline_id, ");
						sql.append("il.m_product_id, ");
						sql.append("il.c_uom_id, ");
						sql.append("o.documentno ");
						sql.append("FROM ");
						sql.append("c_invoiceline il ");
						sql.append("inner join c_invoice i ON il.c_invoice_id = i.c_invoice_id ");
						sql.append("inner join c_doctype dt ON i.c_doctypetarget_id = dt.c_doctype_id ");
						sql.append("inner join c_order o ON i.c_order_id = o.c_order_id ");
						sql.append("inner join c_orderline ol ON il.c_orderline_id = ol.c_orderline_id ");
						sql.append("WHERE ");
						sql.append("il.ad_client_id = ? AND ");
						sql.append("il.ad_org_id = ? AND ");
						sql.append("i.docstatus = 'CO' AND ");
						sql.append("dt.lbr_docbasetype = 'FAEC' AND ");
						sql.append("i.c_bpartner_id = ?");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CachedRowSet crs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setInt(2, Env.getAD_Org_ID(Env.getCtx()));
			pstmt.setInt(3, otherNF.getC_BPartner_ID());

			rs = pstmt.executeQuery();
			crs = new CachedRowSetImpl();
			crs.populate(rs);
			//
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		       rs = null; pstmt = null;
		}

		try
		{
			while (crs.next())
			{
				if(!(crs.getBigDecimal("Qty").signum() == 0 || crs.getBigDecimal("Qty").signum() == -1) && !C_InvoiceLine_Exists(trx, ctx, crs.getInt("C_InvoiceLine_ID"),otherNF.get_ID()))
				{
					MLBROtherNFLine line = new MLBROtherNFLine(ctx,0,trx);
					line.setLBR_OtherNF_ID(otherNF.get_ID());
					line.setC_InvoiceLine_ID(crs.getInt("C_InvoiceLine_ID"));
					line.setDocumentNo(crs.getString("DocumentNo"));
					line.setM_Product_ID(crs.getInt("M_Product_ID"));
					line.setQty(crs.getBigDecimal("Qty"));
					line.setC_UOM_ID(crs.getInt("C_UOM_ID"));
					if(otherNF.getlbr_OtherNF_RequestType().equalsIgnoreCase("mi"))
					{
						MBPartner bpartner = new MBPartner(ctx,otherNF.getC_BPartner_ID(),trx);
						line.setM_Locator_ID(AdempiereLBR.getM_Locator_ID(otherNF.getM_Warehouse_ID(), bpartner, trx));
					}
					else
					{
						line.setM_Locator_ID(warehouse.getDefaultLocator().getM_Locator_ID());
					}
					line.save(trx);
					counter++;
				}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}

		returnMsg.append("Linhas Geradas : " + counter);
		return counter > 0;
	} //GerarLinhas

	private Boolean C_InvoiceLine_Exists(String trx, Properties ctx, Integer C_InvoiceLine_ID, Integer LBR_OtherNF_ID)
	{
		Boolean returnValue = false;
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT c_invoiceline_id FROM LBR_OtherNFLine WHERE C_InvoiceLine_ID = ? AND LBR_OtherNF_ID = ? ");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(),trx);
			pstmt.setInt(1, C_InvoiceLine_ID);
			pstmt.setInt(2, LBR_OtherNF_ID);
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				returnValue = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		return returnValue;
	} //ProjectLineExists


}