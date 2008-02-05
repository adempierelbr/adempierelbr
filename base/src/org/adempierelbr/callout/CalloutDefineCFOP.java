package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.apps.ADialog;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_Order;
import org.compiere.model.I_C_OrderLine;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_CFOPLine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.adempierelbr.util.POLBR;

public class CalloutDefineCFOP extends CalloutEngine {
	public String getCFOP(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {

		//If product is null, leave the callout
		Integer M_Product_ID = (Integer) mTab.getValue("M_Product_ID");
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";

		//Check if the document is actually an order or an Invoice
		MOrder mo = null;
		MInvoice mi = null;
		if (mTab.getAD_Table_ID() == I_C_OrderLine.Table_ID)
			mo = new MOrder(Env.getCtx(), ((Integer) mTab
					.getValue("C_Order_ID")).intValue(), null);
		else
			mi = new MInvoice(Env.getCtx(), ((Integer) mTab
					.getValue("C_Invoice_ID")).intValue(), null);

		//Check for the transaction type on the document header
		String transactionType = null;
		if (mTab.getAD_Table_ID() == I_C_OrderLine.Table_ID)
			transactionType = (mo.get_Value("lbr_TransactionType") == null) ? ""
				: mo.get_Value("lbr_TransactionType").toString();
		else
			transactionType = (mi.get_Value("lbr_TransactionType") == null) ? ""
				: mi.get_Value("lbr_TransactionType").toString();

		//Grab Business Partner data
		Integer C_BPartner_ID = (mo == null) ? mi.getC_BPartner_ID() : mo
				.getC_BPartner_ID();
		Integer C_BPartner_Location_ID = (mo == null) ? mi
				.getC_BPartner_Location_ID() : mo.getC_BPartner_Location_ID();
		MBPartner mbp = new MBPartner(Env.getCtx(), C_BPartner_ID, null);
		MBPartnerLocation mbpl = new MBPartnerLocation(Env.getCtx(),
				C_BPartner_Location_ID, null);
		MLocation mlbp = new MLocation(Env.getCtx(), mbpl.getC_Location_ID(),
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

		//Grab Product data
		MProduct mp = new MProduct(Env.getCtx(), M_Product_ID.intValue(), null);

		Integer prdCat = (Integer) mp.get_Value("LBR_ProductCategory_ID");
		if (prdCat == null)
			prdCat = 0;

		//Grab Organization data
		MOrg org = new MOrg(Env.getCtx(),
				((Integer) mTab.getValue("AD_Org_ID")).intValue(), null);
		MLocation mlo = new MLocation(Env.getCtx(), org.getInfo()
				.getC_Location_ID(), null);

		String sql = "select lbr_cfopline_id from lbr_cfopline where c_doctype_id = ? "
				+ "and (lbr_productcategory_id = ?  or lbr_productcategory_id is null) "
				+ "and (lbr_bpartnercategory_id = ? or lbr_bpartnercategory_id is null) "
				+ "and lbr_destionationtype = ? " 
				+ "and lbr_issubtributaria in('B', ?) ";

		log.finest(sql);
		PreparedStatement pstmt = null;
		Integer cfopID = null;
		try {
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, mo.getC_DocTypeTarget_ID());
			pstmt.setInt(2, prdCat);
			pstmt.setInt(3, bpCat);

			if (mbp.get_Value("lbr_Suframa") != null)
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca);
			else if (mlbp.getRegion().equals(mlo.getRegion()))
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdênticos);
			else if (!mlbp.getRegion().equals(mlo.getRegion())
					&& mlbp.getCountry().equals(mlo.getCountry()))
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes);
			else
				pstmt.setString(4,
						X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro);

			boolean isSubstitute = POLBR.get_ValueAsBoolean(mp.get_Value("lbr_HasSubstitution")) &&
			POLBR.get_ValueAsBoolean(mbp.get_Value("lbr_HasSubstitution"));
			pstmt.setString(5, isSubstitute ? "Y" :  "N");
			
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();

			int cont = 0;
			boolean teste = false;
			boolean isManufactured;
			while (rs.next()) {
				teste = false;
				/**
				 * End User - Exempt
				 * 	The order header is set to End User and the BP IE is not set
				 * End User
				 * 	The order header is set to End User and the BP IE is set
				 * Manufacturing
				 * 	The order header is set to Manufacturing
				 * Resale
				 * 	Product does not have internal production (Internal Production flag
				 * 	not set), and order header set as End User.
				 * Import
				 * 	Vendor's Country is different from Org country
				 * Export
				 * 	Customer's Country is different from Org country
				 */
				X_LBR_CFOPLine cfopl = new X_LBR_CFOPLine(Env.getCtx(), rs.getInt(1), null);
				
				isManufactured = cfopl.getlbr_IsManufactured().equals(mp.get_ValueAsString("lbr_IsManufactured"));
				
				if(transactionType.equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_EndUser) &&
					cfopl.getlbr_TransactionType().equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_EndUserIEExempt) &&
					mbp.get_Value("lbr_IE") == null && isManufactured){
					teste = true;
					cont++;
				}
				else if(transactionType.equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_EndUser) && 
						cfopl.getlbr_TransactionType().equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_EndUser) &&
						mbp.get_Value("lbr_IE") != null && isManufactured){
					teste = true;
					cont++;
				}
				else if(transactionType.equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_Manufacturing) && 
						cfopl.getlbr_TransactionType().equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_Manufacturing) &&
						isManufactured){
					teste = true;
					cont++;
				}
				else if(transactionType.equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_Resale) &&
						cfopl.getlbr_TransactionType().equals(X_LBR_CFOPLine.LBR_TRANSACTIONTYPE_Resale) &&
						isManufactured){
					teste = true;
					cont++;
				}
				if(teste == true && cont == 1)
					cfopID = cfopl.getLBR_CFOP_ID();
				else if(cont > 1)
					continue;
			}
			rs.close();

			if (cont > 1) {
				// TODO - Adicionar mesnagem ao AD
				ADialog.error(mTab.getWindowNo(), null,
						"Impossível Determinar o CFOP correto");
				return "";
			}
		} catch (Exception e) {
			log.log(Level.WARNING, sql, e);
		}

		mTab.setValue("LBR_CFOP_ID", cfopID);

		return "";
	}
}
