package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_DocPrintField
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_DocPrintField extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_DocPrintField_ID id
@param trxName transaction
*/
public X_LBR_DocPrintField (Properties ctx, int LBR_DocPrintField_ID, String trxName)
{
super (ctx, LBR_DocPrintField_ID, trxName);
/** if (LBR_DocPrintField_ID == 0)
{
setLBR_DocPrintField_ID (0);
setLBR_DocPrint_ID (0);
setName (null);
setlbr_IsHeader (false);	// 'N'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_DocPrintField (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_DocPrintField");

/** TableName=LBR_DocPrintField */
public static final String Table_Name="LBR_DocPrintField";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_DocPrintField");

protected BigDecimal accessLevel = new BigDecimal(4);
/** AccessLevel
@return 4 - System 
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
StringBuffer sb = new StringBuffer ("X_LBR_DocPrintField[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Comments.
@param Comments Comments or additional information */
public void setComments (String Comments)
{
if (Comments != null && Comments.length() > 255)
{
log.warning("Length > 255 - truncated");
Comments = Comments.substring(0,254);
}
set_Value ("Comments", Comments);
}
/** Get Comments.
@return Comments or additional information */
public String getComments() 
{
return (String)get_Value("Comments");
}
/** Set DocPrint Field.
@param LBR_DocPrintField_ID Primary key table LBR_DocPrintField */
public void setLBR_DocPrintField_ID (int LBR_DocPrintField_ID)
{
if (LBR_DocPrintField_ID < 1) throw new IllegalArgumentException ("LBR_DocPrintField_ID is mandatory.");
set_ValueNoCheck ("LBR_DocPrintField_ID", new Integer(LBR_DocPrintField_ID));
}
/** Get DocPrint Field.
@return Primary key table LBR_DocPrintField */
public int getLBR_DocPrintField_ID() 
{
Integer ii = (Integer)get_Value("LBR_DocPrintField_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set DocPrint.
@param LBR_DocPrint_ID Primary key table LBR_DocPrint */
public void setLBR_DocPrint_ID (int LBR_DocPrint_ID)
{
if (LBR_DocPrint_ID < 1) throw new IllegalArgumentException ("LBR_DocPrint_ID is mandatory.");
set_ValueNoCheck ("LBR_DocPrint_ID", new Integer(LBR_DocPrint_ID));
}
/** Get DocPrint.
@return Primary key table LBR_DocPrint */
public int getLBR_DocPrint_ID() 
{
Integer ii = (Integer)get_Value("LBR_DocPrint_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Name.
@param Name Alphanumeric identifier of the entity */
public void setName (String Name)
{
if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
if (Name.length() > 60)
{
log.warning("Length > 60 - truncated");
Name = Name.substring(0,59);
}
set_Value ("Name", Name);
}
/** Get Name.
@return Alphanumeric identifier of the entity */
public String getName() 
{
return (String)get_Value("Name");
}
/** Set Column Number.
@param lbr_ColumnNo Defines the X Position */
public void setlbr_ColumnNo (int lbr_ColumnNo)
{
set_Value ("lbr_ColumnNo", new Integer(lbr_ColumnNo));
}
/** Get Column Number.
@return Defines the X Position */
public int getlbr_ColumnNo() 
{
Integer ii = (Integer)get_Value("lbr_ColumnNo");
if (ii == null) return 0;
return ii.intValue();
}

/** lbr_FieldAlignment AD_Reference_ID=1000003 */
public static final int LBR_FIELDALIGNMENT_AD_Reference_ID=1000003;
/** Left = L */
public static final String LBR_FIELDALIGNMENT_Left = "L";
/** Center = C */
public static final String LBR_FIELDALIGNMENT_Center = "C";
/** Right = R */
public static final String LBR_FIELDALIGNMENT_Right = "R";
/** Set Field Alignment.
@param lbr_FieldAlignment Defines the Field Alignment */
public void setlbr_FieldAlignment (String lbr_FieldAlignment)
{
if (lbr_FieldAlignment == null || lbr_FieldAlignment.equals("L") || lbr_FieldAlignment.equals("C") || lbr_FieldAlignment.equals("R"));
 else throw new IllegalArgumentException ("lbr_FieldAlignment Invalid value - " + lbr_FieldAlignment + " - Reference_ID=1000003 - L - C - R");
if (lbr_FieldAlignment != null && lbr_FieldAlignment.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_FieldAlignment = lbr_FieldAlignment.substring(0,0);
}
set_Value ("lbr_FieldAlignment", lbr_FieldAlignment);
}
/** Get Field Alignment.
@return Defines the Field Alignment */
public String getlbr_FieldAlignment() 
{
return (String)get_Value("lbr_FieldAlignment");
}
/** Set Field Length.
@param lbr_FieldLength Defines the Field Length */
public void setlbr_FieldLength (int lbr_FieldLength)
{
set_Value ("lbr_FieldLength", new Integer(lbr_FieldLength));
}
/** Get Field Length.
@return Defines the Field Length */
public int getlbr_FieldLength() 
{
Integer ii = (Integer)get_Value("lbr_FieldLength");
if (ii == null) return 0;
return ii.intValue();
}
/** Set IsHeader.
@param lbr_IsHeader Identifies if this is a Header Information (all pages prints column) */
public void setlbr_IsHeader (boolean lbr_IsHeader)
{
set_Value ("lbr_IsHeader", new Boolean(lbr_IsHeader));
}
/** Get IsHeader.
@return Identifies if this is a Header Information (all pages prints column) */
public boolean islbr_IsHeader() 
{
Object oo = get_Value("lbr_IsHeader");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** lbr_PrintFormat AD_Reference_ID=1000004 */
public static final int LBR_PRINTFORMAT_AD_Reference_ID=1000004;
/** String = S */
public static final String LBR_PRINTFORMAT_String = "S";
/** Date = D */
public static final String LBR_PRINTFORMAT_Date = "D";
/** Value = V */
public static final String LBR_PRINTFORMAT_Value = "V";
/** Set Print Format.
@param lbr_PrintFormat Defines the Print Format Type */
public void setlbr_PrintFormat (String lbr_PrintFormat)
{
if (lbr_PrintFormat == null || lbr_PrintFormat.equals("S") || lbr_PrintFormat.equals("D") || lbr_PrintFormat.equals("V"));
 else throw new IllegalArgumentException ("lbr_PrintFormat Invalid value - " + lbr_PrintFormat + " - Reference_ID=1000004 - S - D - V");
if (lbr_PrintFormat != null && lbr_PrintFormat.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_PrintFormat = lbr_PrintFormat.substring(0,0);
}
set_Value ("lbr_PrintFormat", lbr_PrintFormat);
}
/** Get Print Format.
@return Defines the Print Format Type */
public String getlbr_PrintFormat() 
{
return (String)get_Value("lbr_PrintFormat");
}
/** Set Row Number.
@param lbr_RowNo Defines the Y Position */
public void setlbr_RowNo (int lbr_RowNo)
{
set_Value ("lbr_RowNo", new Integer(lbr_RowNo));
}
/** Get Row Number.
@return Defines the Y Position */
public int getlbr_RowNo() 
{
Integer ii = (Integer)get_Value("lbr_RowNo");
if (ii == null) return 0;
return ii.intValue();
}
}
