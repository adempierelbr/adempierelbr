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

/** LBR_LegalMessage_ID AD_Reference_ID=1000030 */
public static final int LBR_LEGALMESSAGE_ID_AD_Reference_ID=1000030;
/** Set Legal Message.
@param LBR_LegalMessage_ID Defines the Legal Message */
public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
{
if (LBR_LegalMessage_ID <= 0) set_Value ("LBR_LegalMessage_ID", null);
 else 
set_Value ("LBR_LegalMessage_ID", new Integer(LBR_LegalMessage_ID));
}
/** Get Legal Message.
@return Defines the Legal Message */
public int getLBR_LegalMessage_ID() 
{
Integer ii = (Integer)get_Value("LBR_LegalMessage_ID");
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

/** lbr_TaxStatus AD_Reference_ID=1000029 */
public static final int LBR_TAXSTATUS_AD_Reference_ID=1000029;
/** 00 - Tributada integralmente = 00 */
public static final String LBR_TAXSTATUS_00_TributadaIntegralmente = "00";
/** 30 - Isenta ou não-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
public static final String LBR_TAXSTATUS_30_IsentaOuNão_TribEComCobrDoICMSPorSubTribut = "30";
/** 40 - Isenta = 40 */
public static final String LBR_TAXSTATUS_40_Isenta = "40";
/** 41 - Não-tributada = 41 */
public static final String LBR_TAXSTATUS_41_Não_Tributada = "41";
/** 50 - Suspensão = 50 */
public static final String LBR_TAXSTATUS_50_Suspensão = "50";
/** 51 - Diferimento  = 51 */
public static final String LBR_TAXSTATUS_51_Diferimento = "51";
/** 60 - ICMS cobrado anteriormente por substituição tributária = 60 */
public static final String LBR_TAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituiçãoTributária = "60";
/** 70 - Com red. de base de cálc. e cobr. do ICMS por Sub. Trib = 70 */
public static final String LBR_TAXSTATUS_70_ComRedDeBaseDeCálcECobrDoICMSPorSubTrib = "70";
/** 90 - Outras = 90 */
public static final String LBR_TAXSTATUS_90_Outras = "90";
/** 10 - Tributada e com cobrança do ICMS por Sub. Tributária = 10 */
public static final String LBR_TAXSTATUS_10_TributadaEComCobrançaDoICMSPorSubTributária = "10";
/** 20 - Com redução de base de cálculo = 20 */
public static final String LBR_TAXSTATUS_20_ComReduçãoDeBaseDeCálculo = "20";
/** Set Tax Status.
@param lbr_TaxStatus Defines the Tax Status */
public void setlbr_TaxStatus (String lbr_TaxStatus)
{
if (lbr_TaxStatus == null || lbr_TaxStatus.equals("00") || lbr_TaxStatus.equals("30") || lbr_TaxStatus.equals("40") || lbr_TaxStatus.equals("41") || lbr_TaxStatus.equals("50") || lbr_TaxStatus.equals("51") || lbr_TaxStatus.equals("60") || lbr_TaxStatus.equals("70") || lbr_TaxStatus.equals("90") || lbr_TaxStatus.equals("10") || lbr_TaxStatus.equals("20"));
 else throw new IllegalArgumentException ("lbr_TaxStatus Invalid value - " + lbr_TaxStatus + " - Reference_ID=1000029 - 00 - 30 - 40 - 41 - 50 - 51 - 60 - 70 - 90 - 10 - 20");
if (lbr_TaxStatus != null && lbr_TaxStatus.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_TaxStatus = lbr_TaxStatus.substring(0,1);
}
set_Value ("lbr_TaxStatus", lbr_TaxStatus);
}
/** Get Tax Status.
@return Defines the Tax Status */
public String getlbr_TaxStatus() 
{
return (String)get_Value("lbr_TaxStatus");
}
}
