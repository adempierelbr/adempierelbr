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

/** Generated Model for LBR_Agreement
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_Agreement extends PO implements I_LBR_Agreement, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110402L;

    /** Standard Constructor */
    public X_LBR_Agreement (Properties ctx, int LBR_Agreement_ID, String trxName)
    {
      super (ctx, LBR_Agreement_ID, trxName);
      /** if (LBR_Agreement_ID == 0)
        {
			setC_Region_ID (0);
			setLBR_Agreement_ID (0);
			setlbr_HasSubstitution (true);
// Y
			setTo_Region_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_Agreement (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_Agreement[")
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

	/** Set Agreement.
		@param LBR_Agreement_ID Agreement	  */
	public void setLBR_Agreement_ID (int LBR_Agreement_ID)
	{
		if (LBR_Agreement_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Agreement_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Agreement_ID, Integer.valueOf(LBR_Agreement_ID));
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

	/** Set Has Substitution.
		@param lbr_HasSubstitution 
		Defines if the record has Substituion
	  */
	public void setlbr_HasSubstitution (boolean lbr_HasSubstitution)
	{
		set_Value (COLUMNNAME_lbr_HasSubstitution, Boolean.valueOf(lbr_HasSubstitution));
	}

	/** Get Has Substitution.
		@return Defines if the record has Substituion
	  */
	public boolean islbr_HasSubstitution () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_HasSubstitution);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
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