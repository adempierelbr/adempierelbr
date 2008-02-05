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

public class CalloutDefineCFOP extends CalloutEngine {
	public String getCFOP(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {

		Integer M_Product_ID = (Integer) mTab.getValue("M_Product_ID");
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";

		MOrder mo = null;
		MInvoice mi = null;
		if(mTab.getAD_Table_ID() == I_C_OrderLine.Table_ID)
			mo = new MOrder(Env.getCtx(), ((Integer) mTab
				.getValue("C_Order_ID")).intValue(), null);
		else
			mi = new MInvoice(Env.getCtx(), ((Integer) mTab
				.getValue("C_Invoice_ID")).intValue(), null);
		
		Integer C_BPartner_ID = (mo == null) ? mi.getC_BPartner_ID() : mo.getC_BPartner_ID();
		Integer C_BPartner_Location_ID = 
			(mo == null) ? mi.getC_BPartner_Location_ID() : mo.getC_BPartner_Location_ID();
		MBPartner mbp = new MBPartner(Env.getCtx(), C_BPartner_ID, null);
		MBPartnerLocation mbpl = new MBPartnerLocation(Env.getCtx(), C_BPartner_Location_ID, null);
		MLocation mlbp = new MLocation(Env.getCtx(), mbpl.getC_Location_ID(), null);

		Integer bpCat = null;
		if(mbp.isCustomer()){
			Integer lbrCust = (Integer) mbp.get_Value("LBR_CustomerCategory_ID");
			if(lbrCust != null)
				bpCat = lbrCust.intValue();
		}
		else{
			Integer lbrCust  = (Integer) mbp.get_Value("LBR_VendorCategory_ID");
			if(lbrCust != null)
				bpCat = lbrCust.intValue();
		}
		if(bpCat == null) bpCat = 0;
		
		MProduct mp = new MProduct(Env.getCtx(), M_Product_ID.intValue(), null);

		Integer prdCat = (Integer)mp.get_Value("LBR_ProductCategory_ID");
		if(prdCat == null)
			prdCat = 0;
		
		MOrg org = new MOrg(Env.getCtx(), ((Integer) mTab
				.getValue("AD_Org_ID")).intValue(), null);
		MLocation mlo = new MLocation(Env.getCtx(), org.getInfo().getC_Location_ID(),
				null);
		
		String sql = "select lbr_cfop_id from lbr_cfopline where c_doctype_id = ? "
			+ "and (lbr_productcategory_id = ?  or lbr_productcategory_id is null) "
			+ "and (lbr_bpartnercategory_id = ? or lbr_bpartnercategory_id is null) "
			+ "and lbr_destionationtype = ?";

		log.finest(sql);
		PreparedStatement pstmt = null;
		Integer cfopID = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, mo.getC_DocTypeTarget_ID());
			pstmt.setInt(2, prdCat);
			pstmt.setInt(3, bpCat);
			
			if(mbp.get_Value("lbr_Suframa") != null)
				pstmt.setString(4, X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca);
			else if(mlbp.getRegion().equals(mlo.getRegion()))
				pstmt.setString(4, X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdênticos);
			else if(!mlbp.getRegion().equals(mlo.getRegion()) && mlbp.getCountry().equals(mlo.getCountry()))
				pstmt.setString(4, X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes);
			else
				pstmt.setString(4, X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro);
			
			ResultSet rs = pstmt.executeQuery();
			rs = pstmt.executeQuery();

			int cont = 0;
			while(rs.next()){
				cont++;
				cfopID = ((BigDecimal)rs.getBigDecimal("LBR_CFOP_ID")).intValue();
			}
			rs.close();	

			if(cont > 1){
				//TODO - Adicionar mesnagem ao AD
				ADialog.error(mTab.getWindowNo(), null, "Impossível Determinar o CFOP correto");
			}
			return "";
		}
		catch (Exception e)
		{
			log.log(Level.WARNING, sql, e);
		}
		
		mTab.setValue("LBR_CFOP_ID", cfopID);

		return "";
	}
}
