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

/** Generated Model for LBR_SalesCardTotal
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_SalesCardTotal extends PO implements I_LBR_SalesCardTotal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130226L;

    /** Standard Constructor */
    public X_LBR_SalesCardTotal (Properties ctx, int LBR_SalesCardTotal_ID, String trxName)
    {
      super (ctx, LBR_SalesCardTotal_ID, trxName);
      /** if (LBR_SalesCardTotal_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_Calendar_ID (0);
			setC_Period_ID (0);
			setLBR_CreditCardAmt (Env.ZERO);
// 0
			setLBR_DebitCardAmt (Env.ZERO);
// 0
			setLBR_SalesCardTotal_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_SalesCardTotal (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_SalesCardTotal[")
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

	public I_C_Calendar getC_Calendar() throws RuntimeException
    {
		return (I_C_Calendar)MTable.get(getCtx(), I_C_Calendar.Table_Name)
			.getPO(getC_Calendar_ID(), get_TrxName());	}

	/** Set Calendar.
		@param C_Calendar_ID 
		Accounting Calendar Name
	  */
	public void setC_Calendar_ID (int C_Calendar_ID)
	{
		if (C_Calendar_ID < 1) 
			set_Value (COLUMNNAME_C_Calendar_ID, null);
		else 
			set_Value (COLUMNNAME_C_Calendar_ID, Integer.valueOf(C_Calendar_ID));
	}

	/** Get Calendar.
		@return Accounting Calendar Name
	  */
	public int getC_Calendar_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Calendar_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Credit Card Amount.
		@param LBR_CreditCardAmt Credit Card Amount	  */
	public void setLBR_CreditCardAmt (BigDecimal LBR_CreditCardAmt)
	{
		set_Value (COLUMNNAME_LBR_CreditCardAmt, LBR_CreditCardAmt);
	}

	/** Get Credit Card Amount.
		@return Credit Card Amount	  */
	public BigDecimal getLBR_CreditCardAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CreditCardAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Debit Card Amount.
		@param LBR_DebitCardAmt Debit Card Amount	  */
	public void setLBR_DebitCardAmt (BigDecimal LBR_DebitCardAmt)
	{
		set_Value (COLUMNNAME_LBR_DebitCardAmt, LBR_DebitCardAmt);
	}

	/** Get Debit Card Amount.
		@return Debit Card Amount	  */
	public BigDecimal getLBR_DebitCardAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_DebitCardAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de Vendas no Cartão.
		@param LBR_SalesCardTotal_ID Total de Vendas no Cartão	  */
	public void setLBR_SalesCardTotal_ID (int LBR_SalesCardTotal_ID)
	{
		if (LBR_SalesCardTotal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SalesCardTotal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SalesCardTotal_ID, Integer.valueOf(LBR_SalesCardTotal_ID));
	}

	/** Get Total de Vendas no Cartão.
		@return Total de Vendas no Cartão	  */
	public int getLBR_SalesCardTotal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SalesCardTotal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}