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

/** Generated Model for LBR_TaxAssessmentLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxAssessmentLine extends PO implements I_LBR_TaxAssessmentLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20120829L;

    /** Standard Constructor */
    public X_LBR_TaxAssessmentLine (Properties ctx, int LBR_TaxAssessmentLine_ID, String trxName)
    {
      super (ctx, LBR_TaxAssessmentLine_ID, trxName);
      /** if (LBR_TaxAssessmentLine_ID == 0)
        {
			setAmt (Env.ZERO);
			setDescription (null);
			setLBR_TaxAssessment_ID (0);
			setLBR_TaxAssessmentLine_ID (0);
			setType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxAssessmentLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxAssessmentLine[")
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

	/** Set Apuração de Impostos.
		@param LBR_TaxAssessment_ID Apuração de Impostos	  */
	public void setLBR_TaxAssessment_ID (int LBR_TaxAssessment_ID)
	{
		if (LBR_TaxAssessment_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, Integer.valueOf(LBR_TaxAssessment_ID));
	}

	/** Get Apuração de Impostos.
		@return Apuração de Impostos	  */
	public int getLBR_TaxAssessment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxAssessment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Linhas da Apuração de Impostos.
		@param LBR_TaxAssessmentLine_ID Linhas da Apuração de Impostos	  */
	public void setLBR_TaxAssessmentLine_ID (int LBR_TaxAssessmentLine_ID)
	{
		if (LBR_TaxAssessmentLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessmentLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessmentLine_ID, Integer.valueOf(LBR_TaxAssessmentLine_ID));
	}

	/** Get Linhas da Apuração de Impostos.
		@return Linhas da Apuração de Impostos	  */
	public int getLBR_TaxAssessmentLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxAssessmentLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Type AD_Reference_ID=1120158 */
	public static final int TYPE_AD_Reference_ID=1120158;
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