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
/** Freight included = I */
public static final String FREIGHTCOSTRULE_FreightIncluded = "I";
/** Fix price = F */
public static final String FREIGHTCOSTRULE_FixPrice = "F";
/** Calculated = C */
public static final String FREIGHTCOSTRULE_Calculated = "C";
/** Line = L */
public static final String FREIGHTCOSTRULE_Line = "L";
/** Set Freight Cost Rule.
@param FreightCostRule Method for charging Freight */
public void setFreightCostRule (String FreightCostRule)
{
if (FreightCostRule == null || FreightCostRule.equals("I") || FreightCostRule.equals("F") || FreightCostRule.equals("C") || FreightCostRule.equals("L"));
 else throw new IllegalArgumentException ("FreightCostRule Invalid value - " + FreightCostRule + " - Reference_ID=153 - I - F - C - L");
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
}
