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
/** Generated Model for LBR_DocType_Acct
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_DocType_Acct extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_DocType_Acct_ID id
@param trxName transaction
*/
public X_LBR_DocType_Acct (Properties ctx, int LBR_DocType_Acct_ID, String trxName)
{
super (ctx, LBR_DocType_Acct_ID, trxName);
/** if (LBR_DocType_Acct_ID == 0)
{
setC_AcctSchema_ID (0);
setC_DocType_ID (0);
setLBR_DocType_Acct_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_DocType_Acct (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_DocType_Acct");

/** TableName=LBR_DocType_Acct */
public static final String Table_Name="LBR_DocType_Acct";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_DocType_Acct");

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
StringBuffer sb = new StringBuffer ("X_LBR_DocType_Acct[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Accounting Schema.
@param C_AcctSchema_ID Rules for accounting */
public void setC_AcctSchema_ID (int C_AcctSchema_ID)
{
if (C_AcctSchema_ID < 1) throw new IllegalArgumentException ("C_AcctSchema_ID is mandatory.");
set_Value ("C_AcctSchema_ID", new Integer(C_AcctSchema_ID));
}
/** Get Accounting Schema.
@return Rules for accounting */
public int getC_AcctSchema_ID() 
{
Integer ii = (Integer)get_Value("C_AcctSchema_ID");
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
/** Set DocumentType Accounting.
@param LBR_DocType_Acct_ID Primary key table LBR_DocType_Acct */
public void setLBR_DocType_Acct_ID (int LBR_DocType_Acct_ID)
{
if (LBR_DocType_Acct_ID < 1) throw new IllegalArgumentException ("LBR_DocType_Acct_ID is mandatory.");
set_ValueNoCheck ("LBR_DocType_Acct_ID", new Integer(LBR_DocType_Acct_ID));
}
/** Get DocumentType Accounting.
@return Primary key table LBR_DocType_Acct */
public int getLBR_DocType_Acct_ID() 
{
Integer ii = (Integer)get_Value("LBR_DocType_Acct_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Credit Account.
@param lbr_Acct_CR Defines the Credit Account */
public void setlbr_Acct_CR (int lbr_Acct_CR)
{
set_Value ("lbr_Acct_CR", new Integer(lbr_Acct_CR));
}
/** Get Credit Account.
@return Defines the Credit Account */
public int getlbr_Acct_CR() 
{
Integer ii = (Integer)get_Value("lbr_Acct_CR");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Debit Account.
@param lbr_Acct_DR Defines the Debit Account */
public void setlbr_Acct_DR (int lbr_Acct_DR)
{
set_Value ("lbr_Acct_DR", new Integer(lbr_Acct_DR));
}
/** Get Debit Account.
@return Defines the Debit Account */
public int getlbr_Acct_DR() 
{
Integer ii = (Integer)get_Value("lbr_Acct_DR");
if (ii == null) return 0;
return ii.intValue();
}
}
