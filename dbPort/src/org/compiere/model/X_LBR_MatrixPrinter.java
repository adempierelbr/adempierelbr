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
/** Generated Model for LBR_MatrixPrinter
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_MatrixPrinter extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_MatrixPrinter_ID id
@param trxName transaction
*/
public X_LBR_MatrixPrinter (Properties ctx, int LBR_MatrixPrinter_ID, String trxName)
{
super (ctx, LBR_MatrixPrinter_ID, trxName);
/** if (LBR_MatrixPrinter_ID == 0)
{
setIsDefault (false);	// 'N'
setLBR_MatrixPrinter_ID (0);
setName (null);
setlbr_IsCondensed (true);	// 'Y'
setlbr_IsUnixPrinter (false);	// 'N'
setlbr_Pitch (0);
setlbr_PrinterPath (null);
setlbr_PrinterType (null);
setlbr_UnixPrinterName (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_MatrixPrinter (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_MatrixPrinter");

/** TableName=LBR_MatrixPrinter */
public static final String Table_Name="LBR_MatrixPrinter";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_MatrixPrinter");

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
StringBuffer sb = new StringBuffer ("X_LBR_MatrixPrinter[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Default.
@param IsDefault Default value */
public void setIsDefault (boolean IsDefault)
{
set_Value ("IsDefault", new Boolean(IsDefault));
}
/** Get Default.
@return Default value */
public boolean isDefault() 
{
Object oo = get_Value("IsDefault");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Matrix Printer.
@param LBR_MatrixPrinter_ID Primary key table LBR_MatrixPrinter */
public void setLBR_MatrixPrinter_ID (int LBR_MatrixPrinter_ID)
{
if (LBR_MatrixPrinter_ID < 1) throw new IllegalArgumentException ("LBR_MatrixPrinter_ID is mandatory.");
set_ValueNoCheck ("LBR_MatrixPrinter_ID", new Integer(LBR_MatrixPrinter_ID));
}
/** Get Matrix Printer.
@return Primary key table LBR_MatrixPrinter */
public int getLBR_MatrixPrinter_ID() 
{
Integer ii = (Integer)get_Value("LBR_MatrixPrinter_ID");
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
/** Set Characterset.
@param lbr_Characterset Defines the Characterset */
public void setlbr_Characterset (String lbr_Characterset)
{
if (lbr_Characterset != null && lbr_Characterset.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_Characterset = lbr_Characterset.substring(0,29);
}
set_Value ("lbr_Characterset", lbr_Characterset);
}
/** Get Characterset.
@return Defines the Characterset */
public String getlbr_Characterset() 
{
return (String)get_Value("lbr_Characterset");
}
/** Set Interspace.
@param lbr_Interspace Defines the Interspace */
public void setlbr_Interspace (String lbr_Interspace)
{
if (lbr_Interspace != null && lbr_Interspace.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_Interspace = lbr_Interspace.substring(0,9);
}
set_Value ("lbr_Interspace", lbr_Interspace);
}
/** Get Interspace.
@return Defines the Interspace */
public String getlbr_Interspace() 
{
return (String)get_Value("lbr_Interspace");
}
/** Set Is Condensed.
@param lbr_IsCondensed Defines if Character is Condensed */
public void setlbr_IsCondensed (boolean lbr_IsCondensed)
{
set_Value ("lbr_IsCondensed", new Boolean(lbr_IsCondensed));
}
/** Get Is Condensed.
@return Defines if Character is Condensed */
public boolean islbr_IsCondensed() 
{
Object oo = get_Value("lbr_IsCondensed");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Is UnixPrinter.
@param lbr_IsUnixPrinter Define if this is an Unix Printer */
public void setlbr_IsUnixPrinter (boolean lbr_IsUnixPrinter)
{
set_Value ("lbr_IsUnixPrinter", new Boolean(lbr_IsUnixPrinter));
}
/** Get Is UnixPrinter.
@return Define if this is an Unix Printer */
public boolean islbr_IsUnixPrinter() 
{
Object oo = get_Value("lbr_IsUnixPrinter");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Pitch.
@param lbr_Pitch Defines the Printer Pitch */
public void setlbr_Pitch (int lbr_Pitch)
{
set_Value ("lbr_Pitch", new Integer(lbr_Pitch));
}
/** Get Pitch.
@return Defines the Printer Pitch */
public int getlbr_Pitch() 
{
Integer ii = (Integer)get_Value("lbr_Pitch");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Printer Path.
@param lbr_PrinterPath Defines the Printer Path */
public void setlbr_PrinterPath (String lbr_PrinterPath)
{
if (lbr_PrinterPath == null) throw new IllegalArgumentException ("lbr_PrinterPath is mandatory.");
if (lbr_PrinterPath.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_PrinterPath = lbr_PrinterPath.substring(0,59);
}
set_Value ("lbr_PrinterPath", lbr_PrinterPath);
}
/** Get Printer Path.
@return Defines the Printer Path */
public String getlbr_PrinterPath() 
{
return (String)get_Value("lbr_PrinterPath");
}
/** Set Printer Type.
@param lbr_PrinterType Defines the Printer Type */
public void setlbr_PrinterType (String lbr_PrinterType)
{
if (lbr_PrinterType == null) throw new IllegalArgumentException ("lbr_PrinterType is mandatory.");
if (lbr_PrinterType.length() > 15)
{
log.warning("Length > 15 - truncated");
lbr_PrinterType = lbr_PrinterType.substring(0,14);
}
set_Value ("lbr_PrinterType", lbr_PrinterType);
}
/** Get Printer Type.
@return Defines the Printer Type */
public String getlbr_PrinterType() 
{
return (String)get_Value("lbr_PrinterType");
}
/** Set Unix PrinterName.
@param lbr_UnixPrinterName Defines the Unix PrinterName */
public void setlbr_UnixPrinterName (String lbr_UnixPrinterName)
{
if (lbr_UnixPrinterName == null) throw new IllegalArgumentException ("lbr_UnixPrinterName is mandatory.");
if (lbr_UnixPrinterName.length() > 40)
{
log.warning("Length > 40 - truncated");
lbr_UnixPrinterName = lbr_UnixPrinterName.substring(0,39);
}
set_Value ("lbr_UnixPrinterName", lbr_UnixPrinterName);
}
/** Get Unix PrinterName.
@return Defines the Unix PrinterName */
public String getlbr_UnixPrinterName() 
{
return (String)get_Value("lbr_UnixPrinterName");
}
}
