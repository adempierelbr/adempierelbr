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
 *  @author OSEB (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NotaFiscalLine extends PO implements I_LBR_NotaFiscalLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20100930L;

    /** Standard Constructor */
    public X_LBR_NotaFiscalLine (Properties ctx, int LBR_NotaFiscalLine_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalLine_ID, trxName);
      /** if (LBR_NotaFiscalLine_ID == 0)
        {
			setlbr_IsService (false);
// 'N'
			setLBR_NotaFiscalLine_ID (0);
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

	/** Set NÃºm. Seq. Item.
		@param lbr_NumSeqItem NÃºm. Seq. Item	  */
	public void setlbr_NumSeqItem (int lbr_NumSeqItem)
	{
		set_Value (COLUMNNAME_lbr_NumSeqItem, Integer.valueOf(lbr_NumSeqItem));
	}

	/** Get NÃºm. Seq. Item.
		@return NÃºm. Seq. Item	  */
	public int getlbr_NumSeqItem () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_NumSeqItem);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
	/** 00 - Entrada com recuperaÃ§Ã£o de crÃ©dito = 00 */
	public static final String LBR_TAXSTATUSIPI_00_EntradaComRecuperaÃÃ£oDeCrÃDito = "00";
	/** 01 - Entrada tributada com alÃ­quota zero = 01 */
	public static final String LBR_TAXSTATUSIPI_01_EntradaTributadaComAlÃ­quotaZero = "01";
	/** 02 - Entrada isenta = 02 */
	public static final String LBR_TAXSTATUSIPI_02_EntradaIsenta = "02";
	/** 03 - Entrada nÃ£o-tributada = 03 */
	public static final String LBR_TAXSTATUSIPI_03_EntradaNÃ£o_Tributada = "03";
	/** 04 - Entrada imune = 04 */
	public static final String LBR_TAXSTATUSIPI_04_EntradaImune = "04";
	/** 05 - Entrada com suspensÃ£o = 05 */
	public static final String LBR_TAXSTATUSIPI_05_EntradaComSuspensÃ£o = "05";
	/** 49 - Outras entradas = 49 */
	public static final String LBR_TAXSTATUSIPI_49_OutrasEntradas = "49";
	/** 50 - SaÃ­da tributada = 50 */
	public static final String LBR_TAXSTATUSIPI_50_SaÃ­daTributada = "50";
	/** 51 - SaÃ­da tributada com alÃ­quota zero = 51 */
	public static final String LBR_TAXSTATUSIPI_51_SaÃ­daTributadaComAlÃ­quotaZero = "51";
	/** 52 - SaÃ­da isenta = 52 */
	public static final String LBR_TAXSTATUSIPI_52_SaÃ­daIsenta = "52";
	/** 53 - SaÃ­da nÃ£o-tributada = 53 */
	public static final String LBR_TAXSTATUSIPI_53_SaÃ­daNÃ£o_Tributada = "53";
	/** 54 - SaÃ­da imune = 54 */
	public static final String LBR_TAXSTATUSIPI_54_SaÃ­daImune = "54";
	/** 55 - SaÃ­da com suspensÃ£o = 55 */
	public static final String LBR_TAXSTATUSIPI_55_SaÃ­daComSuspensÃ£o = "55";
	/** 99 - Outras saÃ­das = 99 */
	public static final String LBR_TAXSTATUSIPI_99_OutrasSaÃ­das = "99";
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
}