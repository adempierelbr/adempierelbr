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

/** Generated Model for LBR_ApuracaoIPI
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ApuracaoIPI extends PO implements I_LBR_ApuracaoIPI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110209L;

    /** Standard Constructor */
    public X_LBR_ApuracaoIPI (Properties ctx, int LBR_ApuracaoIPI_ID, String trxName)
    {
      super (ctx, LBR_ApuracaoIPI_ID, trxName);
      /** if (LBR_ApuracaoIPI_ID == 0)
        {
			setC_Period_ID (0);
			setLBR_ApuracaoIPI_ID (0);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_ApuracaoIPI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ApuracaoIPI[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Jasper Process Now.
		@param JasperProcessing Jasper Process Now	  */
	public void setJasperProcessing (String JasperProcessing)
	{
		set_Value (COLUMNNAME_JasperProcessing, JasperProcessing);
	}

	/** Get Jasper Process Now.
		@return Jasper Process Now	  */
	public String getJasperProcessing () 
	{
		return (String)get_Value(COLUMNNAME_JasperProcessing);
	}

	/** Set Apuração do IPI.
		@param LBR_ApuracaoIPI_ID Apuração do IPI	  */
	public void setLBR_ApuracaoIPI_ID (int LBR_ApuracaoIPI_ID)
	{
		if (LBR_ApuracaoIPI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPI_ID, Integer.valueOf(LBR_ApuracaoIPI_ID));
	}

	/** Get Apuração do IPI.
		@return Apuração do IPI	  */
	public int getLBR_ApuracaoIPI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ApuracaoIPI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Total Amount.
		@param TotalAmt 
		Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt)
	{
		set_Value (COLUMNNAME_TotalAmt, TotalAmt);
	}

	/** Get Total Amount.
		@return Total Amount
	  */
	public BigDecimal getTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Credit.
		@param TotalCr 
		Total Credit in document currency
	  */
	public void setTotalCr (BigDecimal TotalCr)
	{
		set_Value (COLUMNNAME_TotalCr, TotalCr);
	}

	/** Get Total Credit.
		@return Total Credit in document currency
	  */
	public BigDecimal getTotalCr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalCr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Debit.
		@param TotalDr 
		Total debit in document currency
	  */
	public void setTotalDr (BigDecimal TotalDr)
	{
		set_Value (COLUMNNAME_TotalDr, TotalDr);
	}

	/** Get Total Debit.
		@return Total debit in document currency
	  */
	public BigDecimal getTotalDr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalDr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}