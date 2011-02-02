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

/** Generated Model for LBR_MatrixPrinter
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_MatrixPrinter extends PO implements I_LBR_MatrixPrinter, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_MatrixPrinter (Properties ctx, int LBR_MatrixPrinter_ID, String trxName)
    {
      super (ctx, LBR_MatrixPrinter_ID, trxName);
      /** if (LBR_MatrixPrinter_ID == 0)
        {
			setIsDefault (false);
// 'N'
			setlbr_IsCondensed (true);
// 'Y'
			setlbr_IsUnixPrinter (false);
// 'N'
			setLBR_MatrixPrinter_ID (0);
			setlbr_Pitch (0);
			setlbr_PrinterPath (null);
			setlbr_PrinterType (null);
			setlbr_UnixPrinterName (null);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MatrixPrinter (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MatrixPrinter[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Default.
		@param IsDefault 
		Default value
	  */
	public void setIsDefault (boolean IsDefault)
	{
		set_Value (COLUMNNAME_IsDefault, Boolean.valueOf(IsDefault));
	}

	/** Get Default.
		@return Default value
	  */
	public boolean isDefault () 
	{
		Object oo = get_Value(COLUMNNAME_IsDefault);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Characterset.
		@param lbr_Characterset 
		Defines the Characterset
	  */
	public void setlbr_Characterset (String lbr_Characterset)
	{
		set_Value (COLUMNNAME_lbr_Characterset, lbr_Characterset);
	}

	/** Get Characterset.
		@return Defines the Characterset
	  */
	public String getlbr_Characterset () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Characterset);
	}

	/** Set Interspace.
		@param lbr_Interspace 
		Defines the Interspace
	  */
	public void setlbr_Interspace (String lbr_Interspace)
	{
		set_Value (COLUMNNAME_lbr_Interspace, lbr_Interspace);
	}

	/** Get Interspace.
		@return Defines the Interspace
	  */
	public String getlbr_Interspace () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Interspace);
	}

	/** Set Is Condensed.
		@param lbr_IsCondensed 
		Defines if Character is Condensed
	  */
	public void setlbr_IsCondensed (boolean lbr_IsCondensed)
	{
		set_Value (COLUMNNAME_lbr_IsCondensed, Boolean.valueOf(lbr_IsCondensed));
	}

	/** Get Is Condensed.
		@return Defines if Character is Condensed
	  */
	public boolean islbr_IsCondensed () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsCondensed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Is UnixPrinter.
		@param lbr_IsUnixPrinter 
		Define if this is an Unix Printer
	  */
	public void setlbr_IsUnixPrinter (boolean lbr_IsUnixPrinter)
	{
		set_Value (COLUMNNAME_lbr_IsUnixPrinter, Boolean.valueOf(lbr_IsUnixPrinter));
	}

	/** Get Is UnixPrinter.
		@return Define if this is an Unix Printer
	  */
	public boolean islbr_IsUnixPrinter () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsUnixPrinter);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Matrix Printer.
		@param LBR_MatrixPrinter_ID 
		Primary key table LBR_MatrixPrinter
	  */
	public void setLBR_MatrixPrinter_ID (int LBR_MatrixPrinter_ID)
	{
		if (LBR_MatrixPrinter_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MatrixPrinter_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MatrixPrinter_ID, Integer.valueOf(LBR_MatrixPrinter_ID));
	}

	/** Get Matrix Printer.
		@return Primary key table LBR_MatrixPrinter
	  */
	public int getLBR_MatrixPrinter_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MatrixPrinter_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Pitch.
		@param lbr_Pitch 
		Defines the Printer Pitch
	  */
	public void setlbr_Pitch (int lbr_Pitch)
	{
		set_Value (COLUMNNAME_lbr_Pitch, Integer.valueOf(lbr_Pitch));
	}

	/** Get Pitch.
		@return Defines the Printer Pitch
	  */
	public int getlbr_Pitch () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_Pitch);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Printer Path.
		@param lbr_PrinterPath 
		Defines the Printer Path
	  */
	public void setlbr_PrinterPath (String lbr_PrinterPath)
	{
		set_Value (COLUMNNAME_lbr_PrinterPath, lbr_PrinterPath);
	}

	/** Get Printer Path.
		@return Defines the Printer Path
	  */
	public String getlbr_PrinterPath () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PrinterPath);
	}

	/** Set Printer Type.
		@param lbr_PrinterType 
		Defines the Printer Type
	  */
	public void setlbr_PrinterType (String lbr_PrinterType)
	{
		set_Value (COLUMNNAME_lbr_PrinterType, lbr_PrinterType);
	}

	/** Get Printer Type.
		@return Defines the Printer Type
	  */
	public String getlbr_PrinterType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PrinterType);
	}

	/** Set Unix PrinterName.
		@param lbr_UnixPrinterName 
		Defines the Unix PrinterName
	  */
	public void setlbr_UnixPrinterName (String lbr_UnixPrinterName)
	{
		set_Value (COLUMNNAME_lbr_UnixPrinterName, lbr_UnixPrinterName);
	}

	/** Get Unix PrinterName.
		@return Defines the Unix PrinterName
	  */
	public String getlbr_UnixPrinterName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_UnixPrinterName);
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