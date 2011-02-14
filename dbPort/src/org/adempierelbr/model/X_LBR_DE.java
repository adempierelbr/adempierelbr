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

/** Generated Model for LBR_DE
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_DE extends PO implements I_LBR_DE, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110214L;

    /** Standard Constructor */
    public X_LBR_DE (Properties ctx, int LBR_DE_ID, String trxName)
    {
      super (ctx, LBR_DE_ID, trxName);
      /** if (LBR_DE_ID == 0)
        {
			setC_Country_ID (0);
			setCreateFrom (null);
// N
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setDateTrx (new Timestamp( System.currentTimeMillis() ));
			setlbr_CHCType (null);
			setlbr_DE (null);
			setLBR_DE_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_DE (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_DE[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Country.
		@param C_Country_ID 
		Country 
	  */
	public void setC_Country_ID (int C_Country_ID)
	{
		if (C_Country_ID < 1) 
			set_Value (COLUMNNAME_C_Country_ID, null);
		else 
			set_Value (COLUMNNAME_C_Country_ID, Integer.valueOf(C_Country_ID));
	}

	/** Get Country.
		@return Country 
	  */
	public int getC_Country_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Country_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Create lines from.
		@param CreateFrom 
		Process which will generate a new document lines based on an existing document
	  */
	public void setCreateFrom (String CreateFrom)
	{
		set_Value (COLUMNNAME_CreateFrom, CreateFrom);
	}

	/** Get Create lines from.
		@return Process which will generate a new document lines based on an existing document
	  */
	public String getCreateFrom () 
	{
		return (String)get_Value(COLUMNNAME_CreateFrom);
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
	}

	/** Set No. Conhecimento de Embarque.
		@param lbr_CHCEmb 
		Número do Conhecimento de Embarque
	  */
	public void setlbr_CHCEmb (String lbr_CHCEmb)
	{
		set_Value (COLUMNNAME_lbr_CHCEmb, lbr_CHCEmb);
	}

	/** Get No. Conhecimento de Embarque.
		@return Número do Conhecimento de Embarque
	  */
	public String getlbr_CHCEmb () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CHCEmb);
	}

	/** lbr_CHCType AD_Reference_ID=1120015 */
	public static final int LBR_CHCTYPE_AD_Reference_ID=1120015;
	/** AWB = 01 */
	public static final String LBR_CHCTYPE_AWB = "01";
	/** MAWB = 02 */
	public static final String LBR_CHCTYPE_MAWB = "02";
	/** HAWB = 03 */
	public static final String LBR_CHCTYPE_HAWB = "03";
	/** COMAT = 04 */
	public static final String LBR_CHCTYPE_COMAT = "04";
	/** R. EXPRESSAS = 06 */
	public static final String LBR_CHCTYPE_REXPRESSAS = "06";
	/** ETIQ. REXPRESSAS = 07 */
	public static final String LBR_CHCTYPE_ETIQREXPRESSAS = "07";
	/** HR. EXPRESSAS = 08 */
	public static final String LBR_CHCTYPE_HREXPRESSAS = "08";
	/** A V7 = 09 */
	public static final String LBR_CHCTYPE_AV7 = "09";
	/** BL = 10 */
	public static final String LBR_CHCTYPE_BL = "10";
	/** MBL = 11 */
	public static final String LBR_CHCTYPE_MBL = "11";
	/** HBL = 12 */
	public static final String LBR_CHCTYPE_HBL = "12";
	/** CRT = 13 */
	public static final String LBR_CHCTYPE_CRT = "13";
	/** DSIC = 14 */
	public static final String LBR_CHCTYPE_DSIC = "14";
	/** COMAT BL = 16 */
	public static final String LBR_CHCTYPE_COMATBL = "16";
	/** RWB = 17 */
	public static final String LBR_CHCTYPE_RWB = "17";
	/** HRWB = 18 */
	public static final String LBR_CHCTYPE_HRWB = "18";
	/** TIF/DTA = 19 */
	public static final String LBR_CHCTYPE_TIFDTA = "19";
	/** CP2 = 20 */
	public static final String LBR_CHCTYPE_CP2 = "20";
	/** NÃO IATA = 91 */
	public static final String LBR_CHCTYPE_NÃOIATA = "91";
	/** MNAO IATA = 92 */
	public static final String LBR_CHCTYPE_MNAOIATA = "92";
	/** HNAO IATA = 93 */
	public static final String LBR_CHCTYPE_HNAOIATA = "93";
	/** OUTROS = 99 */
	public static final String LBR_CHCTYPE_OUTROS = "99";
	/** Set Tipo Conhecimento de Transporte.
		@param lbr_CHCType 
		Define o Tipo de Conhecimento de Transporte
	  */
	public void setlbr_CHCType (String lbr_CHCType)
	{

		set_Value (COLUMNNAME_lbr_CHCType, lbr_CHCType);
	}

	/** Get Tipo Conhecimento de Transporte.
		@return Define o Tipo de Conhecimento de Transporte
	  */
	public String getlbr_CHCType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CHCType);
	}

	/** Set Data Conhecimento de Embarque.
		@param lbr_DateCHCEmb 
		Data do Conhecimento de Embarque
	  */
	public void setlbr_DateCHCEmb (Timestamp lbr_DateCHCEmb)
	{
		set_Value (COLUMNNAME_lbr_DateCHCEmb, lbr_DateCHCEmb);
	}

	/** Get Data Conhecimento de Embarque.
		@return Data do Conhecimento de Embarque
	  */
	public Timestamp getlbr_DateCHCEmb () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateCHCEmb);
	}

	/** Set Data RE.
		@param lbr_DateRE 
		Data do Registro de Exportação
	  */
	public void setlbr_DateRE (Timestamp lbr_DateRE)
	{
		set_Value (COLUMNNAME_lbr_DateRE, lbr_DateRE);
	}

	/** Get Data RE.
		@return Data do Registro de Exportação
	  */
	public Timestamp getlbr_DateRE () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateRE);
	}

	/** Set DE.
		@param lbr_DE 
		Número do Documento de Exportação
	  */
	public void setlbr_DE (String lbr_DE)
	{
		set_Value (COLUMNNAME_lbr_DE, lbr_DE);
	}

	/** Get DE.
		@return Número do Documento de Exportação
	  */
	public String getlbr_DE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DE);
	}

	/** Set DE.
		@param LBR_DE_ID DE	  */
	public void setLBR_DE_ID (int LBR_DE_ID)
	{
		if (LBR_DE_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DE_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DE_ID, Integer.valueOf(LBR_DE_ID));
	}

	/** Get DE.
		@return DE	  */
	public int getLBR_DE_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DE_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set No. RE.
		@param lbr_RE 
		No. do Registro de Exportação
	  */
	public void setlbr_RE (String lbr_RE)
	{
		set_Value (COLUMNNAME_lbr_RE, lbr_RE);
	}

	/** Get No. RE.
		@return No. do Registro de Exportação
	  */
	public String getlbr_RE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_RE);
	}

	/** Type AD_Reference_ID=1120014 */
	public static final int TYPE_AD_Reference_ID=1120014;
	/** Declaração de Exportação = 0 */
	public static final String TYPE_DeclaraçãoDeExportação = "0";
	/** Declaração Simplificada de Exportação = 1 */
	public static final String TYPE_DeclaraçãoSimplificadaDeExportação = "1";
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