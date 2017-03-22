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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_CSC
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_CSC extends PO implements I_LBR_CSC, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20170118L;

    /** Standard Constructor */
    public X_LBR_CSC (Properties ctx, int LBR_CSC_ID, String trxName)
    {
      super (ctx, LBR_CSC_ID, trxName);
      /** if (LBR_CSC_ID == 0)
        {
			setLBR_CSC_ID (0);
			setLBR_NFConfig_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_CSC (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CSC[")
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

	/** Set Taxpayer Security Code.
		@param LBR_CSC_ID Taxpayer Security Code	  */
	public void setLBR_CSC_ID (int LBR_CSC_ID)
	{
		if (LBR_CSC_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CSC_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CSC_ID, Integer.valueOf(LBR_CSC_ID));
	}

	/** Get Taxpayer Security Code.
		@return Taxpayer Security Code	  */
	public int getLBR_CSC_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CSC_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NFConfig getLBR_NFConfig() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFConfig)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFConfig.Table_Name)
			.getPO(getLBR_NFConfig_ID(), get_TrxName());	}

	/** Set NF Configuration.
		@param LBR_NFConfig_ID NF Configuration	  */
	public void setLBR_NFConfig_ID (int LBR_NFConfig_ID)
	{
		if (LBR_NFConfig_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFConfig_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFConfig_ID, Integer.valueOf(LBR_NFConfig_ID));
	}

	/** Get NF Configuration.
		@return NF Configuration	  */
	public int getLBR_NFConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}