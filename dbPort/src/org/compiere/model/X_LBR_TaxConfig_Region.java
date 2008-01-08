package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_TaxConfig_Region
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_TaxConfig_Region extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_TaxConfig_Region_ID id
@param trxName transaction
*/
public X_LBR_TaxConfig_Region (Properties ctx, int LBR_TaxConfig_Region_ID, String trxName)
{
super (ctx, LBR_TaxConfig_Region_ID, trxName);
/** if (LBR_TaxConfig_Region_ID == 0)
{
setC_Region_ID (0);
setLBR_TaxConfig_Region_ID (0);
setLBR_TaxConfiguration_ID (0);
setLBR_Tax_ID (0);
setTo_Region_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_TaxConfig_Region (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_TaxConfig_Region");

/** TableName=LBR_TaxConfig_Region */
public static final String Table_Name="LBR_TaxConfig_Region";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_TaxConfig_Region");

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
StringBuffer sb = new StringBuffer ("X_LBR_TaxConfig_Region[").append(get_ID()).append("]");
return sb.toString();
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
/** Set Region Exception.
@param LBR_TaxConfig_Region_ID Primary key table LBR_TaxConfig_Region */
public void setLBR_TaxConfig_Region_ID (int LBR_TaxConfig_Region_ID)
{
if (LBR_TaxConfig_Region_ID < 1) throw new IllegalArgumentException ("LBR_TaxConfig_Region_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxConfig_Region_ID", new Integer(LBR_TaxConfig_Region_ID));
}
/** Get Region Exception.
@return Primary key table LBR_TaxConfig_Region */
public int getLBR_TaxConfig_Region_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxConfig_Region_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax Configuration.
@param LBR_TaxConfiguration_ID Primary key table LBR_TaxConfiguration */
public void setLBR_TaxConfiguration_ID (int LBR_TaxConfiguration_ID)
{
if (LBR_TaxConfiguration_ID < 1) throw new IllegalArgumentException ("LBR_TaxConfiguration_ID is mandatory.");
set_ValueNoCheck ("LBR_TaxConfiguration_ID", new Integer(LBR_TaxConfiguration_ID));
}
/** Get Tax Configuration.
@return Primary key table LBR_TaxConfiguration */
public int getLBR_TaxConfiguration_ID() 
{
Integer ii = (Integer)get_Value("LBR_TaxConfiguration_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Brazilian Tax.
@param LBR_Tax_ID Primary key table LBR_Tax */
public void setLBR_Tax_ID (int LBR_Tax_ID)
{
if (LBR_Tax_ID < 1) throw new IllegalArgumentException ("LBR_Tax_ID is mandatory.");
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

/** To_Region_ID AD_Reference_ID=157 */
public static final int TO_REGION_ID_AD_Reference_ID=157;
/** Set To.
@param To_Region_ID Receiving Region */
public void setTo_Region_ID (int To_Region_ID)
{
if (To_Region_ID < 1) throw new IllegalArgumentException ("To_Region_ID is mandatory.");
set_Value ("To_Region_ID", new Integer(To_Region_ID));
}
/** Get To.
@return Receiving Region */
public int getTo_Region_ID() 
{
Integer ii = (Integer)get_Value("To_Region_ID");
if (ii == null) return 0;
return ii.intValue();
}
}
