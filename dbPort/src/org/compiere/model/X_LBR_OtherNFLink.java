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
/** Generated Model for LBR_OtherNFLink
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_OtherNFLink extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_OtherNFLink_ID id
@param trxName transaction
*/
public X_LBR_OtherNFLink (Properties ctx, int LBR_OtherNFLink_ID, String trxName)
{
super (ctx, LBR_OtherNFLink_ID, trxName);
/** if (LBR_OtherNFLink_ID == 0)
{
setC_DocTypeTarget_ID (0);
setC_DocType_ID (0);
setLBR_OtherNFLink_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_OtherNFLink (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_OtherNFLink");

/** TableName=LBR_OtherNFLink */
public static final String Table_Name="LBR_OtherNFLink";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_OtherNFLink");

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
StringBuffer sb = new StringBuffer ("X_LBR_OtherNFLink[").append(get_ID()).append("]");
return sb.toString();
}

/** C_DocTypeTarget_ID AD_Reference_ID=170 */
public static final int C_DOCTYPETARGET_ID_AD_Reference_ID=170;
/** Set Target Document Type.
@param C_DocTypeTarget_ID Target document type for conversing documents */
public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
{
if (C_DocTypeTarget_ID < 1) throw new IllegalArgumentException ("C_DocTypeTarget_ID is mandatory.");
set_Value ("C_DocTypeTarget_ID", new Integer(C_DocTypeTarget_ID));
}
/** Get Target Document Type.
@return Target document type for conversing documents */
public int getC_DocTypeTarget_ID() 
{
Integer ii = (Integer)get_Value("C_DocTypeTarget_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Document Type.
@param C_DocType_ID Document type or rules */
public void setC_DocType_ID (int C_DocType_ID)
{
if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
set_ValueNoCheck ("C_DocType_ID", new Integer(C_DocType_ID));
}
/** Get Document Type.
@return Document type or rules */
public int getC_DocType_ID() 
{
Integer ii = (Integer)get_Value("C_DocType_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Other NF Link.
@param LBR_OtherNFLink_ID Identifies the Other NF Link */
public void setLBR_OtherNFLink_ID (int LBR_OtherNFLink_ID)
{
if (LBR_OtherNFLink_ID < 1) throw new IllegalArgumentException ("LBR_OtherNFLink_ID is mandatory.");
set_ValueNoCheck ("LBR_OtherNFLink_ID", new Integer(LBR_OtherNFLink_ID));
}
/** Get Other NF Link.
@return Identifies the Other NF Link */
public int getLBR_OtherNFLink_ID() 
{
Integer ii = (Integer)get_Value("LBR_OtherNFLink_ID");
if (ii == null) return 0;
return ii.intValue();
}
}
