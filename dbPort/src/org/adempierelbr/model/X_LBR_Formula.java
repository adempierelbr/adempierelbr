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

/** Generated Model for LBR_Formula
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_Formula extends PO implements I_LBR_Formula, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110517L;

    /** Standard Constructor */
    public X_LBR_Formula (Properties ctx, int LBR_Formula_ID, String trxName)
    {
      super (ctx, LBR_Formula_ID, trxName);
      /** if (LBR_Formula_ID == 0)
        {
			setLBR_Formula_ID (0);
			setName (null);
			setlbr_Formula (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_Formula (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_Formula[")
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

	/** Set Formula (BR).
		@param LBR_Formula_ID Formula (BR)	  */
	public void setLBR_Formula_ID (int LBR_Formula_ID)
	{
		if (LBR_Formula_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Formula_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Formula_ID, Integer.valueOf(LBR_Formula_ID));
	}

	/** Get Formula (BR).
		@return Formula (BR)	  */
	public int getLBR_Formula_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Formula_ID);
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

	/** Set Formula.
		@param lbr_Formula 
		Defines the Tax Formula
	  */
	public void setlbr_Formula (String lbr_Formula)
	{
		set_Value (COLUMNNAME_lbr_Formula, lbr_Formula);
	}

	/** Get Formula.
		@return Defines the Tax Formula
	  */
	public String getlbr_Formula () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Formula);
	}
}