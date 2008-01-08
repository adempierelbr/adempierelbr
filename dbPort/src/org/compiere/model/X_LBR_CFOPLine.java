package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_CFOPLine
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_CFOPLine extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_CFOPLine_ID id
@param trxName transaction
*/
public X_LBR_CFOPLine (Properties ctx, int LBR_CFOPLine_ID, String trxName)
{
super (ctx, LBR_CFOPLine_ID, trxName);
/** if (LBR_CFOPLine_ID == 0)
{
setC_DocType_ID (0);
setLBR_BPartnerCategory_ID (0);
setLBR_CFOPLine_ID (0);
setLBR_CFOP_ID (0);
setLBR_ProductCategory_ID (0);
setlbr_DestionationType (null);
setlbr_IsManufactured (false);	// 'N'
setlbr_IsSubTributaria (false);	// 'N'
setlbr_TransactionType (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_CFOPLine (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_CFOPLine");

/** TableName=LBR_CFOPLine */
public static final String Table_Name="LBR_CFOPLine";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_CFOPLine");

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
StringBuffer sb = new StringBuffer ("X_LBR_CFOPLine[").append(get_ID()).append("]");
return sb.toString();
}

/** C_DocType_ID AD_Reference_ID=170 */
public static final int C_DOCTYPE_ID_AD_Reference_ID=170;
/** Set Document Type.
@param C_DocType_ID Document type or rules */
public void setC_DocType_ID (int C_DocType_ID)
{
if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
set_Value ("C_DocType_ID", new Integer(C_DocType_ID));
}
/** Get Document Type.
@return Document type or rules */
public int getC_DocType_ID() 
{
Integer ii = (Integer)get_Value("C_DocType_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_BPartnerCategory_ID AD_Reference_ID=1000015 */
public static final int LBR_BPARTNERCATEGORY_ID_AD_Reference_ID=1000015;
/** Set BPartner Category.
@param LBR_BPartnerCategory_ID Primary key table LBR_BPartnerCategory */
public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
{
if (LBR_BPartnerCategory_ID < 1) throw new IllegalArgumentException ("LBR_BPartnerCategory_ID is mandatory.");
set_Value ("LBR_BPartnerCategory_ID", new Integer(LBR_BPartnerCategory_ID));
}
/** Get BPartner Category.
@return Primary key table LBR_BPartnerCategory */
public int getLBR_BPartnerCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_BPartnerCategory_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set CFOP Line.
@param LBR_CFOPLine_ID Primary key table LBR_CFOPLine */
public void setLBR_CFOPLine_ID (int LBR_CFOPLine_ID)
{
if (LBR_CFOPLine_ID < 1) throw new IllegalArgumentException ("LBR_CFOPLine_ID is mandatory.");
set_ValueNoCheck ("LBR_CFOPLine_ID", new Integer(LBR_CFOPLine_ID));
}
/** Get CFOP Line.
@return Primary key table LBR_CFOPLine */
public int getLBR_CFOPLine_ID() 
{
Integer ii = (Integer)get_Value("LBR_CFOPLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_CFOP_ID AD_Reference_ID=1000016 */
public static final int LBR_CFOP_ID_AD_Reference_ID=1000016;
/** Set CFOP.
@param LBR_CFOP_ID Primary key table LBR_CFOP */
public void setLBR_CFOP_ID (int LBR_CFOP_ID)
{
if (LBR_CFOP_ID < 1) throw new IllegalArgumentException ("LBR_CFOP_ID is mandatory.");
set_ValueNoCheck ("LBR_CFOP_ID", new Integer(LBR_CFOP_ID));
}
/** Get CFOP.
@return Primary key table LBR_CFOP */
public int getLBR_CFOP_ID() 
{
Integer ii = (Integer)get_Value("LBR_CFOP_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_ProductCategory_ID AD_Reference_ID=1000013 */
public static final int LBR_PRODUCTCATEGORY_ID_AD_Reference_ID=1000013;
/** Set Product Category.
@param LBR_ProductCategory_ID Primary key table LBR_ProductCategory */
public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
{
if (LBR_ProductCategory_ID < 1) throw new IllegalArgumentException ("LBR_ProductCategory_ID is mandatory.");
set_Value ("LBR_ProductCategory_ID", new Integer(LBR_ProductCategory_ID));
}
/** Get Product Category.
@return Primary key table LBR_ProductCategory */
public int getLBR_ProductCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_ProductCategory_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Brazilian Tax.
@param LBR_Tax_ID Primary key table LBR_Tax */
public void setLBR_Tax_ID (int LBR_Tax_ID)
{
if (LBR_Tax_ID <= 0) set_Value ("LBR_Tax_ID", null);
 else 
set_Value ("LBR_Tax_ID", new Integer(LBR_Tax_ID));
}
/** Get Brazilian Tax.
@return Primary key table LBR_Tax */
public int getLBR_Tax_ID() 
{
Integer ii = (Integer)get_Value("LBR_Tax_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** lbr_DestionationType AD_Reference_ID=1000012 */
public static final int LBR_DESTIONATIONTYPE_AD_Reference_ID=1000012;
/** Estados IdÃªnticos = 0 */
public static final String LBR_DESTIONATIONTYPE_EstadosIdÃªnticos = "0";
/** Estados Diferentes = 1 */
public static final String LBR_DESTIONATIONTYPE_EstadosDiferentes = "1";
/** Estrangeiro = 2 */
public static final String LBR_DESTIONATIONTYPE_Estrangeiro = "2";
/** Zona Franca = 3 */
public static final String LBR_DESTIONATIONTYPE_ZonaFranca = "3";
/** Set Destination Type.
@param lbr_DestionationType Defines the Destination Type */
public void setlbr_DestionationType (String lbr_DestionationType)
{
if (lbr_DestionationType == null) throw new IllegalArgumentException ("lbr_DestionationType is mandatory");
if (lbr_DestionationType.equals("0") || lbr_DestionationType.equals("1") || lbr_DestionationType.equals("2") || lbr_DestionationType.equals("3"));
 else throw new IllegalArgumentException ("lbr_DestionationType Invalid value - " + lbr_DestionationType + " - Reference_ID=1000012 - 0 - 1 - 2 - 3");
if (lbr_DestionationType.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_DestionationType = lbr_DestionationType.substring(0,0);
}
set_Value ("lbr_DestionationType", lbr_DestionationType);
}
/** Get Destination Type.
@return Defines the Destination Type */
public String getlbr_DestionationType() 
{
return (String)get_Value("lbr_DestionationType");
}
/** Set Is Manufactured.
@param lbr_IsManufactured Defines if the Product is Manufactured */
public void setlbr_IsManufactured (boolean lbr_IsManufactured)
{
set_Value ("lbr_IsManufactured", new Boolean(lbr_IsManufactured));
}
/** Get Is Manufactured.
@return Defines if the Product is Manufactured */
public boolean islbr_IsManufactured() 
{
Object oo = get_Value("lbr_IsManufactured");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Is Substituicao Tributaria.
@param lbr_IsSubTributaria Defines the Is Substituicao Tributaria Status */
public void setlbr_IsSubTributaria (boolean lbr_IsSubTributaria)
{
set_Value ("lbr_IsSubTributaria", new Boolean(lbr_IsSubTributaria));
}
/** Get Is Substituicao Tributaria.
@return Defines the Is Substituicao Tributaria Status */
public boolean islbr_IsSubTributaria() 
{
Object oo = get_Value("lbr_IsSubTributaria");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** lbr_TransactionType AD_Reference_ID=1000014 */
public static final int LBR_TRANSACTIONTYPE_AD_Reference_ID=1000014;
/** Resale = RES */
public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
/** Manufacturing = MAN */
public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
/** End User = END */
public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
/** Fixed  Asset = ASS */
public static final String LBR_TRANSACTIONTYPE_FixedAsset = "ASS";
/** Set Transaction Type.
@param lbr_TransactionType Defines the Transaction Type */
public void setlbr_TransactionType (String lbr_TransactionType)
{
if (lbr_TransactionType == null) throw new IllegalArgumentException ("lbr_TransactionType is mandatory");
if (lbr_TransactionType.equals("RES") || lbr_TransactionType.equals("MAN") || lbr_TransactionType.equals("END") || lbr_TransactionType.equals("ASS"));
 else throw new IllegalArgumentException ("lbr_TransactionType Invalid value - " + lbr_TransactionType + " - Reference_ID=1000014 - RES - MAN - END - ASS");
if (lbr_TransactionType.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_TransactionType = lbr_TransactionType.substring(0,2);
}
set_Value ("lbr_TransactionType", lbr_TransactionType);
}
/** Get Transaction Type.
@return Defines the Transaction Type */
public String getlbr_TransactionType() 
{
return (String)get_Value("lbr_TransactionType");
}
}
