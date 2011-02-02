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

/** Generated Model for LBR_NFLineTax
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NFLineTax extends PO implements I_LBR_NFLineTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_NFLineTax (Properties ctx, int LBR_NFLineTax_ID, String trxName)
    {
      super (ctx, LBR_NFLineTax_ID, trxName);
      /** if (LBR_NFLineTax_ID == 0)
        {
			setLBR_NFLineTax_ID (0);
			setLBR_NotaFiscalLine_ID (0);
			setlbr_TaxAmt (Env.ZERO);
			setlbr_TaxBaseAmt (Env.ZERO);
			setLBR_TaxGroup_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFLineTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFLineTax[")
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

	/** Set Nota Fiscal Line Tax.
		@param LBR_NFLineTax_ID 
		Defines the Nota Fiscal Line Tax
	  */
	public void setLBR_NFLineTax_ID (int LBR_NFLineTax_ID)
	{
		if (LBR_NFLineTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLineTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLineTax_ID, Integer.valueOf(LBR_NFLineTax_ID));
	}

	/** Get Nota Fiscal Line Tax.
		@return Defines the Nota Fiscal Line Tax
	  */
	public int getLBR_NFLineTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFLineTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscalLine)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Amount.
		@param lbr_TaxAmt 
		Defines the Tax Amount
	  */
	public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt)
	{
		set_Value (COLUMNNAME_lbr_TaxAmt, lbr_TaxAmt);
	}

	/** Get Tax Amount.
		@return Defines the Tax Amount
	  */
	public BigDecimal getlbr_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base.
		@param lbr_TaxBase 
		Indicates the Tax Base
	  */
	public void setlbr_TaxBase (BigDecimal lbr_TaxBase)
	{
		set_Value (COLUMNNAME_lbr_TaxBase, lbr_TaxBase);
	}

	/** Get Tax Base.
		@return Indicates the Tax Base
	  */
	public BigDecimal getlbr_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Base Amount.
		@param lbr_TaxBaseAmt 
		Defines the Tax Base Amount
	  */
	public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_lbr_TaxBaseAmt, lbr_TaxBaseAmt);
	}

	/** Get Tax Base Amount.
		@return Defines the Tax Base Amount
	  */
	public BigDecimal getlbr_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public org.adempierelbr.model.I_LBR_TaxGroup getLBR_TaxGroup() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxGroup)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxGroup.Table_Name)
			.getPO(getLBR_TaxGroup_ID(), get_TrxName());	}

	/** Set Tax Group.
		@param LBR_TaxGroup_ID 
		Defines the Tax Group
	  */
	public void setLBR_TaxGroup_ID (int LBR_TaxGroup_ID)
	{
		if (LBR_TaxGroup_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxGroup_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxGroup_ID, Integer.valueOf(LBR_TaxGroup_ID));
	}

	/** Get Tax Group.
		@return Defines the Tax Group
	  */
	public int getLBR_TaxGroup_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxGroup_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Rate.
		@param lbr_TaxRate 
		Indicates the Tax Rate
	  */
	public void setlbr_TaxRate (BigDecimal lbr_TaxRate)
	{
		set_Value (COLUMNNAME_lbr_TaxRate, lbr_TaxRate);
	}

	/** Get Tax Rate.
		@return Indicates the Tax Rate
	  */
	public BigDecimal getlbr_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}