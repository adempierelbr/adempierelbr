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

import org.adempierelbr.model.MOtherNF;
import org.adempierelbr.model.MOtherNFLine;
import org.adempierelbr.util.POLBR;
import org.compiere.model.MBPartner;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

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
			MOtherNF otherNF = new MOtherNF(ctx,LBR_OtherNF_ID,trx);
			isGenerated = GerarLinhas(otherNF);
			otherNF.setIsGenerated(isGenerated);
			otherNF.save(trx);
		}
		catch(Exception e){
			log.log(Level.SEVERE, "", e);
		}
		
		return returnMsg.toString();
	}//doIt
	
	private boolean GerarLinhas(MOtherNF otherNF)
	{
		Properties ctx = getCtx();
		String     trx = get_TrxName();
		
		boolean isGenerated = false;
		
		MBPartner bpartner = new MBPartner(ctx,otherNF.getC_BPartner_ID(),trx);
			
		StringBuffer sql = new StringBuffer("SELECT iLine.C_InvoiceLine_ID, ordA.DocumentNo, ");
						         sql.append("iLine.M_Product_ID, uom.C_UOM_ID, ");
						         sql.append("(iLine.QtyEntered - SUM(COALESCE(oLineB.QtyEntered,0))) as Qty ");
								 sql.append("FROM c_invoiceline iLine ");
								 
								 sql.append("INNER JOIN c_invoice i ON iLine.c_invoice_id = i.c_invoice_id ");
								 sql.append("INNER JOIN c_order ordA ON i.c_order_id = ordA.c_order_id ");
								 sql.append("INNER JOIN c_uom uom ON iLine.c_uom_id = uom.c_uom_id ");
								 sql.append("INNER JOIN lbr_othernflink othernf ON ordA.c_doctypetarget_id = othernf.c_doctype_id ");
								 sql.append("LEFT JOIN lbr_processlink proc ON iLine.c_invoiceline_id = proc.c_invoiceline_id ");
								 sql.append("LEFT JOIN c_orderline oLineB ON proc.c_orderline_id = oLineB.c_orderline_id ");
								 sql.append("LEFT JOIN c_order ordB ON oLineB.c_order_id = ordB.c_order_id ");
								 
								 sql.append("WHERE ordA.docstatus = 'CO' AND (ordB.docstatus IS NULL OR ordB.docstatus = 'CO') ");
								 sql.append("AND iLine.M_Product_ID IS NOT NULL ");
								 sql.append("AND ordA.ad_client_id = ? ");
								 sql.append("AND ordA.C_BPartner_ID=? ");
								 sql.append("AND othernf.c_doctypetarget_id = ?");
		
		sql.append("GROUP BY iLine.c_invoiceline_id, ordA.DocumentNo, iLine.M_Product_ID, ")
		   .append("iLine.qtyentered, uom.C_UOM_ID " )
		   .append("ORDER BY orda.DocumentNo");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setInt(2, otherNF.getC_BPartner_ID());
			pstmt.setInt(3, otherNF.getC_DocType_ID());
				
			rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				MOtherNFLine line = new MOtherNFLine(ctx,0,trx);
				line.setLBR_OtherNF_ID(otherNF.get_ID());
				line.setC_InvoiceLine_ID(rs.getInt("C_InvoiceLine_ID"));
				line.setDocumentNo(rs.getString("DocumentNo")); 
				line.setM_Product_ID(rs.getInt("M_Product_ID"));
				line.setQty(rs.getBigDecimal("Qty"));
				line.setC_UOM_ID(rs.getInt("C_UOM_ID"));
				line.setM_Locator_ID(POLBR.getM_Locator_ID(otherNF.getM_Warehouse_ID(), bpartner, trx));
				line.save(trx);
				
				isGenerated = true;
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return isGenerated;
	} //GerarLinhas
}