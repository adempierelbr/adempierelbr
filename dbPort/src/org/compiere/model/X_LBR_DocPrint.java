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
/** Generated Model for LBR_DocPrint
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_DocPrint extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_DocPrint_ID id
@param trxName transaction
*/
public X_LBR_DocPrint (Properties ctx, int LBR_DocPrint_ID, String trxName)
{
super (ctx, LBR_DocPrint_ID, trxName);
/** if (LBR_DocPrint_ID == 0)
{
setLBR_DocPrint_ID (0);
setName (null);
setlbr_HasSubDoc (false);	// 'N'
setlbr_IsSubDoc (false);	// 'N'
setlbr_TableName (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_DocPrint (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_DocPrint");

/** TableName=LBR_DocPrint */
public static final String Table_Name="LBR_DocPrint";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_DocPrint");

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
StringBuffer sb = new StringBuffer ("X_LBR_DocPrint[").append(get_ID()).append("]");
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
/** Set Create Fields.
@param lbr_CreateFields Processo to Create Document Fields */
public void setlbr_CreateFields (String lbr_CreateFields)
{
if (lbr_CreateFields != null && lbr_CreateFields.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_CreateFields = lbr_CreateFields.substring(0,0);
}
set_Value ("lbr_CreateFields", lbr_CreateFields);
}
/** Get Create Fields.
@return Processo to Create Document Fields */
public String getlbr_CreateFields() 
{
return (String)get_Value("lbr_CreateFields");
}
/** Set Has SubDoc.
@param lbr_HasSubDoc Identifies if the Document has SubDocuments */
public void setlbr_HasSubDoc (boolean lbr_HasSubDoc)
{
set_Value ("lbr_HasSubDoc", new Boolean(lbr_HasSubDoc));
}
/** Get Has SubDoc.
@return Identifies if the Document has SubDocuments */
public boolean islbr_HasSubDoc() 
{
Object oo = get_Value("lbr_HasSubDoc");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set IsSubDoc.
@param lbr_IsSubDoc Defines if this Documento is a SubDocument */
public void setlbr_IsSubDoc (boolean lbr_IsSubDoc)
{
set_Value ("lbr_IsSubDoc", new Boolean(lbr_IsSubDoc));
}
/** Get IsSubDoc.
@return Defines if this Documento is a SubDocument */
public boolean islbr_IsSubDoc() 
{
Object oo = get_Value("lbr_IsSubDoc");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Number of Columns.
@param lbr_NoCols Identifies the Number of Columns */
public void setlbr_NoCols (int lbr_NoCols)
{
set_Value ("lbr_NoCols", new Integer(lbr_NoCols));
}
/** Get Number of Columns.
@return Identifies the Number of Columns */
public int getlbr_NoCols() 
{
Integer ii = (Integer)get_Value("lbr_NoCols");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Number of Rows.
@param lbr_NoRows Identifies the Number of Rows (If this is a SubDocument, enter 0 for unlimited) */
public void setlbr_NoRows (int lbr_NoRows)
{
set_Value ("lbr_NoRows", new Integer(lbr_NoRows));
}
/** Get Number of Rows.
@return Identifies the Number of Rows (If this is a SubDocument, enter 0 for unlimited) */
public int getlbr_NoRows() 
{
Integer ii = (Integer)get_Value("lbr_NoRows");
if (ii == null) return 0;
return ii.intValue();
}
/** Set SubDoc Row.
@param lbr_SubDocRow Identifies the Starter Row of the SubDocument */
public void setlbr_SubDocRow (int lbr_SubDocRow)
{
set_Value ("lbr_SubDocRow", new Integer(lbr_SubDocRow));
}
/** Get SubDoc Row.
@return Identifies the Starter Row of the SubDocument */
public int getlbr_SubDocRow() 
{
Integer ii = (Integer)get_Value("lbr_SubDocRow");
if (ii == null) return 0;
return ii.intValue();
}

/** lbr_SubDoc_ID AD_Reference_ID=1000002 */
public static final int LBR_SUBDOC_ID_AD_Reference_ID=1000002;
/** Set SubDoc_ID.
@param lbr_SubDoc_ID Identifies the ID of the SubDocument */
public void setlbr_SubDoc_ID (int lbr_SubDoc_ID)
{
if (lbr_SubDoc_ID <= 0) set_Value ("lbr_SubDoc_ID", null);
 else 
set_Value ("lbr_SubDoc_ID", new Integer(lbr_SubDoc_ID));
}
/** Get SubDoc_ID.
@return Identifies the ID of the SubDocument */
public int getlbr_SubDoc_ID() 
{
Integer ii = (Integer)get_Value("lbr_SubDoc_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Table Name.
@param lbr_TableName Identifies the Table or View Name */
public void setlbr_TableName (String lbr_TableName)
{
if (lbr_TableName == null) throw new IllegalArgumentException ("lbr_TableName is mandatory.");
if (lbr_TableName.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_TableName = lbr_TableName.substring(0,59);
}
set_Value ("lbr_TableName", lbr_TableName);
}
/** Get Table Name.
@return Identifies the Table or View Name */
public String getlbr_TableName() 
{
return (String)get_Value("lbr_TableName");
}
}
