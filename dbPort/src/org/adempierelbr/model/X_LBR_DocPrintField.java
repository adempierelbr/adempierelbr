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

/** Generated Model for LBR_DocPrintField
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_DocPrintField extends PO implements I_LBR_DocPrintField, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_DocPrintField (Properties ctx, int LBR_DocPrintField_ID, String trxName)
    {
      super (ctx, LBR_DocPrintField_ID, trxName);
      /** if (LBR_DocPrintField_ID == 0)
        {
			setLBR_DocPrintField_ID (0);
			setLBR_DocPrint_ID (0);
			setlbr_IsHeader (false);
// 'N'
			setlbr_OtherRow (false);
// 'N'
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_DocPrintField (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 4 - System 
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
      StringBuffer sb = new StringBuffer ("X_LBR_DocPrintField[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Comments.
		@param Comments 
		Comments or additional information
	  */
	public void setComments (String Comments)
	{
		set_Value (COLUMNNAME_Comments, Comments);
	}

	/** Get Comments.
		@return Comments or additional information
	  */
	public String getComments () 
	{
		return (String)get_Value(COLUMNNAME_Comments);
	}

	/** Set Column Number.
		@param lbr_ColumnNo 
		Defines the X Position
	  */
	public void setlbr_ColumnNo (int lbr_ColumnNo)
	{
		set_Value (COLUMNNAME_lbr_ColumnNo, Integer.valueOf(lbr_ColumnNo));
	}

	/** Get Column Number.
		@return Defines the X Position
	  */
	public int getlbr_ColumnNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_ColumnNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set DocPrint Field.
		@param LBR_DocPrintField_ID 
		Primary key table LBR_DocPrintField
	  */
	public void setLBR_DocPrintField_ID (int LBR_DocPrintField_ID)
	{
		if (LBR_DocPrintField_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocPrintField_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocPrintField_ID, Integer.valueOf(LBR_DocPrintField_ID));
	}

	/** Get DocPrint Field.
		@return Primary key table LBR_DocPrintField
	  */
	public int getLBR_DocPrintField_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocPrintField_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_DocPrint getLBR_DocPrint() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_DocPrint)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_DocPrint.Table_Name)
			.getPO(getLBR_DocPrint_ID(), get_TrxName());	}

	/** Set DocPrint.
		@param LBR_DocPrint_ID 
		Primary key table LBR_DocPrint
	  */
	public void setLBR_DocPrint_ID (int LBR_DocPrint_ID)
	{
		if (LBR_DocPrint_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DocPrint_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DocPrint_ID, Integer.valueOf(LBR_DocPrint_ID));
	}

	/** Get DocPrint.
		@return Primary key table LBR_DocPrint
	  */
	public int getLBR_DocPrint_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DocPrint_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_FieldAlignment AD_Reference_ID=1000003 */
	public static final int LBR_FIELDALIGNMENT_AD_Reference_ID=1000003;
	/** Left = L */
	public static final String LBR_FIELDALIGNMENT_Left = "L";
	/** Center = C */
	public static final String LBR_FIELDALIGNMENT_Center = "C";
	/** Right = R */
	public static final String LBR_FIELDALIGNMENT_Right = "R";
	/** Set Field Alignment.
		@param lbr_FieldAlignment 
		Defines the Field Alignment
	  */
	public void setlbr_FieldAlignment (String lbr_FieldAlignment)
	{

		set_Value (COLUMNNAME_lbr_FieldAlignment, lbr_FieldAlignment);
	}

	/** Get Field Alignment.
		@return Defines the Field Alignment
	  */
	public String getlbr_FieldAlignment () 
	{
		return (String)get_Value(COLUMNNAME_lbr_FieldAlignment);
	}

	/** Set Field Length.
		@param lbr_FieldLength 
		Defines the Field Length
	  */
	public void setlbr_FieldLength (int lbr_FieldLength)
	{
		set_Value (COLUMNNAME_lbr_FieldLength, Integer.valueOf(lbr_FieldLength));
	}

	/** Get Field Length.
		@return Defines the Field Length
	  */
	public int getlbr_FieldLength () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_FieldLength);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set IsHeader.
		@param lbr_IsHeader 
		Identifies if this is a Header Information (all pages prints column)
	  */
	public void setlbr_IsHeader (boolean lbr_IsHeader)
	{
		set_Value (COLUMNNAME_lbr_IsHeader, Boolean.valueOf(lbr_IsHeader));
	}

	/** Get IsHeader.
		@return Identifies if this is a Header Information (all pages prints column)
	  */
	public boolean islbr_IsHeader () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsHeader);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Other Row.
		@param lbr_OtherRow 
		Defines if this field uses another row or truncate
	  */
	public void setlbr_OtherRow (boolean lbr_OtherRow)
	{
		set_Value (COLUMNNAME_lbr_OtherRow, Boolean.valueOf(lbr_OtherRow));
	}

	/** Get Other Row.
		@return Defines if this field uses another row or truncate
	  */
	public boolean islbr_OtherRow () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_OtherRow);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** lbr_PrintFormat AD_Reference_ID=1000004 */
	public static final int LBR_PRINTFORMAT_AD_Reference_ID=1000004;
	/** String = S */
	public static final String LBR_PRINTFORMAT_String = "S";
	/** Date = D */
	public static final String LBR_PRINTFORMAT_Date = "D";
	/** Value = V */
	public static final String LBR_PRINTFORMAT_Value = "V";
	/** Set Print Format.
		@param lbr_PrintFormat 
		Defines the Print Format Type
	  */
	public void setlbr_PrintFormat (String lbr_PrintFormat)
	{

		set_Value (COLUMNNAME_lbr_PrintFormat, lbr_PrintFormat);
	}

	/** Get Print Format.
		@return Defines the Print Format Type
	  */
	public String getlbr_PrintFormat () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PrintFormat);
	}

	/** Set Row Number.
		@param lbr_RowNo 
		Defines the Y Position
	  */
	public void setlbr_RowNo (int lbr_RowNo)
	{
		set_Value (COLUMNNAME_lbr_RowNo, Integer.valueOf(lbr_RowNo));
	}

	/** Get Row Number.
		@return Defines the Y Position
	  */
	public int getlbr_RowNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_RowNo);
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
}