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
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_CFOPLine;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * CalloutDefineCFOP
 * 
 * Callout for C_OrderLine and C_InvoiceLine
 * 
 * @author Fernando Lucktemberg (Faire, www.faire.com.br)
 * @version $Id: CalloutTax.java, 11/12/2007 16:23:00 mgrigioni
 */
public class CalloutDefineCFOP extends CalloutEngine {
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

		//Set query data
		String sql = "select lbr_cfop_id, lbr_cfopline_id from lbr_cfopline where c_doctype_id = ? "
				+ "and (lbr_productcategory_id = ?  or lbr_productcategory_id is null) "
				+ "and (lbr_bpartnercategory_id = ? or lbr_bpartnercategory_id is null) "
				+ "and lbr_destionationtype = ? " 
				+ "and lbr_issubtributaria in('B', ?) "
				+ "and lbr_ismanufactured in('B', ?) "
				+ "and (lbr_transactiontype = ? or lbr_transactiontype is null)";

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
			pstmt.setString(6, POLBR.get_BooleanAsString((Boolean)mp.get_Value("lbr_IsManufactured")));
			pstmt.setString(7, transactionType);
			
			ResultSet rs = pstmt.executeQuery();
			int contRows = 0;
			while(rs.next()){
				contRows++;
			}
			int cont = 0;
			rs = pstmt.executeQuery();
			if(contRows < 2){
				while (rs.next()){
					cfopID = rs.getInt(1);
				}
			}
			else{
				Integer [][] tmp = new Integer[contRows][2];	
				
				//0 - trans 0, parc 0, prod 0 = 0
				//1 - trans 1, parc 0, prod 0 = 1
				//2 - trans 1, parc 2, prod 0 = 3
				//3 - trans 1, parc 2, prod 3 = 6
				//4 - trans 0, parc 2, prod 0 = 2
				//5 - trans 0, parc 2, prod 3 = 5
				//6 - trans 0, parc 0, prod 3 = 3
				int trans = 0, parc = 0, prod = 0;
				cont = 0;
				Vector <X_LBR_CFOPLine> cfopl = new Vector<X_LBR_CFOPLine>();
				while(rs.next()){
					X_LBR_CFOPLine cfop = new X_LBR_CFOPLine(Env.getCtx(), rs.getInt(2), null);
					cfopl.add(cfop);
					if(cfop.getlbr_TransactionType() == null)
						trans = 1;
					if(cfop.getLBR_BPartnerCategory_ID() == 0)
						parc = 2;
					if(cfop.getLBR_ProductCategory_ID() == 0)
						prod =3;
					tmp[cont][0] = (trans+parc+prod);
					tmp[cont][1] = cfop.getLBR_CFOP_ID();
					cont++;
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
			rs.close();
		} catch (Exception e) {
			log.log(Level.WARNING, sql, e);
		}
		
		if (cfopID == null || cfopID.intValue() == 0){
			mTab.setValue("LBR_CFOP_ID", null);
			mTab.getField("LBR_CFOP_ID").setError(true);
		}
		else
			mTab.setValue("LBR_CFOP_ID", cfopID);

		return "";
	}
}
