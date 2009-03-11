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
/** Generated Model for LBR_ProcessLink
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_ProcessLink extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_ProcessLink_ID id
@param trxName transaction
*/
public X_LBR_ProcessLink (Properties ctx, int LBR_ProcessLink_ID, String trxName)
{
super (ctx, LBR_ProcessLink_ID, trxName);
/** if (LBR_ProcessLink_ID == 0)
{
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_ProcessLink (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_ProcessLink");

/** TableName=LBR_ProcessLink */
public static final String Table_Name="LBR_ProcessLink";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_ProcessLink");

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
StringBuffer sb = new StringBuffer ("X_LBR_ProcessLink[").append(get_ID()).append("]");
return sb.toString();
}
/** Set LBR_ProcessLink_ID.
@param LBR_ProcessLink_ID LBR_ProcessLink_ID */
public void setLBR_ProcessLink_ID (int LBR_ProcessLink_ID)
{
if (LBR_ProcessLink_ID <= 0) set_ValueNoCheck ("LBR_ProcessLink_ID", null);
 else 
set_ValueNoCheck ("LBR_ProcessLink_ID", new Integer(LBR_ProcessLink_ID));
}
/** Get LBR_ProcessLink_ID.
@return LBR_ProcessLink_ID */
public int getLBR_ProcessLink_ID() 
{
Integer ii = (Integer)get_Value("LBR_ProcessLink_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Attribute Set Instance.
@param M_AttributeSetInstance_ID Product Attribute Set Instance */
public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
{
if (M_AttributeSetInstance_ID <= 0) set_Value ("M_AttributeSetInstance_ID", null);
 else 
set_Value ("M_AttributeSetInstance_ID", new Integer(M_AttributeSetInstance_ID));
}
/** Get Attribute Set Instance.
@return Product Attribute Set Instance */
public int getM_AttributeSetInstance_ID() 
{
Integer ii = (Integer)get_Value("M_AttributeSetInstance_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_Product_ID AD_Reference_ID=161 */
public static final int M_PRODUCT_ID_AD_Reference_ID=161;
/** Set Product.
@param M_Product_ID Product, Service, Item */
public void setM_Product_ID (int M_Product_ID)
{
if (M_Product_ID <= 0) set_Value ("M_Product_ID", null);
 else 
set_Value ("M_Product_ID", new Integer(M_Product_ID));
}
/** Get Product.
@return Product, Service, Item */
public int getM_Product_ID() 
{
Integer ii = (Integer)get_Value("M_Product_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Movement Quantity.
@param MovementQty Quantity of a product moved. */
public void setMovementQty (BigDecimal MovementQty)
{
set_Value ("MovementQty", MovementQty);
}
/** Get Movement Quantity.
@return Quantity of a product moved. */
public BigDecimal getMovementQty() 
{
BigDecimal bd = (BigDecimal)get_Value("MovementQty");
if (bd == null) return Env.ZERO;
return bd;
}

/** MovementType AD_Reference_ID=189 */
public static final int MOVEMENTTYPE_AD_Reference_ID=189;
/** Production + = P+ */
public static final String MOVEMENTTYPE_ProductionPlus = "P+";
/** Production - = P- */
public static final String MOVEMENTTYPE_Production_ = "P-";
/** Customer Shipment = C- */
public static final String MOVEMENTTYPE_CustomerShipment = "C-";
/** Customer Returns = C+ */
public static final String MOVEMENTTYPE_CustomerReturns = "C+";
/** Vendor Receipts = V+ */
public static final String MOVEMENTTYPE_VendorReceipts = "V+";
/** Vendor Returns = V- */
public static final String MOVEMENTTYPE_VendorReturns = "V-";
/** Inventory Out = I- */
public static final String MOVEMENTTYPE_InventoryOut = "I-";
/** Inventory In = I+ */
public static final String MOVEMENTTYPE_InventoryIn = "I+";
/** Movement From = M- */
public static final String MOVEMENTTYPE_MovementFrom = "M-";
/** Movement To = M+ */
public static final String MOVEMENTTYPE_MovementTo = "M+";
/** Work Order + = W+ */
public static final String MOVEMENTTYPE_WorkOrderPlus = "W+";
/** Work Order - = W- */
public static final String MOVEMENTTYPE_WorkOrder_ = "W-";
/** Set Movement Type.
@param MovementType Method of moving the inventory */
public void setMovementType (String MovementType)
{
if (MovementType == null || MovementType.equals("P+") || MovementType.equals("P-") || MovementType.equals("C-") || MovementType.equals("C+") || MovementType.equals("V+") || MovementType.equals("V-") || MovementType.equals("I-") || MovementType.equals("I+") || MovementType.equals("M-") || MovementType.equals("M+") || MovementType.equals("W+") || MovementType.equals("W-"));
 else throw new IllegalArgumentException ("MovementType Invalid value - " + MovementType + " - Reference_ID=189 - P+ - P- - C- - C+ - V+ - V- - I- - I+ - M- - M+ - W+ - W-");
if (MovementType != null && MovementType.length() > 2)
{
log.warning("Length > 2 - truncated");
MovementType = MovementType.substring(0,1);
}
set_Value ("MovementType", MovementType);
}
/** Get Movement Type.
@return Method of moving the inventory */
public String getMovementType() 
{
return (String)get_Value("MovementType");
}

/** lbr_Dest_C_InvoiceLine_ID AD_Reference_ID=1000042 */
public static final int LBR_DEST_C_INVOICELINE_ID_AD_Reference_ID=1000042;
/** Set Destination Invoice Line.
@param lbr_Dest_C_InvoiceLine_ID Destination Invoice Line */
public void setlbr_Dest_C_InvoiceLine_ID (int lbr_Dest_C_InvoiceLine_ID)
{
if (lbr_Dest_C_InvoiceLine_ID <= 0) set_ValueNoCheck ("lbr_Dest_C_InvoiceLine_ID", null);
 else 
set_ValueNoCheck ("lbr_Dest_C_InvoiceLine_ID", new Integer(lbr_Dest_C_InvoiceLine_ID));
}
/** Get Destination Invoice Line.
@return Destination Invoice Line */
public int getlbr_Dest_C_InvoiceLine_ID() 
{
Integer ii = (Integer)get_Value("lbr_Dest_C_InvoiceLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** lbr_Ori_C_InvoiceLine_ID AD_Reference_ID=1000042 */
public static final int LBR_ORI_C_INVOICELINE_ID_AD_Reference_ID=1000042;
/** Set lbr_Ori_C_InvoiceLine_ID.
@param lbr_Ori_C_InvoiceLine_ID Origin Invoice Line */
public void setlbr_Ori_C_InvoiceLine_ID (int lbr_Ori_C_InvoiceLine_ID)
{
if (lbr_Ori_C_InvoiceLine_ID <= 0) set_ValueNoCheck ("lbr_Ori_C_InvoiceLine_ID", null);
 else 
set_ValueNoCheck ("lbr_Ori_C_InvoiceLine_ID", new Integer(lbr_Ori_C_InvoiceLine_ID));
}
/** Get lbr_Ori_C_InvoiceLine_ID.
@return Origin Invoice Line */
public int getlbr_Ori_C_InvoiceLine_ID() 
{
Integer ii = (Integer)get_Value("lbr_Ori_C_InvoiceLine_ID");
if (ii == null) return 0;
return ii.intValue();
}
}
