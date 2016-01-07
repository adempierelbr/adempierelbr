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

/** Generated Model for LBR_ProductFCI
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ProductFCI extends PO implements I_LBR_ProductFCI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20151223L;

    /** Standard Constructor */
    public X_LBR_ProductFCI (Properties ctx, int LBR_ProductFCI_ID, String trxName)
    {
      super (ctx, LBR_ProductFCI_ID, trxName);
      /** if (LBR_ProductFCI_ID == 0)
        {
			setC_Period_ID (0);
			setLBR_ProductFCI_ID (0);
			setM_Product_ID (0);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ProductFCI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ProductFCI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Source Amount.
		@param AmtSource 
		Amount Balance in Source Currency
	  */
	public void setAmtSource (BigDecimal AmtSource)
	{
		set_Value (COLUMNNAME_AmtSource, AmtSource);
	}

	/** Get Source Amount.
		@return Amount Balance in Source Currency
	  */
	public BigDecimal getAmtSource () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AmtSource);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_Period getC_Period() throws RuntimeException
    {
		return (I_C_Period)MTable.get(getCtx(), I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_Value (COLUMNNAME_C_Period_ID, null);
		else 
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Invoiced Amount.
		@param InvoicedAmt 
		The amount invoiced
	  */
	public void setInvoicedAmt (BigDecimal InvoicedAmt)
	{
		set_Value (COLUMNNAME_InvoicedAmt, InvoicedAmt);
	}

	/** Get Invoiced Amount.
		@return The amount invoiced
	  */
	public BigDecimal getInvoicedAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InvoicedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product FCI.
		@param LBR_ProductFCI_ID Product FCI	  */
	public void setLBR_ProductFCI_ID (int LBR_ProductFCI_ID)
	{
		if (LBR_ProductFCI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductFCI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ProductFCI_ID, Integer.valueOf(LBR_ProductFCI_ID));
	}

	/** Get Product FCI.
		@return Product FCI	  */
	public int getLBR_ProductFCI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductFCI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Percentage.
		@param Percentage 
		Percent of the entire amount
	  */
	public void setPercentage (BigDecimal Percentage)
	{
		set_Value (COLUMNNAME_Percentage, Percentage);
	}

	/** Get Percentage.
		@return Percent of the entire amount
	  */
	public BigDecimal getPercentage () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Percentage);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}