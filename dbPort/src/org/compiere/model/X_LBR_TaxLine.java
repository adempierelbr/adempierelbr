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
/** Generated Model for LBR_TaxLine
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxLine extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxLine_ID id
@param trxName transaction
*/
public X_LBR_TaxLine (Properties ctx, int LBR_TaxLine_ID, String trxName)
{
super (ctx, LBR_TaxLine_ID, trxName);
/** if (LBR_TaxLine_ID == 0)
{
setLBR_TaxLine_ID (0);
setLBR_TaxName_ID (0);
setLBR_Tax_ID (0);
setlbr_PostTax (true);	// 'Y'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxLine (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxLine");

/** TableName=LBR_TaxLine */
public static final String Table_Name="LBR_TaxLine";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxLine");

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
StringBuffer sb = new StringBuffer ("X_LBR_TaxLine[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Tax Line.
@param LBR_TaxLine_ID Primary key table LBR_TaxLine */
public void setLBR_TaxLine_ID (int LBR_TaxLine_ID)
{
if (LBR_TaxLine_ID < 1) throw new IllegalArgumentException ("LBR_TaxLine_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxLine_ID", new Integer(LBR_TaxLine_ID));
}
/** Get Tax Line.
@return Primary key table LBR_TaxLine */
public int getLBR_TaxLine_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_TaxName_ID AD_Reference_ID=1000023 */
public static final int LBR_TAXNAME_ID_AD_Reference_ID=1000023;
/** Set Tax Name.
@param LBR_TaxName_ID Primary key table LBR_TaxName */
public void setLBR_TaxName_ID (int LBR_TaxName_ID)
{
if (LBR_TaxName_ID < 1) throw new IllegalArgumentException ("LBR_TaxName_ID is mandatory.");
set_Value ("LBR_TaxName_ID", new Integer(LBR_TaxName_ID));
}
/** Get Tax Name.
@return Primary key table LBR_TaxName */
public int getLBR_TaxName_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxName_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Brazilian Tax.
@param LBR_Tax_ID Primary key table LBR_Tax */
public void setLBR_Tax_ID (int LBR_Tax_ID)
{
if (LBR_Tax_ID < 1) throw new IllegalArgumentException ("LBR_Tax_ID is mandatory.");
set_ValueNoCheck ("LBR_Tax_ID", new Integer(LBR_Tax_ID));
}
/** Get Brazilian Tax.
@return Primary key table LBR_Tax */
public int getLBR_Tax_ID() 
{
Integer ii = (Integer)get_Value("LBR_Tax_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Post Tax.
@param lbr_PostTax Indicates if the Tax should be Posted */
public void setlbr_PostTax (boolean lbr_PostTax)
{
set_Value ("lbr_PostTax", new Boolean(lbr_PostTax));
}
/** Get Post Tax.
@return Indicates if the Tax should be Posted */
public boolean islbr_PostTax() 
{
Object oo = get_Value("lbr_PostTax");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Tax Amount.
@param lbr_TaxAmt Defines the Tax Amount */
public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt)
{
set_Value ("lbr_TaxAmt", lbr_TaxAmt);
}
/** Get Tax Amount.
@return Defines the Tax Amount */
public BigDecimal getlbr_TaxAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TaxAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Tax Base.
@param lbr_TaxBase Indicates the Tax Base */
public void setlbr_TaxBase (BigDecimal lbr_TaxBase)
{
set_Value ("lbr_TaxBase", lbr_TaxBase);
}
/** Get Tax Base.
@return Indicates the Tax Base */
public BigDecimal getlbr_TaxBase() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TaxBase");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Tax Base Amount.
@param lbr_TaxBaseAmt Defines the Tax Base Amount */
public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt)
{
set_Value ("lbr_TaxBaseAmt", lbr_TaxBaseAmt);
}
/** Get Tax Base Amount.
@return Defines the Tax Base Amount */
public BigDecimal getlbr_TaxBaseAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TaxBaseAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Tax Rate.
@param lbr_TaxRate Indicates the Tax Rate */
public void setlbr_TaxRate (BigDecimal lbr_TaxRate)
{
set_Value ("lbr_TaxRate", lbr_TaxRate);
}
/** Get Tax Rate.
@return Indicates the Tax Rate */
public BigDecimal getlbr_TaxRate() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TaxRate");
if (bd == null) return Env.ZERO;
return bd;
}
}
