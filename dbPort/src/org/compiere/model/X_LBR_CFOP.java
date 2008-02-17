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
/** Generated Model for LBR_CFOP
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_CFOP extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_CFOP_ID id
@param trxName transaction
*/
public X_LBR_CFOP (Properties ctx, int LBR_CFOP_ID, String trxName)
{
super (ctx, LBR_CFOP_ID, trxName);
/** if (LBR_CFOP_ID == 0)
{
setLBR_CFOP_ID (0);
setValue (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_CFOP (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_CFOP");

/** TableName=LBR_CFOP */
public static final String Table_Name="LBR_CFOP";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_CFOP");

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
StringBuffer sb = new StringBuffer ("X_LBR_CFOP[").append(get_ID()).append("]");
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
/** Set Search Key.
@param Value Search key for the record in the format required - must be unique */
public void setValue (String Value)
{
if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
if (Value.length() > 5)
{
log.warning("Length > 5 - truncated");
Value = Value.substring(0,4);
}
set_Value ("Value", Value);
}
/** Get Search Key.
@return Search key for the record in the format required - must be unique */
public String getValue() 
{
return (String)get_Value("Value");
}
}
