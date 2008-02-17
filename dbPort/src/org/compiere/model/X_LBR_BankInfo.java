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
/** Generated Model for LBR_BankInfo
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_BankInfo extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_BankInfo_ID id
@param trxName transaction
*/
public X_LBR_BankInfo (Properties ctx, int LBR_BankInfo_ID, String trxName)
{
super (ctx, LBR_BankInfo_ID, trxName);
/** if (LBR_BankInfo_ID == 0)
{
setLBR_BankInfo_ID (0);
setLBR_Bank_ID (0);
setlbr_OccurNo (null);
setlbr_OccurType (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_BankInfo (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_BankInfo");

/** TableName=LBR_BankInfo */
public static final String Table_Name="LBR_BankInfo";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_BankInfo");

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
StringBuffer sb = new StringBuffer ("X_LBR_BankInfo[").append(get_ID()).append("]");
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
/** Set Bank Info.
@param LBR_BankInfo_ID Primary key table LBR_BankInfo */
public void setLBR_BankInfo_ID (int LBR_BankInfo_ID)
{
if (LBR_BankInfo_ID < 1) throw new IllegalArgumentException ("LBR_BankInfo_ID is mandatory.");
set_ValueNoCheck ("LBR_BankInfo_ID", new Integer(LBR_BankInfo_ID));
}
/** Get Bank Info.
@return Primary key table LBR_BankInfo */
public int getLBR_BankInfo_ID() 
{
Integer ii = (Integer)get_Value("LBR_BankInfo_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_Bank_ID AD_Reference_ID=1000001 */
public static final int LBR_BANK_ID_AD_Reference_ID=1000001;
/** Set Bank.
@param LBR_Bank_ID Primary Key table LBR_Bank */
public void setLBR_Bank_ID (int LBR_Bank_ID)
{
if (LBR_Bank_ID < 1) throw new IllegalArgumentException ("LBR_Bank_ID is mandatory.");
set_ValueNoCheck ("LBR_Bank_ID", new Integer(LBR_Bank_ID));
}
/** Get Bank.
@return Primary Key table LBR_Bank */
public int getLBR_Bank_ID() 
{
Integer ii = (Integer)get_Value("LBR_Bank_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Occurrence Number.
@param lbr_OccurNo Defines the Occurrence Number */
public void setlbr_OccurNo (String lbr_OccurNo)
{
if (lbr_OccurNo == null) throw new IllegalArgumentException ("lbr_OccurNo is mandatory.");
if (lbr_OccurNo.length() > 5)
{
log.warning("Length > 5 - truncated");
lbr_OccurNo = lbr_OccurNo.substring(0,4);
}
set_Value ("lbr_OccurNo", lbr_OccurNo);
}
/** Get Occurrence Number.
@return Defines the Occurrence Number */
public String getlbr_OccurNo() 
{
return (String)get_Value("lbr_OccurNo");
}

/** lbr_OccurType AD_Reference_ID=1000007 */
public static final int LBR_OCCURTYPE_AD_Reference_ID=1000007;
/** Liquidation = L */
public static final String LBR_OCCURTYPE_Liquidation = "L";
/** Occurrence = O */
public static final String LBR_OCCURTYPE_Occurrence = "O";
/** Set Occurrence Type.
@param lbr_OccurType Defines the Occurrence Type */
public void setlbr_OccurType (String lbr_OccurType)
{
if (lbr_OccurType == null) throw new IllegalArgumentException ("lbr_OccurType is mandatory");
if (lbr_OccurType.equals("L") || lbr_OccurType.equals("O"));
 else throw new IllegalArgumentException ("lbr_OccurType Invalid value - " + lbr_OccurType + " - Reference_ID=1000007 - L - O");
if (lbr_OccurType.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_OccurType = lbr_OccurType.substring(0,0);
}
set_Value ("lbr_OccurType", lbr_OccurType);
}
/** Get Occurrence Type.
@return Defines the Occurrence Type */
public String getlbr_OccurType() 
{
return (String)get_Value("lbr_OccurType");
}
}
