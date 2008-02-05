package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_TaxGroup
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxGroup extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxGroup_ID id
@param trxName transaction
*/
public X_LBR_TaxGroup (Properties ctx, int LBR_TaxGroup_ID, String trxName)
{
super (ctx, LBR_TaxGroup_ID, trxName);
/** if (LBR_TaxGroup_ID == 0)
{
setLBR_TaxGroup_ID (0);
setName (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxGroup (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxGroup");

/** TableName=LBR_TaxGroup */
public static final String Table_Name="LBR_TaxGroup";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxGroup");

protected BigDecimal accessLevel = new BigDecimal(6);
/** AccessLevel
@return 6 - System - Client 
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
StringBuffer sb = new StringBuffer ("X_LBR_TaxGroup[").append(get_ID()).append("]");
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
/** Set Tax Group.
@param LBR_TaxGroup_ID Tax Group */
public void setLBR_TaxGroup_ID (int LBR_TaxGroup_ID)
{
if (LBR_TaxGroup_ID < 1) throw new IllegalArgumentException ("LBR_TaxGroup_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxGroup_ID", new Integer(LBR_TaxGroup_ID));
}
/** Get Tax Group.
@return Tax Group */
public int getLBR_TaxGroup_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxGroup_ID");
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
}