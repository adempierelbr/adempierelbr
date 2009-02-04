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
/** Generated Model for LBR_OtherNFLine
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_OtherNFLine extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_OtherNFLine_ID id
@param trxName transaction
*/
public X_LBR_OtherNFLine (Properties ctx, int LBR_OtherNFLine_ID, String trxName)
{
super (ctx, LBR_OtherNFLine_ID, trxName);
/** if (LBR_OtherNFLine_ID == 0)
{
setLBR_OtherNFLine_ID (0);
setLBR_OtherNF_ID (0);
setM_Locator_ID (0);	// @M_Locator_ID@
setM_Product_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_OtherNFLine (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_OtherNFLine");

/** TableName=LBR_OtherNFLine */
public static final String Table_Name="LBR_OtherNFLine";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_OtherNFLine");

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
StringBuffer sb = new StringBuffer ("X_LBR_OtherNFLine[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Invoice Line.
@param C_InvoiceLine_ID Invoice Detail Line */
public void setC_InvoiceLine_ID (int C_InvoiceLine_ID)
{
if (C_InvoiceLine_ID <= 0) set_ValueNoCheck ("C_InvoiceLine_ID", null);
 else 
set_ValueNoCheck ("C_InvoiceLine_ID", new Integer(C_InvoiceLine_ID));
}
/** Get Invoice Line.
@return Invoice Detail Line */
public int getC_InvoiceLine_ID() 
{
Integer ii = (Integer)get_Value("C_InvoiceLine_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set UOM.
@param C_UOM_ID Unit of Measure */
public void setC_UOM_ID (int C_UOM_ID)
{
if (C_UOM_ID <= 0) set_ValueNoCheck ("C_UOM_ID", null);
 else 
set_ValueNoCheck ("C_UOM_ID", new Integer(C_UOM_ID));
}
/** Get UOM.
@return Unit of Measure */
public int getC_UOM_ID() 
{
Integer ii = (Integer)get_Value("C_UOM_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Document No.
@param DocumentNo Document sequence number of the document */
public void setDocumentNo (String DocumentNo)
{
if (DocumentNo != null && DocumentNo.length() > 30)
{
log.warning("Length > 30 - truncated");
DocumentNo = DocumentNo.substring(0,29);
}
set_ValueNoCheck ("DocumentNo", DocumentNo);
}
/** Get Document No.
@return Document sequence number of the document */
public String getDocumentNo() 
{
return (String)get_Value("DocumentNo");
}
/** Set Other NF Line.
@param LBR_OtherNFLine_ID Other NF Line */
public void setLBR_OtherNFLine_ID (int LBR_OtherNFLine_ID)
{
if (LBR_OtherNFLine_ID < 1) throw new IllegalArgumentException ("LBR_OtherNFLine_ID is mandatory.");
set_ValueNoCheck ("LBR_OtherNFLine_ID", new Integer(LBR_OtherNFLine_ID));
}
/** Get Other NF Line.
@return Other NF Line */
public int getLBR_OtherNFLine_ID() 
{
Integer ii = (Integer)get_Value("LBR_OtherNFLine_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Other NF.
@param LBR_OtherNF_ID Other NF */
public void setLBR_OtherNF_ID (int LBR_OtherNF_ID)
{
if (LBR_OtherNF_ID < 1) throw new IllegalArgumentException ("LBR_OtherNF_ID is mandatory.");
set_ValueNoCheck ("LBR_OtherNF_ID", new Integer(LBR_OtherNF_ID));
}
/** Get Other NF.
@return Other NF */
public int getLBR_OtherNF_ID() 
{
Integer ii = (Integer)get_Value("LBR_OtherNF_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Get Record ID/ColumnName
@return ID/ColumnName pair */
public KeyNamePair getKeyNamePair() 
{
return new KeyNamePair(get_ID(), String.valueOf(getLBR_OtherNF_ID()));
}
/** Set Locator.
@param M_Locator_ID Warehouse Locator */
public void setM_Locator_ID (int M_Locator_ID)
{
if (M_Locator_ID < 1) throw new IllegalArgumentException ("M_Locator_ID is mandatory.");
set_Value ("M_Locator_ID", new Integer(M_Locator_ID));
}
/** Get Locator.
@return Warehouse Locator */
public int getM_Locator_ID() 
{
Integer ii = (Integer)get_Value("M_Locator_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_Product_ID AD_Reference_ID=162 */
public static final int M_PRODUCT_ID_AD_Reference_ID=162;
/** Set Product.
@param M_Product_ID Product, Service, Item */
public void setM_Product_ID (int M_Product_ID)
{
if (M_Product_ID < 1) throw new IllegalArgumentException ("M_Product_ID is mandatory.");
set_ValueNoCheck ("M_Product_ID", new Integer(M_Product_ID));
}
/** Get Product.
@return Product, Service, Item */
public int getM_Product_ID() 
{
Integer ii = (Integer)get_Value("M_Product_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Processed.
@param Processed The document has been processed */
public void setProcessed (boolean Processed)
{
set_ValueNoCheck ("Processed", new Boolean(Processed));
}
/** Get Processed.
@return The document has been processed */
public boolean isProcessed() 
{
Object oo = get_Value("Processed");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Quantity.
@param Qty Quantity */
public void setQty (BigDecimal Qty)
{
set_Value ("Qty", Qty);
}
/** Get Quantity.
@return Quantity */
public BigDecimal getQty() 
{
BigDecimal bd = (BigDecimal)get_Value("Qty");
if (bd == null) return Env.ZERO;
return bd;
}
}
