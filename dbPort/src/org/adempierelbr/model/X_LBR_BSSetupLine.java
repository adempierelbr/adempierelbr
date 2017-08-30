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

/** Generated Model for LBR_BSSetupLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_BSSetupLine extends PO implements I_LBR_BSSetupLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160621L;

    /** Standard Constructor */
    public X_LBR_BSSetupLine (Properties ctx, int LBR_BSSetupLine_ID, String trxName)
    {
      super (ctx, LBR_BSSetupLine_ID, trxName);
      /** if (LBR_BSSetupLine_ID == 0)
        {
			setC_Charge_ID (0);
			setCreatePayment (false);
// N
			setLBR_BSSetupLine_ID (0);
			setLBR_BSSetup_ID (0);
			setMaxAmt (Env.ZERO);
// 0
			setMinAmt (Env.ZERO);
// 0
        } */
    }

    /** Load Constructor */
    public X_LBR_BSSetupLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BSSetupLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Charge getC_Charge() throws RuntimeException
    {
		return (I_C_Charge)MTable.get(getCtx(), I_C_Charge.Table_Name)
			.getPO(getC_Charge_ID(), get_TrxName());	}

	/** Set Charge.
		@param C_Charge_ID 
		Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID)
	{
		if (C_Charge_ID < 1) 
			set_Value (COLUMNNAME_C_Charge_ID, null);
		else 
			set_Value (COLUMNNAME_C_Charge_ID, Integer.valueOf(C_Charge_ID));
	}

	/** Get Charge.
		@return Additional document charges
	  */
	public int getC_Charge_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Charge_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Create Payment.
		@param CreatePayment Create Payment	  */
	public void setCreatePayment (boolean CreatePayment)
	{
		set_Value (COLUMNNAME_CreatePayment, Boolean.valueOf(CreatePayment));
	}

	/** Get Create Payment.
		@return Create Payment	  */
	public boolean isCreatePayment () 
	{
		Object oo = get_Value(COLUMNNAME_CreatePayment);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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

	/** Set Bank Statement Setup Line.
		@param LBR_BSSetupLine_ID Bank Statement Setup Line	  */
	public void setLBR_BSSetupLine_ID (int LBR_BSSetupLine_ID)
	{
		if (LBR_BSSetupLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BSSetupLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BSSetupLine_ID, Integer.valueOf(LBR_BSSetupLine_ID));
	}

	/** Get Bank Statement Setup Line.
		@return Bank Statement Setup Line	  */
	public int getLBR_BSSetupLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BSSetupLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_BSSetup getLBR_BSSetup() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BSSetup)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BSSetup.Table_Name)
			.getPO(getLBR_BSSetup_ID(), get_TrxName());	}

	/** Set Bank Statement Setup.
		@param LBR_BSSetup_ID Bank Statement Setup	  */
	public void setLBR_BSSetup_ID (int LBR_BSSetup_ID)
	{
		if (LBR_BSSetup_ID < 1) 
			set_Value (COLUMNNAME_LBR_BSSetup_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BSSetup_ID, Integer.valueOf(LBR_BSSetup_ID));
	}

	/** Get Bank Statement Setup.
		@return Bank Statement Setup	  */
	public int getLBR_BSSetup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BSSetup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Max Amount.
		@param MaxAmt 
		Maximum Amount in invoice currency
	  */
	public void setMaxAmt (BigDecimal MaxAmt)
	{
		set_Value (COLUMNNAME_MaxAmt, MaxAmt);
	}

	/** Get Max Amount.
		@return Maximum Amount in invoice currency
	  */
	public BigDecimal getMaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Min Amount.
		@param MinAmt 
		Minimum Amount in invoice currency
	  */
	public void setMinAmt (BigDecimal MinAmt)
	{
		set_Value (COLUMNNAME_MinAmt, MinAmt);
	}

	/** Get Min Amount.
		@return Minimum Amount in invoice currency
	  */
	public BigDecimal getMinAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_MinAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Text.
		@param Text Text	  */
	public void setText (String Text)
	{
		set_Value (COLUMNNAME_Text, Text);
	}

	/** Get Text.
		@return Text	  */
	public String getText () 
	{
		return (String)get_Value(COLUMNNAME_Text);
	}
}