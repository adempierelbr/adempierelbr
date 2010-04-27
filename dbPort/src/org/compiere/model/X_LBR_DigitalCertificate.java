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
/** Generated Model for LBR_DigitalCertificate
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_DigitalCertificate extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_DigitalCertificate_ID id
@param trxName transaction
*/
public X_LBR_DigitalCertificate (Properties ctx, int LBR_DigitalCertificate_ID, String trxName)
{
super (ctx, LBR_DigitalCertificate_ID, trxName);
/** if (LBR_DigitalCertificate_ID == 0)
{
setLBR_DigitalCertificate_ID (0);
setName (null);
setValidFrom (new Timestamp(System.currentTimeMillis()));	// @#Date@
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_DigitalCertificate (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_DigitalCertificate");

/** TableName=LBR_DigitalCertificate */
public static final String Table_Name="LBR_DigitalCertificate";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_DigitalCertificate");

protected BigDecimal accessLevel = new BigDecimal(6);
/** AccessLevel
@return 6 - System - Client 
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
StringBuffer sb = new StringBuffer ("X_LBR_DigitalCertificate[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Alias.
@param Alias Defines an alternate method of indicating an account combination. */
public void setAlias (String Alias)
{
if (Alias != null && Alias.length() > 60)
{
log.warning("Length > 60 - truncated");
Alias = Alias.substring(0,59);
}
set_Value ("Alias", Alias);
}
/** Get Alias.
@return Defines an alternate method of indicating an account combination. */
public String getAlias() 
{
return (String)get_Value("Alias");
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
/** Set Digital Certificate.
@param LBR_DigitalCertificate_ID Digital Certificate */
public void setLBR_DigitalCertificate_ID (int LBR_DigitalCertificate_ID)
{
if (LBR_DigitalCertificate_ID < 1) throw new IllegalArgumentException ("LBR_DigitalCertificate_ID is mandatory.");
set_ValueNoCheck ("LBR_DigitalCertificate_ID", new Integer(LBR_DigitalCertificate_ID));
}
/** Get Digital Certificate.
@return Digital Certificate */
public int getLBR_DigitalCertificate_ID() 
{
Integer ii = (Integer)get_Value("LBR_DigitalCertificate_ID");
if (ii == null) return 0;
return ii.intValue();
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
/** Get Record ID/ColumnName
@return ID/ColumnName pair */
public KeyNamePair getKeyNamePair() 
{
return new KeyNamePair(get_ID(), getName());
}
/** Set Password.
@param Password Password of any length (case sensitive) */
public void setPassword (String Password)
{
if (Password != null && Password.length() > 60)
{
log.warning("Length > 60 - truncated");
Password = Password.substring(0,59);
}
set_Value ("Password", Password);
}
/** Get Password.
@return Password of any length (case sensitive) */
public String getPassword() 
{
return (String)get_Value("Password");
}
/** Set Valid from.
@param ValidFrom Valid from including this date (first day) */
public void setValidFrom (Timestamp ValidFrom)
{
if (ValidFrom == null) throw new IllegalArgumentException ("ValidFrom is mandatory.");
set_Value ("ValidFrom", ValidFrom);
}
/** Get Valid from.
@return Valid from including this date (first day) */
public Timestamp getValidFrom() 
{
return (Timestamp)get_Value("ValidFrom");
}
/** Set Valid to.
@param ValidTo Valid to including this date (last day) */
public void setValidTo (Timestamp ValidTo)
{
set_Value ("ValidTo", ValidTo);
}
/** Get Valid to.
@return Valid to including this date (last day) */
public Timestamp getValidTo() 
{
return (Timestamp)get_Value("ValidTo");
}

/** lbr_CertType AD_Reference_ID=1100000 */
public static final int LBR_CERTTYPE_AD_Reference_ID=1100000;
/** Java Key Store = JKS */
public static final String LBR_CERTTYPE_JavaKeyStore = "JKS";
/** PKCS#12 = P11 */
public static final String LBR_CERTTYPE_PKCS11 = "P11";
/** PKCS#12 = P12 */
public static final String LBR_CERTTYPE_PKCS12 = "P12";
/** Set Certificate Type.
@param lbr_CertType Define the type of Digital Certificate */
public void setlbr_CertType (String lbr_CertType)
{
if (lbr_CertType == null || lbr_CertType.equals("JKS") || lbr_CertType.equals("P12"));
 else throw new IllegalArgumentException ("lbr_CertType Invalid value - " + lbr_CertType + " - Reference_ID=1100000 - JKS - P12");
if (lbr_CertType != null && lbr_CertType.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_CertType = lbr_CertType.substring(0,2);
}
set_Value ("lbr_CertType", lbr_CertType);
}
/** Get Certificate Type.
@return Define the type of Digital Certificate */
public String getlbr_CertType() 
{
return (String)get_Value("lbr_CertType");
}
}
