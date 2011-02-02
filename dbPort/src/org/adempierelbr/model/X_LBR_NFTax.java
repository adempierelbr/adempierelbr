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

/** Generated Model for LBR_NFTax
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NFTax extends PO implements I_LBR_NFTax, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_NFTax (Properties ctx, int LBR_NFTax_ID, String trxName)
    {
      super (ctx, LBR_NFTax_ID, trxName);
      /** if (LBR_NFTax_ID == 0)
        {
			setLBR_NFTax_ID (0);
			setLBR_NotaFiscal_ID (0);
			setlbr_TaxAmt (Env.ZERO);
			setlbr_TaxBaseAmt (Env.ZERO);
			setLBR_TaxGroup_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFTax (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFTax[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Nota Fiscal Tax.
		@param LBR_NFTax_ID 
		Defines the Nota Fiscal Tax
	  */
	public void setLBR_NFTax_ID (int LBR_NFTax_ID)
	{
		if (LBR_NFTax_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFTax_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFTax_ID, Integer.valueOf(LBR_NFTax_ID));
	}

	/** Get Nota Fiscal Tax.
		@return Defines the Nota Fiscal Tax
	  */
	public int getLBR_NFTax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFTax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
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
}