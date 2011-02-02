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

/** Generated Model for LBR_OtherNFLink
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_OtherNFLink extends PO implements I_LBR_OtherNFLink, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_OtherNFLink (Properties ctx, int LBR_OtherNFLink_ID, String trxName)
    {
      super (ctx, LBR_OtherNFLink_ID, trxName);
      /** if (LBR_OtherNFLink_ID == 0)
        {
			setC_DocType_ID (0);
			setC_DocTypeTarget_ID (0);
			setLBR_OtherNFLink_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_OtherNFLink (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_OtherNFLink[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_DocType getC_DocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_DocType getC_DocTypeTarget() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocTypeTarget_ID(), get_TrxName());	}

	/** Set Target Document Type.
		@param C_DocTypeTarget_ID 
		Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
	{
		if (C_DocTypeTarget_ID < 1) 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, Integer.valueOf(C_DocTypeTarget_ID));
	}

	/** Get Target Document Type.
		@return Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocTypeTarget_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Other NF Link.
		@param LBR_OtherNFLink_ID 
		Identifies the Other NF Link
	  */
	public void setLBR_OtherNFLink_ID (int LBR_OtherNFLink_ID)
	{
		if (LBR_OtherNFLink_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_OtherNFLink_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_OtherNFLink_ID, Integer.valueOf(LBR_OtherNFLink_ID));
	}

	/** Get Other NF Link.
		@return Identifies the Other NF Link
	  */
	public int getLBR_OtherNFLink_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_OtherNFLink_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}