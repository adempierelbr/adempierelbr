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

/** Generated Model for LBR_TaxLegalFW
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxLegalFW extends PO implements I_LBR_TaxLegalFW, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20151209L;

    /** Standard Constructor */
    public X_LBR_TaxLegalFW (Properties ctx, int LBR_TaxLegalFW_ID, String trxName)
    {
      super (ctx, LBR_TaxLegalFW_ID, trxName);
      /** if (LBR_TaxLegalFW_ID == 0)
        {
			setLBR_CSTGroup (null);
			setLBR_TaxLegalFW_ID (0);
			setLBR_TaxName_ID (0);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxLegalFW (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxLegalFW[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** LBR_CSTGroup AD_Reference_ID=1120221 */
	public static final int LBR_CSTGROUP_AD_Reference_ID=1120221;
	/** Imunidade = M */
	public static final String LBR_CSTGROUP_Imunidade = "M";
	/** Suspensão = S */
	public static final String LBR_CSTGROUP_Suspensão = "S";
	/** Isenção = I */
	public static final String LBR_CSTGROUP_Isenção = "I";
	/** Redução = R */
	public static final String LBR_CSTGROUP_Redução = "R";
	/** Outros = O */
	public static final String LBR_CSTGROUP_Outros = "O";
	/** Set CST Group.
		@param LBR_CSTGroup CST Group	  */
	public void setLBR_CSTGroup (String LBR_CSTGroup)
	{

		set_ValueNoCheck (COLUMNNAME_LBR_CSTGroup, LBR_CSTGroup);
	}

	/** Get CST Group.
		@return CST Group	  */
	public String getLBR_CSTGroup () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CSTGroup);
	}

	/** Set Tax Legal Framework.
		@param LBR_TaxLegalFW_ID Tax Legal Framework	  */
	public void setLBR_TaxLegalFW_ID (int LBR_TaxLegalFW_ID)
	{
		if (LBR_TaxLegalFW_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxLegalFW_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxLegalFW_ID, Integer.valueOf(LBR_TaxLegalFW_ID));
	}

	/** Get Tax Legal Framework.
		@return Tax Legal Framework	  */
	public int getLBR_TaxLegalFW_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxLegalFW_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxName)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxName_ID(), get_TrxName());	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
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