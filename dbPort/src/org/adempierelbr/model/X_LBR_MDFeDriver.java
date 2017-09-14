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

/** Generated Model for LBR_MDFeDriver
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_MDFeDriver extends PO implements I_LBR_MDFeDriver, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140204L;

    /** Standard Constructor */
    public X_LBR_MDFeDriver (Properties ctx, int LBR_MDFeDriver_ID, String trxName)
    {
      super (ctx, LBR_MDFeDriver_ID, trxName);
      /** if (LBR_MDFeDriver_ID == 0)
        {
			setLBR_MDFeDriver_ID (0);
			setName (null);
			setlbr_CPF (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_MDFeDriver (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_MDFeDriver[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set MDFe Driver.
		@param LBR_MDFeDriver_ID MDFe Driver	  */
	public void setLBR_MDFeDriver_ID (int LBR_MDFeDriver_ID)
	{
		if (LBR_MDFeDriver_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeDriver_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_MDFeDriver_ID, Integer.valueOf(LBR_MDFeDriver_ID));
	}

	/** Get MDFe Driver.
		@return MDFe Driver	  */
	public int getLBR_MDFeDriver_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_MDFeDriver_ID);
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

	/** Set CPF.
		@param lbr_CPF 
		Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF)
	{
		set_Value (COLUMNNAME_lbr_CPF, lbr_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getlbr_CPF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CPF);
	}
}