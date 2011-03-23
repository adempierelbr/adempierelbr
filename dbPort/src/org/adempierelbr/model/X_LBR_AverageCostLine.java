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

/** Generated Model for LBR_AverageCostLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_AverageCostLine extends PO implements I_LBR_AverageCostLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110323L;

    /** Standard Constructor */
    public X_LBR_AverageCostLine (Properties ctx, int LBR_AverageCostLine_ID, String trxName)
    {
      super (ctx, LBR_AverageCostLine_ID, trxName);
      /** if (LBR_AverageCostLine_ID == 0)
        {
			setLBR_AverageCost_ID (0);
			setLBR_AverageCostLine_ID (0);
			setlbr_AvgCostType (null);
// P
			setlbr_AvgCostZoom (null);
// N
			setM_Product_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_AverageCostLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_AverageCostLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Accumulated Amt.
		@param CumulatedAmt 
		Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt)
	{
		set_Value (COLUMNNAME_CumulatedAmt, CumulatedAmt);
	}

	/** Get Accumulated Amt.
		@return Total Amount
	  */
	public BigDecimal getCumulatedAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CumulatedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Accumulated Qty.
		@param CumulatedQty 
		Total Quantity
	  */
	public void setCumulatedQty (BigDecimal CumulatedQty)
	{
		set_Value (COLUMNNAME_CumulatedQty, CumulatedQty);
	}

	/** Get Accumulated Qty.
		@return Total Quantity
	  */
	public BigDecimal getCumulatedQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CumulatedQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Current Cost Price.
		@param CurrentCostPrice 
		The currently used cost price
	  */
	public void setCurrentCostPrice (BigDecimal CurrentCostPrice)
	{
		set_Value (COLUMNNAME_CurrentCostPrice, CurrentCostPrice);
	}

	/** Get Current Cost Price.
		@return The currently used cost price
	  */
	public BigDecimal getCurrentCostPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CurrentCostPrice);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Current Quantity.
		@param CurrentQty 
		Current Quantity
	  */
	public void setCurrentQty (BigDecimal CurrentQty)
	{
		set_Value (COLUMNNAME_CurrentQty, CurrentQty);
	}

	/** Get Current Quantity.
		@return Current Quantity
	  */
	public BigDecimal getCurrentQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CurrentQty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Future Cost Price.
		@param FutureCostPrice Future Cost Price	  */
	public void setFutureCostPrice (BigDecimal FutureCostPrice)
	{
		set_Value (COLUMNNAME_FutureCostPrice, FutureCostPrice);
	}

	/** Get Future Cost Price.
		@return Future Cost Price	  */
	public BigDecimal getFutureCostPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FutureCostPrice);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.adempierelbr.model.I_LBR_AverageCost getLBR_AverageCost() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_AverageCost)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_AverageCost.Table_Name)
			.getPO(getLBR_AverageCost_ID(), get_TrxName());	}

	/** Set Average Cost.
		@param LBR_AverageCost_ID 
		Defines the Average Cost
	  */
	public void setLBR_AverageCost_ID (int LBR_AverageCost_ID)
	{
		if (LBR_AverageCost_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCost_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCost_ID, Integer.valueOf(LBR_AverageCost_ID));
	}

	/** Get Average Cost.
		@return Defines the Average Cost
	  */
	public int getLBR_AverageCost_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_AverageCost_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set AvgCost - Line.
		@param LBR_AverageCostLine_ID AvgCost - Line	  */
	public void setLBR_AverageCostLine_ID (int LBR_AverageCostLine_ID)
	{
		if (LBR_AverageCostLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCostLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_AverageCostLine_ID, Integer.valueOf(LBR_AverageCostLine_ID));
	}

	/** Get AvgCost - Line.
		@return AvgCost - Line	  */
	public int getLBR_AverageCostLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_AverageCostLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_AvgCostType AD_Reference_ID=1120024 */
	public static final int LBR_AVGCOSTTYPE_AD_Reference_ID=1120024;
	/** Purchased = P */
	public static final String LBR_AVGCOSTTYPE_Purchased = "P";
	/** Manufactured = M */
	public static final String LBR_AVGCOSTTYPE_Manufactured = "M";
	/** Set AvgCost Type.
		@param lbr_AvgCostType AvgCost Type	  */
	public void setlbr_AvgCostType (String lbr_AvgCostType)
	{

		set_Value (COLUMNNAME_lbr_AvgCostType, lbr_AvgCostType);
	}

	/** Get AvgCost Type.
		@return AvgCost Type	  */
	public String getlbr_AvgCostType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_AvgCostType);
	}

	/** Set AvgCost - Zoom.
		@param lbr_AvgCostZoom AvgCost - Zoom	  */
	public void setlbr_AvgCostZoom (String lbr_AvgCostZoom)
	{
		set_Value (COLUMNNAME_lbr_AvgCostZoom, lbr_AvgCostZoom);
	}

	/** Get AvgCost - Zoom.
		@return AvgCost - Zoom	  */
	public String getlbr_AvgCostZoom () 
	{
		return (String)get_Value(COLUMNNAME_lbr_AvgCostZoom);
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
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
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