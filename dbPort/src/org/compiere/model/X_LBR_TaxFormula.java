package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_TaxFormula
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxFormula extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxFormula_ID id
@param trxName transaction
*/
public X_LBR_TaxFormula (Properties ctx, int LBR_TaxFormula_ID, String trxName)
{
super (ctx, LBR_TaxFormula_ID, trxName);
/** if (LBR_TaxFormula_ID == 0)
{
setLBR_TaxFormula_ID (0);
setLBR_TaxName_ID (0);
setlbr_Formula (null);
setlbr_FormulaNetWorth (null);
setlbr_TransactionType (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxFormula (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxFormula");

/** TableName=LBR_TaxFormula */
public static final String Table_Name="LBR_TaxFormula";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxFormula");

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
StringBuffer sb = new StringBuffer ("X_LBR_TaxFormula[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Tax Formula.
@param LBR_TaxFormula_ID Primary key table LBR_TaxFormula */
public void setLBR_TaxFormula_ID (int LBR_TaxFormula_ID)
{
if (LBR_TaxFormula_ID < 1) throw new IllegalArgumentException ("LBR_TaxFormula_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxFormula_ID", new Integer(LBR_TaxFormula_ID));
}
/** Get Tax Formula.
@return Primary key table LBR_TaxFormula */
public int getLBR_TaxFormula_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxFormula_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax Name.
@param LBR_TaxName_ID Primary key table LBR_TaxName */
public void setLBR_TaxName_ID (int LBR_TaxName_ID)
{
if (LBR_TaxName_ID < 1) throw new IllegalArgumentException ("LBR_TaxName_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxName_ID", new Integer(LBR_TaxName_ID));
}
/** Get Tax Name.
@return Primary key table LBR_TaxName */
public int getLBR_TaxName_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxName_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Formula.
@param lbr_Formula Defines the Tax Formula */
public void setlbr_Formula (String lbr_Formula)
{
if (lbr_Formula == null) throw new IllegalArgumentException ("lbr_Formula is mandatory.");
if (lbr_Formula.length() > 2000)
{
log.warning("Length > 2000 - truncated");
lbr_Formula = lbr_Formula.substring(0,1999);
}
set_Value ("lbr_Formula", lbr_Formula);
}
/** Get Formula.
@return Defines the Tax Formula */
public String getlbr_Formula() 
{
return (String)get_Value("lbr_Formula");
}
/** Set Formula NetWorth.
@param lbr_FormulaNetWorth Defines the Tax Formula NetWorth */
public void setlbr_FormulaNetWorth (String lbr_FormulaNetWorth)
{
if (lbr_FormulaNetWorth == null) throw new IllegalArgumentException ("lbr_FormulaNetWorth is mandatory.");
if (lbr_FormulaNetWorth.length() > 2000)
{
log.warning("Length > 2000 - truncated");
lbr_FormulaNetWorth = lbr_FormulaNetWorth.substring(0,1999);
}
set_Value ("lbr_FormulaNetWorth", lbr_FormulaNetWorth);
}
/** Get Formula NetWorth.
@return Defines the Tax Formula NetWorth */
public String getlbr_FormulaNetWorth() 
{
return (String)get_Value("lbr_FormulaNetWorth");
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
/** Set Transaction Type.
@param lbr_TransactionType Defines the Transaction Type */
public void setlbr_TransactionType (String lbr_TransactionType)
{
if (lbr_TransactionType == null) throw new IllegalArgumentException ("lbr_TransactionType is mandatory");
if (lbr_TransactionType.equals("END") || lbr_TransactionType.equals("MAN") || lbr_TransactionType.equals("IMP") || lbr_TransactionType.equals("EXP") || lbr_TransactionType.equals("RES"));
 else throw new IllegalArgumentException ("lbr_TransactionType Invalid value - " + lbr_TransactionType + " - Reference_ID=1000024 - END - MAN - IMP - EXP - RES");
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
