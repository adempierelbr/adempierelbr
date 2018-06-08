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

    /** Column name DiscountAmt */
    public static final String COLUMNNAME_DiscountAmt = "DiscountAmt";

	/** Set Discount Amount.
	  * Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt);

	/** Get Discount Amount.
	  * Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt();

    /** Column name FreightAmt */
    public static final String COLUMNNAME_FreightAmt = "FreightAmt";

	/** Set Freight Amount.
	  * Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt);

	/** Get Freight Amount.
	  * Freight Amount 
	  */
	public BigDecimal getFreightAmt();

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

    /** Column name LBR_AFRMMAmt */
    public static final String COLUMNNAME_LBR_AFRMMAmt = "LBR_AFRMMAmt";

	/** Set AFRMM Amount	  */
	public void setLBR_AFRMMAmt (BigDecimal LBR_AFRMMAmt);

	/** Get AFRMM Amount	  */
	public BigDecimal getLBR_AFRMMAmt();

    /** Column name LBR_AttributeType */
    public static final String COLUMNNAME_LBR_AttributeType = "LBR_AttributeType";

	/** Set Attribute Type	  */
	public void setLBR_AttributeType (String LBR_AttributeType);

	/** Get Attribute Type	  */
	public String getLBR_AttributeType();

    /** Column name LBR_CESTName */
    public static final String COLUMNNAME_LBR_CESTName = "LBR_CESTName";

	/** Set CEST Name	  */
	public void setLBR_CESTName (String LBR_CESTName);

	/** Get CEST Name	  */
	public String getLBR_CESTName();

    /** Column name LBR_CEST_ID */
    public static final String COLUMNNAME_LBR_CEST_ID = "LBR_CEST_ID";

	/** Set CEST.
	  * Brazilian Specifier code Tax
	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID);

	/** Get CEST.
	  * Brazilian Specifier code Tax
	  */
	public int getLBR_CEST_ID();

	public org.adempierelbr.model.I_LBR_CEST getLBR_CEST() throws RuntimeException;

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

    /** Column name LBR_CNPJManufacturer */
    public static final String COLUMNNAME_LBR_CNPJManufacturer = "LBR_CNPJManufacturer";

	/** Set CNPJ Manufacturer	  */
	public void setLBR_CNPJManufacturer (String LBR_CNPJManufacturer);

	/** Get CNPJ Manufacturer	  */
	public String getLBR_CNPJManufacturer();

    /** Column name LBR_FCIValue */
    public static final String COLUMNNAME_LBR_FCIValue = "LBR_FCIValue";

	/** Set FCI Value.
	  * FCI Value
	  */
	public void setLBR_FCIValue (String LBR_FCIValue);

	/** Get FCI Value.
	  * FCI Value
	  */
	public String getLBR_FCIValue();

    /** Column name LBR_IndTot */
    public static final String COLUMNNAME_LBR_IndTot = "LBR_IndTot";

	/** Set Composes NFe Total.
	  * Indicates which NFe's lines composes the NFe's total value
	  */
	public void setLBR_IndTot (String LBR_IndTot);

	/** Get Composes NFe Total.
	  * Indicates which NFe's lines composes the NFe's total value
	  */
	public String getLBR_IndTot();

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

    /** Column name LBR_NFDI_ID */
    public static final String COLUMNNAME_LBR_NFDI_ID = "LBR_NFDI_ID";

	/** Set DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID);

	/** Get DI	  */
	public int getLBR_NFDI_ID();

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

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_PORef_Item */
    public static final String COLUMNNAME_LBR_PORef_Item = "LBR_PORef_Item";

	/** Set Order Reference Item.
	  * Item reference to the Order Reference indicated in the same document
	  */
	public void setLBR_PORef_Item (String LBR_PORef_Item);

	/** Get Order Reference Item.
	  * Item reference to the Order Reference indicated in the same document
	  */
	public String getLBR_PORef_Item();

    /** Column name LBR_ScaleProduction */
    public static final String COLUMNNAME_LBR_ScaleProduction = "LBR_ScaleProduction";

	/** Set Scale Production	  */
	public void setLBR_ScaleProduction (String LBR_ScaleProduction);

	/** Get Scale Production	  */
	public String getLBR_ScaleProduction();

    /** Column name LBR_TaxBenefitCode */
    public static final String COLUMNNAME_LBR_TaxBenefitCode = "LBR_TaxBenefitCode";

	/** Set Tax Benefit Code	  */
	public void setLBR_TaxBenefitCode (String LBR_TaxBenefitCode);

	/** Get Tax Benefit Code	  */
	public String getLBR_TaxBenefitCode();

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

    /** Column name POReference */
    public static final String COLUMNNAME_POReference = "POReference";

	/** Set Order Reference.
	  * Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public void setPOReference (String POReference);

	/** Get Order Reference.
	  * Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner
	  */
	public String getPOReference();

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

    /** Column name UPC */
    public static final String COLUMNNAME_UPC = "UPC";

	/** Set UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC);

	/** Get UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC();

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

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

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

    /** Column name lbr_NumAdicao */
    public static final String COLUMNNAME_lbr_NumAdicao = "lbr_NumAdicao";

	/** Set Numero da adição	  */
	public void setlbr_NumAdicao (int lbr_NumAdicao);

	/** Get Numero da adição	  */
	public int getlbr_NumAdicao();

    /** Column name lbr_NumSeqItem */
    public static final String COLUMNNAME_lbr_NumSeqItem = "lbr_NumSeqItem";

	/** Set Núm. Seq. Item	  */
	public void setlbr_NumSeqItem (int lbr_NumSeqItem);

	/** Get Núm. Seq. Item	  */
	public int getlbr_NumSeqItem();

    /** Column name lbr_ProductSource */
    public static final String COLUMNNAME_lbr_ProductSource = "lbr_ProductSource";

	/** Set Product Source.
	  * Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource);

	/** Get Product Source.
	  * Defines the Product Source
	  */
	public String getlbr_ProductSource();

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

    /** Column name lbr_UTribID */
    public static final String COLUMNNAME_lbr_UTribID = "lbr_UTribID";

	/** Set UTrib.
	  * Unit of Tax
	  */
	public void setlbr_UTribID (int lbr_UTribID);

	/** Get UTrib.
	  * Unit of Tax
	  */
	public int getlbr_UTribID();

	public I_C_UOM getlbr_UTri() throws RuntimeException;

    /** Column name lbr_UTribName */
    public static final String COLUMNNAME_lbr_UTribName = "lbr_UTribName";

	/** Set UTrib Name.
	  * Defines the UTrib Name
	  */
	public void setlbr_UTribName (String lbr_UTribName);

	/** Get UTrib Name.
	  * Defines the UTrib Name
	  */
	public String getlbr_UTribName();

    /** Column name lbr_qTrib */
    public static final String COLUMNNAME_lbr_qTrib = "lbr_qTrib";

	/** Set Tax Quantity.
	  * Defines the Tax Quantity
	  */
	public void setlbr_qTrib (BigDecimal lbr_qTrib);

	/** Get Tax Quantity.
	  * Defines the Tax Quantity
	  */
	public BigDecimal getlbr_qTrib();

    /** Column name lbr_vTotTrib */
    public static final String COLUMNNAME_lbr_vTotTrib = "lbr_vTotTrib";

	/** Set Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public void setlbr_vTotTrib (BigDecimal lbr_vTotTrib);

	/** Get Total de Tributo.
	  * Valor aproximado total de tributos federais, estaduais e municipais.
	  */
	public BigDecimal getlbr_vTotTrib();

    /** Column name lbr_vUnTrib */
    public static final String COLUMNNAME_lbr_vUnTrib = "lbr_vUnTrib";

	/** Set Unit Tax Price.
	  * Defines the Unit Tax Price
	  */
	public void setlbr_vUnTrib (BigDecimal lbr_vUnTrib);

	/** Get Unit Tax Price.
	  * Defines the Unit Tax Price
	  */
	public BigDecimal getlbr_vUnTrib();
}
