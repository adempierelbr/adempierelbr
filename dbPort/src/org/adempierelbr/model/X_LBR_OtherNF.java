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

/** Generated Model for LBR_OtherNF
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_OtherNF extends PO implements I_LBR_OtherNF, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_OtherNF (Properties ctx, int LBR_OtherNF_ID, String trxName)
    {
      super (ctx, LBR_OtherNF_ID, trxName);
      /** if (LBR_OtherNF_ID == 0)
        {
			setC_BPartner_ID (0);
			setC_DocType_ID (0);
			setC_DocTypeTarget_ID (0);
			setLBR_OtherNF_ID (0);
			setM_Warehouse_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_OtherNF (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_OtherNF[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
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

	/** Set Generated.
		@param IsGenerated 
		This Line is generated
	  */
	public void setIsGenerated (boolean IsGenerated)
	{
		set_ValueNoCheck (COLUMNNAME_IsGenerated, Boolean.valueOf(IsGenerated));
	}

	/** Get Generated.
		@return This Line is generated
	  */
	public boolean isGenerated () 
	{
		Object oo = get_Value(COLUMNNAME_IsGenerated);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Generate.
		@param lbr_GenerateOtherNF 
		Generate
	  */
	public void setlbr_GenerateOtherNF (String lbr_GenerateOtherNF)
	{
		set_Value (COLUMNNAME_lbr_GenerateOtherNF, lbr_GenerateOtherNF);
	}

	/** Get Generate.
		@return Generate
	  */
	public String getlbr_GenerateOtherNF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_GenerateOtherNF);
	}

	/** Set Other NF.
		@param LBR_OtherNF_ID 
		Other NF
	  */
	public void setLBR_OtherNF_ID (int LBR_OtherNF_ID)
	{
		if (LBR_OtherNF_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_OtherNF_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_OtherNF_ID, Integer.valueOf(LBR_OtherNF_ID));
	}

	/** Get Other NF.
		@return Other NF
	  */
	public int getLBR_OtherNF_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_OtherNF_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_OtherNF_RequestType AD_Reference_ID=1000040 */
	public static final int LBR_OTHERNF_REQUESTTYPE_AD_Reference_ID=1000040;
	/** Material Return = MR */
	public static final String LBR_OTHERNF_REQUESTTYPE_MaterialReturn = "MR";
	/** Material Invoice = MI */
	public static final String LBR_OTHERNF_REQUESTTYPE_MaterialInvoice = "MI";
	/** Set Other NF Request Type.
		@param lbr_OtherNF_RequestType 
		Type of request for the Other NF Process
	  */
	public void setlbr_OtherNF_RequestType (String lbr_OtherNF_RequestType)
	{

		set_Value (COLUMNNAME_lbr_OtherNF_RequestType, lbr_OtherNF_RequestType);
	}

	/** Get Other NF Request Type.
		@return Type of request for the Other NF Process
	  */
	public String getlbr_OtherNF_RequestType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OtherNF_RequestType);
	}

	/** Set Process.
		@param lbr_ProcessOtherNF 
		Process now
	  */
	public void setlbr_ProcessOtherNF (String lbr_ProcessOtherNF)
	{
		set_Value (COLUMNNAME_lbr_ProcessOtherNF, lbr_ProcessOtherNF);
	}

	/** Get Process.
		@return Process now
	  */
	public String getlbr_ProcessOtherNF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProcessOtherNF);
	}

	/** Set Void.
		@param lbr_VoidOtherNF 
		Void Other NF
	  */
	public void setlbr_VoidOtherNF (String lbr_VoidOtherNF)
	{
		set_Value (COLUMNNAME_lbr_VoidOtherNF, lbr_VoidOtherNF);
	}

	/** Get Void.
		@return Void Other NF
	  */
	public String getlbr_VoidOtherNF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_VoidOtherNF);
	}

	public I_M_Warehouse getM_Warehouse() throws RuntimeException
    {
		return (I_M_Warehouse)MTable.get(getCtx(), I_M_Warehouse.Table_Name)
			.getPO(getM_Warehouse_ID(), get_TrxName());	}

	/** Set Warehouse.
		@param M_Warehouse_ID 
		Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if (M_Warehouse_ID < 1) 
			set_Value (COLUMNNAME_M_Warehouse_ID, null);
		else 
			set_Value (COLUMNNAME_M_Warehouse_ID, Integer.valueOf(M_Warehouse_ID));
	}

	/** Get Warehouse.
		@return Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Warehouse_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_ValueNoCheck (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}