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

/** Generated Model for LBR_BankInfo
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_BankInfo extends PO implements I_LBR_BankInfo, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_BankInfo (Properties ctx, int LBR_BankInfo_ID, String trxName)
    {
      super (ctx, LBR_BankInfo_ID, trxName);
      /** if (LBR_BankInfo_ID == 0)
        {
			setLBR_Bank_ID (0);
			setLBR_BankInfo_ID (0);
			setlbr_OccurNo (null);
			setlbr_OccurType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_BankInfo (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 7 - System - Client - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_BankInfo[")
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

	public org.adempierelbr.model.I_LBR_Bank getLBR_Bank() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Bank)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Bank.Table_Name)
			.getPO(getLBR_Bank_ID(), get_TrxName());	}

	/** Set Bank.
		@param LBR_Bank_ID 
		Primary Key table LBR_Bank
	  */
	public void setLBR_Bank_ID (int LBR_Bank_ID)
	{
		if (LBR_Bank_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Bank_ID, Integer.valueOf(LBR_Bank_ID));
	}

	/** Get Bank.
		@return Primary Key table LBR_Bank
	  */
	public int getLBR_Bank_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Bank_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Bank Info.
		@param LBR_BankInfo_ID 
		Primary key table LBR_BankInfo
	  */
	public void setLBR_BankInfo_ID (int LBR_BankInfo_ID)
	{
		if (LBR_BankInfo_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_BankInfo_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_BankInfo_ID, Integer.valueOf(LBR_BankInfo_ID));
	}

	/** Get Bank Info.
		@return Primary key table LBR_BankInfo
	  */
	public int getLBR_BankInfo_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BankInfo_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Occurrence Number.
		@param lbr_OccurNo 
		Defines the Occurrence Number
	  */
	public void setlbr_OccurNo (String lbr_OccurNo)
	{
		set_Value (COLUMNNAME_lbr_OccurNo, lbr_OccurNo);
	}

	/** Get Occurrence Number.
		@return Defines the Occurrence Number
	  */
	public String getlbr_OccurNo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OccurNo);
	}

	/** lbr_OccurType AD_Reference_ID=1000007 */
	public static final int LBR_OCCURTYPE_AD_Reference_ID=1000007;
	/** Liquidation = L */
	public static final String LBR_OCCURTYPE_Liquidation = "L";
	/** Occurrence = O */
	public static final String LBR_OCCURTYPE_Occurrence = "O";
	/** Set Occurrence Type.
		@param lbr_OccurType 
		Defines the Occurrence Type
	  */
	public void setlbr_OccurType (String lbr_OccurType)
	{

		set_Value (COLUMNNAME_lbr_OccurType, lbr_OccurType);
	}

	/** Get Occurrence Type.
		@return Defines the Occurrence Type
	  */
	public String getlbr_OccurType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OccurType);
	}
}