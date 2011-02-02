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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_TaxConfiguration
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxConfiguration extends PO implements I_LBR_TaxConfiguration, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_TaxConfiguration (Properties ctx, int LBR_TaxConfiguration_ID, String trxName)
    {
      super (ctx, LBR_TaxConfiguration_ID, trxName);
      /** if (LBR_TaxConfiguration_ID == 0)
        {
			setIsSOTrx (true);
// Y
			setLBR_FiscalGroup_Product_ID (0);
			setlbr_IsPOTrx (true);
// Y
			setLBR_TaxConfiguration_ID (0);
			setM_Product_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxConfiguration (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxConfiguration[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** lbr_ExceptionType AD_Reference_ID=1000020 */
	public static final int LBR_EXCEPTIONTYPE_AD_Reference_ID=1000020;
	/** Product = P */
	public static final String LBR_EXCEPTIONTYPE_Product = "P";
	/** Fiscal Group = G */
	public static final String LBR_EXCEPTIONTYPE_FiscalGroup = "G";
	/** Set Exception Type.
		@param lbr_ExceptionType 
		Defines the Exception Type
	  */
	public void setlbr_ExceptionType (String lbr_ExceptionType)
	{

		set_Value (COLUMNNAME_lbr_ExceptionType, lbr_ExceptionType);
	}

	/** Get Exception Type.
		@return Defines the Exception Type
	  */
	public String getlbr_ExceptionType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ExceptionType);
	}

	public org.adempierelbr.model.I_LBR_FiscalGroup_Product getLBR_FiscalGroup_Product() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_FiscalGroup_Product)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_FiscalGroup_Product.Table_Name)
			.getPO(getLBR_FiscalGroup_Product_ID(), get_TrxName());	}

	/** Set Fiscal Group - Product.
		@param LBR_FiscalGroup_Product_ID 
		Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID)
	{
		if (LBR_FiscalGroup_Product_ID < 1) 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FiscalGroup_Product_ID, Integer.valueOf(LBR_FiscalGroup_Product_ID));
	}

	/** Get Fiscal Group - Product.
		@return Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FiscalGroup_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Purchase Transaction.
		@param lbr_IsPOTrx 
		This is a Purchase Transaction
	  */
	public void setlbr_IsPOTrx (boolean lbr_IsPOTrx)
	{
		set_Value (COLUMNNAME_lbr_IsPOTrx, Boolean.valueOf(lbr_IsPOTrx));
	}

	/** Get Purchase Transaction.
		@return This is a Purchase Transaction
	  */
	public boolean islbr_IsPOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsPOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Configuration.
		@param LBR_TaxConfiguration_ID 
		Primary key table LBR_TaxConfiguration
	  */
	public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID)
	{
		if (LBR_TaxConfiguration_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxConfiguration_ID, Integer.valueOf(LBR_TaxConfiguration_ID));
	}

	/** Get Tax Configuration.
		@return Primary key table LBR_TaxConfiguration
	  */
	public int getLBR_TaxConfiguration_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxConfiguration_ID);
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
}