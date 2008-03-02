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
/** Generated Model for LBR_ISSMatrix
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_ISSMatrix extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_ISSMatrix_ID id
@param trxName transaction
*/
public X_LBR_ISSMatrix (Properties ctx, int LBR_ISSMatrix_ID, String trxName)
{
super (ctx, LBR_ISSMatrix_ID, trxName);
/** if (LBR_ISSMatrix_ID == 0)
{
setC_City_ID (0);
setC_Region_ID (0);
setLBR_ISSMatrix_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_ISSMatrix (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_ISSMatrix");

/** TableName=LBR_ISSMatrix */
public static final String Table_Name="LBR_ISSMatrix";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_ISSMatrix");

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
StringBuffer sb = new StringBuffer ("X_LBR_ISSMatrix[").append(get_ID()).append("]");
return sb.toString();
}

/** C_City_ID AD_Reference_ID=1000034 */
public static final int C_CITY_ID_AD_Reference_ID=1000034;
/** Set City.
@param C_City_ID City */
public void setC_City_ID (int C_City_ID)
{
if (C_City_ID < 1) throw new IllegalArgumentException ("C_City_ID is mandatory.");
set_Value ("C_City_ID", new Integer(C_City_ID));
}
/** Get City.
@return City */
public int getC_City_ID() 
{
Integer ii = (Integer)get_Value("C_City_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_Region_ID AD_Reference_ID=157 */
public static final int C_REGION_ID_AD_Reference_ID=157;
/** Set Region.
@param C_Region_ID Identifies a geographical Region */
public void setC_Region_ID (int C_Region_ID)
{
if (C_Region_ID < 1) throw new IllegalArgumentException ("C_Region_ID is mandatory.");
set_Value ("C_Region_ID", new Integer(C_Region_ID));
}
/** Get Region.
@return Identifies a geographical Region */
public int getC_Region_ID() 
{
Integer ii = (Integer)get_Value("C_Region_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set ISS Matrix.
@param LBR_ISSMatrix_ID Defines the ISS Matrix */
public void setLBR_ISSMatrix_ID (int LBR_ISSMatrix_ID)
{
if (LBR_ISSMatrix_ID < 1) throw new IllegalArgumentException ("LBR_ISSMatrix_ID is mandatory.");
set_ValueNoCheck ("LBR_ISSMatrix_ID", new Integer(LBR_ISSMatrix_ID));
}
/** Get ISS Matrix.
@return Defines the ISS Matrix */
public int getLBR_ISSMatrix_ID() 
{
Integer ii = (Integer)get_Value("LBR_ISSMatrix_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Brazilian Tax.
@param LBR_Tax_ID Primary key table LBR_Tax */
public void setLBR_Tax_ID (int LBR_Tax_ID)
{
if (LBR_Tax_ID <= 0) set_Value ("LBR_Tax_ID", null);
 else 
set_Value ("LBR_Tax_ID", new Integer(LBR_Tax_ID));
}
/** Get Brazilian Tax.
@return Primary key table LBR_Tax */
public int getLBR_Tax_ID() 
{
Integer ii = (Integer)get_Value("LBR_Tax_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_Product_ID AD_Reference_ID=162 */
public static final int M_PRODUCT_ID_AD_Reference_ID=162;
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
}