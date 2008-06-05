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
/** Generated Model for LBR_NFTax
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NFTax extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NFTax_ID id
@param trxName transaction
*/
public X_LBR_NFTax (Properties ctx, int LBR_NFTax_ID, String trxName)
{
super (ctx, LBR_NFTax_ID, trxName);
/** if (LBR_NFTax_ID == 0)
{
setLBR_NFTax_ID (0);
setLBR_NotaFiscal_ID (0);
setLBR_TaxGroup_ID (0);
setlbr_TaxAmt (Env.ZERO);
setlbr_TaxBaseAmt (Env.ZERO);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NFTax (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NFTax");

/** TableName=LBR_NFTax */
public static final String Table_Name="LBR_NFTax";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NFTax");

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
StringBuffer sb = new StringBuffer ("X_LBR_NFTax[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Nota Fiscal Tax.
@param LBR_NFTax_ID Defines the Nota Fiscal Tax */
public void setLBR_NFTax_ID (int LBR_NFTax_ID)
{
if (LBR_NFTax_ID < 1) throw new IllegalArgumentException ("LBR_NFTax_ID is mandatory.");
set_ValueNoCheck ("LBR_NFTax_ID", new Integer(LBR_NFTax_ID));
}
/** Get Nota Fiscal Tax.
@return Defines the Nota Fiscal Tax */
public int getLBR_NFTax_ID() 
{
Integer ii = (Integer)get_Value("LBR_NFTax_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_NotaFiscal_ID AD_Reference_ID=1000026 */
public static final int LBR_NOTAFISCAL_ID_AD_Reference_ID=1000026;
/** Set Nota Fiscal.
@param LBR_NotaFiscal_ID Primary key table LBR_NotaFiscal */
public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
{
if (LBR_NotaFiscal_ID < 1) throw new IllegalArgumentException ("LBR_NotaFiscal_ID is mandatory.");
set_Value ("LBR_NotaFiscal_ID", new Integer(LBR_NotaFiscal_ID));
}
/** Get Nota Fiscal.
@return Primary key table LBR_NotaFiscal */
public int getLBR_NotaFiscal_ID() 
{
Integer ii = (Integer)get_Value("LBR_NotaFiscal_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_TaxGroup_ID AD_Reference_ID=1000032 */
public static final int LBR_TAXGROUP_ID_AD_Reference_ID=1000032;
/** Set Tax Group.
@param LBR_TaxGroup_ID Defines the Tax Group */
public void setLBR_TaxGroup_ID (int LBR_TaxGroup_ID)
{
if (LBR_TaxGroup_ID < 1) throw new IllegalArgumentException ("LBR_TaxGroup_ID is mandatory.");
set_Value ("LBR_TaxGroup_ID", new Integer(LBR_TaxGroup_ID));
}
/** Get Tax Group.
@return Defines the Tax Group */
public int getLBR_TaxGroup_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxGroup_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax Amount.
@param lbr_TaxAmt Defines the Tax Amount */
public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt)
{
if (lbr_TaxAmt == null) throw new IllegalArgumentException ("lbr_TaxAmt is mandatory.");
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
/** Set Tax Base Amount.
@param lbr_TaxBaseAmt Defines the Tax Base Amount */
public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt)
{
if (lbr_TaxBaseAmt == null) throw new IllegalArgumentException ("lbr_TaxBaseAmt is mandatory.");
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
}
