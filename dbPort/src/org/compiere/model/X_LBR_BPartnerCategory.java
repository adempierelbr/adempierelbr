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
/** Generated Model for LBR_BPartnerCategory
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_BPartnerCategory extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_BPartnerCategory_ID id
@param trxName transaction
*/
public X_LBR_BPartnerCategory (Properties ctx, int LBR_BPartnerCategory_ID, String trxName)
{
super (ctx, LBR_BPartnerCategory_ID, trxName);
/** if (LBR_BPartnerCategory_ID == 0)
{
setLBR_BPartnerCategory_ID (0);
setName (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_BPartnerCategory (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_BPartnerCategory");

/** TableName=LBR_BPartnerCategory */
public static final String Table_Name="LBR_BPartnerCategory";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_BPartnerCategory");

protected BigDecimal accessLevel = new BigDecimal(7);
/** AccessLevel
@return 7 - System - Client - Org 
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
StringBuffer sb = new StringBuffer ("X_LBR_BPartnerCategory[").append(get_ID()).append("]");
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
/** Set BPartner Category.
@param LBR_BPartnerCategory_ID Primary key table LBR_BPartnerCategory */
public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
{
if (LBR_BPartnerCategory_ID < 1) throw new IllegalArgumentException ("LBR_BPartnerCategory_ID is mandatory.");
set_ValueNoCheck ("LBR_BPartnerCategory_ID", new Integer(LBR_BPartnerCategory_ID));
}
/** Get BPartner Category.
@return Primary key table LBR_BPartnerCategory */
public int getLBR_BPartnerCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_BPartnerCategory_ID");
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
