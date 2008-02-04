package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_TaxConfiguration
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxConfiguration extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxConfiguration_ID id
@param trxName transaction
*/
public X_LBR_TaxConfiguration (Properties ctx, int LBR_TaxConfiguration_ID, String trxName)
{
super (ctx, LBR_TaxConfiguration_ID, trxName);
/** if (LBR_TaxConfiguration_ID == 0)
{
setLBR_FiscalGroup_Product_ID (0);
setLBR_TaxConfiguration_ID (0);
setM_Product_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxConfiguration (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxConfiguration");

/** TableName=LBR_TaxConfiguration */
public static final String Table_Name="LBR_TaxConfiguration";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxConfiguration");

protected BigDecimal accessLevel = new BigDecimal(3);
/** AccessLevel
@return 3 - Client - Org 
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
StringBuffer sb = new StringBuffer ("X_LBR_TaxConfiguration[").append(get_ID()).append("]");
return sb.toString();
}

/** lbr_ExceptionType AD_Reference_ID=1000020 */
public static final int LBR_EXCEPTIONTYPE_AD_Reference_ID=1000020;
/** Fiscal Group = G */
public static final String LBR_EXCEPTIONTYPE_FiscalGroup = "G";
/** Product = P */
public static final String LBR_EXCEPTIONTYPE_Product = "P";
/** Set Exception Type.
@param lbr_ExceptionType Defines the Exception Type */
public void setlbr_ExceptionType (String lbr_ExceptionType)
{
if (lbr_ExceptionType == null || lbr_ExceptionType.equals("G") || lbr_ExceptionType.equals("P"));
 else throw new IllegalArgumentException ("lbr_ExceptionType Invalid value - " + lbr_ExceptionType + " - Reference_ID=1000020 - G - P");
if (lbr_ExceptionType != null && lbr_ExceptionType.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_ExceptionType = lbr_ExceptionType.substring(0,0);
}
set_Value ("lbr_ExceptionType", lbr_ExceptionType);
}
/** Get Exception Type.
@return Defines the Exception Type */
public String getlbr_ExceptionType() 
{
return (String)get_Value("lbr_ExceptionType");
}

/** LBR_FiscalGroup_Product_ID AD_Reference_ID=1000018 */
public static final int LBR_FISCALGROUP_PRODUCT_ID_AD_Reference_ID=1000018;
/** Set Fiscal Group - Product.
@param LBR_FiscalGroup_Product_ID Primary key table LBR_FiscalGroup_Product */
public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID)
{
if (LBR_FiscalGroup_Product_ID < 1) throw new IllegalArgumentException ("LBR_FiscalGroup_Product_ID is mandatory.");
set_Value ("LBR_FiscalGroup_Product_ID", new Integer(LBR_FiscalGroup_Product_ID));
}
/** Get Fiscal Group - Product.
@return Primary key table LBR_FiscalGroup_Product */
public int getLBR_FiscalGroup_Product_ID() 
{
Integer ii = (Integer)get_Value("LBR_FiscalGroup_Product_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax Configuration.
@param LBR_TaxConfiguration_ID Primary key table LBR_TaxConfiguration */
public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID)
{
if (LBR_TaxConfiguration_ID < 1) throw new IllegalArgumentException ("LBR_TaxConfiguration_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxConfiguration_ID", new Integer(LBR_TaxConfiguration_ID));
}
/** Get Tax Configuration.
@return Primary key table LBR_TaxConfiguration */
public int getLBR_TaxConfiguration_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxConfiguration_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_Product_ID AD_Reference_ID=162 */
public static final int M_PRODUCT_ID_AD_Reference_ID=162;
/** Set Product.
@param M_Product_ID Product, Service, Item */
public void setM_Product_ID (int M_Product_ID)
{
if (M_Product_ID < 1) throw new IllegalArgumentException ("M_Product_ID is mandatory.");
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
}
