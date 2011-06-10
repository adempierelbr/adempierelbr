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

/** Generated Model for LBR_NCMIVA
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NCMIVA extends PO implements I_LBR_NCMIVA, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110609L;

    /** Standard Constructor */
    public X_LBR_NCMIVA (Properties ctx, int LBR_NCMIVA_ID, String trxName)
    {
      super (ctx, LBR_NCMIVA_ID, trxName);
      /** if (LBR_NCMIVA_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_NCM_ID (0);
			setLBR_NCMIVA_ID (0);
			setlbr_ProfitPercentage (Env.ZERO);
			setTo_Region_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NCMIVA (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NCMIVA[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_Region getC_Region() throws RuntimeException
    {
		return (I_C_Region)MTable.get(getCtx(), I_C_Region.Table_Name)
			.getPO(getC_Region_ID(), get_TrxName());	}

	/** Set Region.
		@param C_Region_ID 
		Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID)
	{
		if (C_Region_ID < 1) 
			set_Value (COLUMNNAME_C_Region_ID, null);
		else 
			set_Value (COLUMNNAME_C_Region_ID, Integer.valueOf(C_Region_ID));
	}

	/** Get Region.
		@return Identifies a geographical Region
	  */
	public int getC_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Region_ID);
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
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
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

	/** Set NCM - Region IVA.
		@param LBR_NCMIVA_ID NCM - Region IVA	  */
	public void setLBR_NCMIVA_ID (int LBR_NCMIVA_ID)
	{
		if (LBR_NCMIVA_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMIVA_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NCMIVA_ID, Integer.valueOf(LBR_NCMIVA_ID));
	}

	/** Get NCM - Region IVA.
		@return NCM - Region IVA	  */
	public int getLBR_NCMIVA_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCMIVA_ID);
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

	public I_C_Region getTo_Region() throws RuntimeException
    {
		return (I_C_Region)MTable.get(getCtx(), I_C_Region.Table_Name)
			.getPO(getTo_Region_ID(), get_TrxName());	}

	/** Set To.
		@param To_Region_ID 
		Receiving Region
	  */
	public void setTo_Region_ID (int To_Region_ID)
	{
		if (To_Region_ID < 1) 
			set_Value (COLUMNNAME_To_Region_ID, null);
		else 
			set_Value (COLUMNNAME_To_Region_ID, Integer.valueOf(To_Region_ID));
	}

	/** Get To.
		@return Receiving Region
	  */
	public int getTo_Region_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_To_Region_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}