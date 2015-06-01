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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_TaxFormula
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxFormula extends PO implements I_LBR_TaxFormula, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110921L;

    /** Standard Constructor */
    public X_LBR_TaxFormula (Properties ctx, int LBR_TaxFormula_ID, String trxName)
    {
      super (ctx, LBR_TaxFormula_ID, trxName);
      /** if (LBR_TaxFormula_ID == 0)
        {
			setIsTaxIncluded (false);
// N
			setLBR_TaxFormula_ID (0);
			setLBR_TaxName_ID (0);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
			setlbr_ServiceFactor (null);
			setlbr_TransactionType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxFormula (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxFormula[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Price includes Tax.
		@param IsTaxIncluded 
		Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded)
	{
		set_Value (COLUMNNAME_IsTaxIncluded, Boolean.valueOf(IsTaxIncluded));
	}

	/** Get Price includes Tax.
		@return Tax is included in the price 
	  */
	public boolean isTaxIncluded () 
	{
		Object oo = get_Value(COLUMNNAME_IsTaxIncluded);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaAdd() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Formula)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Formula.Table_Name)
			.getPO(getLBR_FormulaAdd_ID(), get_TrxName());	}

	/** Set Additional Formula.
		@param LBR_FormulaAdd_ID Additional Formula	  */
	public void setLBR_FormulaAdd_ID (int LBR_FormulaAdd_ID)
	{
		if (LBR_FormulaAdd_ID < 1) 
			set_Value (COLUMNNAME_LBR_FormulaAdd_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FormulaAdd_ID, Integer.valueOf(LBR_FormulaAdd_ID));
	}

	/** Get Additional Formula.
		@return Additional Formula	  */
	public int getLBR_FormulaAdd_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FormulaAdd_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaBase() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Formula)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Formula.Table_Name)
			.getPO(getLBR_FormulaBase_ID(), get_TrxName());	}

	/** Set Formula Base.
		@param LBR_FormulaBase_ID Formula Base	  */
	public void setLBR_FormulaBase_ID (int LBR_FormulaBase_ID)
	{
		if (LBR_FormulaBase_ID < 1) 
			set_Value (COLUMNNAME_LBR_FormulaBase_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FormulaBase_ID, Integer.valueOf(LBR_FormulaBase_ID));
	}

	/** Get Formula Base.
		@return Formula Base	  */
	public int getLBR_FormulaBase_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FormulaBase_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_Formula getLBR_FormulaNet() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Formula)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Formula.Table_Name)
			.getPO(getLBR_FormulaNet_ID(), get_TrxName());	}

	/** Set Formula Net (BR).
		@param LBR_FormulaNet_ID Formula Net (BR)	  */
	public void setLBR_FormulaNet_ID (int LBR_FormulaNet_ID)
	{
		if (LBR_FormulaNet_ID < 1) 
			set_Value (COLUMNNAME_LBR_FormulaNet_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_FormulaNet_ID, Integer.valueOf(LBR_FormulaNet_ID));
	}

	/** Get Formula Net (BR).
		@return Formula Net (BR)	  */
	public int getLBR_FormulaNet_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FormulaNet_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_Formula getLBR_Formula() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_Formula)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_Formula.Table_Name)
			.getPO(getLBR_Formula_ID(), get_TrxName());	}

	/** Set Formula (BR).
		@param LBR_Formula_ID Formula (BR)	  */
	public void setLBR_Formula_ID (int LBR_Formula_ID)
	{
		if (LBR_Formula_ID < 1) 
			set_Value (COLUMNNAME_LBR_Formula_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Formula_ID, Integer.valueOf(LBR_Formula_ID));
	}

	/** Get Formula (BR).
		@return Formula (BR)	  */
	public int getLBR_Formula_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Formula_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Tax Formula.
		@param LBR_TaxFormula_ID 
		Primary key table LBR_TaxFormula
	  */
	public void setLBR_TaxFormula_ID (int LBR_TaxFormula_ID)
	{
		if (LBR_TaxFormula_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxFormula_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxFormula_ID, Integer.valueOf(LBR_TaxFormula_ID));
	}

	/** Get Tax Formula.
		@return Primary key table LBR_TaxFormula
	  */
	public int getLBR_TaxFormula_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxFormula_ID);
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

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Formula.
		@param lbr_Formula 
		Defines the Tax Formula
	  */
	public void setlbr_Formula (String lbr_Formula)
	{
		set_Value (COLUMNNAME_lbr_Formula, lbr_Formula);
	}

	/** Get Formula.
		@return Defines the Tax Formula
	  */
	public String getlbr_Formula () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Formula);
	}

	/** Set Formula NetWorth.
		@param lbr_FormulaNetWorth 
		Defines the Tax Formula NetWorth
	  */
	public void setlbr_FormulaNetWorth (String lbr_FormulaNetWorth)
	{
		set_Value (COLUMNNAME_lbr_FormulaNetWorth, lbr_FormulaNetWorth);
	}

	/** Get Formula NetWorth.
		@return Defines the Tax Formula NetWorth
	  */
	public String getlbr_FormulaNetWorth () 
	{
		return (String)get_Value(COLUMNNAME_lbr_FormulaNetWorth);
	}

	/** Set Service Factor.
		@param lbr_ServiceFactor 
		Define the Service Factor Formula
	  */
	public void setlbr_ServiceFactor (String lbr_ServiceFactor)
	{
		set_Value (COLUMNNAME_lbr_ServiceFactor, lbr_ServiceFactor);
	}

	/** Get Service Factor.
		@return Define the Service Factor Formula
	  */
	public String getlbr_ServiceFactor () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ServiceFactor);
	}

	/** lbr_TransactionType AD_Reference_ID=1000024 */
	public static final int LBR_TRANSACTIONTYPE_AD_Reference_ID=1000024;
	/** End User = END */
	public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
	/** Manufacturing = MAN */
	public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
	/** Import = IMP */
	public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
	/** Export = EXP */
	public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
	/** Resale = RES */
	public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
	/** Set Transaction Type.
		@param lbr_TransactionType 
		Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType)
	{

		set_Value (COLUMNNAME_lbr_TransactionType, lbr_TransactionType);
	}

	/** Get Transaction Type.
		@return Defines the Transaction Type
	  */
	public String getlbr_TransactionType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TransactionType);
	}
}