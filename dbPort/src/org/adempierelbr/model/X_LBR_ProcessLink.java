/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_ProcessLink
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ProcessLink extends PO implements I_LBR_ProcessLink, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_ProcessLink (Properties ctx, int LBR_ProcessLink_ID, String trxName)
    {
      super (ctx, LBR_ProcessLink_ID, trxName);
      /** if (LBR_ProcessLink_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_ProcessLink (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_ProcessLink[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_InvoiceLine getlbr_Dest_C_InvoiceLine() throws RuntimeException
    {
		return (I_C_InvoiceLine)MTable.get(getCtx(), I_C_InvoiceLine.Table_Name)
			.getPO(getlbr_Dest_C_InvoiceLine_ID(), get_TrxName());	}

	/** Set Destination Invoice Line.
		@param lbr_Dest_C_InvoiceLine_ID 
		Destination Invoice Line
	  */
	public void setlbr_Dest_C_InvoiceLine_ID (int lbr_Dest_C_InvoiceLine_ID)
	{
		if (lbr_Dest_C_InvoiceLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_lbr_Dest_C_InvoiceLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_lbr_Dest_C_InvoiceLine_ID, Integer.valueOf(lbr_Dest_C_InvoiceLine_ID));
	}

	/** Get Destination Invoice Line.
		@return Destination Invoice Line
	  */
	public int getlbr_Dest_C_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_Dest_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_InvoiceLine getlbr_Ori_C_InvoiceLine() throws RuntimeException
    {
		return (I_C_InvoiceLine)MTable.get(getCtx(), I_C_InvoiceLine.Table_Name)
			.getPO(getlbr_Ori_C_InvoiceLine_ID(), get_TrxName());	}

	/** Set Origin Invoice Line.
		@param lbr_Ori_C_InvoiceLine_ID 
		Origin Invoice Line
	  */
	public void setlbr_Ori_C_InvoiceLine_ID (int lbr_Ori_C_InvoiceLine_ID)
	{
		if (lbr_Ori_C_InvoiceLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_lbr_Ori_C_InvoiceLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_lbr_Ori_C_InvoiceLine_ID, Integer.valueOf(lbr_Ori_C_InvoiceLine_ID));
	}

	/** Get Origin Invoice Line.
		@return Origin Invoice Line
	  */
	public int getlbr_Ori_C_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_Ori_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_ProcessLink_ID.
		@param LBR_ProcessLink_ID 
		LBR_ProcessLink_ID
	  */
	public void setLBR_ProcessLink_ID (int LBR_ProcessLink_ID)
	{
		if (LBR_ProcessLink_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ProcessLink_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ProcessLink_ID, Integer.valueOf(LBR_ProcessLink_ID));
	}

	/** Get LBR_ProcessLink_ID.
		@return LBR_ProcessLink_ID
	  */
	public int getLBR_ProcessLink_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProcessLink_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_M_AttributeSetInstance getM_AttributeSetInstance() throws RuntimeException
    {
		return (I_M_AttributeSetInstance)MTable.get(getCtx(), I_M_AttributeSetInstance.Table_Name)
			.getPO(getM_AttributeSetInstance_ID(), get_TrxName());	}

	/** Set Attribute Set Instance.
		@param M_AttributeSetInstance_ID 
		Product Attribute Set Instance
	  */
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
	{
		if (M_AttributeSetInstance_ID < 0) 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, Integer.valueOf(M_AttributeSetInstance_ID));
	}

	/** Get Attribute Set Instance.
		@return Product Attribute Set Instance
	  */
	public int getM_AttributeSetInstance_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeSetInstance_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Movement Quantity.
		@param MovementQty 
		Quantity of a product moved.
	  */
	public void setMovementQty (BigDecimal MovementQty)
	{
		set_Value (COLUMNNAME_MovementQty, MovementQty);
	}

	/** Get Movement Quantity.
		@return Quantity of a product moved.
	  */
	public BigDecimal getMovementQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MovementQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** MovementType AD_Reference_ID=189 */
	public static final int MOVEMENTTYPE_AD_Reference_ID=189;
	/** Customer Shipment = C- */
	public static final String MOVEMENTTYPE_CustomerShipment = "C-";
	/** Customer Returns = C+ */
	public static final String MOVEMENTTYPE_CustomerReturns = "C+";
	/** Vendor Receipts = V+ */
	public static final String MOVEMENTTYPE_VendorReceipts = "V+";
	/** Vendor Returns = V- */
	public static final String MOVEMENTTYPE_VendorReturns = "V-";
	/** Inventory Out = I- */
	public static final String MOVEMENTTYPE_InventoryOut = "I-";
	/** Inventory In = I+ */
	public static final String MOVEMENTTYPE_InventoryIn = "I+";
	/** Movement From = M- */
	public static final String MOVEMENTTYPE_MovementFrom = "M-";
	/** Movement To = M+ */
	public static final String MOVEMENTTYPE_MovementTo = "M+";
	/** Production + = P+ */
	public static final String MOVEMENTTYPE_ProductionPlus = "P+";
	/** Production - = P- */
	public static final String MOVEMENTTYPE_Production_ = "P-";
	/** Work Order + = W+ */
	public static final String MOVEMENTTYPE_WorkOrderPlus = "W+";
	/** Work Order - = W- */
	public static final String MOVEMENTTYPE_WorkOrder_ = "W-";
	/** Set Movement Type.
		@param MovementType 
		Method of moving the inventory
	  */
	public void setMovementType (String MovementType)
	{

		set_Value (COLUMNNAME_MovementType, MovementType);
	}

	/** Get Movement Type.
		@return Method of moving the inventory
	  */
	public String getMovementType () 
	{
		return (String)get_Value(COLUMNNAME_MovementType);
	}

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}