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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_ADI
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_ADI extends PO implements I_LBR_ADI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110812L;

    /** Standard Constructor */
    public X_LBR_ADI (Properties ctx, int LBR_ADI_ID, String trxName)
    {
      super (ctx, LBR_ADI_ID, trxName);
      /** if (LBR_ADI_ID == 0)
        {
			setDocumentNo (null);
			setLBR_ADI_ID (0);
			setLBR_DI_ID (0);
			setSeqNo (0);
// @SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_ADI WHERE LBR_DI_ID=@LBR_DI_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_ADI (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ADI[")
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

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Adição da DI.
		@param LBR_ADI_ID Adição da DI	  */
	public void setLBR_ADI_ID (int LBR_ADI_ID)
	{
		if (LBR_ADI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ADI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ADI_ID, Integer.valueOf(LBR_ADI_ID));
	}

	/** Get Adição da DI.
		@return Adição da DI	  */
	public int getLBR_ADI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ADI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_DI getLBR_DI() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_DI)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_DI.Table_Name)
			.getPO(getLBR_DI_ID(), get_TrxName());	}

	/** Set Declaracao de Importacao.
		@param LBR_DI_ID Declaracao de Importacao	  */
	public void setLBR_DI_ID (int LBR_DI_ID)
	{
		if (LBR_DI_ID < 1) 
			set_Value (COLUMNNAME_LBR_DI_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_DI_ID, Integer.valueOf(LBR_DI_ID));
	}

	/** Get Declaracao de Importacao.
		@return Declaracao de Importacao	  */
	public int getLBR_DI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DI_ID);
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
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
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

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getSeqNo()));
    }

	/** Set SISCOMEX Amt.
		@param lbr_SISCOMEXAmt SISCOMEX Amt	  */
	public void setlbr_SISCOMEXAmt (BigDecimal lbr_SISCOMEXAmt)
	{
		set_Value (COLUMNNAME_lbr_SISCOMEXAmt, lbr_SISCOMEXAmt);
	}

	/** Get SISCOMEX Amt.
		@return SISCOMEX Amt	  */
	public BigDecimal getlbr_SISCOMEXAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_SISCOMEXAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}