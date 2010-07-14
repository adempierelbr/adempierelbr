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
/** Generated Model for LBR_NotaFiscal
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NotaFiscal extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NotaFiscal_ID id
@param trxName transaction
*/
public X_LBR_NotaFiscal (Properties ctx, int LBR_NotaFiscal_ID, String trxName)
{
super (ctx, LBR_NotaFiscal_ID, trxName);
/** if (LBR_NotaFiscal_ID == 0)
{
setDocumentNo (null);
setIsCancelled (false);	// 'N'
setIsPrinted (false);	// 'N'
setIsSOTrx (true);	// 'Y'
setLBR_NotaFiscal_ID (0);
setProcessed (false);	// 'N'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NotaFiscal (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NotaFiscal");

/** TableName=LBR_NotaFiscal */
public static final String Table_Name="LBR_NotaFiscal";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NotaFiscal");

protected BigDecimal accessLevel = new BigDecimal(1);
/** AccessLevel
@return 1 - Org 
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
StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscal[").append(get_ID()).append("]");
return sb.toString();
}

/** Set NFe Protocol.
@param lbr_NFeProt NFe Protocol */
public void setlbr_NFeProt (String lbr_NFeProt)
{
if (lbr_NFeProt != null && lbr_NFeProt.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_NFeProt = lbr_NFeProt.substring(0,59);
}
set_Value ("lbr_NFeProt", lbr_NFeProt);
}
/** Get NFe Protocol.
@return NFe Protocol */
public String getlbr_NFeProt() 
{
return (String)get_Value("lbr_NFeProt");
}
/** Set NFe Status.
@param lbr_NFeStatus Status of NFe */
public void setlbr_NFeStatus (String lbr_NFeStatus)
{
if (lbr_NFeStatus == null || lbr_NFeStatus.equals("100") || lbr_NFeStatus.equals("101") || lbr_NFeStatus.equals("102") || lbr_NFeStatus.equals("103") || lbr_NFeStatus.equals("104") || lbr_NFeStatus.equals("105") || lbr_NFeStatus.equals("106") || lbr_NFeStatus.equals("107") || lbr_NFeStatus.equals("108") || lbr_NFeStatus.equals("109") || lbr_NFeStatus.equals("110") || lbr_NFeStatus.equals("111") || lbr_NFeStatus.equals("112") || lbr_NFeStatus.equals("201") || lbr_NFeStatus.equals("202") || lbr_NFeStatus.equals("203") || lbr_NFeStatus.equals("204") || lbr_NFeStatus.equals("205") || lbr_NFeStatus.equals("206") || lbr_NFeStatus.equals("207") || lbr_NFeStatus.equals("208") || lbr_NFeStatus.equals("209") || lbr_NFeStatus.equals("210") || lbr_NFeStatus.equals("211") || lbr_NFeStatus.equals("212") || lbr_NFeStatus.equals("213") || lbr_NFeStatus.equals("214") || lbr_NFeStatus.equals("215") || lbr_NFeStatus.equals("216") || lbr_NFeStatus.equals("217") || lbr_NFeStatus.equals("218") || lbr_NFeStatus.equals("219") || lbr_NFeStatus.equals("220") || lbr_NFeStatus.equals("221") || lbr_NFeStatus.equals("222") || lbr_NFeStatus.equals("223") || lbr_NFeStatus.equals("224") || lbr_NFeStatus.equals("225") || lbr_NFeStatus.equals("226") || lbr_NFeStatus.equals("227") || lbr_NFeStatus.equals("228") || lbr_NFeStatus.equals("229") || lbr_NFeStatus.equals("230") || lbr_NFeStatus.equals("231") || lbr_NFeStatus.equals("232") || lbr_NFeStatus.equals("233") || lbr_NFeStatus.equals("234") || lbr_NFeStatus.equals("235") || lbr_NFeStatus.equals("236") || lbr_NFeStatus.equals("237") || lbr_NFeStatus.equals("238") || lbr_NFeStatus.equals("239") || lbr_NFeStatus.equals("240") || lbr_NFeStatus.equals("241") || lbr_NFeStatus.equals("242") || lbr_NFeStatus.equals("243") || lbr_NFeStatus.equals("244") || lbr_NFeStatus.equals("245") || lbr_NFeStatus.equals("246") || lbr_NFeStatus.equals("247") || lbr_NFeStatus.equals("248") || lbr_NFeStatus.equals("249") || lbr_NFeStatus.equals("250") || lbr_NFeStatus.equals("251") || lbr_NFeStatus.equals("252") || lbr_NFeStatus.equals("253") || lbr_NFeStatus.equals("254") || lbr_NFeStatus.equals("255") || lbr_NFeStatus.equals("256") || lbr_NFeStatus.equals("257") || lbr_NFeStatus.equals("258") || lbr_NFeStatus.equals("259") || lbr_NFeStatus.equals("260") || lbr_NFeStatus.equals("261") || lbr_NFeStatus.equals("262") || lbr_NFeStatus.equals("263") || lbr_NFeStatus.equals("264") || lbr_NFeStatus.equals("265") || lbr_NFeStatus.equals("266") || lbr_NFeStatus.equals("267") || lbr_NFeStatus.equals("268") || lbr_NFeStatus.equals("269") || lbr_NFeStatus.equals("270") || lbr_NFeStatus.equals("271") || lbr_NFeStatus.equals("272") || lbr_NFeStatus.equals("273") || lbr_NFeStatus.equals("274") || lbr_NFeStatus.equals("275") || lbr_NFeStatus.equals("276") || lbr_NFeStatus.equals("277") || lbr_NFeStatus.equals("278") || lbr_NFeStatus.equals("279") || lbr_NFeStatus.equals("280") || lbr_NFeStatus.equals("281") || lbr_NFeStatus.equals("282") || lbr_NFeStatus.equals("283") || lbr_NFeStatus.equals("284") || lbr_NFeStatus.equals("285") || lbr_NFeStatus.equals("286") || lbr_NFeStatus.equals("287") || lbr_NFeStatus.equals("288") || lbr_NFeStatus.equals("289") || lbr_NFeStatus.equals("290") || lbr_NFeStatus.equals("291") || lbr_NFeStatus.equals("292") || lbr_NFeStatus.equals("293") || lbr_NFeStatus.equals("294") || lbr_NFeStatus.equals("295") || lbr_NFeStatus.equals("296") || lbr_NFeStatus.equals("297") || lbr_NFeStatus.equals("298") || lbr_NFeStatus.equals("299") || lbr_NFeStatus.equals("401") || lbr_NFeStatus.equals("402") || lbr_NFeStatus.equals("403") || lbr_NFeStatus.equals("404") || lbr_NFeStatus.equals("405") || lbr_NFeStatus.equals("406") || lbr_NFeStatus.equals("407") || lbr_NFeStatus.equals("453") || lbr_NFeStatus.equals("454") || lbr_NFeStatus.equals("478") || lbr_NFeStatus.equals("999") || lbr_NFeStatus.equals("301") || lbr_NFeStatus.equals("302"));
 else throw new IllegalArgumentException ("lbr_NFeStatus Invalid value - " + lbr_NFeStatus + " - Reference_ID=1100004 - 100 - 101 - 102 - 103 - 104 - 105 - 106 - 107 - 108 - 109 - 110 - 111 - 112 - 201 - 202 - 203 - 204 - 205 - 206 - 207 - 208 - 209 - 210 - 211 - 212 - 213 - 214 - 215 - 216 - 217 - 218 - 219 - 220 - 221 - 222 - 223 - 224 - 225 - 226 - 227 - 228 - 229 - 230 - 231 - 232 - 233 - 234 - 235 - 236 - 237 - 238 - 239 - 240 - 241 - 242 - 243 - 244 - 245 - 246 - 247 - 248 - 249 - 250 - 251 - 252 - 253 - 254 - 255 - 256 - 257 - 258 - 259 - 260 - 261 - 262 - 263 - 264 - 265 - 266 - 267 - 268 - 269 - 270 - 271 - 272 - 273 - 274 - 275 - 276 - 277 - 278 - 279 - 280 - 281 - 282 - 283 - 284 - 285 - 286 - 287 - 288 - 289 - 290 - 291 - 292 - 293 - 294 - 295 - 296 - 297 - 298 - 299 - 401 - 402 - 403 - 404 - 405 - 406 - 407 - 453 - 454 - 478 - 999 - 301 - 302");
if (lbr_NFeStatus != null && lbr_NFeStatus.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_NFeStatus = lbr_NFeStatus.substring(0,2);
}
set_Value ("lbr_NFeStatus", lbr_NFeStatus);
}
/** Get NFe Status.
@return Status of NFe */
public String getlbr_NFeStatus() 
{
return (String)get_Value("lbr_NFeStatus");
}
/** Set Digest Value.
@param lbr_DigestValue Digest Value */
public void setlbr_DigestValue (String lbr_DigestValue)
{
if (lbr_DigestValue != null && lbr_DigestValue.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_DigestValue = lbr_DigestValue.substring(0,254);
}
set_Value ("lbr_DigestValue", lbr_DigestValue);
}
/** Get Digest Value.
@return Digest Value */
public String getlbr_DigestValue() 
{
return (String)get_Value("lbr_DigestValue");
}

/** Set BP Name.
@param BPName BP Name */
public void setBPName (String BPName)
{
if (BPName != null && BPName.length() > 60)
{
log.warning("Length > 60 - truncated");
BPName = BPName.substring(0,59);
}
set_Value ("BPName", BPName);
}
/** Get BP Name.
@return BP Name */
public String getBPName() 
{
return (String)get_Value("BPName");
}

/** Bill_Location_ID AD_Reference_ID=159 */
public static final int BILL_LOCATION_ID_AD_Reference_ID=159;
/** Set Invoice Location.
@param Bill_Location_ID Business Partner Location for invoicing */
public void setBill_Location_ID (int Bill_Location_ID)
{
if (Bill_Location_ID <= 0) set_Value ("Bill_Location_ID", null);
 else 
set_Value ("Bill_Location_ID", new Integer(Bill_Location_ID));
}
/** Get Invoice Location.
@return Business Partner Location for invoicing */
public int getBill_Location_ID() 
{
Integer ii = (Integer)get_Value("Bill_Location_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_BPartner_ID AD_Reference_ID=138 */
public static final int C_BPARTNER_ID_AD_Reference_ID=138;
/** Set Business Partner .
@param C_BPartner_ID Identifies a Business Partner */
public void setC_BPartner_ID (int C_BPartner_ID)
{
if (C_BPartner_ID <= 0) set_Value ("C_BPartner_ID", null);
 else 
set_Value ("C_BPartner_ID", new Integer(C_BPartner_ID));
}
/** Get Business Partner .
@return Identifies a Business Partner */
public int getC_BPartner_ID() 
{
Integer ii = (Integer)get_Value("C_BPartner_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_BPartner_Location_ID AD_Reference_ID=159 */
public static final int C_BPARTNER_LOCATION_ID_AD_Reference_ID=159;
/** Set Partner Location.
@param C_BPartner_Location_ID Identifies the (ship to) address for this Business Partner */
public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
{
if (C_BPartner_Location_ID <= 0) set_Value ("C_BPartner_Location_ID", null);
 else 
set_Value ("C_BPartner_Location_ID", new Integer(C_BPartner_Location_ID));
}
/** Get Partner Location.
@return Identifies the (ship to) address for this Business Partner */
public int getC_BPartner_Location_ID() 
{
Integer ii = (Integer)get_Value("C_BPartner_Location_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set CFOP.
@param C_CFOP_ID Código Fiscal da Operação */
public void setC_CFOP_ID (int C_CFOP_ID)
{
if (C_CFOP_ID <= 0) set_Value ("C_CFOP_ID", null);
 else 
set_Value ("C_CFOP_ID", new Integer(C_CFOP_ID));
}
/** Get CFOP.
@return Código Fiscal da Operação */
public int getC_CFOP_ID() 
{
Integer ii = (Integer)get_Value("C_CFOP_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_DocTypeTarget_ID AD_Reference_ID=170 */
public static final int C_DOCTYPETARGET_ID_AD_Reference_ID=170;
/** Set Target Document Type.
@param C_DocTypeTarget_ID Target document type for conversing documents */
public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
{
if (C_DocTypeTarget_ID <= 0) set_Value ("C_DocTypeTarget_ID", null);
 else 
set_Value ("C_DocTypeTarget_ID", new Integer(C_DocTypeTarget_ID));
}
/** Get Target Document Type.
@return Target document type for conversing documents */
public int getC_DocTypeTarget_ID() 
{
Integer ii = (Integer)get_Value("C_DocTypeTarget_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_DocType_ID AD_Reference_ID=170 */
public static final int C_DOCTYPE_ID_AD_Reference_ID=170;
/** Set Document Type.
@param C_DocType_ID Document type or rules */
public void setC_DocType_ID (int C_DocType_ID)
{
if (C_DocType_ID <= 0) set_Value ("C_DocType_ID", null);
 else 
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
/** Set Invoice.
@param C_Invoice_ID Invoice Identifier */
public void setC_Invoice_ID (int C_Invoice_ID)
{
if (C_Invoice_ID <= 0) set_Value ("C_Invoice_ID", null);
 else 
set_Value ("C_Invoice_ID", new Integer(C_Invoice_ID));
}
/** Get Invoice.
@return Invoice Identifier */
public int getC_Invoice_ID() 
{
Integer ii = (Integer)get_Value("C_Invoice_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_Order_ID AD_Reference_ID=290 */
public static final int C_ORDER_ID_AD_Reference_ID=290;
/** Set Order.
@param C_Order_ID Order */
public void setC_Order_ID (int C_Order_ID)
{
if (C_Order_ID <= 0) set_Value ("C_Order_ID", null);
 else 
set_Value ("C_Order_ID", new Integer(C_Order_ID));
}
/** Get Order.
@return Order */
public int getC_Order_ID() 
{
Integer ii = (Integer)get_Value("C_Order_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_PaymentTerm_ID AD_Reference_ID=227 */
public static final int C_PAYMENTTERM_ID_AD_Reference_ID=227;
/** Set Payment Term.
@param C_PaymentTerm_ID The terms of Payment (timing, discount) */
public void setC_PaymentTerm_ID (int C_PaymentTerm_ID)
{
if (C_PaymentTerm_ID <= 0) set_Value ("C_PaymentTerm_ID", null);
 else 
set_Value ("C_PaymentTerm_ID", new Integer(C_PaymentTerm_ID));
}
/** Get Payment Term.
@return The terms of Payment (timing, discount) */
public int getC_PaymentTerm_ID() 
{
Integer ii = (Integer)get_Value("C_PaymentTerm_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Document Date.
@param DateDoc Date of the Document */
public void setDateDoc (Timestamp DateDoc)
{
set_Value ("DateDoc", DateDoc);
}
/** Get Document Date.
@return Date of the Document */
public Timestamp getDateDoc() 
{
return (Timestamp)get_Value("DateDoc");
}
/** Set Transaction Date.
@param DateTrx Transaction Date */
public void setDateTrx (Timestamp DateTrx)
{
set_Value ("DateTrx", DateTrx);
}
/** Get Transaction Date.
@return Transaction Date */
public Timestamp getDateTrx() 
{
return (Timestamp)get_Value("DateTrx");
}
/** Set Description.
@param Description Optional short description of the record */
public void setDescription (String Description)
{
if (Description != null && Description.length() > 1024)
{
log.warning("Length > 1024 - truncated");
Description = Description.substring(0,1023);
}
set_Value ("Description", Description);
}
/** Get Description.
@return Optional short description of the record */
public String getDescription() 
{
return (String)get_Value("Description");
}
/** Set Description 2.
@param Description2 Description 2 */
public void setDescription2 (String Description2)
{
if (Description2 != null && Description2.length() > 1024)
{
log.warning("Length > 1024 - truncated");
Description2 = Description2.substring(0,1023);
}
set_Value ("Description2", Description2);
}
/** Get Description 2.
@return Description 2 */
public String getDescription2() 
{
return (String)get_Value("Description2");
}
/** Set Document No.
@param DocumentNo Document sequence number of the document */
public void setDocumentNo (String DocumentNo)
{
if (DocumentNo == null) throw new IllegalArgumentException ("DocumentNo is mandatory.");
if (DocumentNo.length() > 30)
{
log.warning("Length > 30 - truncated");
DocumentNo = DocumentNo.substring(0,29);
}
set_Value ("DocumentNo", DocumentNo);
}
/** Get Document No.
@return Document sequence number of the document */
public String getDocumentNo() 
{
return (String)get_Value("DocumentNo");
}
/** Set Document Note.
@param DocumentNote Additional information for a Document */
public void setDocumentNote (String DocumentNote)
{
if (DocumentNote != null && DocumentNote.length() > 300)
{
log.warning("Length > 300 - truncated");
DocumentNote = DocumentNote.substring(0,299);
}
set_Value ("DocumentNote", DocumentNote);
}
/** Get Document Note.
@return Additional information for a Document */
public String getDocumentNote() 
{
return (String)get_Value("DocumentNote");
}
/** Set Freight Amount.
@param FreightAmt Freight Amount  */
public void setFreightAmt (BigDecimal FreightAmt)
{
set_Value ("FreightAmt", FreightAmt);
}
/** Get Freight Amount.
@return Freight Amount  */
public BigDecimal getFreightAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("FreightAmt");
if (bd == null) return Env.ZERO;
return bd;
}

/** FreightCostRule AD_Reference_ID=153 */
public static final int FREIGHTCOSTRULE_AD_Reference_ID=153;
/** Calculated = C */
public static final String FREIGHTCOSTRULE_Calculated = "C";
/** Freight not included = E */
public static final String FREIGHTCOSTRULE_FreightNotIncluded = "E";
/** Fix price = F */
public static final String FREIGHTCOSTRULE_FixPrice = "F";
/** Freight included = I */
public static final String FREIGHTCOSTRULE_FreightIncluded = "I";
/** Line = L */
public static final String FREIGHTCOSTRULE_Line = "L";
/** Set Freight Cost Rule.
@param FreightCostRule Method for charging Freight */
public void setFreightCostRule (String FreightCostRule)
{
if (FreightCostRule == null || FreightCostRule.equals("C") || FreightCostRule.equals("E") || FreightCostRule.equals("F") || FreightCostRule.equals("I") || FreightCostRule.equals("L"));
 else throw new IllegalArgumentException ("FreightCostRule Invalid value - " + FreightCostRule + " - Reference_ID=153 - C - E - F - I - L");
if (FreightCostRule != null && FreightCostRule.length() > 1)
{
log.warning("Length > 1 - truncated");
FreightCostRule = FreightCostRule.substring(0,0);
}
set_Value ("FreightCostRule", FreightCostRule);
}
/** Get Freight Cost Rule.
@return Method for charging Freight */
public String getFreightCostRule() 
{
return (String)get_Value("FreightCostRule");
}
/** Set Grand Total.
@param GrandTotal Total amount of document */
public void setGrandTotal (BigDecimal GrandTotal)
{
set_Value ("GrandTotal", GrandTotal);
}
/** Get Grand Total.
@return Total amount of document */
public BigDecimal getGrandTotal() 
{
BigDecimal bd = (BigDecimal)get_Value("GrandTotal");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Cancelled.
@param IsCancelled The transaction was cancelled */
public void setIsCancelled (boolean IsCancelled)
{
set_Value ("IsCancelled", new Boolean(IsCancelled));
}
/** Get Cancelled.
@return The transaction was cancelled */
public boolean isCancelled() 
{
Object oo = get_Value("IsCancelled");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Printed.
@param IsPrinted Indicates if this document / line is printed */
public void setIsPrinted (boolean IsPrinted)
{
set_Value ("IsPrinted", new Boolean(IsPrinted));
}
/** Get Printed.
@return Indicates if this document / line is printed */
public boolean isPrinted() 
{
Object oo = get_Value("IsPrinted");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Sales Transaction.
@param IsSOTrx This is a Sales Transaction */
public void setIsSOTrx (boolean IsSOTrx)
{
set_Value ("IsSOTrx", new Boolean(IsSOTrx));
}
/** Get Sales Transaction.
@return This is a Sales Transaction */
public boolean isSOTrx() 
{
Object oo = get_Value("IsSOTrx");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Nota Fiscal.
@param LBR_NotaFiscal_ID Primary key table LBR_NotaFiscal */
public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
{
if (LBR_NotaFiscal_ID < 1) throw new IllegalArgumentException ("LBR_NotaFiscal_ID is mandatory.");
set_ValueNoCheck ("LBR_NotaFiscal_ID", new Integer(LBR_NotaFiscal_ID));
}
/** Get Nota Fiscal.
@return Primary key table LBR_NotaFiscal */
public int getLBR_NotaFiscal_ID() 
{
Integer ii = (Integer)get_Value("LBR_NotaFiscal_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_InOut_ID AD_Reference_ID=337 */
public static final int M_INOUT_ID_AD_Reference_ID=337;
/** Set Shipment/Receipt.
@param M_InOut_ID Material Shipment Document */
public void setM_InOut_ID (int M_InOut_ID)
{
if (M_InOut_ID <= 0) set_Value ("M_InOut_ID", null);
 else 
set_Value ("M_InOut_ID", new Integer(M_InOut_ID));
}
/** Get Shipment/Receipt.
@return Material Shipment Document */
public int getM_InOut_ID() 
{
Integer ii = (Integer)get_Value("M_InOut_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Shipper.
@param M_Shipper_ID Method or manner of product delivery */
public void setM_Shipper_ID (int M_Shipper_ID)
{
if (M_Shipper_ID <= 0) set_Value ("M_Shipper_ID", null);
 else 
set_Value ("M_Shipper_ID", new Integer(M_Shipper_ID));
}
/** Get Shipper.
@return Method or manner of product delivery */
public int getM_Shipper_ID() 
{
Integer ii = (Integer)get_Value("M_Shipper_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Movement Date.
@param MovementDate Date a product was moved in or out of inventory */
public void setMovementDate (Timestamp MovementDate)
{
set_Value ("MovementDate", MovementDate);
}
/** Get Movement Date.
@return Date a product was moved in or out of inventory */
public Timestamp getMovementDate() 
{
return (Timestamp)get_Value("MovementDate");
}
/** Set No Packages.
@param NoPackages Number of packages shipped */
public void setNoPackages (BigDecimal NoPackages)
{
set_Value ("NoPackages", NoPackages);
}
/** Get No Packages.
@return Number of packages shipped */
public BigDecimal getNoPackages() 
{
BigDecimal bd = (BigDecimal)get_Value("NoPackages");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Order No.
@param OrderNo Order No */
public void setOrderNo (String OrderNo)
{
if (OrderNo != null && OrderNo.length() > 30)
{
log.warning("Length > 30 - truncated");
OrderNo = OrderNo.substring(0,29);
}
set_Value ("OrderNo", OrderNo);
}
/** Get Order No.
@return Order No */
public String getOrderNo() 
{
return (String)get_Value("OrderNo");
}
/** Set Org Address.
@param Org_Location_ID Organization Location/Address */
public void setOrg_Location_ID (int Org_Location_ID)
{
if (Org_Location_ID <= 0) set_Value ("Org_Location_ID", null);
 else 
set_Value ("Org_Location_ID", new Integer(Org_Location_ID));
}
/** Get Org Address.
@return Organization Location/Address */
public int getOrg_Location_ID() 
{
Integer ii = (Integer)get_Value("Org_Location_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Order Reference.
@param POReference Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner */
public void setPOReference (String POReference)
{
if (POReference != null && POReference.length() > 20)
{
log.warning("Length > 20 - truncated");
POReference = POReference.substring(0,19);
}
set_Value ("POReference", POReference);
}
/** Get Order Reference.
@return Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner */
public String getPOReference() 
{
return (String)get_Value("POReference");
}
/** Set Reactivate Nota Fiscal.
@param ProcReactivateNF This Process Reactivates the Nota Fiscal Document */
public void setProcReactivateNF (String ProcReactivateNF)
{
if (ProcReactivateNF != null && ProcReactivateNF.length() > 1)
{
log.warning("Length > 1 - truncated");
ProcReactivateNF = ProcReactivateNF.substring(0,0);
}
set_Value ("ProcReactivateNF", ProcReactivateNF);
}
/** Get Reactivate Nota Fiscal.
@return This Process Reactivates the Nota Fiscal Document */
public String getProcReactivateNF() 
{
return (String)get_Value("ProcReactivateNF");
}
/** Set Processed.
@param Processed The document has been processed */
public void setProcessed (boolean Processed)
{
set_Value ("Processed", new Boolean(Processed));
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
/** Set Process Now.
@param Processing Process Now */
public void setProcessing (boolean Processing)
{
set_Value ("Processing", new Boolean(Processing));
}
/** Get Process Now.
@return Process Now */
public boolean isProcessing() 
{
Object oo = get_Value("Processing");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Process Now.
@param Processing2 Process Now */
public void setProcessing2 (String Processing2)
{
if (Processing2 != null && Processing2.length() > 1)
{
log.warning("Length > 1 - truncated");
Processing2 = Processing2.substring(0,0);
}
set_Value ("Processing2", Processing2);
}
/** Get Process Now.
@return Process Now */
public String getProcessing2() 
{
return (String)get_Value("Processing2");
}
/** Set Total Lines.
@param TotalLines Total of all document lines */
public void setTotalLines (BigDecimal TotalLines)
{
set_Value ("TotalLines", TotalLines);
}
/** Get Total Lines.
@return Total of all document lines */
public BigDecimal getTotalLines() 
{
BigDecimal bd = (BigDecimal)get_Value("TotalLines");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set BP Address 1.
@param lbr_BPAddress1 BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPAddress1 (String lbr_BPAddress1)
{
if (lbr_BPAddress1 != null && lbr_BPAddress1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPAddress1 = lbr_BPAddress1.substring(0,59);
}
set_Value ("lbr_BPAddress1", lbr_BPAddress1);
}
/** Get BP Address 1.
@return BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPAddress1() 
{
return (String)get_Value("lbr_BPAddress1");
}
/** Set BP Address 2.
@param lbr_BPAddress2 BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPAddress2 (String lbr_BPAddress2)
{
if (lbr_BPAddress2 != null && lbr_BPAddress2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPAddress2 = lbr_BPAddress2.substring(0,59);
}
set_Value ("lbr_BPAddress2", lbr_BPAddress2);
}
/** Get BP Address 2.
@return BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPAddress2() 
{
return (String)get_Value("lbr_BPAddress2");
}
/** Set BP Address 3.
@param lbr_BPAddress3 BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPAddress3 (String lbr_BPAddress3)
{
if (lbr_BPAddress3 != null && lbr_BPAddress3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPAddress3 = lbr_BPAddress3.substring(0,59);
}
set_Value ("lbr_BPAddress3", lbr_BPAddress3);
}
/** Get BP Address 3.
@return BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPAddress3() 
{
return (String)get_Value("lbr_BPAddress3");
}
/** Set BP Address 4.
@param lbr_BPAddress4 BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPAddress4 (String lbr_BPAddress4)
{
if (lbr_BPAddress4 != null && lbr_BPAddress4.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPAddress4 = lbr_BPAddress4.substring(0,59);
}
set_Value ("lbr_BPAddress4", lbr_BPAddress4);
}
/** Get BP Address 4.
@return BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPAddress4() 
{
return (String)get_Value("lbr_BPAddress4");
}
/** Set BP CNPJ.
@param lbr_BPCNPJ BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books */
public void setlbr_BPCNPJ (String lbr_BPCNPJ)
{
if (lbr_BPCNPJ != null && lbr_BPCNPJ.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPCNPJ = lbr_BPCNPJ.substring(0,29);
}
set_Value ("lbr_BPCNPJ", lbr_BPCNPJ);
}
/** Get BP CNPJ.
@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books */
public String getlbr_BPCNPJ() 
{
return (String)get_Value("lbr_BPCNPJ");
}
/** Set BP City.
@param lbr_BPCity BP City - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPCity (String lbr_BPCity)
{
if (lbr_BPCity != null && lbr_BPCity.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPCity = lbr_BPCity.substring(0,59);
}
set_Value ("lbr_BPCity", lbr_BPCity);
}
/** Get BP City.
@return BP City - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPCity() 
{
return (String)get_Value("lbr_BPCity");
}
/** Set BP Country.
@param lbr_BPCountry BP Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPCountry (String lbr_BPCountry)
{
if (lbr_BPCountry != null && lbr_BPCountry.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPCountry = lbr_BPCountry.substring(0,59);
}
set_Value ("lbr_BPCountry", lbr_BPCountry);
}
/** Get BP Country.
@return BP Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPCountry() 
{
return (String)get_Value("lbr_BPCountry");
}
/** Set BP Delivery Address 1.
@param lbr_BPDeliveryAddress1 BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryAddress1 (String lbr_BPDeliveryAddress1)
{
if (lbr_BPDeliveryAddress1 != null && lbr_BPDeliveryAddress1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryAddress1 = lbr_BPDeliveryAddress1.substring(0,59);
}
set_Value ("lbr_BPDeliveryAddress1", lbr_BPDeliveryAddress1);
}
/** Get BP Delivery Address 1.
@return BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryAddress1() 
{
return (String)get_Value("lbr_BPDeliveryAddress1");
}
/** Set BP Delivery Address 2.
@param lbr_BPDeliveryAddress2 BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryAddress2 (String lbr_BPDeliveryAddress2)
{
if (lbr_BPDeliveryAddress2 != null && lbr_BPDeliveryAddress2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryAddress2 = lbr_BPDeliveryAddress2.substring(0,59);
}
set_Value ("lbr_BPDeliveryAddress2", lbr_BPDeliveryAddress2);
}
/** Get BP Delivery Address 2.
@return BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryAddress2() 
{
return (String)get_Value("lbr_BPDeliveryAddress2");
}
/** Set BP Delivery Address 3.
@param lbr_BPDeliveryAddress3 BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryAddress3 (String lbr_BPDeliveryAddress3)
{
if (lbr_BPDeliveryAddress3 != null && lbr_BPDeliveryAddress3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryAddress3 = lbr_BPDeliveryAddress3.substring(0,59);
}
set_Value ("lbr_BPDeliveryAddress3", lbr_BPDeliveryAddress3);
}
/** Get BP Delivery Address 3.
@return BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryAddress3() 
{
return (String)get_Value("lbr_BPDeliveryAddress3");
}
/** Set BP Delivery Address 4.
@param lbr_BPDeliveryAddress4 BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryAddress4 (String lbr_BPDeliveryAddress4)
{
if (lbr_BPDeliveryAddress4 != null && lbr_BPDeliveryAddress4.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryAddress4 = lbr_BPDeliveryAddress4.substring(0,59);
}
set_Value ("lbr_BPDeliveryAddress4", lbr_BPDeliveryAddress4);
}
/** Get BP Delivery Address 4.
@return BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryAddress4() 
{
return (String)get_Value("lbr_BPDeliveryAddress4");
}
/** Set BP Delivery CNPJ.
@param lbr_BPDeliveryCNPJ BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryCNPJ (String lbr_BPDeliveryCNPJ)
{
if (lbr_BPDeliveryCNPJ != null && lbr_BPDeliveryCNPJ.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPDeliveryCNPJ = lbr_BPDeliveryCNPJ.substring(0,29);
}
set_Value ("lbr_BPDeliveryCNPJ", lbr_BPDeliveryCNPJ);
}
/** Get BP Delivery CNPJ.
@return BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryCNPJ() 
{
return (String)get_Value("lbr_BPDeliveryCNPJ");
}
/** Set BP Delivery City.
@param lbr_BPDeliveryCity BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryCity (String lbr_BPDeliveryCity)
{
if (lbr_BPDeliveryCity != null && lbr_BPDeliveryCity.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryCity = lbr_BPDeliveryCity.substring(0,59);
}
set_Value ("lbr_BPDeliveryCity", lbr_BPDeliveryCity);
}
/** Get BP Delivery City.
@return BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryCity() 
{
return (String)get_Value("lbr_BPDeliveryCity");
}
/** Set BP Delivery Country.
@param lbr_BPDeliveryCountry BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryCountry (String lbr_BPDeliveryCountry)
{
if (lbr_BPDeliveryCountry != null && lbr_BPDeliveryCountry.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPDeliveryCountry = lbr_BPDeliveryCountry.substring(0,59);
}
set_Value ("lbr_BPDeliveryCountry", lbr_BPDeliveryCountry);
}
/** Get BP Delivery Country.
@return BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryCountry() 
{
return (String)get_Value("lbr_BPDeliveryCountry");
}
/** Set BP Delivery IE.
@param lbr_BPDeliveryIE BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryIE (String lbr_BPDeliveryIE)
{
if (lbr_BPDeliveryIE != null && lbr_BPDeliveryIE.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPDeliveryIE = lbr_BPDeliveryIE.substring(0,29);
}
set_Value ("lbr_BPDeliveryIE", lbr_BPDeliveryIE);
}
/** Get BP Delivery IE.
@return BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryIE() 
{
return (String)get_Value("lbr_BPDeliveryIE");
}
/** Set BP Delivery Postal.
@param lbr_BPDeliveryPostal BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryPostal (String lbr_BPDeliveryPostal)
{
if (lbr_BPDeliveryPostal != null && lbr_BPDeliveryPostal.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPDeliveryPostal = lbr_BPDeliveryPostal.substring(0,29);
}
set_Value ("lbr_BPDeliveryPostal", lbr_BPDeliveryPostal);
}
/** Get BP Delivery Postal.
@return BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryPostal() 
{
return (String)get_Value("lbr_BPDeliveryPostal");
}
/** Set BP DeliveryRegion.
@param lbr_BPDeliveryRegion BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPDeliveryRegion (String lbr_BPDeliveryRegion)
{
if (lbr_BPDeliveryRegion != null && lbr_BPDeliveryRegion.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPDeliveryRegion = lbr_BPDeliveryRegion.substring(0,1);
}
set_Value ("lbr_BPDeliveryRegion", lbr_BPDeliveryRegion);
}
/** Get BP DeliveryRegion.
@return BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPDeliveryRegion() 
{
return (String)get_Value("lbr_BPDeliveryRegion");
}
/** Set BP IE.
@param lbr_BPIE BP IE - Copied from the BP into Brazilan Legal and Tax Books */
public void setlbr_BPIE (String lbr_BPIE)
{
if (lbr_BPIE != null && lbr_BPIE.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPIE = lbr_BPIE.substring(0,29);
}
set_Value ("lbr_BPIE", lbr_BPIE);
}
/** Get BP IE.
@return BP IE - Copied from the BP into Brazilan Legal and Tax Books */
public String getlbr_BPIE() 
{
return (String)get_Value("lbr_BPIE");
}
/** Set BP Invoice Address 1.
@param lbr_BPInvoiceAddress1 BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceAddress1 (String lbr_BPInvoiceAddress1)
{
if (lbr_BPInvoiceAddress1 != null && lbr_BPInvoiceAddress1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceAddress1 = lbr_BPInvoiceAddress1.substring(0,59);
}
set_Value ("lbr_BPInvoiceAddress1", lbr_BPInvoiceAddress1);
}
/** Get BP Invoice Address 1.
@return BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceAddress1() 
{
return (String)get_Value("lbr_BPInvoiceAddress1");
}
/** Set BP Invoice Address 2.
@param lbr_BPInvoiceAddress2 BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceAddress2 (String lbr_BPInvoiceAddress2)
{
if (lbr_BPInvoiceAddress2 != null && lbr_BPInvoiceAddress2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceAddress2 = lbr_BPInvoiceAddress2.substring(0,59);
}
set_Value ("lbr_BPInvoiceAddress2", lbr_BPInvoiceAddress2);
}
/** Get BP Invoice Address 2.
@return BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceAddress2() 
{
return (String)get_Value("lbr_BPInvoiceAddress2");
}
/** Set BP Invoice Address 3.
@param lbr_BPInvoiceAddress3 BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceAddress3 (String lbr_BPInvoiceAddress3)
{
if (lbr_BPInvoiceAddress3 != null && lbr_BPInvoiceAddress3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceAddress3 = lbr_BPInvoiceAddress3.substring(0,59);
}
set_Value ("lbr_BPInvoiceAddress3", lbr_BPInvoiceAddress3);
}
/** Get BP Invoice Address 3.
@return BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceAddress3() 
{
return (String)get_Value("lbr_BPInvoiceAddress3");
}
/** Set BP Invoice Address 4.
@param lbr_BPInvoiceAddress4 BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceAddress4 (String lbr_BPInvoiceAddress4)
{
if (lbr_BPInvoiceAddress4 != null && lbr_BPInvoiceAddress4.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceAddress4 = lbr_BPInvoiceAddress4.substring(0,59);
}
set_Value ("lbr_BPInvoiceAddress4", lbr_BPInvoiceAddress4);
}
/** Get BP Invoice Address 4.
@return BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceAddress4() 
{
return (String)get_Value("lbr_BPInvoiceAddress4");
}
/** Set BP Invoice CNPJ.
@param lbr_BPInvoiceCNPJ BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceCNPJ (String lbr_BPInvoiceCNPJ)
{
if (lbr_BPInvoiceCNPJ != null && lbr_BPInvoiceCNPJ.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPInvoiceCNPJ = lbr_BPInvoiceCNPJ.substring(0,29);
}
set_Value ("lbr_BPInvoiceCNPJ", lbr_BPInvoiceCNPJ);
}
/** Get BP Invoice CNPJ.
@return BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceCNPJ() 
{
return (String)get_Value("lbr_BPInvoiceCNPJ");
}
/** Set BP Invoice City.
@param lbr_BPInvoiceCity BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceCity (String lbr_BPInvoiceCity)
{
if (lbr_BPInvoiceCity != null && lbr_BPInvoiceCity.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceCity = lbr_BPInvoiceCity.substring(0,59);
}
set_Value ("lbr_BPInvoiceCity", lbr_BPInvoiceCity);
}
/** Get BP Invoice City.
@return BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceCity() 
{
return (String)get_Value("lbr_BPInvoiceCity");
}
/** Set BP Invoice Country.
@param lbr_BPInvoiceCountry BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceCountry (String lbr_BPInvoiceCountry)
{
if (lbr_BPInvoiceCountry != null && lbr_BPInvoiceCountry.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPInvoiceCountry = lbr_BPInvoiceCountry.substring(0,59);
}
set_Value ("lbr_BPInvoiceCountry", lbr_BPInvoiceCountry);
}
/** Get BP Invoice Country.
@return BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceCountry() 
{
return (String)get_Value("lbr_BPInvoiceCountry");
}
/** Set BP Invoice IE.
@param lbr_BPInvoiceIE BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceIE (String lbr_BPInvoiceIE)
{
if (lbr_BPInvoiceIE != null && lbr_BPInvoiceIE.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPInvoiceIE = lbr_BPInvoiceIE.substring(0,29);
}
set_Value ("lbr_BPInvoiceIE", lbr_BPInvoiceIE);
}
/** Get BP Invoice IE.
@return BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceIE() 
{
return (String)get_Value("lbr_BPInvoiceIE");
}
/** Set BP Invoice Postal.
@param lbr_BPInvoicePostal BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoicePostal (String lbr_BPInvoicePostal)
{
if (lbr_BPInvoicePostal != null && lbr_BPInvoicePostal.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPInvoicePostal = lbr_BPInvoicePostal.substring(0,29);
}
set_Value ("lbr_BPInvoicePostal", lbr_BPInvoicePostal);
}
/** Get BP Invoice Postal.
@return BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoicePostal() 
{
return (String)get_Value("lbr_BPInvoicePostal");
}
/** Set BP InvoiceRegion.
@param lbr_BPInvoiceRegion BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPInvoiceRegion (String lbr_BPInvoiceRegion)
{
if (lbr_BPInvoiceRegion != null && lbr_BPInvoiceRegion.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPInvoiceRegion = lbr_BPInvoiceRegion.substring(0,1);
}
set_Value ("lbr_BPInvoiceRegion", lbr_BPInvoiceRegion);
}
/** Get BP InvoiceRegion.
@return BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPInvoiceRegion() 
{
return (String)get_Value("lbr_BPInvoiceRegion");
}
/** Set BP Phone.
@param lbr_BPPhone BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPPhone (String lbr_BPPhone)
{
if (lbr_BPPhone != null && lbr_BPPhone.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPPhone = lbr_BPPhone.substring(0,29);
}
set_Value ("lbr_BPPhone", lbr_BPPhone);
}
/** Get BP Phone.
@return BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPPhone() 
{
return (String)get_Value("lbr_BPPhone");
}
/** Set BP Postal.
@param lbr_BPPostal BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPPostal (String lbr_BPPostal)
{
if (lbr_BPPostal != null && lbr_BPPostal.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPPostal = lbr_BPPostal.substring(0,29);
}
set_Value ("lbr_BPPostal", lbr_BPPostal);
}
/** Get BP Postal.
@return BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPPostal() 
{
return (String)get_Value("lbr_BPPostal");
}
/** Set BP Region.
@param lbr_BPRegion BP Region - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPRegion (String lbr_BPRegion)
{
if (lbr_BPRegion != null && lbr_BPRegion.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPRegion = lbr_BPRegion.substring(0,1);
}
set_Value ("lbr_BPRegion", lbr_BPRegion);
}
/** Get BP Region.
@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPRegion() 
{
return (String)get_Value("lbr_BPRegion");
}
/** Set BP Shipper Address 1.
@param lbr_BPShipperAddress1 BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperAddress1 (String lbr_BPShipperAddress1)
{
if (lbr_BPShipperAddress1 != null && lbr_BPShipperAddress1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperAddress1 = lbr_BPShipperAddress1.substring(0,59);
}
set_Value ("lbr_BPShipperAddress1", lbr_BPShipperAddress1);
}
/** Get BP Shipper Address 1.
@return BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperAddress1() 
{
return (String)get_Value("lbr_BPShipperAddress1");
}
/** Set BP Shipper Address 2.
@param lbr_BPShipperAddress2 BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperAddress2 (String lbr_BPShipperAddress2)
{
if (lbr_BPShipperAddress2 != null && lbr_BPShipperAddress2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperAddress2 = lbr_BPShipperAddress2.substring(0,59);
}
set_Value ("lbr_BPShipperAddress2", lbr_BPShipperAddress2);
}
/** Get BP Shipper Address 2.
@return BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperAddress2() 
{
return (String)get_Value("lbr_BPShipperAddress2");
}
/** Set BP Shipper Address 3.
@param lbr_BPShipperAddress3 BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperAddress3 (String lbr_BPShipperAddress3)
{
if (lbr_BPShipperAddress3 != null && lbr_BPShipperAddress3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperAddress3 = lbr_BPShipperAddress3.substring(0,59);
}
set_Value ("lbr_BPShipperAddress3", lbr_BPShipperAddress3);
}
/** Get BP Shipper Address 3.
@return BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperAddress3() 
{
return (String)get_Value("lbr_BPShipperAddress3");
}
/** Set BP Shipper Address 4.
@param lbr_BPShipperAddress4 BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperAddress4 (String lbr_BPShipperAddress4)
{
if (lbr_BPShipperAddress4 != null && lbr_BPShipperAddress4.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperAddress4 = lbr_BPShipperAddress4.substring(0,59);
}
set_Value ("lbr_BPShipperAddress4", lbr_BPShipperAddress4);
}
/** Get BP Shipper Address 4.
@return BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperAddress4() 
{
return (String)get_Value("lbr_BPShipperAddress4");
}
/** Set BP Shipper CNPJ.
@param lbr_BPShipperCNPJ BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ)
{
if (lbr_BPShipperCNPJ != null && lbr_BPShipperCNPJ.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPShipperCNPJ = lbr_BPShipperCNPJ.substring(0,29);
}
set_Value ("lbr_BPShipperCNPJ", lbr_BPShipperCNPJ);
}
/** Get BP Shipper CNPJ.
@return BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperCNPJ() 
{
return (String)get_Value("lbr_BPShipperCNPJ");
}
/** Set BP Shipper City.
@param lbr_BPShipperCity BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperCity (String lbr_BPShipperCity)
{
if (lbr_BPShipperCity != null && lbr_BPShipperCity.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperCity = lbr_BPShipperCity.substring(0,59);
}
set_Value ("lbr_BPShipperCity", lbr_BPShipperCity);
}
/** Get BP Shipper City.
@return BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperCity() 
{
return (String)get_Value("lbr_BPShipperCity");
}
/** Set BP Shipper Country.
@param lbr_BPShipperCountry BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperCountry (String lbr_BPShipperCountry)
{
if (lbr_BPShipperCountry != null && lbr_BPShipperCountry.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_BPShipperCountry = lbr_BPShipperCountry.substring(0,59);
}
set_Value ("lbr_BPShipperCountry", lbr_BPShipperCountry);
}
/** Get BP Shipper Country.
@return BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperCountry() 
{
return (String)get_Value("lbr_BPShipperCountry");
}
/** Set BP Shipper IE.
@param lbr_BPShipperIE BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperIE (String lbr_BPShipperIE)
{
if (lbr_BPShipperIE != null && lbr_BPShipperIE.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPShipperIE = lbr_BPShipperIE.substring(0,29);
}
set_Value ("lbr_BPShipperIE", lbr_BPShipperIE);
}
/** Get BP Shipper IE.
@return BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperIE() 
{
return (String)get_Value("lbr_BPShipperIE");
}
/** Set BP Shipper License Plate.
@param lbr_BPShipperLicensePlate Defines the BP Shipper License Plate */
public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate)
{
if (lbr_BPShipperLicensePlate != null && lbr_BPShipperLicensePlate.length() > 8)
{
log.warning("Length > 8 - truncated");
lbr_BPShipperLicensePlate = lbr_BPShipperLicensePlate.substring(0,7);
}
set_Value ("lbr_BPShipperLicensePlate", lbr_BPShipperLicensePlate);
}
/** Get BP Shipper License Plate.
@return Defines the BP Shipper License Plate */
public String getlbr_BPShipperLicensePlate() 
{
return (String)get_Value("lbr_BPShipperLicensePlate");
}
/** Set BPShipper Name.
@param lbr_BPShipperName Defines the Shipper Name */
public void setlbr_BPShipperName (String lbr_BPShipperName)
{
if (lbr_BPShipperName != null && lbr_BPShipperName.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_BPShipperName = lbr_BPShipperName.substring(0,254);
}
set_Value ("lbr_BPShipperName", lbr_BPShipperName);
}
/** Get BPShipper Name.
@return Defines the Shipper Name */
public String getlbr_BPShipperName() 
{
return (String)get_Value("lbr_BPShipperName");
}
/** Set BP Shipper Postal.
@param lbr_BPShipperPostal BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperPostal (String lbr_BPShipperPostal)
{
if (lbr_BPShipperPostal != null && lbr_BPShipperPostal.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_BPShipperPostal = lbr_BPShipperPostal.substring(0,29);
}
set_Value ("lbr_BPShipperPostal", lbr_BPShipperPostal);
}
/** Get BP Shipper Postal.
@return BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperPostal() 
{
return (String)get_Value("lbr_BPShipperPostal");
}
/** Set BP ShipperRegion.
@param lbr_BPShipperRegion BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPShipperRegion (String lbr_BPShipperRegion)
{
if (lbr_BPShipperRegion != null && lbr_BPShipperRegion.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPShipperRegion = lbr_BPShipperRegion.substring(0,1);
}
set_Value ("lbr_BPShipperRegion", lbr_BPShipperRegion);
}
/** Get BP ShipperRegion.
@return BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPShipperRegion() 
{
return (String)get_Value("lbr_BPShipperRegion");
}

/** lbr_BPTypeBR AD_Reference_ID=1000000 */
public static final int LBR_BPTYPEBR_AD_Reference_ID=1000000;
/** PF - Individual = PF */
public static final String LBR_BPTYPEBR_PF_Individual = "PF";
/** PJ - Legal Entity = PJ */
public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
/** Set Brazilian BP Type.
@param lbr_BPTypeBR Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual) */
public void setlbr_BPTypeBR (String lbr_BPTypeBR)
{
if (lbr_BPTypeBR == null || lbr_BPTypeBR.equals("PF") || lbr_BPTypeBR.equals("PJ"));
 else throw new IllegalArgumentException ("lbr_BPTypeBR Invalid value - " + lbr_BPTypeBR + " - Reference_ID=1000000 - PF - PJ");
if (lbr_BPTypeBR != null && lbr_BPTypeBR.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPTypeBR = lbr_BPTypeBR.substring(0,1);
}
set_Value ("lbr_BPTypeBR", lbr_BPTypeBR);
}
/** Get Brazilian BP Type.
@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual) */
public String getlbr_BPTypeBR() 
{
return (String)get_Value("lbr_BPTypeBR");
}
/** Set Barcode 1.
@param lbr_Barcode1 First Barcode of the Nota Fiscal */
public void setlbr_Barcode1 (String lbr_Barcode1)
{
if (lbr_Barcode1 != null && lbr_Barcode1.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_Barcode1 = lbr_Barcode1.substring(0,254);
}
set_Value ("lbr_Barcode1", lbr_Barcode1);
}
/** Get Barcode 1.
@return First Barcode of the Nota Fiscal */
public String getlbr_Barcode1() 
{
return (String)get_Value("lbr_Barcode1");
}
/** Set Barcode 2.
@param lbr_Barcode2 Second Barcode of the Nota Fiscal */
public void setlbr_Barcode2 (String lbr_Barcode2)
{
if (lbr_Barcode2 != null && lbr_Barcode2.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_Barcode2 = lbr_Barcode2.substring(0,254);
}
set_Value ("lbr_Barcode2", lbr_Barcode2);
}
/** Get Barcode 2.
@return Second Barcode of the Nota Fiscal */
public String getlbr_Barcode2() 
{
return (String)get_Value("lbr_Barcode2");
}
/** Set Bill Note.
@param lbr_BillNote Bill Note */
public void setlbr_BillNote (String lbr_BillNote)
{
if (lbr_BillNote != null && lbr_BillNote.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_BillNote = lbr_BillNote.substring(0,254);
}
set_Value ("lbr_BillNote", lbr_BillNote);
}
/** Get Bill Note.
@return Bill Note */
public String getlbr_BillNote() 
{
return (String)get_Value("lbr_BillNote");
}
/** Set CFOP Note.
@param lbr_CFOPNote Defines the CFOP Note */
public void setlbr_CFOPNote (String lbr_CFOPNote)
{
if (lbr_CFOPNote != null && lbr_CFOPNote.length() > 300)
{
log.warning("Length > 300 - truncated");
lbr_CFOPNote = lbr_CFOPNote.substring(0,299);
}
set_Value ("lbr_CFOPNote", lbr_CFOPNote);
}
/** Get CFOP Note.
@return Defines the CFOP Note */
public String getlbr_CFOPNote() 
{
return (String)get_Value("lbr_CFOPNote");
}
/** Set CFOP Reference.
@param lbr_CFOPReference Defines the CFOP Reference */
public void setlbr_CFOPReference (String lbr_CFOPReference)
{
if (lbr_CFOPReference != null && lbr_CFOPReference.length() > 300)
{
log.warning("Length > 300 - truncated");
lbr_CFOPReference = lbr_CFOPReference.substring(0,299);
}
set_Value ("lbr_CFOPReference", lbr_CFOPReference);
}
/** Get CFOP Reference.
@return Defines the CFOP Reference */
public String getlbr_CFOPReference() 
{
return (String)get_Value("lbr_CFOPReference");
}
/** Set CNPJ.
@param lbr_CNPJ Used to identify Legal Entities in Brazil */
public void setlbr_CNPJ (String lbr_CNPJ)
{
if (lbr_CNPJ != null && lbr_CNPJ.length() > 18)
{
log.warning("Length > 18 - truncated");
lbr_CNPJ = lbr_CNPJ.substring(0,17);
}
set_Value ("lbr_CNPJ", lbr_CNPJ);
}
/** Get CNPJ.
@return Used to identify Legal Entities in Brazil */
public String getlbr_CNPJ() 
{
return (String)get_Value("lbr_CNPJ");
}
/** Set Date InOut.
@param lbr_DateInOut Defines the InOut Date */
public void setlbr_DateInOut (Timestamp lbr_DateInOut)
{
set_Value ("lbr_DateInOut", lbr_DateInOut);
}
/** Get Date InOut.
@return Defines the InOut Date */
public Timestamp getlbr_DateInOut() 
{
return (Timestamp)get_Value("lbr_DateInOut");
}

/** lbr_Delivery_Location_ID AD_Reference_ID=159 */
public static final int LBR_DELIVERY_LOCATION_ID_AD_Reference_ID=159;
/** Set Delivery Location.
@param lbr_Delivery_Location_ID The Delivery Location ID */
public void setlbr_Delivery_Location_ID (int lbr_Delivery_Location_ID)
{
if (lbr_Delivery_Location_ID <= 0) set_Value ("lbr_Delivery_Location_ID", null);
 else 
set_Value ("lbr_Delivery_Location_ID", new Integer(lbr_Delivery_Location_ID));
}
/** Get Delivery Location.
@return The Delivery Location ID */
public int getlbr_Delivery_Location_ID() 
{
Integer ii = (Integer)get_Value("lbr_Delivery_Location_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Fiscal Obs..
@param lbr_FiscalOBS Fiscal Observation for the Fiscal Books */
public void setlbr_FiscalOBS (String lbr_FiscalOBS)
{
if (lbr_FiscalOBS != null && lbr_FiscalOBS.length() > 64)
{
log.warning("Length > 64 - truncated");
lbr_FiscalOBS = lbr_FiscalOBS.substring(0,63);
}
set_Value ("lbr_FiscalOBS", lbr_FiscalOBS);
}
/** Get Fiscal Obs..
@return Fiscal Observation for the Fiscal Books */
public String getlbr_FiscalOBS() 
{
return (String)get_Value("lbr_FiscalOBS");
}
/** Set Gross Weight.
@param lbr_GrossWeight Defines the Gross Weight */
public void setlbr_GrossWeight (BigDecimal lbr_GrossWeight)
{
set_Value ("lbr_GrossWeight", lbr_GrossWeight);
}
/** Get Gross Weight.
@return Defines the Gross Weight */
public BigDecimal getlbr_GrossWeight() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_GrossWeight");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set IE.
@param lbr_IE Used to Identify the IE (State Tax ID) */
public void setlbr_IE (String lbr_IE)
{
if (lbr_IE != null && lbr_IE.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_IE = lbr_IE.substring(0,29);
}
set_Value ("lbr_IE", lbr_IE);
}
/** Get IE.
@return Used to Identify the IE (State Tax ID) */
public String getlbr_IE() 
{
return (String)get_Value("lbr_IE");
}
/** Set Insurance Amt.
@param lbr_InsuranceAmt Defines the Insurance Amt */
public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt)
{
set_Value ("lbr_InsuranceAmt", lbr_InsuranceAmt);
}
/** Get Insurance Amt.
@return Defines the Insurance Amt */
public BigDecimal getlbr_InsuranceAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_InsuranceAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Is Own Document.
@param lbr_IsOwnDocument Identifies this is an own document */
public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument)
{
set_Value ("lbr_IsOwnDocument", new Boolean(lbr_IsOwnDocument));
}
/** Get Is Own Document.
@return Identifies this is an own document */
public boolean islbr_IsOwnDocument() 
{
Object oo = get_Value("lbr_IsOwnDocument");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set NCM Reference.
@param lbr_NCMReference Defines the NCM Reference */
public void setlbr_NCMReference (String lbr_NCMReference)
{
if (lbr_NCMReference != null && lbr_NCMReference.length() > 300)
{
log.warning("Length > 300 - truncated");
lbr_NCMReference = lbr_NCMReference.substring(0,299);
}
set_Value ("lbr_NCMReference", lbr_NCMReference);
}
/** Get NCM Reference.
@return Defines the NCM Reference */
public String getlbr_NCMReference() 
{
return (String)get_Value("lbr_NCMReference");
}

/** Set NFe Description.
@param lbr_NFeDesc Description of NFe */
public void setlbr_NFeDesc (String lbr_NFeDesc)
{
if (lbr_NFeDesc != null && lbr_NFeDesc.length() > 512)
{
log.warning("Length > 512 - truncated");
lbr_NFeDesc = lbr_NFeDesc.substring(0,511);
}
set_Value ("lbr_NFeDesc", lbr_NFeDesc);
}
/** Get NFe Description.
@return Description of NFe */
public String getlbr_NFeDesc() 
{
return (String)get_Value("lbr_NFeDesc");
}
/** Set NFe ID.
@param lbr_NFeID Identification of NFe */
public void setlbr_NFeID (String lbr_NFeID)
{
if (lbr_NFeID != null && lbr_NFeID.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_NFeID = lbr_NFeID.substring(0,254);
}
set_Value ("lbr_NFeID", lbr_NFeID);
}
/** Get NFe ID.
@return Identification of NFe */
public String getlbr_NFeID() 
{
return (String)get_Value("lbr_NFeID");
}
/** Set NFe Lot.
@param LBR_NFeLot_ID NFe Lot */
public void setLBR_NFeLot_ID (int LBR_NFeLot_ID)
{
if (LBR_NFeLot_ID <= 0) set_Value ("LBR_NFeLot_ID", null);
 else 
set_Value ("LBR_NFeLot_ID", new Integer(LBR_NFeLot_ID));
}
/** Get NFe Lot.
@return NFe Lot */
public int getLBR_NFeLot_ID() 
{
Integer ii = (Integer)get_Value("LBR_NFeLot_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set NFe No.
@param lbr_NFENo NFe No */
public void setlbr_NFENo (String lbr_NFENo)
{
if (lbr_NFENo != null && lbr_NFENo.length() > 22)
{
log.warning("Length > 22 - truncated");
lbr_NFENo = lbr_NFENo.substring(0,21);
}
set_Value ("lbr_NFENo", lbr_NFENo);
}
/** Get NFe No.
@return NFe No */
public String getlbr_NFENo() 
{
return (String)get_Value("lbr_NFENo");
}

/** lbr_NFReference AD_Reference_ID=1000026 */
public static final int LBR_NFREFERENCE_AD_Reference_ID=1000026;
/** Set NF Reference.
@param lbr_NFReference Reference to other NF */
public void setlbr_NFReference (int lbr_NFReference)
{
set_Value ("lbr_NFReference", new Integer(lbr_NFReference));
}
/** Get NF Reference.
@return Reference to other NF */
public int getlbr_NFReference() 
{
Integer ii = (Integer)get_Value("lbr_NFReference");
if (ii == null) return 0;
return ii.intValue();
}

/** lbr_NFType AD_Reference_ID=1000044 */
public static final int LBR_NFTYPE_AD_Reference_ID=1000044;
/** 001_ACT-Autorização de Carregamento de Transporte = 001 */
public static final String LBR_NFTYPE_001_ACT_AutorizaçãoDeCarregamentoDeTransporte = "001";
/** 002_AIMR-Atestado de Intervenção em Máquina = 002 */
public static final String LBR_NFTYPE_002_AIMR_AtestadoDeIntervençãoEmMáquina = "002";
/** 003_AIPDV-Atestado de Intervenção em PDV = 003 */
public static final String LBR_NFTYPE_003_AIPDV_AtestadoDeIntervençãoEmPDV = "003";
/** 004_BPA-Bilhete de Passagem Aquaviário = 004 */
public static final String LBR_NFTYPE_004_BPA_BilheteDePassagemAquaviário = "004";
/** 005_BPF-Bilhete de Passagem Ferroviário = 005 */
public static final String LBR_NFTYPE_005_BPF_BilheteDePassagemFerroviário = "005";
/** 006_BPNB-Bilhete de Passagem e Nota de Bagagem = 006 */
public static final String LBR_NFTYPE_006_BPNB_BilheteDePassagemENotaDeBagagem = "006";
/** 007_BPR-Bilhete de Passagem Rodoviário = 007 */
public static final String LBR_NFTYPE_007_BPR_BilheteDePassagemRodoviário = "007";
/** 008_CA-Conhecimento Aéreo = 008 */
public static final String LBR_NFTYPE_008_CA_ConhecimentoAéreo = "008";
/** 009_CTA-Conhecimento de Transporte Avulso = 009 */
public static final String LBR_NFTYPE_009_CTA_ConhecimentoDeTransporteAvulso = "009";
/** 010_CTAC-Conhecimento de Transporte Aquaviário de Cargas = 010 */
public static final String LBR_NFTYPE_010_CTAC_ConhecimentoDeTransporteAquaviárioDeCargas = "010";
/** 011_CTFC-Conhecimento de Transporte Ferroviário de Cargas = 011 */
public static final String LBR_NFTYPE_011_CTFC_ConhecimentoDeTransporteFerroviárioDeCargas = "011";
/** 012_CTRC-Conhecimento de Transporte Rodoviário de Cargas = 012 */
public static final String LBR_NFTYPE_012_CTRC_ConhecimentoDeTransporteRodoviárioDeCargas = "012";
/** 013_DAICMS-Demons. de Apuração do ICMS-DAICMS = 013 */
public static final String LBR_NFTYPE_013_DAICMS_DemonsDeApuraçãoDoICMS_DAICMS = "013";
/** 014_DCICMS-Demons. de Apuração do Compl. do ICMS-DCICMS = 014 */
public static final String LBR_NFTYPE_014_DCICMS_DemonsDeApuraçãoDoComplDoICMS_DCICMS = "014";
/** 015_DCL-Despacho de Cargas em Lotação = 015 */
public static final String LBR_NFTYPE_015_DCL_DespachoDeCargasEmLotação = "015";
/** 016_DCMS-Despacho de Cargas Modelo Simplificado = 016 */
public static final String LBR_NFTYPE_016_DCMS_DespachoDeCargasModeloSimplificado = "016";
/** 017_DEB-Documento de Excesso de Bagagem = 017 */
public static final String LBR_NFTYPE_017_DEB_DocumentoDeExcessoDeBagagem = "017";
/** 018_DSEP-Documento Simplificado de Embarque de Passageiro = 018 */
public static final String LBR_NFTYPE_018_DSEP_DocumentoSimplificadoDeEmbarqueDePassageiro = "018";
/** 019_DSICMS-Demons. de Contrib. Substituto do ICMS-DSICMS = 019 */
public static final String LBR_NFTYPE_019_DSICMS_DemonsDeContribSubstitutoDoICMS_DSICMS = "019";
/** 020_DT-Despacho de Transporte = 020 */
public static final String LBR_NFTYPE_020_DT_DespachoDeTransporte = "020";
/** 021_EF-Extrato de Faturamento = 021 */
public static final String LBR_NFTYPE_021_EF_ExtratoDeFaturamento = "021";
/** 022_GNR-Guia Nacional de Recolhimento de Tributos Estaduais = 022 */
public static final String LBR_NFTYPE_022_GNR_GuiaNacionalDeRecolhimentoDeTributosEstaduais = "022";
/** 023_MC-Manifesto de Carga = 023 */
public static final String LBR_NFTYPE_023_MC_ManifestoDeCarga = "023";
/** 024_NF-Nota Fiscal = 024 */
public static final String LBR_NFTYPE_024_NF_NotaFiscal = "024";
/** 025_NFA-Nota Fiscal Avulsa = 025 */
public static final String LBR_NFTYPE_025_NFA_NotaFiscalAvulsa = "025";
/** 026_NFCEE-Nota Fiscal/Conta de Energia Elétrica = 026 */
public static final String LBR_NFTYPE_026_NFCEE_NotaFiscalContaDeEnergiaElétrica = "026";
/** 027_NFCFA-Nota Fiscal/Conta de Fornecimento de Água = 027 */
public static final String LBR_NFTYPE_027_NFCFA_NotaFiscalContaDeFornecimentoDeÁgua = "027";
/** 028_NFE-Nota Fiscal de Entrada = 028 */
public static final String LBR_NFTYPE_028_NFE_NotaFiscalDeEntrada = "028";
/** 029_NFF-NFF = 029 */
public static final String LBR_NFTYPE_029_NFF_NFF = "029";
/** 030_NFME-Nota Fiscal Microempresa = 030 */
public static final String LBR_NFTYPE_030_NFME_NotaFiscalMicroempresa = "030";
/** 031_NFP-Nota Fiscal de Produtor = 031 */
public static final String LBR_NFTYPE_031_NFP_NotaFiscalDeProdutor = "031";
/** 032_NFS-Nota Fiscal Simplificada = 032 */
public static final String LBR_NFTYPE_032_NFS_NotaFiscalSimplificada = "032";
/** 033_NFSC-Nota Fiscal e Serviço de Comunicação = 033 */
public static final String LBR_NFTYPE_033_NFSC_NotaFiscalEServiçoDeComunicação = "033";
/** 034_NFSTC-Nota Fiscal de Serviço de Telecomunicações = 034 */
public static final String LBR_NFTYPE_034_NFSTC_NotaFiscalDeServiçoDeTelecomunicações = "034";
/** 035_NFSTR-Nota Fiscal de Serviço de Transporte = 035 */
public static final String LBR_NFTYPE_035_NFSTR_NotaFiscalDeServiçoDeTransporte = "035";
/** 036_NFVC-Nota Fiscal de Venda a Consumidor = 036 */
public static final String LBR_NFTYPE_036_NFVC_NotaFiscalDeVendaAConsumidor = "036";
/** 037_OCC-Ordem de Coleta de Carga = 037 */
public static final String LBR_NFTYPE_037_OCC_OrdemDeColetaDeCarga = "037";
/** 038_RD-Relação de Despachos = 038 */
public static final String LBR_NFTYPE_038_RD_RelaçãoDeDespachos = "038";
/** 039_RECA-Relatório de Emissão de Conhecimento Aéreos = 039 */
public static final String LBR_NFTYPE_039_RECA_RelatórioDeEmissãoDeConhecimentoAéreos = "039";
/** 040_REP-Relatório de Embarque de Passageiros = 040 */
public static final String LBR_NFTYPE_040_REP_RelatórioDeEmbarqueDePassageiros = "040";
/** 041_RMD-Resumo de Movimento Diário = 041 */
public static final String LBR_NFTYPE_041_RMD_ResumoDeMovimentoDiário = "041";
/** Set NF Type.
@param lbr_NFType Nota Fiscal Type */
public void setlbr_NFType (String lbr_NFType)
{
if (lbr_NFType == null || lbr_NFType.equals("001") || lbr_NFType.equals("002") || lbr_NFType.equals("003") || lbr_NFType.equals("004") || lbr_NFType.equals("005") || lbr_NFType.equals("006") || lbr_NFType.equals("007") || lbr_NFType.equals("008") || lbr_NFType.equals("009") || lbr_NFType.equals("010") || lbr_NFType.equals("011") || lbr_NFType.equals("012") || lbr_NFType.equals("013") || lbr_NFType.equals("014") || lbr_NFType.equals("015") || lbr_NFType.equals("016") || lbr_NFType.equals("017") || lbr_NFType.equals("018") || lbr_NFType.equals("019") || lbr_NFType.equals("020") || lbr_NFType.equals("021") || lbr_NFType.equals("022") || lbr_NFType.equals("023") || lbr_NFType.equals("024") || lbr_NFType.equals("025") || lbr_NFType.equals("026") || lbr_NFType.equals("027") || lbr_NFType.equals("028") || lbr_NFType.equals("029") || lbr_NFType.equals("030") || lbr_NFType.equals("031") || lbr_NFType.equals("032") || lbr_NFType.equals("033") || lbr_NFType.equals("034") || lbr_NFType.equals("035") || lbr_NFType.equals("036") || lbr_NFType.equals("037") || lbr_NFType.equals("038") || lbr_NFType.equals("039") || lbr_NFType.equals("040") || lbr_NFType.equals("041"));
 else throw new IllegalArgumentException ("lbr_NFType Invalid value - " + lbr_NFType + " - Reference_ID=1000044 - 001 - 002 - 003 - 004 - 005 - 006 - 007 - 008 - 009 - 010 - 011 - 012 - 013 - 014 - 015 - 016 - 017 - 018 - 019 - 020 - 021 - 022 - 023 - 024 - 025 - 026 - 027 - 028 - 029 - 030 - 031 - 032 - 033 - 034 - 035 - 036 - 037 - 038 - 039 - 040 - 041");
if (lbr_NFType != null && lbr_NFType.length() > 6)
{
log.warning("Length > 6 - truncated");
lbr_NFType = lbr_NFType.substring(0,5);
}
set_Value ("lbr_NFType", lbr_NFType);
}
/** Get NF Type.
@return Nota Fiscal Type */
public String getlbr_NFType() 
{
return (String)get_Value("lbr_NFType");
}
/** Set Net Weight.
@param lbr_NetWeight Defines the Net Weight */
public void setlbr_NetWeight (BigDecimal lbr_NetWeight)
{
set_Value ("lbr_NetWeight", lbr_NetWeight);
}
/** Get Net Weight.
@return Defines the Net Weight */
public BigDecimal getlbr_NetWeight() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_NetWeight");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Organization Address 1.
@param lbr_OrgAddress1 The issuer organization address 1 */
public void setlbr_OrgAddress1 (String lbr_OrgAddress1)
{
if (lbr_OrgAddress1 != null && lbr_OrgAddress1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgAddress1 = lbr_OrgAddress1.substring(0,59);
}
set_Value ("lbr_OrgAddress1", lbr_OrgAddress1);
}
/** Get Organization Address 1.
@return The issuer organization address 1 */
public String getlbr_OrgAddress1() 
{
return (String)get_Value("lbr_OrgAddress1");
}
/** Set Organization Address 2.
@param lbr_OrgAddress2 The issuer organization address 2 */
public void setlbr_OrgAddress2 (String lbr_OrgAddress2)
{
if (lbr_OrgAddress2 != null && lbr_OrgAddress2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgAddress2 = lbr_OrgAddress2.substring(0,59);
}
set_Value ("lbr_OrgAddress2", lbr_OrgAddress2);
}
/** Get Organization Address 2.
@return The issuer organization address 2 */
public String getlbr_OrgAddress2() 
{
return (String)get_Value("lbr_OrgAddress2");
}
/** Set Organization Address 3.
@param lbr_OrgAddress3 The issuer organization address 3 */
public void setlbr_OrgAddress3 (String lbr_OrgAddress3)
{
if (lbr_OrgAddress3 != null && lbr_OrgAddress3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgAddress3 = lbr_OrgAddress3.substring(0,59);
}
set_Value ("lbr_OrgAddress3", lbr_OrgAddress3);
}
/** Get Organization Address 3.
@return The issuer organization address 3 */
public String getlbr_OrgAddress3() 
{
return (String)get_Value("lbr_OrgAddress3");
}
/** Set Organization Address 4.
@param lbr_OrgAddress4 The issuer organization address 4 */
public void setlbr_OrgAddress4 (String lbr_OrgAddress4)
{
if (lbr_OrgAddress4 != null && lbr_OrgAddress4.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgAddress4 = lbr_OrgAddress4.substring(0,59);
}
set_Value ("lbr_OrgAddress4", lbr_OrgAddress4);
}
/** Get Organization Address 4.
@return The issuer organization address 4 */
public String getlbr_OrgAddress4() 
{
return (String)get_Value("lbr_OrgAddress4");
}
/** Set Organization CCM.
@param lbr_OrgCCM The Organization CCM */
public void setlbr_OrgCCM (String lbr_OrgCCM)
{
if (lbr_OrgCCM != null && lbr_OrgCCM.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_OrgCCM = lbr_OrgCCM.substring(0,29);
}
set_Value ("lbr_OrgCCM", lbr_OrgCCM);
}
/** Get Organization CCM.
@return The Organization CCM */
public String getlbr_OrgCCM() 
{
return (String)get_Value("lbr_OrgCCM");
}
/** Set Organization City.
@param lbr_OrgCity The City of the Organization */
public void setlbr_OrgCity (String lbr_OrgCity)
{
if (lbr_OrgCity != null && lbr_OrgCity.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgCity = lbr_OrgCity.substring(0,59);
}
set_Value ("lbr_OrgCity", lbr_OrgCity);
}
/** Get Organization City.
@return The City of the Organization */
public String getlbr_OrgCity() 
{
return (String)get_Value("lbr_OrgCity");
}
/** Set Organization Country.
@param lbr_OrgCountry The Country of the Organization */
public void setlbr_OrgCountry (String lbr_OrgCountry)
{
if (lbr_OrgCountry != null && lbr_OrgCountry.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgCountry = lbr_OrgCountry.substring(0,59);
}
set_Value ("lbr_OrgCountry", lbr_OrgCountry);
}
/** Get Organization Country.
@return The Country of the Organization */
public String getlbr_OrgCountry() 
{
return (String)get_Value("lbr_OrgCountry");
}
/** Set Organization Name.
@param lbr_OrgName The Name of the Organization */
public void setlbr_OrgName (String lbr_OrgName)
{
if (lbr_OrgName != null && lbr_OrgName.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_OrgName = lbr_OrgName.substring(0,59);
}
set_Value ("lbr_OrgName", lbr_OrgName);
}
/** Get Organization Name.
@return The Name of the Organization */
public String getlbr_OrgName() 
{
return (String)get_Value("lbr_OrgName");
}
/** Set Organization Phone.
@param lbr_OrgPhone The Organization Phone */
public void setlbr_OrgPhone (String lbr_OrgPhone)
{
if (lbr_OrgPhone != null && lbr_OrgPhone.length() > 40)
{
log.warning("Length > 40 - truncated");
lbr_OrgPhone = lbr_OrgPhone.substring(0,39);
}
set_Value ("lbr_OrgPhone", lbr_OrgPhone);
}
/** Get Organization Phone.
@return The Organization Phone */
public String getlbr_OrgPhone() 
{
return (String)get_Value("lbr_OrgPhone");
}
/** Set Organization Postal Code.
@param lbr_OrgPostal The Postal Code of the Organization */
public void setlbr_OrgPostal (String lbr_OrgPostal)
{
if (lbr_OrgPostal != null && lbr_OrgPostal.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_OrgPostal = lbr_OrgPostal.substring(0,9);
}
set_Value ("lbr_OrgPostal", lbr_OrgPostal);
}
/** Get Organization Postal Code.
@return The Postal Code of the Organization */
public String getlbr_OrgPostal() 
{
return (String)get_Value("lbr_OrgPostal");
}
/** Set Organization Region.
@param lbr_OrgRegion The Region of the Organization */
public void setlbr_OrgRegion (String lbr_OrgRegion)
{
if (lbr_OrgRegion != null && lbr_OrgRegion.length() > 40)
{
log.warning("Length > 40 - truncated");
lbr_OrgRegion = lbr_OrgRegion.substring(0,39);
}
set_Value ("lbr_OrgRegion", lbr_OrgRegion);
}
/** Get Organization Region.
@return The Region of the Organization */
public String getlbr_OrgRegion() 
{
return (String)get_Value("lbr_OrgRegion");
}
/** Set Packing Type.
@param lbr_PackingType Defines the Packing Type */
public void setlbr_PackingType (String lbr_PackingType)
{
if (lbr_PackingType != null && lbr_PackingType.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_PackingType = lbr_PackingType.substring(0,59);
}
set_Value ("lbr_PackingType", lbr_PackingType);
}
/** Get Packing Type.
@return Defines the Packing Type */
public String getlbr_PackingType() 
{
return (String)get_Value("lbr_PackingType");
}
/** Set Process Cancel Nota Fiscal.
@param lbr_ProcCancelNF Process to Cancel Nota Fiscal */
public void setlbr_ProcCancelNF (String lbr_ProcCancelNF)
{
if (lbr_ProcCancelNF != null && lbr_ProcCancelNF.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_ProcCancelNF = lbr_ProcCancelNF.substring(0,0);
}
set_Value ("lbr_ProcCancelNF", lbr_ProcCancelNF);
}
/** Get Process Cancel Nota Fiscal.
@return Process to Cancel Nota Fiscal */
public String getlbr_ProcCancelNF() 
{
return (String)get_Value("lbr_ProcCancelNF");
}
/** Set Service Total Amount.
@param lbr_ServiceTotalAmt Defines the Service Total Amount */
public void setlbr_ServiceTotalAmt (BigDecimal lbr_ServiceTotalAmt)
{
set_Value ("lbr_ServiceTotalAmt", lbr_ServiceTotalAmt);
}
/** Get Service Total Amount.
@return Defines the Service Total Amount */
public BigDecimal getlbr_ServiceTotalAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_ServiceTotalAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Shipment Note.
@param lbr_ShipNote Extra Shipment Information  */
public void setlbr_ShipNote (String lbr_ShipNote)
{
if (lbr_ShipNote != null && lbr_ShipNote.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_ShipNote = lbr_ShipNote.substring(0,254);
}
set_Value ("lbr_ShipNote", lbr_ShipNote);
}
/** Get Shipment Note.
@return Extra Shipment Information  */
public String getlbr_ShipNote() 
{
return (String)get_Value("lbr_ShipNote");
}

/** lbr_Ship_Location_ID AD_Reference_ID=159 */
public static final int LBR_SHIP_LOCATION_ID_AD_Reference_ID=159;
/** Set Ship Location.
@param lbr_Ship_Location_ID The Shipment Location ID */
public void setlbr_Ship_Location_ID (int lbr_Ship_Location_ID)
{
if (lbr_Ship_Location_ID <= 0) set_Value ("lbr_Ship_Location_ID", null);
 else 
set_Value ("lbr_Ship_Location_ID", new Integer(lbr_Ship_Location_ID));
}
/** Get Ship Location.
@return The Shipment Location ID */
public int getlbr_Ship_Location_ID() 
{
Integer ii = (Integer)get_Value("lbr_Ship_Location_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Time InOut.
@param lbr_TimeInOut Defines the InOut Time */
public void setlbr_TimeInOut (String lbr_TimeInOut)
{
if (lbr_TimeInOut != null && lbr_TimeInOut.length() > 5)
{
log.warning("Length > 5 - truncated");
lbr_TimeInOut = lbr_TimeInOut.substring(0,4);
}
set_Value ("lbr_TimeInOut", lbr_TimeInOut);
}
/** Get Time InOut.
@return Defines the InOut Time */
public String getlbr_TimeInOut() 
{
return (String)get_Value("lbr_TimeInOut");
}
/** Set CIF Total.
@param lbr_TotalCIF CIF Total for all the document */
public void setlbr_TotalCIF (BigDecimal lbr_TotalCIF)
{
set_Value ("lbr_TotalCIF", lbr_TotalCIF);
}
/** Get CIF Total.
@return CIF Total for all the document */
public BigDecimal getlbr_TotalCIF() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TotalCIF");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set SISCOMEX Total.
@param lbr_TotalSISCOMEX SISCOMEX Total for all the document */
public void setlbr_TotalSISCOMEX (BigDecimal lbr_TotalSISCOMEX)
{
set_Value ("lbr_TotalSISCOMEX", lbr_TotalSISCOMEX);
}
/** Get SISCOMEX Total.
@return SISCOMEX Total for all the document */
public BigDecimal getlbr_TotalSISCOMEX() 
{
BigDecimal bd = (BigDecimal)get_Value("lbr_TotalSISCOMEX");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Service Description.
@param z_DescriptionServicos Service Description */
public void setz_DescriptionServicos (String z_DescriptionServicos)
{
if (z_DescriptionServicos != null && z_DescriptionServicos.length() > 255)
{
log.warning("Length > 255 - truncated");
z_DescriptionServicos = z_DescriptionServicos.substring(0,254);
}
set_Value ("z_DescriptionServicos", z_DescriptionServicos);
}
/** Get Service Description.
@return Service Description */
public String getz_DescriptionServicos() 
{
return (String)get_Value("z_DescriptionServicos");
}
/** Set NF Entrada No.
@param z_NFEntradaNO NF Entrada No */
public void setz_NFEntradaNO (String z_NFEntradaNO)
{
if (z_NFEntradaNO != null && z_NFEntradaNO.length() > 22)
{
log.warning("Length > 22 - truncated");
z_NFEntradaNO = z_NFEntradaNO.substring(0,21);
}
set_Value ("z_NFEntradaNO", z_NFEntradaNO);
}
/** Get NF Entrada No.
@return NF Entrada No */
public String getz_NFEntradaNO() 
{
return (String)get_Value("z_NFEntradaNO");
}
/** Set Package Name.
@param z_PackageName Package Name */
public void setz_PackageName (String z_PackageName)
{
if (z_PackageName != null && z_PackageName.length() > 40)
{
log.warning("Length > 40 - truncated");
z_PackageName = z_PackageName.substring(0,39);
}
set_Value ("z_PackageName", z_PackageName);
}
/** Get Package Name.
@return Package Name */
public String getz_PackageName() 
{
return (String)get_Value("z_PackageName");
}
/** Set Sistema Composto.
@param z_SistemaComposto Sistema Composto */
public void setz_SistemaComposto (boolean z_SistemaComposto)
{
set_Value ("z_SistemaComposto", new Boolean(z_SistemaComposto));
}
/** Get Sistema Composto.
@return Sistema Composto */
public boolean isz_SistemaComposto() 
{
Object oo = get_Value("z_SistemaComposto");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** z_TaxTrxType AD_Reference_ID=3000000 */
public static final int Z_TAXTRXTYPE_AD_Reference_ID=3000000;
/** Entrada = E */
public static final String Z_TAXTRXTYPE_Entrada = "E";
/** Importação = I */
public static final String Z_TAXTRXTYPE_Importação = "I";
/** Saída = S */
public static final String Z_TAXTRXTYPE_Saída = "S";
/** Exportação = X */
public static final String Z_TAXTRXTYPE_Exportação = "X";
/** Set Transaction Type.
@param z_TaxTrxType Define the transaction type */
public void setz_TaxTrxType (String z_TaxTrxType)
{
if (z_TaxTrxType == null || z_TaxTrxType.equals("E") || z_TaxTrxType.equals("I") || z_TaxTrxType.equals("S") || z_TaxTrxType.equals("X"));
 else throw new IllegalArgumentException ("z_TaxTrxType Invalid value - " + z_TaxTrxType + " - Reference_ID=3000000 - E - I - S - X");
if (z_TaxTrxType != null && z_TaxTrxType.length() > 1)
{
log.warning("Length > 1 - truncated");
z_TaxTrxType = z_TaxTrxType.substring(0,0);
}
set_Value ("z_TaxTrxType", z_TaxTrxType);
}
/** Get Transaction Type.
@return Define the transaction type */
public String getz_TaxTrxType() 
{
return (String)get_Value("z_TaxTrxType");
}

/** z_TaxType AD_Reference_ID=3000001 */
public static final int Z_TAXTYPE_AD_Reference_ID=3000001;
/** Consumo = C */
public static final String Z_TAXTYPE_Consumo = "C";
/** Industrialização = I */
public static final String Z_TAXTYPE_Industrialização = "I";
/** Set Tax Type.
@param z_TaxType Defines the type of operation that this tax is applied to */
public void setz_TaxType (String z_TaxType)
{
if (z_TaxType == null || z_TaxType.equals("C") || z_TaxType.equals("I"));
 else throw new IllegalArgumentException ("z_TaxType Invalid value - " + z_TaxType + " - Reference_ID=3000001 - C - I");
if (z_TaxType != null && z_TaxType.length() > 1)
{
log.warning("Length > 1 - truncated");
z_TaxType = z_TaxType.substring(0,0);
}
set_Value ("z_TaxType", z_TaxType);
}
/** Get Tax Type.
@return Defines the type of operation that this tax is applied to */
public String getz_TaxType() 
{
return (String)get_Value("z_TaxType");
}
/** Set Total II.
@param z_TotalII Total II of all document lines */
public void setz_TotalII (BigDecimal z_TotalII)
{
set_Value ("z_TotalII", z_TotalII);
}
/** Get Total II.
@return Total II of all document lines */
public BigDecimal getz_TotalII() 
{
BigDecimal bd = (BigDecimal)get_Value("z_TotalII");
if (bd == null) return Env.ZERO;
return bd;
}
}
