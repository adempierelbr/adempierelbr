/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.MLBRTax;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPriceList;
import org.compiere.model.MProductPO;
import org.compiere.model.MProductPrice;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.jfree.util.Log;

/**
 * Save util data from PO and Invoice to autofill the nexts
 * 
 * @author Marcelo Luiz Onhate
 * @contributor Pablo Boff Pigozzo  pablobp4 17/03/2011
 * @version $Id: MProductMovementFiller.java,v 1.0 2010/10/07 08:57:01 monhate
 */
public class MLBRProductMovementFiller extends CalloutEngine {

	protected int p_M_Product_ID;
	protected int p_C_BPartner_ID;
	protected boolean p_Exists;
	protected MProductPO p_MProductPO = null;

	protected boolean verifyPrepareLine(PO po) {
		
		// Verify...
		if (po == null)
			return false;
		
		p_M_Product_ID = (Integer) po.get_Value("M_Product_ID");
		boolean bOk = p_M_Product_ID > 0 && (Boolean) po.get_Value("LBR_UpdateProduct");

		
		// Prepare...
		if (bOk) {
		
			/* Now the Current Vendor is the PO/Invoice Vendor... */
			String sql = " UPDATE M_Product_PO SET IsCurrentVendor = 'N' WHERE M_Product_ID = ?";
			DB.executeUpdate(sql, p_M_Product_ID, po.get_TrxName());
			
			/* To know if Update or Insert... */
			p_MProductPO = new MProductPO(po.getCtx(), 0, po.get_TrxName());
			p_MProductPO.setM_Product_ID(p_M_Product_ID);
			p_MProductPO.setC_BPartner_ID(p_C_BPartner_ID);
			
			try {
				p_Exists = p_MProductPO.load(po.get_TrxName());
				if (!p_Exists) {
					p_MProductPO = new MProductPO(po.getCtx(), 0, po.get_TrxName());
					p_MProductPO.setM_Product_ID(p_M_Product_ID);
					p_MProductPO.setC_BPartner_ID(p_C_BPartner_ID);
				}
			} catch (Exception e) {}
		}
		return bOk;
	}

	protected boolean verifyPreparePO(PO po) {
		// Verify...
		boolean bOk = po != null && MSysConfig.getBooleanValue("LBR_AUTOUPDATE_MPRODUCTPO", false) && !(Boolean)po.get_Value("isSOTrx");

		// Prepare...
		if (bOk) 
			p_C_BPartner_ID = (Integer) po.get_Value("C_BPartner_ID");
		
		return bOk;
	}

	private void saveMProductPO() {
		p_MProductPO.save();
		// Here can be update de Price List to... Update the prices of the Price
		// List with the real values...
	}

	private void setVendorProductNo(String _p, String lineVPN) {
		// If the current VendorProductNo is Product_Partner it's not entered in
		// PO/Inv.
		// Or if is new MProductPO...
		if (!lineVPN.endsWith(_p) || p_MProductPO.getVendorProductNo() == null) 
			p_MProductPO.setVendorProductNo(lineVPN);
		
	}

	private void setVendorProductNo(MOrder po, MOrderLine line) {
		String vpn = line.get_ValueAsString("VendorProductNo");
		String _p = "_" + line.getProduct().getValue();
		if (vpn == null || vpn.equals("")) {
			try {
				vpn = new MBPartner(po.getCtx(), po.getC_BPartner_ID(), po.get_TrxName()).getValue() + _p;
			} catch (Exception e) {
				// =)
			}
		}
		setVendorProductNo(_p, vpn);
	}

	private void setVendorProductNo(MInvoice po, MInvoiceLine line) {
		String vpn = line.get_ValueAsString("VendorProductNo");
		String _p = "_" + line.getProduct().getValue();
		if (vpn == null || vpn.equals("")) {
			try {
				vpn = new MBPartner(po.getCtx(), po.getC_BPartner_ID(), po.get_TrxName()).getValue() + _p;
			} catch (Exception e) {
				// =)
			}
		}
		setVendorProductNo(_p, vpn);
	}

	private void setDefaultsInMProductPO(PO po, PO line) {
		p_MProductPO.setIsCurrentVendor(true);
		p_MProductPO.setC_UOM_ID((Integer) line.get_Value("C_UOM_ID"));
		p_MProductPO.setPriceList((BigDecimal) line.get_Value("PriceList"));
		p_MProductPO.setC_Currency_ID((Integer) po.get_Value("C_Currency_ID"));
	}

	/* PUBLICS */

	/**
	 * This method saves all items marked with UpdateProduct in MProductPO
	 * 
	 * @param po
	 *            The MOrder to save items in MProductPO
	 */
	public void saveThis(MOrder po) {
		if (!verifyPreparePO(po))
			return;
		
		MOrderLine[] lines = po.getLines(true, "Line");
		for (MOrderLine line : lines) {
			if (!verifyPrepareLine(line))
				continue;

			setDefaultsInMProductPO(po, line);
			p_MProductPO.setAD_Org_ID(po.getAD_Org_ID());
			p_MProductPO.setCostPerOrder(line.getPriceCost());
			p_MProductPO.setPriceLastPO(line.getPriceEntered());
			p_MProductPO.setPriceEffective(po.getDateOrdered());
			setVendorProductNo(po, line);

			saveMProductPO();
		}
	}

	/**
	 * This method saves all items marked with UpdateProduct in MProductPO
	 * @param po The MInvoice to save items in MProductPO
	 */
	public void saveThis(MInvoice po) {
		
		if (!verifyPreparePO(po))
			return;
		
		MInvoiceLine[] lines = po.getLines(true);
		for (MInvoiceLine line : lines) {
			if (!verifyPrepareLine(line))
				continue;

			setDefaultsInMProductPO(po, line);
			p_MProductPO.setAD_Org_ID(po.getAD_Org_ID());
			p_MProductPO.setPriceLastInv(line.getPriceEntered());
			p_MProductPO.setPriceEffective(po.getDateInvoiced());
			setVendorProductNo(po, line);
			saveMProductPO();
			
			if (MSysConfig.getBooleanValue("LBR_UPDATE_PRICELIST_WITH_PO", false)) {
				
				int M_Product_ID = line.getM_Product_ID();
				int M_PriceList_Version_ID = new MPriceList(po.getCtx(),po.getM_PriceList_ID(), po.get_TrxName()).getPriceListVersion(po.getDateInvoiced()).getM_PriceList_Version_ID();
				MProductPrice pp = new MProductPrice(po.getCtx(), M_PriceList_Version_ID, M_Product_ID, po.get_TrxName());
				
				pp.setPriceStd(line.getPriceEntered());
				pp.setPriceList(line.getPriceList());
				
				if(line.getPriceLimit().compareTo(line.getPriceEntered()) == 1)
					pp.setPriceLimit(line.getPriceEntered());
				else if(line.getPriceLimit().signum() == 1) 
					pp.setPriceLimit(line.getPriceLimit());
								
				DB.executeUpdate( "DELETE FROM m_productprice p WHERE p.m_product_id=? AND p.m_pricelist_version_id=? ",
						new Integer[] { M_Product_ID, M_PriceList_Version_ID }, true, po.get_TrxName());
				
				pp.save();
			}
		}
	}

	/**
	 * @param ctx Context
	 * @param WindowNo current Window No
	 * @param mTab Model Tab
	 * @param mField Model Field
	 * @param value The new value
	 * @return Error message or "" Table - C_OrderLine / Column M_Product_ID FR [ 3079621 ]
	 */
	public String getLastPO(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {

		// It's optional
		if (!MSysConfig.getBooleanValue("LBR_AUTOFILL_ORDERLINE_WITH_LAST", false))
			return "";		
		
		// Somente PO
		MOrder order = new MOrder(ctx, (Integer) mTab.getValue("C_Order_ID"), null);
		if(order.isSOTrx())
			return "";		
		
		// Produto inválido
		if(mTab.getValue("M_Product_ID") == null)
			return "";

		String sql = 	" SELECT l.c_orderline_id 									" +
						" FROM c_orderline l 										" +
						"   	INNER JOIN c_order o ON o.c_order_id = l.c_order_id " +
						" WHERE l.m_product_id = ? 									" +
						"   AND o.c_bpartner_id = ? 								" +
						"   AND o.DocStatus = 'CO'									" +
						"   AND o.IsSOTrx = 'N'										" +
						" ORDER BY l.dateordered DESC, l.c_orderline_id DESC 		";
		int last_C_OrderLine_ID = DB.getSQLValue(null, sql, (Integer) mTab.getValue("M_Product_ID"), order.getC_BPartner_ID());
		
		if (last_C_OrderLine_ID <= 0)
			return "";
	
		// VendorProductNo
		String VendorProductNo = getVendorProductNo(ctx, (Integer) mTab.getValue("M_Product_ID"), order.getC_BPartner_ID());
		if(!VendorProductNo.isEmpty())
			mTab.setValue("VendorProductNo", VendorProductNo);		
		
		// Último Pedido de Compra
		MOrderLine lastLine = new MOrderLine(ctx, last_C_OrderLine_ID, null);
		mTab.setValue("C_Tax_ID", lastLine.getC_Tax_ID());
		mTab.setValue("C_UOM_ID", lastLine.getC_UOM_ID());
		mTab.setValue("M_AttributeSetInstance_ID", lastLine.getM_AttributeSetInstance_ID());
		mTab.setValue("FreightAmt", lastLine.getFreightAmt());
		mTab.setValue("PriceEntered", lastLine.getPriceEntered());
		mTab.setValue("PriceList", lastLine.getPriceList());
		mTab.setValue("PriceLimit", lastLine.getPriceLimit());
		mTab.setValue("PriceCost", lastLine.getPriceCost());
		mTab.setValue("Discount", lastLine.getDiscount());
		
		if (lastLine.getUser1_ID() > 0)
			mTab.setValue("User1_ID", lastLine.getUser1_ID());
		
		if (lastLine.getUser2_ID() > 0)
			mTab.setValue("User2_ID", lastLine.getUser2_ID());
		
		mTab.setValue("C_Currency_ID", lastLine.getC_Currency_ID());
		mTab.setValue("Qty", BigDecimal.ONE);
		
		// here goes customization for Brazilian Taxes...
		if (lastLine.get_Value("LBR_CFOP_ID") != null)
			mTab.setValue("LBR_CFOP_ID", lastLine.get_Value("LBR_CFOP_ID"));

		if (!lastLine.get_ValueAsString("LBR_TaxStatus").equals(""))
			mTab.setValue("LBR_TaxStatus",lastLine.get_Value("LBR_TaxStatus"));
					
		Integer LBR_Tax_ID = (Integer) lastLine.get_Value("LBR_Tax_ID");
		if (LBR_Tax_ID != null) {
			MLBRTax tax = new MLBRTax(ctx, LBR_Tax_ID, null);
			if (!tax.isActive())
				return "";

			GridField LBR_Tax = mTab.getField("LBR_Tax_ID");

			Integer currentLBR_Tax = (Integer) mTab.getValue("LBR_Tax_ID");
			if (currentLBR_Tax == null || currentLBR_Tax.intValue() == 0) {
				MLBRTax newTax = tax.copyTo();
				currentLBR_Tax = newTax.get_ID();
			} else {
				tax.copyLinesTo(currentLBR_Tax);
			}
			mTab.setValue("LBR_Tax_ID", currentLBR_Tax);
			LBR_Tax.setValue(currentLBR_Tax, true);
		}
		
		
		// Brazilian Taxes...
		return "";
		
	}

	/**
	 * @param ctx Context
	 * @param WindowNo current Window No
	 * @param mTab Model Tab
	 * @param mField Model Field
	 * @param value The new value
	 * @return Error message or "" Table - C_InvoiceLine / Column M_Product_ID FR [ 3079621 ]
	 */
	public String getLastInv(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		
		// It's optional
		if (!MSysConfig.getBooleanValue("LBR_AUTOFILL_INVOICELINE_WITH_LAST", false))
			return "";

		// Somente PO
		MInvoice inv = new MInvoice(ctx,(Integer) mTab.getValue("C_Invoice_ID"), null);
		if(inv.isSOTrx())
			return "";

		// Produto é válido
		if(mTab.getValue("M_Product_ID") == null)
			return "";		
		
		String sql =  	" SELECT l.c_invoiceline_id 										" +
						" FROM c_invoiceline l 												" +
						" 		INNER JOIN c_invoice i ON i.c_invoice_id = l.c_invoice_id 	" +
						" WHERE l.m_product_id = ? 											" +
						"	AND i.c_bpartner_id = ?											" +
						"   AND i.DocStatus = 'CO' 											" +
						"   AND i.IsSOTrx = 'N'												" +
						" ORDER BY i.dateinvoiced DESC, l.c_invoiceline_id DESC 			";
		int last_C_InvoiceLine_ID = DB.getSQLValue(null, sql, (Integer) mTab.getValue("M_Product_ID"), inv.getC_BPartner_ID());
		if (last_C_InvoiceLine_ID <= 0) 
			return "";
		
		// Última Fatura
		MInvoiceLine lastLine = new MInvoiceLine(ctx, last_C_InvoiceLine_ID, null);
		mTab.setValue("C_Tax_ID", lastLine.getC_Tax_ID());
		mTab.setValue("C_UOM_ID", lastLine.getC_UOM_ID());
		mTab.setValue("M_AttributeSetInstance_ID",lastLine.getM_AttributeSetInstance_ID());
		mTab.setValue("PriceEntered", lastLine.getPriceEntered());
		mTab.setValue("PriceList", lastLine.getPriceList());
		mTab.setValue("PriceLimit", lastLine.getPriceLimit());
		
		if (lastLine.getUser1_ID() > 0)
			mTab.setValue("User1_ID", lastLine.getUser1_ID());
		
		if (lastLine.getUser2_ID() > 0)
			mTab.setValue("User2_ID", lastLine.getUser2_ID());
		
		mTab.setValue("Qty", BigDecimal.ONE);
				
		// Brazilian taxes
		if (lastLine.get_Value("LBR_CFOP_ID") != null)
			mTab.setValue("LBR_CFOP_ID", lastLine.get_Value("LBR_CFOP_ID"));

		if (!lastLine.get_ValueAsString("LBR_TaxStatus").equals(""))
			mTab.setValue("LBR_TaxStatus", lastLine.get_Value("LBR_TaxStatus"));
					
		Integer LBR_Tax_ID = (Integer) lastLine.get_Value("LBR_Tax_ID");
		if (LBR_Tax_ID != null) {
			MLBRTax tax = new MLBRTax(ctx, LBR_Tax_ID, null);
			if (!tax.isActive())
				return "";

			GridField LBR_Tax = mTab.getField("LBR_Tax_ID");

			Integer currentLBR_Tax = (Integer) mTab.getValue("LBR_Tax_ID");
			if (currentLBR_Tax == null || currentLBR_Tax.intValue() == 0) {
				MLBRTax newTax = tax.copyTo();
				currentLBR_Tax = newTax.get_ID();
			} else {
				tax.copyLinesTo(currentLBR_Tax);
			}
			mTab.setValue("LBR_Tax_ID", currentLBR_Tax);
			LBR_Tax.setValue(currentLBR_Tax, true);
		}
		
		// VendorProductNo
		String VendorProductNo = getVendorProductNo(ctx, (Integer) mTab.getValue("M_Product_ID"), inv.getC_BPartner_ID());
		if(!VendorProductNo.isEmpty())
			mTab.setValue("VendorProductNo", VendorProductNo);
		
		
		return "";

	}
	
	
	 /**
	 * getVendorProductNo
	 * Buscar Chave de Busca(Value) do Produto do Fornecedor
	 * @param ctx Contexto
	 * @param M_Product_ID Produto
	 * @param C_BPartner_ID Parceiro
	 * @return {@link String} or ""
	 */
	public String getVendorProductNo (Properties ctx, int M_Product_ID, int C_BPartner_ID){
		
		String sql = 	" SELECT VendorProductNo 		" +
						" FROM M_Product_PO 			" +
						" WHERE AD_Client_ID =? 		" +
						"   AND C_BPartner_ID =?  		" +
						"   AND M_Product_ID =? 		" +
						"   AND IsActive = 'Y'			";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, C_BPartner_ID);
			pstmt.setInt(3, M_Product_ID);
			rs = pstmt.executeQuery();
			
			if(rs.next())
				return rs.getString("VendorProductNo");
		
		} 
		catch(Exception ex) 
		{
			Log.log(0, "MProductMovementFiller.getVendorProductNo() -> Falha ao buscar Chave do Produto do Fornecedor! M_Product_ID=" + M_Product_ID + " C_BPartner_ID=" + C_BPartner_ID);
		} 
		finally 
		{
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}
		
		return "";
		
	}
	

} // MProductMovementFiller
