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
/** Generated Model for LBR_TaxIncludedList
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxIncludedList extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxIncludedList_ID id
@param trxName transaction
*/
public X_LBR_TaxIncludedList (Properties ctx, int LBR_TaxIncludedList_ID, String trxName)
{
super (ctx, LBR_TaxIncludedList_ID, trxName);
/** if (LBR_TaxIncludedList_ID == 0)
{
setC_Tax_ID (0);
setLBR_TaxIncludedList_ID (0);
setM_PriceList_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxIncludedList (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxIncludedList");

/** TableName=LBR_TaxIncludedList */
public static final String Table_Name="LBR_TaxIncludedList";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxIncludedList");

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
StringBuffer sb = new StringBuffer ("X_LBR_TaxIncludedList[").append(get_ID()).append("]");
return sb.toString();
}

/** C_Tax_ID AD_Reference_ID=158 */
public static final int C_TAX_ID_AD_Reference_ID=158;
/** Set Tax.
@param C_Tax_ID Tax identifier */
public void setC_Tax_ID (int C_Tax_ID)
{
if (C_Tax_ID < 1) throw new IllegalArgumentException ("C_Tax_ID is mandatory.");
set_Value ("C_Tax_ID", new Integer(C_Tax_ID));
}
/** Get Tax.
@return Tax identifier */
public int getC_Tax_ID() 
{
Integer ii = (Integer)get_Value("C_Tax_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax Included List.
@param LBR_TaxIncludedList_ID Defines the Tax Included List */
public void setLBR_TaxIncludedList_ID (int LBR_TaxIncludedList_ID)
{
if (LBR_TaxIncludedList_ID < 1) throw new IllegalArgumentException ("LBR_TaxIncludedList_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxIncludedList_ID", new Integer(LBR_TaxIncludedList_ID));
}
/** Get Tax Included List.
@return Defines the Tax Included List */
public int getLBR_TaxIncludedList_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxIncludedList_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Price List.
@param M_PriceList_ID Unique identifier of a Price List */
public void setM_PriceList_ID (int M_PriceList_ID)
{
if (M_PriceList_ID < 1) throw new IllegalArgumentException ("M_PriceList_ID is mandatory.");
set_ValueNoCheck ("M_PriceList_ID", new Integer(M_PriceList_ID));
}
/** Get Price List.
@return Unique identifier of a Price List */
public int getM_PriceList_ID() 
{
Integer ii = (Integer)get_Value("M_PriceList_ID");
if (ii == null) return 0;
return ii.intValue();
}
}
