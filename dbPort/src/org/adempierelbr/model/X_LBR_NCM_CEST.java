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

/** Generated Model for LBR_NCM_CEST
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NCM_CEST extends PO implements I_LBR_NCM_CEST, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20151218L;

    /** Standard Constructor */
    public X_LBR_NCM_CEST (Properties ctx, int LBR_NCM_CEST_ID, String trxName)
    {
      super (ctx, LBR_NCM_CEST_ID, trxName);
      /** if (LBR_NCM_CEST_ID == 0)
        {
			setLBR_CEST_ID (0);
			setLBR_NCM_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NCM_CEST (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NCM_CEST[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.adempierelbr.model.I_LBR_CEST getLBR_CEST() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CEST)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CEST.Table_Name)
			.getPO(getLBR_CEST_ID(), get_TrxName());	}

	/** Set CEST.
		@param LBR_CEST_ID 
		Brazilian Specifier code Tax
	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CEST_ID, Integer.valueOf(LBR_CEST_ID));
	}

	/** Get CEST.
		@return Brazilian Specifier code Tax
	  */
	public int getLBR_CEST_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CEST_ID);
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
}