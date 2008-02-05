package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_NCM
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NCM extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NCM_ID id
@param trxName transaction
*/
public X_LBR_NCM (Properties ctx, int LBR_NCM_ID, String trxName)
{
super (ctx, LBR_NCM_ID, trxName);
/** if (LBR_NCM_ID == 0)
{
setLBR_NCM_ID (0);
setValue (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NCM (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NCM");

/** TableName=LBR_NCM */
public static final String Table_Name="LBR_NCM";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NCM");

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
StringBuffer sb = new StringBuffer ("X_LBR_NCM[").append(get_ID()).append("]");
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

/** LBR_LegalMessage_ID AD_Reference_ID=1000033 */
public static final int LBR_LEGALMESSAGE_ID_AD_Reference_ID=1000033;
/** Set Legal Message.
@param LBR_LegalMessage_ID Primary key table LBR_LegalMessage */
public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
{
if (LBR_LegalMessage_ID <= 0) set_Value ("LBR_LegalMessage_ID", null);
 else 
set_Value ("LBR_LegalMessage_ID", new Integer(LBR_LegalMessage_ID));
}
/** Get Legal Message.
@return Primary key table LBR_LegalMessage */
public int getLBR_LegalMessage_ID() 
{
Integer ii = (Integer)get_Value("LBR_LegalMessage_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set NCM.
@param LBR_NCM_ID Primary key table LBR_NCM */
public void setLBR_NCM_ID (int LBR_NCM_ID)
{
if (LBR_NCM_ID < 1) throw new IllegalArgumentException ("LBR_NCM_ID is mandatory.");
set_ValueNoCheck ("LBR_NCM_ID", new Integer(LBR_NCM_ID));
}
/** Get NCM.
@return Primary key table LBR_NCM */
public int getLBR_NCM_ID() 
{
Integer ii = (Integer)get_Value("LBR_NCM_ID");
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

/** lbr_TaxStatus_Taxing AD_Reference_ID=1000032 */
public static final int LBR_TAXSTATUS_TAXING_AD_Reference_ID=1000032;
/** Integrally Taxed = 00 */
public static final String LBR_TAXSTATUS_TAXING_IntegrallyTaxed = "00";
/** Taxed and with ICMS charged throught Substituição Tributária = 10 */
public static final String LBR_TAXSTATUS_TAXING_TaxedAndWithICMSChargedThroughtSubstituiçãoTributária = "10";
/** Base calc. reduction = 20 */
public static final String LBR_TAXSTATUS_TAXING_BaseCalcReduction = "20";
/** Exempt or not Taxed with ICMS charged throught Subst. Tribut = 30 */
public static final String LBR_TAXSTATUS_TAXING_ExemptOrNotTaxedWithICMSChargedThroughtSubstTribut = "30";
/** Exempt = 40 */
public static final String LBR_TAXSTATUS_TAXING_Exempt = "40";
/** Not Taxed = 41 */
public static final String LBR_TAXSTATUS_TAXING_NotTaxed = "41";
/** Suspended = 50 */
public static final String LBR_TAXSTATUS_TAXING_Suspended = "50";
/** Deferred = 51 */
public static final String LBR_TAXSTATUS_TAXING_Deferred = "51";
/** ICMS already charged by Substituição Tributária = 60 */
public static final String LBR_TAXSTATUS_TAXING_ICMSAlreadyChargedBySubstituiçãoTributária = "60";
/** Base calc. reduction and ICMS charged throught Subst. Tribut = 70 */
public static final String LBR_TAXSTATUS_TAXING_BaseCalcReductionAndICMSChargedThroughtSubstTribut = "70";
/** Other = 90 */
public static final String LBR_TAXSTATUS_TAXING_Other = "90";
/** Set Tax Status - Taxing.
@param lbr_TaxStatus_Taxing Tax Status - Taxing */
public void setlbr_TaxStatus_Taxing (String lbr_TaxStatus_Taxing)
{
if (lbr_TaxStatus_Taxing == null || lbr_TaxStatus_Taxing.equals("00") || lbr_TaxStatus_Taxing.equals("10") || lbr_TaxStatus_Taxing.equals("20") || lbr_TaxStatus_Taxing.equals("30") || lbr_TaxStatus_Taxing.equals("40") || lbr_TaxStatus_Taxing.equals("41") || lbr_TaxStatus_Taxing.equals("50") || lbr_TaxStatus_Taxing.equals("51") || lbr_TaxStatus_Taxing.equals("60") || lbr_TaxStatus_Taxing.equals("70") || lbr_TaxStatus_Taxing.equals("90"));
 else throw new IllegalArgumentException ("lbr_TaxStatus_Taxing Invalid value - " + lbr_TaxStatus_Taxing + " - Reference_ID=1000032 - 00 - 10 - 20 - 30 - 40 - 41 - 50 - 51 - 60 - 70 - 90");
if (lbr_TaxStatus_Taxing != null && lbr_TaxStatus_Taxing.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_TaxStatus_Taxing = lbr_TaxStatus_Taxing.substring(0,1);
}
set_Value ("lbr_TaxStatus_Taxing", lbr_TaxStatus_Taxing);
}
/** Get Tax Status - Taxing.
@return Tax Status - Taxing */
public String getlbr_TaxStatus_Taxing() 
{
return (String)get_Value("lbr_TaxStatus_Taxing");
}
/** Set Search Key.
@param Value Search key for the record in the format required - must be unique */
public void setValue (String Value)
{
if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
if (Value.length() > 60)
{
log.warning("Length > 60 - truncated");
Value = Value.substring(0,59);
}
set_Value ("Value", Value);
}
/** Get Search Key.
@return Search key for the record in the format required - must be unique */
public String getValue() 
{
return (String)get_Value("Value");
}
}
