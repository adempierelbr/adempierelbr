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

/** Generated Model for LBR_TaxName
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxName extends PO implements I_LBR_TaxName, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_TaxName (Properties ctx, int LBR_TaxName_ID, String trxName)
    {
      super (ctx, LBR_TaxName_ID, trxName);
      /** if (LBR_TaxName_ID == 0)
        {
			setHasWithHold (false);
// 'N'
			setLBR_TaxName_ID (0);
			setLBR_TaxSubstitution_ID (0);
			setlbr_TaxType (null);
// 'P'
			setlbr_WithholdFrequency (null);
// 'M'
			setName (null);
			setWithHoldThreshold (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxName (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxName[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Has WithHold.
		@param HasWithHold 
		Defines if the Tax, has WithHold
	  */
	public void setHasWithHold (boolean HasWithHold)
	{
		set_Value (COLUMNNAME_HasWithHold, Boolean.valueOf(HasWithHold));
	}

	/** Get Has WithHold.
		@return Defines if the Tax, has WithHold
	  */
	public boolean isHasWithHold () 
	{
		Object oo = get_Value(COLUMNNAME_HasWithHold);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxSubstitution() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxName)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxSubstitution_ID(), get_TrxName());	}

	/** Set Tax Substitution.
		@param LBR_TaxSubstitution_ID 
		Defines the Tax Substitution
	  */
	public void setLBR_TaxSubstitution_ID (int LBR_TaxSubstitution_ID)
	{
		if (LBR_TaxSubstitution_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxSubstitution_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxSubstitution_ID, Integer.valueOf(LBR_TaxSubstitution_ID));
	}

	/** Get Tax Substitution.
		@return Defines the Tax Substitution
	  */
	public int getLBR_TaxSubstitution_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxSubstitution_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_TaxType AD_Reference_ID=1000022 */
	public static final int LBR_TAXTYPE_AD_Reference_ID=1000022;
	/** Product = P */
	public static final String LBR_TAXTYPE_Product = "P";
	/** Service = S */
	public static final String LBR_TAXTYPE_Service = "S";
	/** Substitution = T */
	public static final String LBR_TAXTYPE_Substitution = "T";
	/** Set Tax Type.
		@param lbr_TaxType 
		Define the Tax Type
	  */
	public void setlbr_TaxType (String lbr_TaxType)
	{

		set_Value (COLUMNNAME_lbr_TaxType, lbr_TaxType);
	}

	/** Get Tax Type.
		@return Define the Tax Type
	  */
	public String getlbr_TaxType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TaxType);
	}

	/** lbr_WithholdFrequency AD_Reference_ID=1000028 */
	public static final int LBR_WITHHOLDFREQUENCY_AD_Reference_ID=1000028;
	/** Monthly = M */
	public static final String LBR_WITHHOLDFREQUENCY_Monthly = "M";
	/** Set Withhold Frequency.
		@param lbr_WithholdFrequency 
		Defines the Withhold Frequency
	  */
	public void setlbr_WithholdFrequency (String lbr_WithholdFrequency)
	{

		set_Value (COLUMNNAME_lbr_WithholdFrequency, lbr_WithholdFrequency);
	}

	/** Get Withhold Frequency.
		@return Defines the Withhold Frequency
	  */
	public String getlbr_WithholdFrequency () 
	{
		return (String)get_Value(COLUMNNAME_lbr_WithholdFrequency);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set WithHold Threshold.
		@param WithHoldThreshold 
		Defines the WithHold Threshold 
	  */
	public void setWithHoldThreshold (BigDecimal WithHoldThreshold)
	{
		set_Value (COLUMNNAME_WithHoldThreshold, WithHoldThreshold);
	}

	/** Get WithHold Threshold.
		@return Defines the WithHold Threshold 
	  */
	public BigDecimal getWithHoldThreshold () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_WithHoldThreshold);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}