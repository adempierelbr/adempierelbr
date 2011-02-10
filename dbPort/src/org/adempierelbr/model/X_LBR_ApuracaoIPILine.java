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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_ApuracaoIPILine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ApuracaoIPILine extends PO implements I_LBR_ApuracaoIPILine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110209L;

    /** Standard Constructor */
    public X_LBR_ApuracaoIPILine (Properties ctx, int LBR_ApuracaoIPILine_ID, String trxName)
    {
      super (ctx, LBR_ApuracaoIPILine_ID, trxName);
      /** if (LBR_ApuracaoIPILine_ID == 0)
        {
			setAmt (Env.ZERO);
			setDescription (null);
			setLBR_ApuracaoIPI_ID (0);
			setLBR_ApuracaoIPILine_ID (0);
			setType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ApuracaoIPILine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ApuracaoIPILine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	public org.adempierelbr.model.I_LBR_ApuracaoIPI getLBR_ApuracaoIPI() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ApuracaoIPI)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ApuracaoIPI.Table_Name)
			.getPO(getLBR_ApuracaoIPI_ID(), get_TrxName());	}

	/** Set Apuração do IPI.
		@param LBR_ApuracaoIPI_ID Apuração do IPI	  */
	public void setLBR_ApuracaoIPI_ID (int LBR_ApuracaoIPI_ID)
	{
		if (LBR_ApuracaoIPI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPI_ID, Integer.valueOf(LBR_ApuracaoIPI_ID));
	}

	/** Get Apuração do IPI.
		@return Apuração do IPI	  */
	public int getLBR_ApuracaoIPI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ApuracaoIPI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Linha de Apuração do IPI.
		@param LBR_ApuracaoIPILine_ID Linha de Apuração do IPI	  */
	public void setLBR_ApuracaoIPILine_ID (int LBR_ApuracaoIPILine_ID)
	{
		if (LBR_ApuracaoIPILine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPILine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoIPILine_ID, Integer.valueOf(LBR_ApuracaoIPILine_ID));
	}

	/** Get Linha de Apuração do IPI.
		@return Linha de Apuração do IPI	  */
	public int getLBR_ApuracaoIPILine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ApuracaoIPILine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Type AD_Reference_ID=1120012 */
	public static final int TYPE_AD_Reference_ID=1120012;
	/** Outros Débitos = 002 */
	public static final String TYPE_OutrosDébitos = "002";
	/** Estornos de Créditos = 003 */
	public static final String TYPE_EstornosDeCréditos = "003";
	/** Outros Créditos = 006 */
	public static final String TYPE_OutrosCréditos = "006";
	/** Estorno de Débitos = 007 */
	public static final String TYPE_EstornoDeDébitos = "007";
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
}