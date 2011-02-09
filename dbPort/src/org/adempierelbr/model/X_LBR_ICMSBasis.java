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

/** Generated Model for LBR_ICMSBasis
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ICMSBasis extends PO implements I_LBR_ICMSBasis, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110209L;

    /** Standard Constructor */
    public X_LBR_ICMSBasis (Properties ctx, int LBR_ICMSBasis_ID, String trxName)
    {
      super (ctx, LBR_ICMSBasis_ID, trxName);
      /** if (LBR_ICMSBasis_ID == 0)
        {
			setLBR_ICMSBasis_ID (0);
			setType (null);
// P
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ICMSBasis (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ICMSBasis[")
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

	/** Set Comment/Help.
		@param Help 
		Comment or Hint
	  */
	public void setHelp (String Help)
	{
		set_Value (COLUMNNAME_Help, Help);
	}

	/** Get Comment/Help.
		@return Comment or Hint
	  */
	public String getHelp () 
	{
		return (String)get_Value(COLUMNNAME_Help);
	}

	/** Set ICMS Basis.
		@param LBR_ICMSBasis_ID 
		Describe ICMS Basis
	  */
	public void setLBR_ICMSBasis_ID (int LBR_ICMSBasis_ID)
	{
		if (LBR_ICMSBasis_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ICMSBasis_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ICMSBasis_ID, Integer.valueOf(LBR_ICMSBasis_ID));
	}

	/** Get ICMS Basis.
		@return Describe ICMS Basis
	  */
	public int getLBR_ICMSBasis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ICMSBasis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Type AD_Reference_ID=1120010 */
	public static final int TYPE_AD_Reference_ID=1120010;
	/** Operação Própria = P */
	public static final String TYPE_OperaçãoPrópria = "P";
	/** Substituição Tributária = S */
	public static final String TYPE_SubstituiçãoTributária = "S";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
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