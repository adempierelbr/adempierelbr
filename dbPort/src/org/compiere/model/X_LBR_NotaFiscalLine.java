/*****************************************************************************
* Product: ADempiereLBR - ADempiere Localization Brazil                      *
* This program is free software. you can redistribute it and/or modify it    *
* under the terms version 2 of the GNU General Public License as published   *
* by the Free Software Foundation. This program is distributed in the hope   *
* that it will be useful, but WITHOUT ANY WARRANTY. without even the implied *
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
* See the GNU General Public License for more details.                       *
* You should have received a copy of the GNU General Public License along    *
* with this program. if not, write to the Free Software Foundation, Inc.,    *
* 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
*****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_NotaFiscalLine
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NotaFiscalLine extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NotaFiscalLine_ID id
@param trxName transaction
*/
public X_LBR_NotaFiscalLine (Properties ctx, int LBR_NotaFiscalLine_ID, String trxName)
{
super (ctx, LBR_NotaFiscalLine_ID, trxName);
/** if (LBR_NotaFiscalLine_ID == 0)
{
setLBR_NotaFiscalLine_ID (0);
setlbr_IsService (false);	// 'N'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NotaFiscalLine");

/** TableName=LBR_NotaFiscalLine */
public static final String Table_Name="LBR_NotaFiscalLine";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NotaFiscalLine");

protected BigDecimal accessLevel = new BigDecimal(1);
/** AccessLevel
@return 1 - Org 
*/
protected int get_AccessLevel()
{
return accessLevel.intValue();
}
/** Load Meta Data
@param ctx context
@return PO Info
*/
protected POInfo initPO (Properties ctx)
{
POInfo poi = POInfo.getPOInfo (ctx, Table_ID);
return poi;
}
/** Info
@return info
*/
public String toString()
{
StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscalLine[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Invoice Line.
@param C_InvoiceLine_ID Invoice Detail Line */
public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
{
if (C_InvoiceLine_ID <= 0) set_Value ("C_InvoiceLine_ID", null);
 else 
set_Value ("C_InvoiceLine_ID", new Integer(C_InvoiceLine_ID));
}
/** Get Invoice Line.
@return Invoice Detail Line */
public int getC_InvoiceLine_ID() 
{
Integer ii = (Integer)get_Value("C_InvoiceLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_UOM_ID AD_Reference_ID=114 */
public static final int C_UOM_ID_AD_Reference_ID=114;
/** Set UOM.
@param C_UOM_ID Unit of Measure */
public void setC_UOM_ID (int C_UOM_ID)
{
if (C_UOM_ID <= 0) set_Value ("C_UOM_ID", null);
 else 
set_Value ("C_UOM_ID", new Integer(C_UOM_ID));
}
/** Get UOM.
@return Unit of Measure */
public int getC_UOM_ID() 
{
Integer ii = (Integer)get_Value("C_UOM_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Description.
@param Description Optional short description of the record */
public void setDescription (String Description)
{
if (Description != null && Description.length() > 255)
{
log.warning("Length > 255 - truncated");
Description = Description.substring(0,254);
}
set_Value ("Description", Description);
}
/** Get Description.
@return Optional short description of the record */
public String getDescription() 
{
return (String)get_Value("Description");
}
/** Set Discount %.
@param Discount Discount in percent */
public void setDiscount (BigDecimal Discount)
{
set_Value ("Discount", Discount);
}
/** Get Discount %.
@return Discount in percent */
public BigDecimal getDiscount() 
{
BigDecimal bd = (BigDecimal)get_Value("Discount");
if (bd == null) return Env.ZERO;
return bd;
}

/** LBR_CFOP_ID AD_Reference_ID=1000016 */
public static final int LBR_CFOP_ID_AD_Reference_ID=1000016;
/** Set CFOP.
@param LBR_CFOP_ID Primary key table LBR_CFOP */
public void setLBR_CFOP_ID (int LBR_CFOP_ID)
{
if (LBR_CFOP_ID <= 0) set_Value ("LBR_CFOP_ID", null);
 else 
set_Value ("LBR_CFOP_ID", new Integer(LBR_CFOP_ID));
}
/** Get CFOP.
@return Primary key table LBR_CFOP */
public int getLBR_CFOP_ID() 
{
Integer ii = (Integer)get_Value("LBR_CFOP_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_LegalMessage_ID AD_Reference_ID=1000030 */
public static final int LBR_LEGALMESSAGE_ID_AD_Reference_ID=1000030;
/** Set Legal Message.
@param LBR_LegalMessage_ID Defines the Legal Message */
public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
{
if (LBR_LegalMessage_ID <= 0) set_Value ("LBR_LegalMessage_ID", null);
 else 
set_Value ("LBR_LegalMessage_ID", new Integer(LBR_LegalMessage_ID));
}
/** Get Legal Message.
@return Defines the Legal Message */
public int getLBR_LegalMessage_ID() 
{
Integer ii = (Integer)get_Value("LBR_LegalMessage_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_NCM_ID AD_Reference_ID=1000017 */
public static final int LBR_NCM_ID_AD_Reference_ID=1000017;
/** Set NCM.
@param LBR_NCM_ID Primary key table LBR_NCM */
public void setLBR_NCM_ID (int LBR_NCM_ID)
{
if (LBR_NCM_ID <= 0) set_Value ("LBR_NCM_ID", null);
 else 
set_Value ("LBR_NCM_ID", new Integer(LBR_NCM_ID));
}
/** Get NCM.
@return Primary key table LBR_NCM */
public int getLBR_NCM_ID() 
{
Integer ii = (Integer)get_Value("LBR_NCM_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Nota Fiscal Line.
@param LBR_NotaFiscalLine_ID Primary key table LBR_NotaFiscalLine */
public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
{
if (LBR_NotaFiscalLine_ID < 1) throw new IllegalArgumentException ("LBR_NotaFiscalLine_ID is mandatory.");
set_ValueNoCheck ("LBR_NotaFiscalLine_ID", new Integer(LBR_NotaFiscalLine_ID));
}
/** Get Nota Fiscal Line.
@return Primary key table LBR_NotaFiscalLine */
public int getLBR_NotaFiscalLine_ID() 
{
Integer ii = (Integer)get_Value("LBR_NotaFiscalLine_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Nota Fiscal.
@param LBR_NotaFiscal_ID Primary key table LBR_NotaFiscal */
public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
{
if (LBR_NotaFiscal_ID <= 0) set_Value ("LBR_NotaFiscal_ID", null);
 else 
set_Value ("LBR_NotaFiscal_ID", new Integer(LBR_NotaFiscal_ID));
}
/** Get Nota Fiscal.
@return Primary key table LBR_NotaFiscal */
public int getLBR_NotaFiscal_ID() 
{
Integer ii = (Integer)get_Value("LBR_NotaFiscal_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Line No.
@param Line Unique line for this document */
public void setLine (int Line)
{
set_Value ("Line", new Integer(Line));
}
/** Get Line No.
@return Unique line for this document */
public int getLine() 
{
Integer ii = (Integer)get_Value("Line");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Line Total.
@param LineTotalAmt Total line amount incl. Tax */
public void setLineTotalAmt (BigDecimal LineTotalAmt)
{
set_Value ("LineTotalAmt", LineTotalAmt);
}
/** Get Line Total.
@return Total line amount incl. Tax */
public BigDecimal getLineTotalAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("LineTotalAmt");
if (bd == null) return Env.ZERO;
return bd;
}

/** M_Product_ID AD_Reference_ID=162 */
public static final int M_PRODUCT_ID_AD_Reference_ID=162;
/** Set Product.
@param M_Product_ID Product, Service, Item */
public void setM_Product_ID (int M_Product_ID)
{
if (M_Product_ID <= 0) set_Value ("M_Product_ID", null);
 else 
set_Value ("M_Product_ID", new Integer(M_Product_ID));
}
/** Get Product.
@return Product, Service, Item */
public int getM_Product_ID() 
{
Integer ii = (Integer)get_Value("M_Product_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Price.
@param Price Price */
public void setPrice (BigDecimal Price)
{
set_Value ("Price", Price);
}
/** Get Price.
@return Price */
public BigDecimal getPrice() 
{
BigDecimal bd = (BigDecimal)get_Value("Price");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set List price Value.
@param PriceListAmt Valuation with List Price */
public void setPriceListAmt (BigDecimal PriceListAmt)
{
set_Value ("PriceListAmt", PriceListAmt);
}
/** Get List price Value.
@return Valuation with List Price */
public BigDecimal getPriceListAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("PriceListAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Product Name.
@param ProductName Name of the Product */
public void setProductName (String ProductName)
{
if (ProductName != null && ProductName.length() > 100)
{
log.warning("Length > 100 - truncated");
ProductName = ProductName.substring(0,99);
}
set_Value ("ProductName", ProductName);
}
/** Get Product Name.
@return Name of the Product */
public String getProductName() 
{
return (String)get_Value("ProductName");
}
/** Set Product Key.
@param ProductValue Key of the Product */
public void setProductValue (String ProductValue)
{
if (ProductValue != null && ProductValue.length() > 60)
{
log.warning("Length > 60 - truncated");
ProductValue = ProductValue.substring(0,59);
}
set_Value ("ProductValue", ProductValue);
}
/** Get Product Key.
@return Key of the Product */
public String getProductValue() 
{
return (String)get_Value("ProductValue");
}
/** Set Quantity.
@param Qty Quantity */
public void setQty (BigDecimal Qty)
{
set_Value ("Qty", Qty);
}
/** Get Quantity.
@return Quantity */
public BigDecimal getQty() 
{
BigDecimal bd = (BigDecimal)get_Value("Qty");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Partner Product Key.
@param VendorProductNo Product Key of the Business Partner */
public void setVendorProductNo (String VendorProductNo)
{
if (VendorProductNo != null && VendorProductNo.length() > 60)
{
log.warning("Length > 60 - truncated");
VendorProductNo = VendorProductNo.substring(0,59);
}
set_Value ("VendorProductNo", VendorProductNo);
}
/** Get Partner Product Key.
@return Product Key of the Business Partner */
public String getVendorProductNo() 
{
return (String)get_Value("VendorProductNo");
}
/** Set CFOP Name.
@param lbr_CFOPName Defines the CFOP Name */
public void setlbr_CFOPName (String lbr_CFOPName)
{
if (lbr_CFOPName != null && lbr_CFOPName.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_CFOPName = lbr_CFOPName.substring(0,59);
}
set_Value ("lbr_CFOPName", lbr_CFOPName);
}
/** Get CFOP Name.
@return Defines the CFOP Name */
public String getlbr_CFOPName() 
{
return (String)get_Value("lbr_CFOPName");
}
/** Set Is Service.
@param lbr_IsService Defines if the lines is a Service */
public void setlbr_IsService (boolean lbr_IsService)
{
set_Value ("lbr_IsService", new Boolean(lbr_IsService));
}
/** Get Is Service.
@return Defines if the lines is a Service */
public boolean islbr_IsService() 
{
Object oo = get_Value("lbr_IsService");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set NCM Name.
@param lbr_NCMName Defines the NCM Name */
public void setlbr_NCMName (String lbr_NCMName)
{
if (lbr_NCMName != null && lbr_NCMName.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_NCMName = lbr_NCMName.substring(0,59);
}
set_Value ("lbr_NCMName", lbr_NCMName);
}
/** Get NCM Name.
@return Defines the NCM Name */
public String getlbr_NCMName() 
{
return (String)get_Value("lbr_NCMName");
}
/** Set Service Taxes.
@param lbr_ServiceTaxes String with all Taxes Names and Taxes Rates */
public void setlbr_ServiceTaxes (String lbr_ServiceTaxes)
{
if (lbr_ServiceTaxes != null && lbr_ServiceTaxes.length() > 1000)
{
log.warning("Length > 1000 - truncated");
lbr_ServiceTaxes = lbr_ServiceTaxes.substring(0,999);
}
set_Value ("lbr_ServiceTaxes", lbr_ServiceTaxes);
}
/** Get Service Taxes.
@return String with all Taxes Names and Taxes Rates */
public String getlbr_ServiceTaxes() 
{
return (String)get_Value("lbr_ServiceTaxes");
}
/** Set Tax Status.
@param lbr_TaxStatus Defines the Tax Status */
public void setlbr_TaxStatus (String lbr_TaxStatus)
{
if (lbr_TaxStatus != null && lbr_TaxStatus.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_TaxStatus = lbr_TaxStatus.substring(0,2);
}
set_Value ("lbr_TaxStatus", lbr_TaxStatus);
}
/** Get Tax Status.
@return Defines the Tax Status */
public String getlbr_TaxStatus() 
{
return (String)get_Value("lbr_TaxStatus");
}
/** Set UOM Name.
@param lbr_UOMName Defines the UOM Name */
public void setlbr_UOMName (String lbr_UOMName)
{
if (lbr_UOMName != null && lbr_UOMName.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_UOMName = lbr_UOMName.substring(0,59);
}
set_Value ("lbr_UOMName", lbr_UOMName);
}
/** Get UOM Name.
@return Defines the UOM Name */
public String getlbr_UOMName() 
{
return (String)get_Value("lbr_UOMName");
}
}
