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
/** Generated Model for LBR_Bank
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_Bank extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_Bank_ID id
@param trxName transaction
*/
public X_LBR_Bank (Properties ctx, int LBR_Bank_ID, String trxName)
{
super (ctx, LBR_Bank_ID, trxName);
/** if (LBR_Bank_ID == 0)
{
setLBR_Bank_ID (0);
setName (null);
setRoutingNo (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_Bank (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_Bank");

/** TableName=LBR_Bank */
public static final String Table_Name="LBR_Bank";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_Bank");

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
StringBuffer sb = new StringBuffer ("X_LBR_Bank[").append(get_ID()).append("]");
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
/** Set jBoleto Number.
@param lbr_jBoletoNo Identifies the bank number at jBoleto */
public void setlbr_jBoletoNo (String lbr_jBoletoNo)
{
if (lbr_jBoletoNo != null && lbr_jBoletoNo.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_jBoletoNo = lbr_jBoletoNo.substring(0,2);
}
set_Value ("lbr_jBoletoNo", lbr_jBoletoNo);
}
/** Get jBoleto Number.
@return Identifies the bank number at jBoleto */
public String getlbr_jBoletoNo() 
{
return (String)get_Value("lbr_jBoletoNo");
}
/** Set Payment Location 1.
@param lbr_PaymentLocation1 Identifies the Payment Location 1 */
public void setlbr_PaymentLocation1 (String lbr_PaymentLocation1)
{
if (lbr_PaymentLocation1 != null && lbr_PaymentLocation1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_PaymentLocation1 = lbr_PaymentLocation1.substring(0,59);
}
set_Value ("lbr_PaymentLocation1", lbr_PaymentLocation1);
}
/** Get Payment Location 1.
@return Identifies the Payment Location 1 */
public String getlbr_PaymentLocation1() 
{
return (String)get_Value("lbr_PaymentLocation1");
}
/** Set Payment Location 2.
@param lbr_PaymentLocation2 Identifies the Payment Location 2 */
public void setlbr_PaymentLocation2 (String lbr_PaymentLocation2)
{
if (lbr_PaymentLocation2 != null && lbr_PaymentLocation2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_PaymentLocation2 = lbr_PaymentLocation2.substring(0,59);
}
set_Value ("lbr_PaymentLocation2", lbr_PaymentLocation2);
}
/** Get Payment Location 2.
@return Identifies the Payment Location 2 */
public String getlbr_PaymentLocation2() 
{
return (String)get_Value("lbr_PaymentLocation2");
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
/** Set Routing No.
@param RoutingNo Bank Routing Number */
public void setRoutingNo (String RoutingNo)
{
if (RoutingNo == null) throw new IllegalArgumentException ("RoutingNo is mandatory.");
if (RoutingNo.length() > 20)
{
log.warning("Length > 20 - truncated");
RoutingNo = RoutingNo.substring(0,19);
}
set_Value ("RoutingNo", RoutingNo);
}
/** Get Routing No.
@return Bank Routing Number */
public String getRoutingNo() 
{
return (String)get_Value("RoutingNo");
}
}
