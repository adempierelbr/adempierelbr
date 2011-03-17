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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NotaFiscalLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_NotaFiscalLine 
{

    /** TableName=LBR_NotaFiscalLine */
    public static final String Table_Name = "LBR_NotaFiscalLine";

    /** AD_Table_ID=1000028 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_InvoiceLine_ID */
    public static final String COLUMNNAME_C_InvoiceLine_ID = "C_InvoiceLine_ID";

	/** Set Invoice Line.
	  * Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID);

	/** Get Invoice Line.
	  * Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID();

	public I_C_InvoiceLine getC_InvoiceLine() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public I_C_UOM getC_UOM() throws RuntimeException;

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name Discount */
    public static final String COLUMNNAME_Discount = "Discount";

	/** Set Discount %.
	  * Discount in percent
	  */
	public void setDiscount (BigDecimal Discount);

	/** Get Discount %.
	  * Discount in percent
	  */
	public BigDecimal getDiscount();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name lbr_CFOPName */
    public static final String COLUMNNAME_lbr_CFOPName = "lbr_CFOPName";

	/** Set CFOP Name.
	  * Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName);

	/** Get CFOP Name.
	  * Defines the CFOP Name
	  */
	public String getlbr_CFOPName();

    /** Column name lbr_IsService */
    public static final String COLUMNNAME_lbr_IsService = "lbr_IsService";

	/** Set Is Service.
	  * Defines if the lines is a Service
	  */
	public void setlbr_IsService (boolean lbr_IsService);

	/** Get Is Service.
	  * Defines if the lines is a Service
	  */
	public boolean islbr_IsService();

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID();

	public org.adempierelbr.model.I_LBR_LegalMessage getLBR_LegalMessage() throws RuntimeException;

    /** Column name lbr_LineTotalCIF */
    public static final String COLUMNNAME_lbr_LineTotalCIF = "lbr_LineTotalCIF";

	/** Set Line Total CIF.
	  * The total CIF for the line
	  */
	public void setlbr_LineTotalCIF (BigDecimal lbr_LineTotalCIF);

	/** Get Line Total CIF.
	  * The total CIF for the line
	  */
	public BigDecimal getlbr_LineTotalCIF();

    /** Column name lbr_LineTotalSISCOMEX */
    public static final String COLUMNNAME_lbr_LineTotalSISCOMEX = "lbr_LineTotalSISCOMEX";

	/** Set Line Total SISCOMEX.
	  * The total SISCOMEX for the Line
	  */
	public void setlbr_LineTotalSISCOMEX (BigDecimal lbr_LineTotalSISCOMEX);

	/** Get Line Total SISCOMEX.
	  * The total SISCOMEX for the Line
	  */
	public BigDecimal getlbr_LineTotalSISCOMEX();

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException;

    /** Column name lbr_NCMName */
    public static final String COLUMNNAME_lbr_NCMName = "lbr_NCMName";

	/** Set NCM Name.
	  * Defines the NCM Name
	  */
	public void setlbr_NCMName (String lbr_NCMName);

	/** Get NCM Name.
	  * Defines the NCM Name
	  */
	public String getlbr_NCMName();

    /** Column name LBR_NFDI_ID */
    public static final String COLUMNNAME_LBR_NFDI_ID = "LBR_NFDI_ID";

	/** Set DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID);

	/** Get DI	  */
	public int getLBR_NFDI_ID();

	public org.adempierelbr.model.I_LBR_NFDI getLBR_NFDI() throws RuntimeException;

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

    /** Column name lbr_NumAdicao */
    public static final String COLUMNNAME_lbr_NumAdicao = "lbr_NumAdicao";

	/** Set Número da adição	  */
	public void setlbr_NumAdicao (int lbr_NumAdicao);

	/** Get Número da adição	  */
	public int getlbr_NumAdicao();

    /** Column name lbr_NumSeqItem */
    public static final String COLUMNNAME_lbr_NumSeqItem = "lbr_NumSeqItem";

	/** Set Núm. Seq. Item	  */
	public void setlbr_NumSeqItem (int lbr_NumSeqItem);

	/** Get Núm. Seq. Item	  */
	public int getlbr_NumSeqItem();

    /** Column name lbr_ServiceTaxes */
    public static final String COLUMNNAME_lbr_ServiceTaxes = "lbr_ServiceTaxes";

	/** Set Service Taxes.
	  * String with all Taxes Names and Taxes Rates
	  */
	public void setlbr_ServiceTaxes (String lbr_ServiceTaxes);

	/** Get Service Taxes.
	  * String with all Taxes Names and Taxes Rates
	  */
	public String getlbr_ServiceTaxes();

    /** Column name lbr_TaxStatus */
    public static final String COLUMNNAME_lbr_TaxStatus = "lbr_TaxStatus";

	/** Set Tax Status.
	  * Defines the Tax Status
	  */
	public void setlbr_TaxStatus (String lbr_TaxStatus);

	/** Get Tax Status.
	  * Defines the Tax Status
	  */
	public String getlbr_TaxStatus();

    /** Column name lbr_TaxStatusCOFINS */
    public static final String COLUMNNAME_lbr_TaxStatusCOFINS = "lbr_TaxStatusCOFINS";

	/** Set Tax Status (COFINS).
	  * Defines the Tax Status (COFINS)
	  */
	public void setlbr_TaxStatusCOFINS (String lbr_TaxStatusCOFINS);

	/** Get Tax Status (COFINS).
	  * Defines the Tax Status (COFINS)
	  */
	public String getlbr_TaxStatusCOFINS();

    /** Column name lbr_TaxStatusIPI */
    public static final String COLUMNNAME_lbr_TaxStatusIPI = "lbr_TaxStatusIPI";

	/** Set Tax Status (IPI).
	  * Defines the Tax Status (IPI)
	  */
	public void setlbr_TaxStatusIPI (String lbr_TaxStatusIPI);

	/** Get Tax Status (IPI).
	  * Defines the Tax Status (IPI)
	  */
	public String getlbr_TaxStatusIPI();

    /** Column name lbr_TaxStatusPIS */
    public static final String COLUMNNAME_lbr_TaxStatusPIS = "lbr_TaxStatusPIS";

	/** Set Tax Status (PIS).
	  * Defines the Tax Status (PIS)
	  */
	public void setlbr_TaxStatusPIS (String lbr_TaxStatusPIS);

	/** Get Tax Status (PIS).
	  * Defines the Tax Status (PIS)
	  */
	public String getlbr_TaxStatusPIS();

    /** Column name lbr_UOMName */
    public static final String COLUMNNAME_lbr_UOMName = "lbr_UOMName";

	/** Set UOM Name.
	  * Defines the UOM Name
	  */
	public void setlbr_UOMName (String lbr_UOMName);

	/** Get UOM Name.
	  * Defines the UOM Name
	  */
	public String getlbr_UOMName();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Line No.
	  * Unique line for this document
	  */
	public void setLine (int Line);

	/** Get Line No.
	  * Unique line for this document
	  */
	public int getLine();

    /** Column name LineTotalAmt */
    public static final String COLUMNNAME_LineTotalAmt = "LineTotalAmt";

	/** Set Line Total.
	  * Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt);

	/** Get Line Total.
	  * Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt();

    /** Column name Manufacturer */
    public static final String COLUMNNAME_Manufacturer = "Manufacturer";

	/** Set Manufacturer.
	  * Manufacturer of the Product
	  */
	public void setManufacturer (String Manufacturer);

	/** Get Manufacturer.
	  * Manufacturer of the Product
	  */
	public String getManufacturer();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public I_M_Product getM_Product() throws RuntimeException;

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

    /** Column name PriceListAmt */
    public static final String COLUMNNAME_PriceListAmt = "PriceListAmt";

	/** Set List price Value.
	  * Valuation with List Price
	  */
	public void setPriceListAmt (BigDecimal PriceListAmt);

	/** Get List price Value.
	  * Valuation with List Price
	  */
	public BigDecimal getPriceListAmt();

    /** Column name ProductName */
    public static final String COLUMNNAME_ProductName = "ProductName";

	/** Set Product Name.
	  * Name of the Product
	  */
	public void setProductName (String ProductName);

	/** Get Product Name.
	  * Name of the Product
	  */
	public String getProductName();

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name VendorProductNo */
    public static final String COLUMNNAME_VendorProductNo = "VendorProductNo";

	/** Set Partner Product Key.
	  * Product Key of the Business Partner
	  */
	public void setVendorProductNo (String VendorProductNo);

	/** Get Partner Product Key.
	  * Product Key of the Business Partner
	  */
	public String getVendorProductNo();
}
