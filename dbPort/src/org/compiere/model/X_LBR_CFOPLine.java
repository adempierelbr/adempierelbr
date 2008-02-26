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
/** Generated Model for LBR_CFOPLine
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_CFOPLine extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_CFOPLine_ID id
@param trxName transaction
*/
public X_LBR_CFOPLine (Properties ctx, int LBR_CFOPLine_ID, String trxName)
{
super (ctx, LBR_CFOPLine_ID, trxName);
/** if (LBR_CFOPLine_ID == 0)
{
setC_DocType_ID (0);
setLBR_CFOPLine_ID (0);
setLBR_CFOP_ID (0);
setlbr_DestionationType (null);
setlbr_IsManufactured (null);	// 'N'
setlbr_IsSubTributaria (null);	// 'N'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_CFOPLine (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_CFOPLine");

/** TableName=LBR_CFOPLine */
public static final String Table_Name="LBR_CFOPLine";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_CFOPLine");

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
StringBuffer sb = new StringBuffer ("X_LBR_CFOPLine[").append(get_ID()).append("]");
return sb.toString();
}

/** C_DocType_ID AD_Reference_ID=170 */
public static final int C_DOCTYPE_ID_AD_Reference_ID=170;
/** Set Document Type.
@param C_DocType_ID Document type or rules */
public void setC_DocType_ID (int C_DocType_ID)
{
if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
set_Value ("C_DocType_ID", new Integer(C_DocType_ID));
}
/** Get Document Type.
@return Document type or rules */
public int getC_DocType_ID() 
{
Integer ii = (Integer)get_Value("C_DocType_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_BPartnerCategory_ID AD_Reference_ID=1000015 */
public static final int LBR_BPARTNERCATEGORY_ID_AD_Reference_ID=1000015;
/** Set BPartner Category.
@param LBR_BPartnerCategory_ID Primary key table LBR_BPartnerCategory */
public void setLBR_BPartnerCategory_ID (int LBR_BPartnerCategory_ID)
{
if (LBR_BPartnerCategory_ID <= 0) set_Value ("LBR_BPartnerCategory_ID", null);
 else 
set_Value ("LBR_BPartnerCategory_ID", new Integer(LBR_BPartnerCategory_ID));
}
/** Get BPartner Category.
@return Primary key table LBR_BPartnerCategory */
public int getLBR_BPartnerCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_BPartnerCategory_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set CFOP Line.
@param LBR_CFOPLine_ID Primary key table LBR_CFOPLine */
public void setLBR_CFOPLine_ID (int LBR_CFOPLine_ID)
{
if (LBR_CFOPLine_ID < 1) throw new IllegalArgumentException ("LBR_CFOPLine_ID is mandatory.");
set_ValueNoCheck ("LBR_CFOPLine_ID", new Integer(LBR_CFOPLine_ID));
}
/** Get CFOP Line.
@return Primary key table LBR_CFOPLine */
public int getLBR_CFOPLine_ID() 
{
Integer ii = (Integer)get_Value("LBR_CFOPLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_CFOP_ID AD_Reference_ID=1000016 */
public static final int LBR_CFOP_ID_AD_Reference_ID=1000016;
/** Set CFOP.
@param LBR_CFOP_ID Primary key table LBR_CFOP */
public void setLBR_CFOP_ID (int LBR_CFOP_ID)
{
if (LBR_CFOP_ID < 1) throw new IllegalArgumentException ("LBR_CFOP_ID is mandatory.");
set_ValueNoCheck ("LBR_CFOP_ID", new Integer(LBR_CFOP_ID));
}
/** Get CFOP.
@return Primary key table LBR_CFOP */
public int getLBR_CFOP_ID() 
{
Integer ii = (Integer)get_Value("LBR_CFOP_ID");
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

/** LBR_ProductCategory_ID AD_Reference_ID=1000013 */
public static final int LBR_PRODUCTCATEGORY_ID_AD_Reference_ID=1000013;
/** Set Product Category.
@param LBR_ProductCategory_ID Primary key table LBR_ProductCategory */
public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID)
{
if (LBR_ProductCategory_ID <= 0) set_Value ("LBR_ProductCategory_ID", null);
 else 
set_Value ("LBR_ProductCategory_ID", new Integer(LBR_ProductCategory_ID));
}
/** Get Product Category.
@return Primary key table LBR_ProductCategory */
public int getLBR_ProductCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_ProductCategory_ID");
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

/** lbr_DestionationType AD_Reference_ID=1000012 */
public static final int LBR_DESTIONATIONTYPE_AD_Reference_ID=1000012;
/** Estados Diferentes = 1 */
public static final String LBR_DESTIONATIONTYPE_EstadosDiferentes = "1";
/** Estrangeiro = 2 */
public static final String LBR_DESTIONATIONTYPE_Estrangeiro = "2";
/** Zona Franca = 3 */
public static final String LBR_DESTIONATIONTYPE_ZonaFranca = "3";
/** Estados Identicos = 0 */
public static final String LBR_DESTIONATIONTYPE_EstadosIdenticos = "0";
/** Set Destination Type.
@param lbr_DestionationType Defines the Destination Type */
public void setlbr_DestionationType (String lbr_DestionationType)
{
if (lbr_DestionationType == null) throw new IllegalArgumentException ("lbr_DestionationType is mandatory");
if (lbr_DestionationType.equals("1") || lbr_DestionationType.equals("2") || lbr_DestionationType.equals("3") || lbr_DestionationType.equals("0"));
 else throw new IllegalArgumentException ("lbr_DestionationType Invalid value - " + lbr_DestionationType + " - Reference_ID=1000012 - 1 - 2 - 3 - 0");
if (lbr_DestionationType.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_DestionationType = lbr_DestionationType.substring(0,0);
}
set_Value ("lbr_DestionationType", lbr_DestionationType);
}
/** Get Destination Type.
@return Defines the Destination Type */
public String getlbr_DestionationType() 
{
return (String)get_Value("lbr_DestionationType");
}

/** lbr_IsManufactured AD_Reference_ID=1000027 */
public static final int LBR_ISMANUFACTURED_AD_Reference_ID=1000027;
/** Yes = Y */
public static final String LBR_ISMANUFACTURED_Yes = "Y";
/** No = N */
public static final String LBR_ISMANUFACTURED_No = "N";
/** Both = B */
public static final String LBR_ISMANUFACTURED_Both = "B";
/** Set Is Manufactured.
@param lbr_IsManufactured Defines if the Product is Manufactured */
public void setlbr_IsManufactured (String lbr_IsManufactured)
{
if (lbr_IsManufactured == null) throw new IllegalArgumentException ("lbr_IsManufactured is mandatory");
if (lbr_IsManufactured.equals("Y") || lbr_IsManufactured.equals("N") || lbr_IsManufactured.equals("B"));
 else throw new IllegalArgumentException ("lbr_IsManufactured Invalid value - " + lbr_IsManufactured + " - Reference_ID=1000027 - Y - N - B");
if (lbr_IsManufactured.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_IsManufactured = lbr_IsManufactured.substring(0,0);
}
set_Value ("lbr_IsManufactured", lbr_IsManufactured);
}
/** Get Is Manufactured.
@return Defines if the Product is Manufactured */
public String getlbr_IsManufactured() 
{
return (String)get_Value("lbr_IsManufactured");
}

/** lbr_IsSubTributaria AD_Reference_ID=1000027 */
public static final int LBR_ISSUBTRIBUTARIA_AD_Reference_ID=1000027;
/** Yes = Y */
public static final String LBR_ISSUBTRIBUTARIA_Yes = "Y";
/** No = N */
public static final String LBR_ISSUBTRIBUTARIA_No = "N";
/** Both = B */
public static final String LBR_ISSUBTRIBUTARIA_Both = "B";
/** Set Is Substituicao Tributaria.
@param lbr_IsSubTributaria Defines the Is Substituicao Tributaria Status */
public void setlbr_IsSubTributaria (String lbr_IsSubTributaria)
{
if (lbr_IsSubTributaria == null) throw new IllegalArgumentException ("lbr_IsSubTributaria is mandatory");
if (lbr_IsSubTributaria.equals("Y") || lbr_IsSubTributaria.equals("N") || lbr_IsSubTributaria.equals("B"));
 else throw new IllegalArgumentException ("lbr_IsSubTributaria Invalid value - " + lbr_IsSubTributaria + " - Reference_ID=1000027 - Y - N - B");
if (lbr_IsSubTributaria.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_IsSubTributaria = lbr_IsSubTributaria.substring(0,0);
}
set_Value ("lbr_IsSubTributaria", lbr_IsSubTributaria);
}
/** Get Is Substituicao Tributaria.
@return Defines the Is Substituicao Tributaria Status */
public String getlbr_IsSubTributaria() 
{
return (String)get_Value("lbr_IsSubTributaria");
}

/** lbr_TaxStatus AD_Reference_ID=1000029 */
public static final int LBR_TAXSTATUS_AD_Reference_ID=1000029;
/** 00 - Tributada integralmente = 00 */
public static final String LBR_TAXSTATUS_00_TributadaIntegralmente = "00";
/** 40 - Isenta = 40 */
public static final String LBR_TAXSTATUS_40_Isenta = "40";
/** 51 - Diferimento  = 51 */
public static final String LBR_TAXSTATUS_51_Diferimento = "51";
/** 90 - Outras = 90 */
public static final String LBR_TAXSTATUS_90_Outras = "90";
/** 10 - Tributada e com cobranca do ICMS por Sub. Tributaria = 10 */
public static final String LBR_TAXSTATUS_10_TributadaEComCobrancaDoICMSPorSubTributaria = "10";
/** 20 - Com reducao de base de calculo = 20 */
public static final String LBR_TAXSTATUS_20_ComReducaoDeBaseDeCalculo = "20";
/** 30 - Isenta ou nao-trib. e com cobr. do ICMS por Sub. Tribut = 30 */
public static final String LBR_TAXSTATUS_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut = "30";
/** 41 - Nao-tributada = 41 */
public static final String LBR_TAXSTATUS_41_Nao_Tributada = "41";
/** 50 - Suspensao = 50 */
public static final String LBR_TAXSTATUS_50_Suspensao = "50";
/** 60 - ICMS cobrado anteriormente por substituicao tributaria = 60 */
public static final String LBR_TAXSTATUS_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria = "60";
/** 70 - Com red. de base de calc. e cobr. do ICMS por Sub. Trib = 70 */
public static final String LBR_TAXSTATUS_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib = "70";
/** Set Tax Status.
@param lbr_TaxStatus Defines the Tax Status */
public void setlbr_TaxStatus (String lbr_TaxStatus)
{
if (lbr_TaxStatus == null || lbr_TaxStatus.equals("00") || lbr_TaxStatus.equals("40") || lbr_TaxStatus.equals("51") || lbr_TaxStatus.equals("90") || lbr_TaxStatus.equals("10") || lbr_TaxStatus.equals("20") || lbr_TaxStatus.equals("30") || lbr_TaxStatus.equals("41") || lbr_TaxStatus.equals("50") || lbr_TaxStatus.equals("60") || lbr_TaxStatus.equals("70"));
 else throw new IllegalArgumentException ("lbr_TaxStatus Invalid value - " + lbr_TaxStatus + " - Reference_ID=1000029 - 00 - 40 - 51 - 90 - 10 - 20 - 30 - 41 - 50 - 60 - 70");
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

/** lbr_TransactionType AD_Reference_ID=1000024 */
public static final int LBR_TRANSACTIONTYPE_AD_Reference_ID=1000024;
/** End User = END */
public static final String LBR_TRANSACTIONTYPE_EndUser = "END";
/** Manufacturing = MAN */
public static final String LBR_TRANSACTIONTYPE_Manufacturing = "MAN";
/** Import = IMP */
public static final String LBR_TRANSACTIONTYPE_Import = "IMP";
/** Export = EXP */
public static final String LBR_TRANSACTIONTYPE_Export = "EXP";
/** Resale = RES */
public static final String LBR_TRANSACTIONTYPE_Resale = "RES";
/** Set Transaction Type.
@param lbr_TransactionType Defines the Transaction Type */
public void setlbr_TransactionType (String lbr_TransactionType)
{
if (lbr_TransactionType == null || lbr_TransactionType.equals("END") || lbr_TransactionType.equals("MAN") || lbr_TransactionType.equals("IMP") || lbr_TransactionType.equals("EXP") || lbr_TransactionType.equals("RES"));
 else throw new IllegalArgumentException ("lbr_TransactionType Invalid value - " + lbr_TransactionType + " - Reference_ID=1000024 - END - MAN - IMP - EXP - RES");
if (lbr_TransactionType != null && lbr_TransactionType.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_TransactionType = lbr_TransactionType.substring(0,2);
}
set_Value ("lbr_TransactionType", lbr_TransactionType);
}
/** Get Transaction Type.
@return Defines the Transaction Type */
public String getlbr_TransactionType() 
{
return (String)get_Value("lbr_TransactionType");
}
}
