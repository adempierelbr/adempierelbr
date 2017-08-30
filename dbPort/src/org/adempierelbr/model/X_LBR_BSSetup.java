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

/** Generated Model for LBR_BSSetup
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_BSSetup extends PO implements I_LBR_BSSetup, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160622L;

    /** Standard Constructor */
    public X_LBR_BSSetup (Properties ctx, int LBR_BSSetup_ID, String trxName)
    {
      super (ctx, LBR_BSSetup_ID, trxName);
      /** if (LBR_BSSetup_ID == 0)
        {
			setC_BankAccount_ID (0);
			setIsOverUnderPayment (true);
// Y
			setLBR_BSMatcherType (null);
// A
			setLBR_BSSetup_ID (0);
			setPeriod_OpenFuture (Env.ZERO);
// 0
			setPeriod_OpenHistory (Env.ZERO);
// 0
			setPriceMatchDifference (Env.ZERO);
// 0
        } */
    }

    /** Load Constructor */
    public X_LBR_BSSetup (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_BSSetup[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (I_C_BankAccount)MTable.get(getCtx(), I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Over/Under Payment.
		@param IsOverUnderPayment 
		Over-Payment (unallocated) or Under-Payment (partial payment)
	  */
	public void setIsOverUnderPayment (boolean IsOverUnderPayment)
	{
		set_Value (COLUMNNAME_IsOverUnderPayment, Boolean.valueOf(IsOverUnderPayment));
	}

	/** Get Over/Under Payment.
		@return Over-Payment (unallocated) or Under-Payment (partial payment)
	  */
	public boolean isOverUnderPayment () 
	{
		Object oo = get_Value(COLUMNNAME_IsOverUnderPayment);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** LBR_BSMatcherType AD_Reference_ID=1120247 */
	public static final int LBR_BSMATCHERTYPE_AD_Reference_ID=1120247;
	/** Invoices Only = I */
	public static final String LBR_BSMATCHERTYPE_InvoicesOnly = "I";
	/** Payments Only = P */
	public static final String LBR_BSMATCHERTYPE_PaymentsOnly = "P";
	/** Payments, then Invoices = A */
	public static final String LBR_BSMATCHERTYPE_PaymentsThenInvoices = "A";
	/** None = N */
	public static final String LBR_BSMATCHERTYPE_None = "N";
	/** Set Matcher Type.
		@param LBR_BSMatcherType Matcher Type	  */
	public void setLBR_BSMatcherType (String LBR_BSMatcherType)
	{

		set_Value (COLUMNNAME_LBR_BSMatcherType, LBR_BSMatcherType);
	}

	/** Get Matcher Type.
		@return Matcher Type	  */
	public String getLBR_BSMatcherType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_BSMatcherType);
	}

	/** Set Bank Statement Setup.
		@param LBR_BSSetup_ID Bank Statement Setup	  */
	public void setLBR_BSSetup_ID (int LBR_BSSetup_ID)
	{
		if (LBR_BSSetup_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BSSetup_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BSSetup_ID, Integer.valueOf(LBR_BSSetup_ID));
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

	/** Set Future Days.
		@param Period_OpenFuture 
		Number of days to be able to post to a future date (based on system date)
	  */
	public void setPeriod_OpenFuture (BigDecimal Period_OpenFuture)
	{
		set_Value (COLUMNNAME_Period_OpenFuture, Period_OpenFuture);
	}

	/** Get Future Days.
		@return Number of days to be able to post to a future date (based on system date)
	  */
	public BigDecimal getPeriod_OpenFuture () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Period_OpenFuture);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set History Days.
		@param Period_OpenHistory 
		Number of days to be able to post in the past (based on system date)
	  */
	public void setPeriod_OpenHistory (BigDecimal Period_OpenHistory)
	{
		set_Value (COLUMNNAME_Period_OpenHistory, Period_OpenHistory);
	}

	/** Get History Days.
		@return Number of days to be able to post in the past (based on system date)
	  */
	public BigDecimal getPeriod_OpenHistory () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Period_OpenHistory);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Price Match Difference.
		@param PriceMatchDifference 
		Difference between Purchase and Invoice Price per matched line
	  */
	public void setPriceMatchDifference (BigDecimal PriceMatchDifference)
	{
		set_Value (COLUMNNAME_PriceMatchDifference, PriceMatchDifference);
	}

	/** Get Price Match Difference.
		@return Difference between Purchase and Invoice Price per matched line
	  */
	public BigDecimal getPriceMatchDifference () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceMatchDifference);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}