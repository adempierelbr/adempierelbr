package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.X_LBR_OtherNF;
import org.compiere.model.X_LBR_OtherNFLine;
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
		String trx = get_TrxName();
		int LBR_OtherNF_ID = getRecord_ID();
		
		X_LBR_OtherNF otherNF = new X_LBR_OtherNF(ctx,LBR_OtherNF_ID,trx);
		GerarLinhas(LBR_OtherNF_ID,otherNF.getC_BPartner_ID(),otherNF.getC_DocType_ID());
		otherNF.setIsGenerated(true);
		otherNF.save(trx);
		
		return returnMsg.toString();
	}//doIt
	
	private void GerarLinhas(int LBR_OtherNF_ID, int C_BPartner_ID, int C_DocType_ID)
	{
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		int index = 0;
		Properties ctx = getCtx();
		String trx = get_TrxName();
			
		StringBuffer sql = new StringBuffer("SELECT invlinea.c_invoiceline_id, orda.DocumentNo, prod.M_Product_ID, " +
										"LOCATOR.M_Locator_ID, (invlinea.qtyentered - SUM(coalesce(ordlineb.qtyentered,0))) as Qty, " +
										"uom.C_UOM_ID " + 
									    "FROM c_invoiceline invlinea " + 
									    "INNER JOIN c_invoice inva ON invlinea.c_invoice_id = inva.c_invoice_id " +
									    "INNER JOIN c_order orda ON inva.c_order_id = orda.c_order_id " +
									    "LEFT JOIN lbr_processlink proc ON invlinea.c_invoiceline_id = proc.c_invoiceline_id " +
									    "LEFT JOIN c_orderline ordlineb ON proc.c_orderline_id = ordlineb.c_orderline_id " +
									    "LEFT JOIN c_order ordb ON ordlineb.c_order_id = ordb.c_order_id " +
									    "INNER JOIN m_product prod ON invlinea.m_product_id = prod.m_product_id " +
										"INNER JOIN c_uom uom ON invlinea.c_uom_id = uom.c_uom_id " +
										"INNER JOIN lbr_othernflink othernf ON orda.c_doctypetarget_id = othernf.c_doctype_id " + 
										"LEFT JOIN m_locator LOCATOR ON prod.m_locator_id = LOCATOR.m_locator_id " + 
									    "WHERE orda.ad_client_id = ? AND " +
										"orda.c_doctypetarget_id IN (SELECT c_doctype_id FROM lbr_othernflink) AND " +
										"orda.docstatus = 'CO' AND (ordb.docstatus = 'CO' OR ordb.docstatus is NULL) ");

		if (C_BPartner_ID != 0){
			sql.append("AND orda.C_BPartner_ID=? ");
			index += 1;
		}
		
		if (C_DocType_ID != 0){
			sql.append("AND othernf.c_doctypetarget_id = ?");
			index += 2;
		}
		
		sql.append("GROUP BY " +
			    "invlinea.c_invoiceline_id, orda.DocumentNo, invlinea.qtyentered, " +
			    "LOCATOR.M_Locator_ID, uom.c_uom_id, prod.M_Product_ID " + 
			    "ORDER BY orda.DocumentNo");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			if(index == 1) pstmt.setInt(2, (Integer)C_BPartner_ID);
			else if(index == 2) pstmt.setInt(2, (Integer)C_DocType_ID);
			else if(index == 3)
			{
				pstmt.setInt(2, (Integer)C_BPartner_ID);
				pstmt.setInt(3, (Integer)C_DocType_ID);
			}
			rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				if(rs.getInt(4) > 0)
				{
					X_LBR_OtherNFLine line = new X_LBR_OtherNFLine(ctx,0,trx);
					line.setLBR_OtherNF_ID(LBR_OtherNF_ID);
					line.setC_InvoiceLine_ID(rs.getInt(1));
					line.setDocumentNo(rs.getString(2)); 
					line.setM_Product_ID(rs.getInt(3));
					line.setM_Locator_ID(rs.getInt(4));
					line.setQty(rs.getBigDecimal(5));
					line.setC_UOM_ID(rs.getInt(6));
					line.save(trx);
				}
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

	} //GerarLinhas
}