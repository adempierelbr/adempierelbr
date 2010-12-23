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
import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
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

/**
 * Save util data from PO and Invoice to autofill the nexts
 * 
 * @author Marcelo Luiz Onhate
 * @version $Id: MLBRProductMovementFiller.java,v 1.0 2010/10/07 08:57:01 monhate
 */
public class MLBRProductMovementFiller extends CalloutEngine {

	protected int p_M_Product_ID;
	protected int p_C_BPartner_ID;
	protected boolean p_Exists;
	protected MProductPO p_MProductPO = null;

	/* PROTECTED - PRIVATE = Internal Process */

	protected boolean verifyPrepareLine(PO po) {
		// Verify...
		if (po == null)
			return false;
		p_M_Product_ID = po.get_ValueAsInt("M_Product_ID");
		boolean bOk = p_M_Product_ID > 0
				&& po.get_ValueAsBoolean("LBR_UpdateProduct");
		// Prepare...
		if (bOk) {
			/* Now the Current Vendor is the PO/Invoice Vendor... */
			String sql = "UPDATE M_Product_PO SET IsCurrentVendor = 'N' "
					+ "WHERE M_Product_ID = ?";
			DB.executeUpdate(sql, p_M_Product_ID, po.get_TrxName());
			/* To know if Update or Insert... */
			p_MProductPO = new MProductPO(po.getCtx(), 0, null);
			p_MProductPO.setM_Product_ID(p_M_Product_ID);
			p_MProductPO.setC_BPartner_ID(p_C_BPartner_ID);
			p_Exists = p_MProductPO.load(po.get_TrxName());
			if (!p_Exists) {
				p_MProductPO = new MProductPO(po.getCtx(), 0, null);
				p_MProductPO.setM_Product_ID(p_M_Product_ID);
				p_MProductPO.setC_BPartner_ID(p_C_BPartner_ID);
			}
		}
		return bOk;
	}

	protected boolean verifyPreparePO(PO po) {
		// Verify...
		boolean bOk = po != null
				&& MSysConfig.getBooleanValue("LBR_AUTOUPDATE_MPRODUCTPO",
						false) && !po.get_ValueAsBoolean("IsSOTrx");
		// Prepare...
		if (bOk) {
			p_C_BPartner_ID = po.get_ValueAsInt("C_BPartner_ID");
		}
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
		if (!lineVPN.endsWith(_p) || p_MProductPO.getVendorProductNo() == null) {
			p_MProductPO.setVendorProductNo(lineVPN);
		}
	}

	private void setVendorProductNo(MOrder po, MOrderLine line) {
		String vpn = line.get_ValueAsString("VendorProductNo");
		String _p = "_" + line.getProduct().getValue();
		if (vpn == null || vpn.equals("")) {
			try {
				vpn = po.getC_BPartner().getValue() + _p;
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
				vpn = po.getC_BPartner().getValue() + _p;
			} catch (Exception e) {
				// =)
			}
		}
		setVendorProductNo(_p, vpn);
	}

	private void setDefaultsInMProductPO(PO po, PO line) {
		p_MProductPO.setIsCurrentVendor(true);
		p_MProductPO.setC_UOM_ID(line.get_ValueAsInt("C_UOM_ID"));
		p_MProductPO.setPriceList((BigDecimal) line.get_Value("PriceList"));
		p_MProductPO.setC_Currency_ID(po.get_ValueAsInt("C_Currency_ID"));
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
		MOrderLine[] lines = po.getLines(true, "M_Product_ID");
		for (MOrderLine line : lines) {
			if (!verifyPrepareLine(line))
				continue;

			setDefaultsInMProductPO(po, line);
			p_MProductPO.setCostPerOrder(line.getPriceCost());
			p_MProductPO.setPriceLastPO(line.getPriceEntered());
			p_MProductPO.setPriceEffective(po.getDateOrdered());
			setVendorProductNo(po, line);

			saveMProductPO();

			if (MSysConfig.getBooleanValue("LBR_UPDATE_PRICELIST_WITH_PO",
					false)) {
				int M_Product_ID = line.getM_Product_ID();
				int M_PriceList_Version_ID = new MPriceList(po.getCtx(),po.getM_PriceList_ID(), null).getPriceListVersion(line.getDateOrdered()).getM_PriceList_Version_ID();
				MProductPrice pp = new MProductPrice(po.getCtx(), M_PriceList_Version_ID, M_Product_ID, null);
				
				pp.setPriceStd(line.getPriceEntered());
				pp.setPriceList(line.getPriceList());
				
				if(line.getPriceLimit().compareTo(line.getPriceEntered()) == 1)
					pp.setPriceLimit(line.getPriceEntered());
				else if(line.getPriceLimit().signum() == 1) 
					pp.setPriceLimit(line.getPriceLimit());
								
				DB.executeUpdate( "delete from m_productprice p where p.m_product_id=? and p.m_pricelist_version_id=?",
						new Integer[] { M_Product_ID, M_PriceList_Version_ID },
						true, null);
				pp.save();
			}
		}
	}

	/**
	 * This method saves all items marked with LBR_UpdateProduct in MProductPO
	 * 
	 * @param po
	 *            The MInvoice to save items in MProductPO
	 */
	public void saveThis(MInvoice po) {
		if (!verifyPreparePO(po))
			return;
		MInvoiceLine[] lines = po.getLines(true);
		for (MInvoiceLine line : lines) {
			if (!verifyPrepareLine(line))
				continue;

			setDefaultsInMProductPO(po, line);
			p_MProductPO.setPriceLastInv(line.getPriceEntered());
			p_MProductPO.setPriceEffective(po.getDateInvoiced());
			setVendorProductNo(po, line);

			saveMProductPO();
		}
	}

	/**
	 * @param ctx
	 *            Context
	 * @param WindowNo
	 *            current Window No
	 * @param mTab
	 *            Model Tab
	 * @param mField
	 *            Model Field
	 * @param value
	 *            The new value
	 * @return Error message or "" Table - C_OrderLine / Column M_Product_ID FR
	 *         [ 3079621 ]
	 */
	public String getLastPO(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {
		// It's optional
		if (!MSysConfig.getBooleanValue("LBR_AUTOFILL_ORDERLINE_WITH_LAST",
				false))
			return "";
		if (mTab.getValue("M_Product_ID") == null || mTab.getValue("C_BPartner_ID") == null)
			return "";

		String sql = "select l.c_orderline_id " + "from c_orderline l "
				+ "inner join c_order o " + "	on o.c_order_id = l.c_order_id "
				+ "where l.m_product_id = ? " + "  and o.c_bpartner_id = ? "
				+ "order by l.dateordered desc, l.c_orderline_id desc ";
		int last_C_OrderLine_ID = DB.getSQLValue(null, sql,
				(Integer) mTab.getValue("M_Product_ID"),
				(Integer) mTab.getValue("C_BPartner_ID"));
		if (last_C_OrderLine_ID == -1) {
			return "";
		} else {
			MOrderLine lastLine = new MOrderLine(ctx, last_C_OrderLine_ID, null);
			MProductPO ppo = new MProductPO(ctx, 0, null);

			ppo.setC_BPartner_ID((Integer) mTab.getValue("M_Product_ID"));
			ppo.setM_Product_ID((Integer) mTab.getValue("C_BPartner_ID"));
			boolean bPpo = ppo.load(null);
			/* The magic goes here... =) */
			mTab.setValue("C_Tax_ID", lastLine.getC_Tax_ID());
			mTab.setValue("C_UOM_ID", lastLine.getC_UOM_ID());
			mTab.setValue("M_AttributeSetInstance_ID",
					lastLine.getM_AttributeSetInstance_ID());
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
			if (bPpo) {
				mTab.setValue("VendorProducNo", ppo.getVendorProductNo());
			}
			// here goes customization for Brazilian Taxes...
			if (lastLine.get_Value("LBR_CFOP_ID") != null)
				mTab.setValue("LBR_CFOP_ID", lastLine.get_Value("LBR_CFOP_ID"));

			if (!lastLine.get_ValueAsString("LBR_TaxStatus").equals(""))
				mTab.setValue("LBR_TaxStatus",
						lastLine.get_Value("LBR_TaxStatus"));

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
	}

	/**
	 * @param ctx
	 *            Context
	 * @param WindowNo
	 *            current Window No
	 * @param mTab
	 *            Model Tab
	 * @param mField
	 *            Model Field
	 * @param value
	 *            The new value
	 * @return Error message or "" Table - C_InvoiceLine / Column M_Product_ID
	 *         FR [ 3079621 ]
	 */
	public String getLastInv(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value) {
		// It's optional
		if (!MSysConfig.getBooleanValue("LBR_AUTOFILL_INVOICELINE_WITH_LAST",
				false))
			return "";
		if (mTab.getValue("M_Product_ID") == null)
			return "";

		String sql = "select l.c_invoiceline_id " + "from c_invoiceline l "
				+ "inner join c_invoice i "
				+ " 	on i.c_invoice_id = l.c_invoice_id "
				+ "where l.m_product_id = ? " + "  and i.c_bpartner_id = ? "
				+ "order by i.dateinvoiced desc, l.c_invoiceline_id desc ";
		MInvoice inv = new MInvoice(ctx,
				(Integer) mTab.getValue("C_Invoice_ID"), null);
		int last_C_InvoiceLine_ID = DB
				.getSQLValue(null, sql,
						(Integer) mTab.getValue("M_Product_ID"),
						inv.getC_BPartner_ID());
		if (last_C_InvoiceLine_ID == -1) {
			return "";
		} else {
			MInvoiceLine lastLine = new MInvoiceLine(ctx,
					last_C_InvoiceLine_ID, null);
			MProductPO ppo = new MProductPO(ctx, 0, null);
			ppo.setC_BPartner_ID(inv.getC_BPartner_ID());
			ppo.setM_Product_ID((Integer) mTab.getValue("M_Product_ID"));
			boolean bPpo = ppo.load(null);
			/* The magic goes here... =) */
			mTab.setValue("C_Tax_ID", lastLine.getC_Tax_ID());
			mTab.setValue("C_UOM_ID", lastLine.getC_UOM_ID());
			mTab.setValue("M_AttributeSetInstance_ID",
					lastLine.getM_AttributeSetInstance_ID());
			mTab.setValue("PriceEntered", lastLine.getPriceEntered());
			mTab.setValue("PriceList", lastLine.getPriceList());
			mTab.setValue("PriceLimit", lastLine.getPriceLimit());
			if (lastLine.getUser1_ID() > 0)
				mTab.setValue("User1_ID", lastLine.getUser1_ID());
			if (lastLine.getUser2_ID() > 0)
				mTab.setValue("User2_ID", lastLine.getUser2_ID());
			mTab.setValue("Qty", BigDecimal.ONE);
			if (bPpo) {
				mTab.setValue("VendorProducNo", ppo.getVendorProductNo());
			}
			// here goes customization for Brazilian Taxes...
			if (lastLine.get_Value("LBR_CFOP_ID") != null)
				mTab.setValue("LBR_CFOP_ID", lastLine.get_Value("LBR_CFOP_ID"));

			if (!lastLine.get_ValueAsString("LBR_TaxStatus").equals(""))
				mTab.setValue("LBR_TaxStatus",
						lastLine.get_Value("LBR_TaxStatus"));

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
	}

} // MLBRProductMovementFiller
