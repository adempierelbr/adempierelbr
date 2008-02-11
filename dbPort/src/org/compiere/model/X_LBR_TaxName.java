package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_TaxName
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxName extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxName_ID id
@param trxName transaction
*/
public X_LBR_TaxName (Properties ctx, int LBR_TaxName_ID, String trxName)
{
super (ctx, LBR_TaxName_ID, trxName);
/** if (LBR_TaxName_ID == 0)
{
setHasWithHold (false);	// 'N'
setLBR_TaxName_ID (0);
setLBR_TaxSubstitution_ID (0);
setName (null);
setWithHoldThreshold (Env.ZERO);
setlbr_TaxType (null);	// 'P'
setlbr_WithholdFrequency (null);	// 'M'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxName (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxName");

/** TableName=LBR_TaxName */
public static final String Table_Name="LBR_TaxName";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxName");

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
StringBuffer sb = new StringBuffer ("X_LBR_TaxName[").append(get_ID()).append("]");
return sb.toString();
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
/** Set Has WithHold.
@param HasWithHold Defines if the Tax, has WithHold */
public void setHasWithHold (boolean HasWithHold)
{
set_Value ("HasWithHold", new Boolean(HasWithHold));
}
/** Get Has WithHold.
@return Defines if the Tax, has WithHold */
public boolean isHasWithHold() 
{
Object oo = get_Value("HasWithHold");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
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

/** LBR_TaxSubstitution_ID AD_Reference_ID=1000023 */
public static final int LBR_TAXSUBSTITUTION_ID_AD_Reference_ID=1000023;
/** Set Tax Substitution.
@param LBR_TaxSubstitution_ID Defines the Tax Substitution */
public void setLBR_TaxSubstitution_ID (int LBR_TaxSubstitution_ID)
{
if (LBR_TaxSubstitution_ID < 1) throw new IllegalArgumentException ("LBR_TaxSubstitution_ID is mandatory.");
set_Value ("LBR_TaxSubstitution_ID", new Integer(LBR_TaxSubstitution_ID));
}
/** Get Tax Substitution.
@return Defines the Tax Substitution */
public int getLBR_TaxSubstitution_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxSubstitution_ID");
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
/** Set WithHold Threshold.
@param WithHoldThreshold Defines the WithHold Threshold  */
public void setWithHoldThreshold (BigDecimal WithHoldThreshold)
{
if (WithHoldThreshold == null) throw new IllegalArgumentException ("WithHoldThreshold is mandatory.");
set_Value ("WithHoldThreshold", WithHoldThreshold);
}
/** Get WithHold Threshold.
@return Defines the WithHold Threshold  */
public BigDecimal getWithHoldThreshold() 
{
BigDecimal bd = (BigDecimal)get_Value("WithHoldThreshold");
if (bd == null) return Env.ZERO;
return bd;
}

/** lbr_TaxType AD_Reference_ID=1000022 */
public static final int LBR_TAXTYPE_AD_Reference_ID=1000022;
/** Product = P */
public static final String LBR_TAXTYPE_Product = "P";
/** Service = S */
public static final String LBR_TAXTYPE_Service = "S";
/** Substitution = T */
public static final String LBR_TAXTYPE_Substitution = "T";
/** Set Tax Type.
@param lbr_TaxType Define the Tax Type */
public void setlbr_TaxType (String lbr_TaxType)
{
if (lbr_TaxType == null) throw new IllegalArgumentException ("lbr_TaxType is mandatory");
if (lbr_TaxType.equals("P") || lbr_TaxType.equals("S") || lbr_TaxType.equals("T"));
 else throw new IllegalArgumentException ("lbr_TaxType Invalid value - " + lbr_TaxType + " - Reference_ID=1000022 - P - S - T");
if (lbr_TaxType.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_TaxType = lbr_TaxType.substring(0,0);
}
set_Value ("lbr_TaxType", lbr_TaxType);
}
/** Get Tax Type.
@return Define the Tax Type */
public String getlbr_TaxType() 
{
return (String)get_Value("lbr_TaxType");
}

/** lbr_WithholdFrequency AD_Reference_ID=1000028 */
public static final int LBR_WITHHOLDFREQUENCY_AD_Reference_ID=1000028;
/** Monthly = M */
public static final String LBR_WITHHOLDFREQUENCY_Monthly = "M";
/** Set Withhold Frequency.
@param lbr_WithholdFrequency Defines the Withhold Frequency */
public void setlbr_WithholdFrequency (String lbr_WithholdFrequency)
{
if (lbr_WithholdFrequency == null) throw new IllegalArgumentException ("lbr_WithholdFrequency is mandatory");
if (lbr_WithholdFrequency.equals("M"));
 else throw new IllegalArgumentException ("lbr_WithholdFrequency Invalid value - " + lbr_WithholdFrequency + " - Reference_ID=1000028 - M");
if (lbr_WithholdFrequency.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_WithholdFrequency = lbr_WithholdFrequency.substring(0,0);
}
set_Value ("lbr_WithholdFrequency", lbr_WithholdFrequency);
}
/** Get Withhold Frequency.
@return Defines the Withhold Frequency */
public String getlbr_WithholdFrequency() 
{
return (String)get_Value("lbr_WithholdFrequency");
}
}
