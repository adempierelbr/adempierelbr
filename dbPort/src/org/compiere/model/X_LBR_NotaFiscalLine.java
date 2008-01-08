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
