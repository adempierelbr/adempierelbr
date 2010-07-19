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
package org.adempierelbr.callout;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_OrderLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCharge;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_CFOPLine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * CalloutDefineCFOP
 * 
 * Callout for C_OrderLine and C_InvoiceLine
 * 
 * @author Fernando Lucktemberg (Faire, www.faire.com.br)
 * @contributor Eduardo Montenegro (Kenos, www.kenos.com.br)
 * @contributor Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutDefineCFOP.java, 07/02/2008 13:53:00 fer_luck
 */
public class CalloutDefineCFOP extends CalloutEngine {
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CalloutDefineCFOP.class);
	
	/**
	 *  getCFOP
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 */
	public String getCFOP(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {

		//If product and charge are null, leave the callout
		Integer M_Product_ID = (Integer) mTab.getValue("M_Product_ID");
		Integer C_Charge_ID = (Integer) mTab.getValue("C_Charge_ID");
		if ((M_Product_ID == null || M_Product_ID.intValue() == 0) 
				&& (C_Charge_ID == null || C_Charge_ID.intValue() == 0))
			return "";
		
		if (M_Product_ID == null){
			M_Product_ID = 0;
		}
		
		if (C_Charge_ID == null){
			C_Charge_ID = 0;
		}
		
		//Check if the document is actually an order or an Invoice
		MOrder mo = null;
		MInvoice mi = null;
		if (mTab.getAD_Table_ID() == I_C_OrderLine.Table_ID){
			mo = new MOrder(Env.getCtx(), ((Integer) mTab
					.getValue("C_Order_ID")).intValue(), null);
		}
		else{
			mi = new MInvoice(Env.getCtx(), ((Integer) mTab
					.getValue("C_Invoice_ID")).intValue(), null);
		}
	
		Integer cfopLineID = CalloutDefineCFOP.defineCFOP(ctx, M_Product_ID, C_Charge_ID, mo, mi, null);
		if (cfopLineID != null && cfopLineID.intValue() > 0)
		{
			X_LBR_CFOPLine cfopLine = new X_LBR_CFOPLine (Env.getCtx(), cfopLineID, null);
			Integer cfopID = cfopLine.getLBR_CFOP_ID();
			//
			mTab.setValue("LBR_CFOP_ID", cfopID);
			//
			if (cfopLine.getLBR_LegalMessage_ID() > 0)
				mTab.setValue("LBR_LegalMessage_ID", cfopLine.getLBR_LegalMessage_ID());
			//
			if (cfopLine.getlbr_TaxStatus() != null)
			{
				MProduct p = new MProduct (Env.getCtx(), M_Product_ID, null);
				mTab.setValue("lbr_TaxStatus", p.get_Value("lbr_ProductSource") + cfopLine.getlbr_TaxStatus());
			}
		}
		else
		{
			mTab.setValue("LBR_CFOP_ID", null);
			mTab.getField("LBR_CFOP_ID").setError(true);
		}

		return "";
	}
	
	public static Integer defineCFOP(Properties ctx, int M_Product_ID, MOrder mo, String trx){
		return defineCFOP(ctx,M_Product_ID,0,mo,null,trx);
	}
	public static Integer defineCFOP(Properties ctx, int M_Product_ID, int C_Charge_ID, MOrder mo, String trx){
		return defineCFOP(ctx,M_Product_ID,C_Charge_ID,mo,null,trx);
	}
	
	public static Integer defineCFOP(Properties ctx, int M_Product_ID, MInvoice mi, String trx){
		return defineCFOP(ctx,M_Product_ID,0,null,mi,trx);
	}
	public static Integer defineCFOP(Properties ctx, int M_Product_ID, int C_Charge_ID, MInvoice mi, String trx){
		return defineCFOP(ctx,M_Product_ID,C_Charge_ID,null,mi,trx);
	}
	
	private static Integer defineCFOP(Properties ctx, int M_Product_ID, int C_Charge_ID, MOrder mo, MInvoice mi, String trx){
		
		if (M_Product_ID <= 0 && C_Charge_ID <= 0){
			log.log(Level.WARNING, "M_Product_ID == 0 and C_Charge_ID == 0");
			return null;
		}
		
		Integer vAD_Org_ID = 0;
		//Check if the document is actually an order or an Invoice
		int C_DocTypeTarget_ID = 0;
		//Check for the transaction type on the document header
		String transactionType = null;
		
		if (mo != null){
			C_DocTypeTarget_ID = mo.getC_DocTypeTarget_ID();
			transactionType = (mo.get_Value("lbr_TransactionType") == null) ? ""
					: mo.get_Value("lbr_TransactionType").toString();
			vAD_Org_ID = mo.getAD_Org_ID();
		}
		else if (mi != null){
			C_DocTypeTarget_ID = mi.getC_DocTypeTarget_ID();
			transactionType = (mi.get_Value("lbr_TransactionType") == null) ? ""
					: mi.get_Value("lbr_TransactionType").toString();
			vAD_Org_ID = mi.getAD_Org_ID();
		}
		else{
			log.log(Level.WARNING, "Order and Invoice == null");
			return null;
		}

		//Grab Business Partner data
		Integer C_BPartner_ID = (mo == null) ? mi.getC_BPartner_ID() : mo
				.getC_BPartner_ID();
		Integer C_BPartner_Location_ID = (mo == null) ? mi
				.getC_BPartner_Location_ID() : mo.getC_BPartner_Location_ID();
				
		MBPartner mbp = new MBPartner(ctx, C_BPartner_ID, null);
		MBPartnerLocation mbpl = new MBPartnerLocation(Env.getCtx(),
				C_BPartner_Location_ID, null);
		MLocation mlbp = new MLocation(ctx, mbpl.getC_Location_ID(),
				null);

		Integer bpCat = null;
		if (mbp.isCustomer()) {
			Integer lbrCust = (Integer) mbp
					.get_Value("LBR_CustomerCategory_ID");
			if (lbrCust != null)
				bpCat = lbrCust.intValue();
		} else {
			Integer lbrCust = (Integer) mbp.get_Value("LBR_VendorCategory_ID");
			if (lbrCust != null)
				bpCat = lbrCust.intValue();
		}
		if (bpCat == null)
			bpCat = 0;

		//Grab Product/Charge data
		Integer prdCat = null;
		boolean isSubstitute = false;
		boolean isManufactured = false;
		
		if (M_Product_ID > 0){
			MProduct mp = new MProduct(ctx, M_Product_ID, null);
			prdCat = (Integer) mp.get_Value("LBR_ProductCategory_ID");
			isSubstitute = POLBR.get_ValueAsBoolean(mp.get_Value("lbr_HasSubstitution"));
			isManufactured = POLBR.get_ValueAsBoolean(mp.get_Value("lbr_IsManufactured"));
		}
		else{
			MCharge mc = new MCharge(ctx, C_Charge_ID, null);
			prdCat = (Integer) mc.get_Value("LBR_ProductCategory_ID");
		}
		
		if (prdCat == null)
			prdCat = 0;

		//Grab Organization data
		MOrg org = MOrg.get(ctx, vAD_Org_ID);
		MLocation mlo = new MLocation(ctx, org.getInfo()
				.getC_Location_ID(), null);

		//	Set query data
		String sql = "SELECT LBR_CFOP_ID, LBR_CFOPLine_ID "
				+ "FROM LBR_CFOPLine "
				+ "WHERE C_DocType_ID=? "													//	1
				+ "AND (LBR_ProductCategory_ID = ?  OR LBR_ProductCategory_ID IS NULL) "	//	2
				+ "AND (LBR_BPartnerCategory_ID = ? OR LBR_BPartnerCategory_ID IS NULL) "	//	3
				+ "AND lbr_DestionationType = ? " 											//	4
				+ "AND lbr_IsSubTributaria IN ('B', ?) "									//	5
				+ "AND lbr_IsManufactured IN ('B', ?) "										//	6
				+ "AND (lbr_TransactionType = ? OR lbr_TransactionType IS NULL) "			//	7
				+ "AND AD_Org_ID IN (0, ?)";												//	8

		
		if (mlbp == null || mlo == null)
		{
			log.log(Level.SEVERE,"Location == null");
			return null;
		}
		
		log.finest(sql);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Integer cfopID = null;
		try 
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_DocTypeTarget_ID);
			pstmt.setInt(2, prdCat);
			pstmt.setInt(3, bpCat);
			//
			if (mbp.get_Value("lbr_Suframa") != null)
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca);
			else if (mlbp.getC_Country_ID() != mlo.getC_Country_ID())
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro);
			else if (mlbp.getRegion().equals(mlo.getRegion()))
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos);
			else if (!mlbp.getRegion().equals(mlo.getRegion()))
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes);
			//
 			pstmt.setString(5, isSubstitute ? "Y" :  "N");
			pstmt.setString(6, isManufactured ? "Y" : "N");
			pstmt.setString(7, transactionType);
			pstmt.setInt(8, org.getAD_Org_ID());
			//
			rs = pstmt.executeQuery();
			int contRows = 0;
			while(rs.next()){
				contRows++;
			}
			int cont = 0;
			rs = pstmt.executeQuery();
			if(contRows < 2){
				while (rs.next()){
					cfopID = rs.getInt(2);
				}
			}
			else{
				Integer [][] tmp = new Integer[contRows][2];	

				int points = 0;
				cont = 0;
				Vector <X_LBR_CFOPLine> cfopl = new Vector<X_LBR_CFOPLine>();
				while(rs.next())
				{
					X_LBR_CFOPLine cfop = new X_LBR_CFOPLine(Env.getCtx(), rs.getInt(2), null);
					cfopl.add(cfop);
					//
					if (cfop.getlbr_TransactionType() != null)
						points++;
					if (cfop.getLBR_BPartnerCategory_ID() != 0)
						points += 2;
					if (cfop.getLBR_ProductCategory_ID() != 0)
						points += 3;
					if (cfop.getAD_Org_ID() == 0)
						points += 4;
					else if (cfop.getAD_Org_ID() == org.getAD_Org_ID())
						points += 5;
					//
					tmp[cont][0] = (points);
					tmp[cont][1] = cfop.getLBR_CFOPLine_ID();
					cont++;
					//
					points = 0;
				}
				int idx = 0;
				int cfopn = 0;
				for(int i = 0; i < tmp.length; i++){
					if(tmp[i][0] > idx){
						idx = tmp[i][0];
						cfopn = tmp[i][1];
					}
				}
				cfopID = cfopn;
			}
		} catch (Exception e) {
			log.log(Level.WARNING, sql, e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return cfopID;
	}
	
} //CalloutDefineCFOP