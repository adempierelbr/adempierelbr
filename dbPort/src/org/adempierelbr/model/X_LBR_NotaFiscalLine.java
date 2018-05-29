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

/** Generated Model for LBR_NotaFiscalLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NotaFiscalLine extends PO implements I_LBR_NotaFiscalLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180529L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalLine (Properties ctx, int LBR_NotaFiscalLine_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalLine_ID, trxName);
      /** if (LBR_NotaFiscalLine_ID == 0)
        {
			setLBR_NotaFiscalLine_ID (0);
			setlbr_IsService (false);
// 'N'
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_InvoiceLine getC_InvoiceLine() throws RuntimeException
    {
		return (I_C_InvoiceLine)MTable.get(getCtx(), I_C_InvoiceLine.Table_Name)
			.getPO(getC_InvoiceLine_ID(), get_TrxName());	}

	/** Set Invoice Line.
		@param C_InvoiceLine_ID 
		Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
	{
		if (C_InvoiceLine_ID < 1) 
			set_Value (COLUMNNAME_C_InvoiceLine_ID, null);
		else 
			set_Value (COLUMNNAME_C_InvoiceLine_ID, Integer.valueOf(C_InvoiceLine_ID));
	}

	/** Get Invoice Line.
		@return Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_InvoiceLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_UOM getC_UOM() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Discount %.
		@param Discount 
		Discount in percent
	  */
	public void setDiscount (BigDecimal Discount)
	{
		set_Value (COLUMNNAME_Discount, Discount);
	}

	/** Get Discount %.
		@return Discount in percent
	  */
	public BigDecimal getDiscount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Discount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Freight Amount.
		@param FreightAmt 
		Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt)
	{
		set_Value (COLUMNNAME_FreightAmt, FreightAmt);
	}

	/** Get Freight Amount.
		@return Freight Amount 
	  */
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set AFRMM Amount.
		@param LBR_AFRMMAmt AFRMM Amount	  */
	public void setLBR_AFRMMAmt (BigDecimal LBR_AFRMMAmt)
	{
		set_Value (COLUMNNAME_LBR_AFRMMAmt, LBR_AFRMMAmt);
	}

	/** Get AFRMM Amount.
		@return AFRMM Amount	  */
	public BigDecimal getLBR_AFRMMAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_AFRMMAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CEST Name.
		@param LBR_CESTName CEST Name	  */
	public void setLBR_CESTName (String LBR_CESTName)
	{
		set_Value (COLUMNNAME_LBR_CESTName, LBR_CESTName);
	}

	/** Get CEST Name.
		@return CEST Name	  */
	public String getLBR_CESTName () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CESTName);
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
			set_Value (COLUMNNAME_LBR_CEST_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CEST_ID, Integer.valueOf(LBR_CEST_ID));
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
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
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

	/** Set CNPJ Manufacturer.
		@param LBR_CNPJManufacturer CNPJ Manufacturer	  */
	public void setLBR_CNPJManufacturer (String LBR_CNPJManufacturer)
	{
		set_Value (COLUMNNAME_LBR_CNPJManufacturer, LBR_CNPJManufacturer);
	}

	/** Get CNPJ Manufacturer.
		@return CNPJ Manufacturer	  */
	public String getLBR_CNPJManufacturer () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJManufacturer);
	}

	/** Set FCI Value.
		@param LBR_FCIValue 
		FCI Value
	  */
	public void setLBR_FCIValue (String LBR_FCIValue)
	{
		set_Value (COLUMNNAME_LBR_FCIValue, LBR_FCIValue);
	}

	/** Get FCI Value.
		@return FCI Value
	  */
	public String getLBR_FCIValue () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FCIValue);
	}

	/** LBR_IndTot AD_Reference_ID=1120207 */
	public static final int LBR_INDTOT_AD_Reference_ID=1120207;
	/** Not Composes = 0 */
	public static final String LBR_INDTOT_NotComposes = "0";
	/** Composes = 1 */
	public static final String LBR_INDTOT_Composes = "1";
	/** Set Composes NFe Total.
		@param LBR_IndTot 
		Indicates which NFe's lines composes the NFe's total value
	  */
	public void setLBR_IndTot (String LBR_IndTot)
	{

		set_Value (COLUMNNAME_LBR_IndTot, LBR_IndTot);
	}

	/** Get Composes NFe Total.
		@return Indicates which NFe's lines composes the NFe's total value
	  */
	public String getLBR_IndTot () 
	{
		return (String)get_Value(COLUMNNAME_LBR_IndTot);
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

	/** Set DI.
		@param LBR_NFDI_ID DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID)
	{
		if (LBR_NFDI_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFDI_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFDI_ID, Integer.valueOf(LBR_NFDI_ID));
	}

	/** Get DI.
		@return DI	  */
	public int getLBR_NFDI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFDI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Other Charges Amount.
		@param LBR_OtherChargesAmt Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt)
	{
		set_Value (COLUMNNAME_LBR_OtherChargesAmt, LBR_OtherChargesAmt);
	}

	/** Get Other Charges Amount.
		@return Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherChargesAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Order Reference Item.
		@param LBR_PORef_Item 
		Item reference to the Order Reference indicated in the same document
	  */
	public void setLBR_PORef_Item (String LBR_PORef_Item)
	{
		set_Value (COLUMNNAME_LBR_PORef_Item, LBR_PORef_Item);
	}

	/** Get Order Reference Item.
		@return Item reference to the Order Reference indicated in the same document
	  */
	public String getLBR_PORef_Item () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PORef_Item);
	}

	/** LBR_ScaleProduction AD_Reference_ID=319 */
	public static final int LBR_SCALEPRODUCTION_AD_Reference_ID=319;
	/** Yes = Y */
	public static final String LBR_SCALEPRODUCTION_Yes = "Y";
	/** No = N */
	public static final String LBR_SCALEPRODUCTION_No = "N";
	/** Set Scale Production.
		@param LBR_ScaleProduction Scale Production	  */
	public void setLBR_ScaleProduction (String LBR_ScaleProduction)
	{

		set_Value (COLUMNNAME_LBR_ScaleProduction, LBR_ScaleProduction);
	}

	/** Get Scale Production.
		@return Scale Production	  */
	public String getLBR_ScaleProduction () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ScaleProduction);
	}

	/** Set Tax Benefit Code.
		@param LBR_TaxBenefitCode Tax Benefit Code	  */
	public void setLBR_TaxBenefitCode (String LBR_TaxBenefitCode)
	{
		set_Value (COLUMNNAME_LBR_TaxBenefitCode, LBR_TaxBenefitCode);
	}

	/** Get Tax Benefit Code.
		@return Tax Benefit Code	  */
	public String getLBR_TaxBenefitCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TaxBenefitCode);
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Line Total.
		@param LineTotalAmt 
		Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt)
	{
		set_Value (COLUMNNAME_LineTotalAmt, LineTotalAmt);
	}

	/** Get Line Total.
		@return Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineTotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Manufacturer.
		@param Manufacturer 
		Manufacturer of the Product
	  */
	public void setManufacturer (String Manufacturer)
	{
		set_Value (COLUMNNAME_Manufacturer, Manufacturer);
	}

	/** Get Manufacturer.
		@return Manufacturer of the Product
	  */
	public String getManufacturer () 
	{
		return (String)get_Value(COLUMNNAME_Manufacturer);
	}

	/** Set Order Reference.
		@param POReference 
		Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public void setPOReference (String POReference)
	{
		set_Value (COLUMNNAME_POReference, POReference);
	}

	/** Get Order Reference.
		@return Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public String getPOReference () 
	{
		return (String)get_Value(COLUMNNAME_POReference);
	}

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_Value (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set List price Value.
		@param PriceListAmt 
		Valuation with List Price
	  */
	public void setPriceListAmt (BigDecimal PriceListAmt)
	{
		set_Value (COLUMNNAME_PriceListAmt, PriceListAmt);
	}

	/** Get List price Value.
		@return Valuation with List Price
	  */
	public BigDecimal getPriceListAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceListAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product Name.
		@param ProductName 
		Name of the Product
	  */
	public void setProductName (String ProductName)
	{
		set_Value (COLUMNNAME_ProductName, ProductName);
	}

	/** Get Product Name.
		@return Name of the Product
	  */
	public String getProductName () 
	{
		return (String)get_Value(COLUMNNAME_ProductName);
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_Value (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Partner Product Key.
		@param VendorProductNo 
		Product Key of the Business Partner
	  */
	public void setVendorProductNo (String VendorProductNo)
	{
		set_Value (COLUMNNAME_VendorProductNo, VendorProductNo);
	}

	/** Get Partner Product Key.
		@return Product Key of the Business Partner
	  */
	public String getVendorProductNo () 
	{
		return (String)get_Value(COLUMNNAME_VendorProductNo);
	}

	/** Set CFOP Name.
		@param lbr_CFOPName 
		Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName)
	{
		set_Value (COLUMNNAME_lbr_CFOPName, lbr_CFOPName);
	}

	/** Get CFOP Name.
		@return Defines the CFOP Name
	  */
	public String getlbr_CFOPName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CFOPName);
	}

	/** Set Insurance Amt.
		@param lbr_InsuranceAmt 
		Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt)
	{
		set_Value (COLUMNNAME_lbr_InsuranceAmt, lbr_InsuranceAmt);
	}

	/** Get Insurance Amt.
		@return Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_InsuranceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Is Service.
		@param lbr_IsService 
		Defines if the lines is a Service
	  */
	public void setlbr_IsService (boolean lbr_IsService)
	{
		set_Value (COLUMNNAME_lbr_IsService, Boolean.valueOf(lbr_IsService));
	}

	/** Get Is Service.
		@return Defines if the lines is a Service
	  */
	public boolean islbr_IsService () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsService);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Line Total CIF.
		@param lbr_LineTotalCIF 
		The total CIF for the line
	  */
	public void setlbr_LineTotalCIF (BigDecimal lbr_LineTotalCIF)
	{
		set_Value (COLUMNNAME_lbr_LineTotalCIF, lbr_LineTotalCIF);
	}

	/** Get Line Total CIF.
		@return The total CIF for the line
	  */
	public BigDecimal getlbr_LineTotalCIF () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_LineTotalCIF);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Line Total SISCOMEX.
		@param lbr_LineTotalSISCOMEX 
		The total SISCOMEX for the Line
	  */
	public void setlbr_LineTotalSISCOMEX (BigDecimal lbr_LineTotalSISCOMEX)
	{
		set_Value (COLUMNNAME_lbr_LineTotalSISCOMEX, lbr_LineTotalSISCOMEX);
	}

	/** Get Line Total SISCOMEX.
		@return The total SISCOMEX for the Line
	  */
	public BigDecimal getlbr_LineTotalSISCOMEX () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_LineTotalSISCOMEX);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set NCM Name.
		@param lbr_NCMName 
		Defines the NCM Name
	  */
	public void setlbr_NCMName (String lbr_NCMName)
	{
		set_Value (COLUMNNAME_lbr_NCMName, lbr_NCMName);
	}

	/** Get NCM Name.
		@return Defines the NCM Name
	  */
	public String getlbr_NCMName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NCMName);
	}

	/** Set Numero da adição.
		@param lbr_NumAdicao Numero da adição	  */
	public void setlbr_NumAdicao (int lbr_NumAdicao)
	{
		set_Value (COLUMNNAME_lbr_NumAdicao, Integer.valueOf(lbr_NumAdicao));
	}

	/** Get Numero da adição.
		@return Numero da adição	  */
	public int getlbr_NumAdicao () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_NumAdicao);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Núm. Seq. Item.
		@param lbr_NumSeqItem Núm. Seq. Item	  */
	public void setlbr_NumSeqItem (int lbr_NumSeqItem)
	{
		set_Value (COLUMNNAME_lbr_NumSeqItem, Integer.valueOf(lbr_NumSeqItem));
	}

	/** Get Núm. Seq. Item.
		@return Núm. Seq. Item	  */
	public int getlbr_NumSeqItem () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_NumSeqItem);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_ProductSource AD_Reference_ID=1000031 */
	public static final int LBR_PRODUCTSOURCE_AD_Reference_ID=1000031;
	/** 0 - Domestic = 0 */
	public static final String LBR_PRODUCTSOURCE_0_Domestic = "0";
	/** 1 - Imported = 1 */
	public static final String LBR_PRODUCTSOURCE_1_Imported = "1";
	/** 2 - Imported - Acquired from a domestic distributor = 2 */
	public static final String LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor = "2";
	/** 3 - Domestic with between 40 percent and 70 percent Imported = 3 */
	public static final String LBR_PRODUCTSOURCE_3_DomesticWithBetween40PercentAnd70PercentImported = "3";
	/** 4 - Product acquired from Manaus = 4 */
	public static final String LBR_PRODUCTSOURCE_4_ProductAcquiredFromManaus = "4";
	/** 5 - Domestic until 40 percent Imported = 5 */
	public static final String LBR_PRODUCTSOURCE_5_DomesticUntil40PercentImported = "5";
	/** 6 - Foreign - Direct import no similar national = 6 */
	public static final String LBR_PRODUCTSOURCE_6_Foreign_DirectImportNoSimilarNational = "6";
	/** 7 - Foreign - Acquired from a domestic distributor no similar national = 7 */
	public static final String LBR_PRODUCTSOURCE_7_Foreign_AcquiredFromADomesticDistributorNoSimilarNational = "7";
	/** 8 - Domestic above 70 percent Imported = 8 */
	public static final String LBR_PRODUCTSOURCE_8_DomesticAbove70PercentImported = "8";
	/** Set Product Source.
		@param lbr_ProductSource 
		Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource)
	{

		set_Value (COLUMNNAME_lbr_ProductSource, lbr_ProductSource);
	}

	/** Get Product Source.
		@return Defines the Product Source
	  */
	public String getlbr_ProductSource () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProductSource);
	}

	/** Set Service Taxes.
		@param lbr_ServiceTaxes 
		String with all Taxes Names and Taxes Rates
	  */
	public void setlbr_ServiceTaxes (String lbr_ServiceTaxes)
	{
		set_Value (COLUMNNAME_lbr_ServiceTaxes, lbr_ServiceTaxes);
	}

	/** Get Service Taxes.
		@return String with all Taxes Names and Taxes Rates
	  */
	public String getlbr_ServiceTaxes () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ServiceTaxes);
	}

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

	/** lbr_TaxStatusIPI AD_Reference_ID=1120000 */
	public static final int LBR_TAXSTATUSIPI_AD_Reference_ID=1120000;
	/** 00 - Entrada com recuperação de crédito = 00 */
	public static final String LBR_TAXSTATUSIPI_00_EntradaComRecuperaçãoDeCrédito = "00";
	/** 01 - Entrada tributada com alíquota zero = 01 */
	public static final String LBR_TAXSTATUSIPI_01_EntradaTributadaComAlíquotaZero = "01";
	/** 02 - Entrada isenta = 02 */
	public static final String LBR_TAXSTATUSIPI_02_EntradaIsenta = "02";
	/** 03 - Entrada não-tributada = 03 */
	public static final String LBR_TAXSTATUSIPI_03_EntradaNão_Tributada = "03";
	/** 04 - Entrada imune = 04 */
	public static final String LBR_TAXSTATUSIPI_04_EntradaImune = "04";
	/** 05 - Entrada com suspensão = 05 */
	public static final String LBR_TAXSTATUSIPI_05_EntradaComSuspensão = "05";
	/** 49 - Outras entradas = 49 */
	public static final String LBR_TAXSTATUSIPI_49_OutrasEntradas = "49";
	/** 50 - Saída tributada = 50 */
	public static final String LBR_TAXSTATUSIPI_50_SaídaTributada = "50";
	/** 51 - Saída tributada com alíquota zero = 51 */
	public static final String LBR_TAXSTATUSIPI_51_SaídaTributadaComAlíquotaZero = "51";
	/** 52 - Saída isenta = 52 */
	public static final String LBR_TAXSTATUSIPI_52_SaídaIsenta = "52";
	/** 53 - Saída não-tributada = 53 */
	public static final String LBR_TAXSTATUSIPI_53_SaídaNão_Tributada = "53";
	/** 54 - Saída imune = 54 */
	public static final String LBR_TAXSTATUSIPI_54_SaídaImune = "54";
	/** 55 - Saída com suspensão = 55 */
	public static final String LBR_TAXSTATUSIPI_55_SaídaComSuspensão = "55";
	/** 99 - Outras saídas = 99 */
	public static final String LBR_TAXSTATUSIPI_99_OutrasSaídas = "99";
	/** Set Tax Status (IPI).
		@param lbr_TaxStatusIPI 
		Defines the Tax Status (IPI)
	  */
	public void setlbr_TaxStatusIPI (String lbr_TaxStatusIPI)
	{

		set_Value (COLUMNNAME_lbr_TaxStatusIPI, lbr_TaxStatusIPI);
	}

	/** Get Tax Status (IPI).
		@return Defines the Tax Status (IPI)
	  */
	public String getlbr_TaxStatusIPI () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TaxStatusIPI);
	}

	/** Set UOM Name.
		@param lbr_UOMName 
		Defines the UOM Name
	  */
	public void setlbr_UOMName (String lbr_UOMName)
	{
		set_Value (COLUMNNAME_lbr_UOMName, lbr_UOMName);
	}

	/** Get UOM Name.
		@return Defines the UOM Name
	  */
	public String getlbr_UOMName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_UOMName);
	}

	public I_C_UOM getlbr_UTri() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getlbr_UTribID(), get_TrxName());	}

	/** Set UTrib.
		@param lbr_UTribID 
		Unit of Tax
	  */
	public void setlbr_UTribID (int lbr_UTribID)
	{
		set_Value (COLUMNNAME_lbr_UTribID, Integer.valueOf(lbr_UTribID));
	}

	/** Get UTrib.
		@return Unit of Tax
	  */
	public int getlbr_UTribID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_UTribID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set UTrib Name.
		@param lbr_UTribName 
		Defines the UTrib Name
	  */
	public void setlbr_UTribName (String lbr_UTribName)
	{
		set_Value (COLUMNNAME_lbr_UTribName, lbr_UTribName);
	}

	/** Get UTrib Name.
		@return Defines the UTrib Name
	  */
	public String getlbr_UTribName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_UTribName);
	}

	/** Set Tax Quantity.
		@param lbr_qTrib 
		Defines the Tax Quantity
	  */
	public void setlbr_qTrib (BigDecimal lbr_qTrib)
	{
		set_Value (COLUMNNAME_lbr_qTrib, lbr_qTrib);
	}

	/** Get Tax Quantity.
		@return Defines the Tax Quantity
	  */
	public BigDecimal getlbr_qTrib () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_qTrib);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de Tributo.
		@param lbr_vTotTrib 
		Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public void setlbr_vTotTrib (BigDecimal lbr_vTotTrib)
	{
		set_Value (COLUMNNAME_lbr_vTotTrib, lbr_vTotTrib);
	}

	/** Get Total de Tributo.
		@return Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public BigDecimal getlbr_vTotTrib () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_vTotTrib);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Unit Tax Price.
		@param lbr_vUnTrib 
		Defines the Unit Tax Price
	  */
	public void setlbr_vUnTrib (BigDecimal lbr_vUnTrib)
	{
		set_Value (COLUMNNAME_lbr_vUnTrib, lbr_vUnTrib);
	}

	/** Get Unit Tax Price.
		@return Defines the Unit Tax Price
	  */
	public BigDecimal getlbr_vUnTrib () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_vUnTrib);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}