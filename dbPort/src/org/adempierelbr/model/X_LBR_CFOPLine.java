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

/** Generated Model for LBR_CFOPLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_CFOPLine extends PO implements I_LBR_CFOPLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_CFOPLine (Properties ctx, int LBR_CFOPLine_ID, String trxName)
    {
      super (ctx, LBR_CFOPLine_ID, trxName);
      /** if (LBR_CFOPLine_ID == 0)
        {
			setC_DocType_ID (0);
			setLBR_CFOP_ID (0);
			setLBR_CFOPLine_ID (0);
			setlbr_DestionationType (null);
			setlbr_IsManufactured (null);
// 'N'
			setlbr_IsSubTributaria (null);
// 'N'
        } */
    }

    /** Load Constructor */
    public X_LBR_CFOPLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CFOPLine[")
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

	public org.adempierelbr.model.I_LBR_BPartnerCategory getLBR_BPartnerCategory() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_BPartnerCategory)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_BPartnerCategory.Table_Name)
			.getPO(getLBR_BPartnerCategory_ID(), get_TrxName());	}

	/** Set BPartner Category.
		@param LBR_BPartnerCategory_ID 
		Primary key table LBR_BPartnerCategory
	  */
	public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
	{
		if (LBR_BPartnerCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BPartnerCategory_ID, Integer.valueOf(LBR_BPartnerCategory_ID));
	}

	/** Get BPartner Category.
		@return Primary key table LBR_BPartnerCategory
	  */
	public int getLBR_BPartnerCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BPartnerCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CFOP)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CFOP Line.
		@param LBR_CFOPLine_ID 
		Primary key table LBR_CFOPLine
	  */
	public void setLBR_CFOPLine_ID (int LBR_CFOPLine_ID)
	{
		if (LBR_CFOPLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOPLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CFOPLine_ID, Integer.valueOf(LBR_CFOPLine_ID));
	}

	/** Get CFOP Line.
		@return Primary key table LBR_CFOPLine
	  */
	public int getLBR_CFOPLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOPLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_DestionationType AD_Reference_ID=1000012 */
	public static final int LBR_DESTIONATIONTYPE_AD_Reference_ID=1000012;
	/** Estados Identicos = 0 */
	public static final String LBR_DESTIONATIONTYPE_EstadosIdenticos = "0";
	/** Estados Diferentes = 1 */
	public static final String LBR_DESTIONATIONTYPE_EstadosDiferentes = "1";
	/** Estrangeiro = 2 */
	public static final String LBR_DESTIONATIONTYPE_Estrangeiro = "2";
	/** Zona Franca = 3 */
	public static final String LBR_DESTIONATIONTYPE_ZonaFranca = "3";
	/** Set Destination Type.
		@param lbr_DestionationType 
		Defines the Destination Type
	  */
	public void setlbr_DestionationType (String lbr_DestionationType)
	{

		set_Value (COLUMNNAME_lbr_DestionationType, lbr_DestionationType);
	}

	/** Get Destination Type.
		@return Defines the Destination Type
	  */
	public String getlbr_DestionationType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DestionationType);
	}

	/** lbr_IsManufactured AD_Reference_ID=1000027 */
	public static final int LBR_ISMANUFACTURED_AD_Reference_ID=1000027;
	/** Yes = Y */
	public static final String LBR_ISMANUFACTURED_Yes = "Y";
	/** No = N */
	public static final String LBR_ISMANUFACTURED_No = "N";
	/** Both = B */
	public static final String LBR_ISMANUFACTURED_Both = "B";
	/** Set Is Manufactured.
		@param lbr_IsManufactured 
		Defines if the Product is Manufactured
	  */
	public void setlbr_IsManufactured (String lbr_IsManufactured)
	{

		set_Value (COLUMNNAME_lbr_IsManufactured, lbr_IsManufactured);
	}

	/** Get Is Manufactured.
		@return Defines if the Product is Manufactured
	  */
	public String getlbr_IsManufactured () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IsManufactured);
	}

	/** lbr_IsSubTributaria AD_Reference_ID=1000027 */
	public static final int LBR_ISSUBTRIBUTARIA_AD_Reference_ID=1000027;
	/** Yes = Y */
	public static final String LBR_ISSUBTRIBUTARIA_Yes = "Y";
	/** No = N */
	public static final String LBR_ISSUBTRIBUTARIA_No = "N";
	/** Both = B */
	public static final String LBR_ISSUBTRIBUTARIA_Both = "B";
	/** Set Is Substituicao Tributaria.
		@param lbr_IsSubTributaria 
		Defines the Is Substituicao Tributaria Status
	  */
	public void setlbr_IsSubTributaria (String lbr_IsSubTributaria)
	{

		set_Value (COLUMNNAME_lbr_IsSubTributaria, lbr_IsSubTributaria);
	}

	/** Get Is Substituicao Tributaria.
		@return Defines the Is Substituicao Tributaria Status
	  */
	public String getlbr_IsSubTributaria () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IsSubTributaria);
	}

	public org.adempierelbr.model.I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_LegalMessage)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_LegalMessage.Table_Name)
			.getPO(getLBR_LegalMessage_ID(), get_TrxName());	}

	/** Set Legal Message.
		@param LBR_LegalMessage_ID 
		Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
	{
		if (LBR_LegalMessage_ID < 1) 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_LegalMessage_ID, Integer.valueOf(LBR_LegalMessage_ID));
	}

	/** Get Legal Message.
		@return Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_LegalMessage_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_ProductCategory getLBR_ProductCategory() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ProductCategory)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ProductCategory.Table_Name)
			.getPO(getLBR_ProductCategory_ID(), get_TrxName());	}

	/** Set Product Category.
		@param LBR_ProductCategory_ID 
		Primary key table LBR_ProductCategory
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
	{
		if (LBR_ProductCategory_ID < 1) 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_ProductCategory_ID, Integer.valueOf(LBR_ProductCategory_ID));
	}

	/** Get Product Category.
		@return Primary key table LBR_ProductCategory
	  */
	public int getLBR_ProductCategory_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ProductCategory_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Brazilian Tax.
		@param LBR_Tax_ID 
		Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1) 
			set_Value (COLUMNNAME_LBR_Tax_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Tax_ID, Integer.valueOf(LBR_Tax_ID));
	}

	/** Get Brazilian Tax.
		@return Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Tax_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_TaxStatus AD_Reference_ID=1000029 */
	public static final int LBR_TAXSTATUS_AD_Reference_ID=1000029;
	/** 00 - Tributada integralmente = 00 */
	public static final String LBR_TAXSTATUS_00_TributadaIntegralmente = "00";
	/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10 */
	public static final String LBR_TAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10";
	/** 20 - Com reducao de base de calculo = 20 */
	public static final String LBR_TAXSTATUS_20_ComReducaoDeBaseDeCalculo = "20";
	/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
	public static final String LBR_TAXSTATUS_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
	/** 40 - Isenta = 40 */
	public static final String LBR_TAXSTATUS_40_Isenta = "40";
	/** 41 - Nao-tributada = 41 */
	public static final String LBR_TAXSTATUS_41_Nao_Tributada = "41";
	/** 50 - Suspensao = 50 */
	public static final String LBR_TAXSTATUS_50_Suspensao = "50";
	/** 51 - Diferimento  = 51 */
	public static final String LBR_TAXSTATUS_51_Diferimento = "51";
	/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
	public static final String LBR_TAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
	/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
	public static final String LBR_TAXSTATUS_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
	/** 90 - Outras = 90 */
	public static final String LBR_TAXSTATUS_90_Outras = "90";
	/** Set Tax Status.
		@param lbr_TaxStatus 
		Defines the Tax Status
	  */
	public void setlbr_TaxStatus (String lbr_TaxStatus)
	{

		set_Value (COLUMNNAME_lbr_TaxStatus, lbr_TaxStatus);
	}

	/** Get Tax Status.
		@return Defines the Tax Status
	  */
	public String getlbr_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TaxStatus);
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
	/** Imp Courier = COU */
	public static final String LBR_TRANSACTIONTYPE_ImpCourier = "COU";
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