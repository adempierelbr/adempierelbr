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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_AgreementLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_AgreementLine extends PO implements I_LBR_AgreementLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110402L;

    /** Standard Constructor */
    public X_LBR_AgreementLine (Properties ctx, int LBR_AgreementLine_ID, String trxName)
    {
      super (ctx, LBR_AgreementLine_ID, trxName);
      /** if (LBR_AgreementLine_ID == 0)
        {
			setLBR_AgreementLine_ID (0);
			setProcessed (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LBR_AgreementLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_AgreementLine[")
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

	public org.adempierelbr.model.I_LBR_Agreement getLBR_Agreement() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Agreement)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Agreement.Table_Name)
			.getPO(getLBR_Agreement_ID(), get_TrxName());	}

	/** Set Agreement.
		@param LBR_Agreement_ID Agreement	  */
	public void setLBR_Agreement_ID (int LBR_Agreement_ID)
	{
		if (LBR_Agreement_ID < 1) 
			set_Value (COLUMNNAME_LBR_Agreement_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Agreement_ID, Integer.valueOf(LBR_Agreement_ID));
	}

	/** Get Agreement.
		@return Agreement	  */
	public int getLBR_Agreement_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Agreement_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Agreement Line.
		@param LBR_AgreementLine_ID Agreement Line	  */
	public void setLBR_AgreementLine_ID (int LBR_AgreementLine_ID)
	{
		if (LBR_AgreementLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_AgreementLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_AgreementLine_ID, Integer.valueOf(LBR_AgreementLine_ID));
	}

	/** Get Agreement Line.
		@return Agreement Line	  */
	public int getLBR_AgreementLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_AgreementLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NCM)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Profit Percentage.
		@param lbr_ProfitPercentage 
		Defines the Profit Percentage
	  */
	public void setlbr_ProfitPercentage (BigDecimal lbr_ProfitPercentage)
	{
		set_Value (COLUMNNAME_lbr_ProfitPercentage, lbr_ProfitPercentage);
	}

	/** Get Profit Percentage.
		@return Defines the Profit Percentage
	  */
	public BigDecimal getlbr_ProfitPercentage () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_ProfitPercentage);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}
}