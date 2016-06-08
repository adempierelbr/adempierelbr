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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_NFConfig_SVC
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NFConfig_SVC extends PO implements I_LBR_NFConfig_SVC, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20160608L;

    /** Standard Constructor */
    public X_LBR_NFConfig_SVC (Properties ctx, int LBR_NFConfig_SVC_ID, String trxName)
    {
      super (ctx, LBR_NFConfig_SVC_ID, trxName);
      /** if (LBR_NFConfig_SVC_ID == 0)
        {
			setDateFrom (new Timestamp( System.currentTimeMillis() ));
			setDateTo (new Timestamp( System.currentTimeMillis() ));
			setLBR_NFConfig_ID (0);
			setLBR_NFConfig_SVC_ID (0);
			setLBR_TPEmis (null);
// 6
			setlbr_DateScan (new Timestamp( System.currentTimeMillis() ));
			setlbr_MotivoScan (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFConfig_SVC (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFConfig_SVC[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Date From.
		@param DateFrom 
		Starting date for a range
	  */
	public void setDateFrom (Timestamp DateFrom)
	{
		set_Value (COLUMNNAME_DateFrom, DateFrom);
	}

	/** Get Date From.
		@return Starting date for a range
	  */
	public Timestamp getDateFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateFrom);
	}

	/** Set Date To.
		@param DateTo 
		End date of a date range
	  */
	public void setDateTo (Timestamp DateTo)
	{
		set_Value (COLUMNNAME_DateTo, DateTo);
	}

	/** Get Date To.
		@return End date of a date range
	  */
	public Timestamp getDateTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTo);
	}

	public org.adempierelbr.model.I_LBR_NFConfig getLBR_NFConfig() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFConfig)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFConfig.Table_Name)
			.getPO(getLBR_NFConfig_ID(), get_TrxName());	}

	/** Set NF Configuration.
		@param LBR_NFConfig_ID NF Configuration	  */
	public void setLBR_NFConfig_ID (int LBR_NFConfig_ID)
	{
		if (LBR_NFConfig_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFConfig_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFConfig_ID, Integer.valueOf(LBR_NFConfig_ID));
	}

	/** Get NF Configuration.
		@return NF Configuration	  */
	public int getLBR_NFConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF Configuration.
		@param LBR_NFConfig_SVC_ID NF Configuration	  */
	public void setLBR_NFConfig_SVC_ID (int LBR_NFConfig_SVC_ID)
	{
		if (LBR_NFConfig_SVC_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFConfig_SVC_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFConfig_SVC_ID, Integer.valueOf(LBR_NFConfig_SVC_ID));
	}

	/** Get NF Configuration.
		@return NF Configuration	  */
	public int getLBR_NFConfig_SVC_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFConfig_SVC_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_TPEmis AD_Reference_ID=1120246 */
	public static final int LBR_TPEMIS_AD_Reference_ID=1120246;
	/** Emissão Normal = 1 */
	public static final String LBR_TPEMIS_EmissãoNormal = "1";
	/** Contingência FS-IA = 2 */
	public static final String LBR_TPEMIS_ContingênciaFS_IA = "2";
	/** Contingência SCAN = 3 */
	public static final String LBR_TPEMIS_ContingênciaSCAN = "3";
	/** Contingência DPEC = 4 */
	public static final String LBR_TPEMIS_ContingênciaDPEC = "4";
	/** Contingência FS-DA = 5 */
	public static final String LBR_TPEMIS_ContingênciaFS_DA = "5";
	/** Contingência SVC-AN = 6 */
	public static final String LBR_TPEMIS_ContingênciaSVC_AN = "6";
	/** Contingência SVC-RS = 7 */
	public static final String LBR_TPEMIS_ContingênciaSVC_RS = "7";
	/** Contingência off-line da NFC-e = 9 */
	public static final String LBR_TPEMIS_ContingênciaOff_LineDaNFC_E = "9";
	/** Set Tipo de Emissão.
		@param LBR_TPEmis 
		Indicar o Tipo de Emissão da NF-e.
	  */
	public void setLBR_TPEmis (String LBR_TPEmis)
	{

		set_Value (COLUMNNAME_LBR_TPEmis, LBR_TPEmis);
	}

	/** Get Tipo de Emissão.
		@return Indicar o Tipo de Emissão da NF-e.
	  */
	public String getLBR_TPEmis () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TPEmis);
	}

	/** Set Data contingência.
		@param lbr_DateScan Data contingência	  */
	public void setlbr_DateScan (Timestamp lbr_DateScan)
	{
		set_Value (COLUMNNAME_lbr_DateScan, lbr_DateScan);
	}

	/** Get Data contingência.
		@return Data contingência	  */
	public Timestamp getlbr_DateScan () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateScan);
	}

	/** Set Motivo contingência.
		@param lbr_MotivoScan Motivo contingência	  */
	public void setlbr_MotivoScan (String lbr_MotivoScan)
	{
		set_Value (COLUMNNAME_lbr_MotivoScan, lbr_MotivoScan);
	}

	/** Get Motivo contingência.
		@return Motivo contingência	  */
	public String getlbr_MotivoScan () 
	{
		return (String)get_Value(COLUMNNAME_lbr_MotivoScan);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getlbr_MotivoScan()));
    }
}