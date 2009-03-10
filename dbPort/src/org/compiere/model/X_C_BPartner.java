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
/** Generated Model for C_BPartner
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_C_BPartner extends PO
{
/** Standard Constructor
@param ctx context
@param C_BPartner_ID id
@param trxName transaction
*/
public X_C_BPartner (Properties ctx, int C_BPartner_ID, String trxName)
{
super (ctx, C_BPartner_ID, trxName);
/** if (C_BPartner_ID == 0)
{
setC_BP_Group_ID (0);
setC_BPartner_ID (0);
setIsCustomer (false);
setIsEmployee (false);
setIsOneTime (false);
setIsProspect (false);
setIsSalesRep (false);
setIsSummary (false);
setIsVendor (false);
setName (null);
setSO_CreditLimit (Env.ZERO);
setSO_CreditUsed (Env.ZERO);
setSendEMail (false);
setValue (null);
setlbr_BPTypeBR (null);
setlbr_BPTypeBRIsValid (false);	// 'N'
setlbr_CNPJ (null);
setlbr_CPF (null);
setlbr_HasSubstitution (false);	// 'N'
setlbr_IsIEExempt (false);	// 'N'
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_C_BPartner (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("C_BPartner");

/** TableName=C_BPartner */
public static final String Table_Name="C_BPartner";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"C_BPartner");

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
StringBuffer sb = new StringBuffer ("X_C_BPartner[").append(get_ID()).append("]");
return sb.toString();
}

/** AD_Language AD_Reference_ID=327 */
public static final int AD_LANGUAGE_AD_Reference_ID=327;
/** Set Language.
@param AD_Language Language for this entity */
public void setAD_Language (String AD_Language)
{
if (AD_Language != null && AD_Language.length() > 6)
{
log.warning("Length > 6 - truncated");
AD_Language = AD_Language.substring(0,5);
}
set_Value ("AD_Language", AD_Language);
}
/** Get Language.
@return Language for this entity */
public String getAD_Language() 
{
return (String)get_Value("AD_Language");
}
/** Set Linked Organization.
@param AD_OrgBP_ID The Business Partner is another Organization for explicit Inter-Org transactions */
public void setAD_OrgBP_ID (String AD_OrgBP_ID)
{
if (AD_OrgBP_ID != null && AD_OrgBP_ID.length() > 22)
{
log.warning("Length > 22 - truncated");
AD_OrgBP_ID = AD_OrgBP_ID.substring(0,21);
}
set_Value ("AD_OrgBP_ID", AD_OrgBP_ID);
}
/** Get Linked Organization.
@return The Business Partner is another Organization for explicit Inter-Org transactions */
public String getAD_OrgBP_ID() 
{
return (String)get_Value("AD_OrgBP_ID");
}
/** Set Acquisition Cost.
@param AcqusitionCost The cost of gaining the prospect as a customer */
public void setAcqusitionCost (BigDecimal AcqusitionCost)
{
set_Value ("AcqusitionCost", AcqusitionCost);
}
/** Get Acquisition Cost.
@return The cost of gaining the prospect as a customer */
public BigDecimal getAcqusitionCost() 
{
BigDecimal bd = (BigDecimal)get_Value("AcqusitionCost");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Actual Life Time Value.
@param ActualLifeTimeValue Actual Life Time Revenue */
public void setActualLifeTimeValue (BigDecimal ActualLifeTimeValue)
{
set_Value ("ActualLifeTimeValue", ActualLifeTimeValue);
}
/** Get Actual Life Time Value.
@return Actual Life Time Revenue */
public BigDecimal getActualLifeTimeValue() 
{
BigDecimal bd = (BigDecimal)get_Value("ActualLifeTimeValue");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Partner Parent.
@param BPartner_Parent_ID Business Partner Parent */
public void setBPartner_Parent_ID (int BPartner_Parent_ID)
{
if (BPartner_Parent_ID <= 0) set_Value ("BPartner_Parent_ID", null);
 else 
set_Value ("BPartner_Parent_ID", new Integer(BPartner_Parent_ID));
}
/** Get Partner Parent.
@return Business Partner Parent */
public int getBPartner_Parent_ID() 
{
Integer ii = (Integer)get_Value("BPartner_Parent_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Business Partner Group.
@param C_BP_Group_ID Business Partner Group */
public void setC_BP_Group_ID (int C_BP_Group_ID)
{
if (C_BP_Group_ID < 1) throw new IllegalArgumentException ("C_BP_Group_ID is mandatory.");
set_Value ("C_BP_Group_ID", new Integer(C_BP_Group_ID));
}
/** Get Business Partner Group.
@return Business Partner Group */
public int getC_BP_Group_ID() 
{
Integer ii = (Integer)get_Value("C_BP_Group_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Business Partner .
@param C_BPartner_ID Identifies a Business Partner */
public void setC_BPartner_ID (int C_BPartner_ID)
{
if (C_BPartner_ID < 1) throw new IllegalArgumentException ("C_BPartner_ID is mandatory.");
set_ValueNoCheck ("C_BPartner_ID", new Integer(C_BPartner_ID));
}
/** Get Business Partner .
@return Identifies a Business Partner */
public int getC_BPartner_ID() 
{
Integer ii = (Integer)get_Value("C_BPartner_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_BankAccount_ID AD_Reference_ID=1000036 */
public static final int C_BANKACCOUNT_ID_AD_Reference_ID=1000036;
/** Set Bank Account.
@param C_BankAccount_ID Account at the Bank */
public void setC_BankAccount_ID (int C_BankAccount_ID)
{
if (C_BankAccount_ID <= 0) set_Value ("C_BankAccount_ID", null);
 else 
set_Value ("C_BankAccount_ID", new Integer(C_BankAccount_ID));
}
/** Get Bank Account.
@return Account at the Bank */
public int getC_BankAccount_ID() 
{
Integer ii = (Integer)get_Value("C_BankAccount_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Dunning.
@param C_Dunning_ID Dunning Rules for overdue invoices */
public void setC_Dunning_ID (int C_Dunning_ID)
{
if (C_Dunning_ID <= 0) set_Value ("C_Dunning_ID", null);
 else 
set_Value ("C_Dunning_ID", new Integer(C_Dunning_ID));
}
/** Get Dunning.
@return Dunning Rules for overdue invoices */
public int getC_Dunning_ID() 
{
Integer ii = (Integer)get_Value("C_Dunning_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Greeting.
@param C_Greeting_ID Greeting to print on correspondence */
public void setC_Greeting_ID (int C_Greeting_ID)
{
if (C_Greeting_ID <= 0) set_Value ("C_Greeting_ID", null);
 else 
set_Value ("C_Greeting_ID", new Integer(C_Greeting_ID));
}
/** Get Greeting.
@return Greeting to print on correspondence */
public int getC_Greeting_ID() 
{
Integer ii = (Integer)get_Value("C_Greeting_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Invoice Schedule.
@param C_InvoiceSchedule_ID Schedule for generating Invoices */
public void setC_InvoiceSchedule_ID (int C_InvoiceSchedule_ID)
{
if (C_InvoiceSchedule_ID <= 0) set_Value ("C_InvoiceSchedule_ID", null);
 else 
set_Value ("C_InvoiceSchedule_ID", new Integer(C_InvoiceSchedule_ID));
}
/** Get Invoice Schedule.
@return Schedule for generating Invoices */
public int getC_InvoiceSchedule_ID() 
{
Integer ii = (Integer)get_Value("C_InvoiceSchedule_ID");
if (ii == null) return 0;
return ii.intValue();
}
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
/** Set D-U-N-S.
@param DUNS Dun & Bradstreet Number */
public void setDUNS (String DUNS)
{
if (DUNS != null && DUNS.length() > 11)
{
log.warning("Length > 11 - truncated");
DUNS = DUNS.substring(0,10);
}
set_Value ("DUNS", DUNS);
}
/** Get D-U-N-S.
@return Dun & Bradstreet Number */
public String getDUNS() 
{
return (String)get_Value("DUNS");
}

/** DeliveryRule AD_Reference_ID=151 */
public static final int DELIVERYRULE_AD_Reference_ID=151;
/** After Receipt = R */
public static final String DELIVERYRULE_AfterReceipt = "R";
/** Availability = A */
public static final String DELIVERYRULE_Availability = "A";
/** Complete Line = L */
public static final String DELIVERYRULE_CompleteLine = "L";
/** Complete Order = O */
public static final String DELIVERYRULE_CompleteOrder = "O";
/** Manual = M */
public static final String DELIVERYRULE_Manual = "M";
/** Force = F */
public static final String DELIVERYRULE_Force = "F";
/** Set Delivery Rule.
@param DeliveryRule Defines the timing of Delivery */
public void setDeliveryRule (String DeliveryRule)
{
if (DeliveryRule == null || DeliveryRule.equals("R") || DeliveryRule.equals("A") || DeliveryRule.equals("L") || DeliveryRule.equals("O") || DeliveryRule.equals("M") || DeliveryRule.equals("F"));
 else throw new IllegalArgumentException ("DeliveryRule Invalid value - " + DeliveryRule + " - Reference_ID=151 - R - A - L - O - M - F");
if (DeliveryRule != null && DeliveryRule.length() > 1)
{
log.warning("Length > 1 - truncated");
DeliveryRule = DeliveryRule.substring(0,0);
}
set_Value ("DeliveryRule", DeliveryRule);
}
/** Get Delivery Rule.
@return Defines the timing of Delivery */
public String getDeliveryRule() 
{
return (String)get_Value("DeliveryRule");
}

/** DeliveryViaRule AD_Reference_ID=152 */
public static final int DELIVERYVIARULE_AD_Reference_ID=152;
/** Pickup = P */
public static final String DELIVERYVIARULE_Pickup = "P";
/** Delivery = D */
public static final String DELIVERYVIARULE_Delivery = "D";
/** Shipper = S */
public static final String DELIVERYVIARULE_Shipper = "S";
/** Set Delivery Via.
@param DeliveryViaRule How the order will be delivered */
public void setDeliveryViaRule (String DeliveryViaRule)
{
if (DeliveryViaRule == null || DeliveryViaRule.equals("P") || DeliveryViaRule.equals("D") || DeliveryViaRule.equals("S"));
 else throw new IllegalArgumentException ("DeliveryViaRule Invalid value - " + DeliveryViaRule + " - Reference_ID=152 - P - D - S");
if (DeliveryViaRule != null && DeliveryViaRule.length() > 1)
{
log.warning("Length > 1 - truncated");
DeliveryViaRule = DeliveryViaRule.substring(0,0);
}
set_Value ("DeliveryViaRule", DeliveryViaRule);
}
/** Get Delivery Via.
@return How the order will be delivered */
public String getDeliveryViaRule() 
{
return (String)get_Value("DeliveryViaRule");
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
/** Set Document Copies.
@param DocumentCopies Number of copies to be printed */
public void setDocumentCopies (int DocumentCopies)
{
set_Value ("DocumentCopies", new Integer(DocumentCopies));
}
/** Get Document Copies.
@return Number of copies to be printed */
public int getDocumentCopies() 
{
Integer ii = (Integer)get_Value("DocumentCopies");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Dunning Grace.
@param DunningGrace Dunning Grace */
public void setDunningGrace (Timestamp DunningGrace)
{
set_Value ("DunningGrace", DunningGrace);
}
/** Get Dunning Grace.
@return Dunning Grace */
public Timestamp getDunningGrace() 
{
return (Timestamp)get_Value("DunningGrace");
}
/** Set First Sale.
@param FirstSale Date of First Sale */
public void setFirstSale (Timestamp FirstSale)
{
set_Value ("FirstSale", FirstSale);
}
/** Get First Sale.
@return Date of First Sale */
public Timestamp getFirstSale() 
{
return (Timestamp)get_Value("FirstSale");
}
/** Set Flat Discount %.
@param FlatDiscount Flat discount percentage  */
public void setFlatDiscount (BigDecimal FlatDiscount)
{
set_Value ("FlatDiscount", FlatDiscount);
}
/** Get Flat Discount %.
@return Flat discount percentage  */
public BigDecimal getFlatDiscount() 
{
BigDecimal bd = (BigDecimal)get_Value("FlatDiscount");
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
/** Freight excluded = E */
public static final String FREIGHTCOSTRULE_FreightExcluded = "E";
/** Set Freight Cost Rule.
@param FreightCostRule Method for charging Freight */
public void setFreightCostRule (String FreightCostRule)
{
if (FreightCostRule == null || FreightCostRule.equals("I") || FreightCostRule.equals("F") || FreightCostRule.equals("C") || FreightCostRule.equals("L") || FreightCostRule.equals("E"));
 else throw new IllegalArgumentException ("FreightCostRule Invalid value - " + FreightCostRule + " - Reference_ID=153 - I - F - C - L - E");
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

/** InvoiceRule AD_Reference_ID=150 */
public static final int INVOICERULE_AD_Reference_ID=150;
/** After Order delivered = O */
public static final String INVOICERULE_AfterOrderDelivered = "O";
/** After Delivery = D */
public static final String INVOICERULE_AfterDelivery = "D";
/** Customer Schedule after Delivery = S */
public static final String INVOICERULE_CustomerScheduleAfterDelivery = "S";
/** Immediate = I */
public static final String INVOICERULE_Immediate = "I";
/** Set Invoice Rule.
@param InvoiceRule Frequency and method of invoicing  */
public void setInvoiceRule (String InvoiceRule)
{
if (InvoiceRule == null || InvoiceRule.equals("O") || InvoiceRule.equals("D") || InvoiceRule.equals("S") || InvoiceRule.equals("I"));
 else throw new IllegalArgumentException ("InvoiceRule Invalid value - " + InvoiceRule + " - Reference_ID=150 - O - D - S - I");
if (InvoiceRule != null && InvoiceRule.length() > 1)
{
log.warning("Length > 1 - truncated");
InvoiceRule = InvoiceRule.substring(0,0);
}
set_Value ("InvoiceRule", InvoiceRule);
}
/** Get Invoice Rule.
@return Frequency and method of invoicing  */
public String getInvoiceRule() 
{
return (String)get_Value("InvoiceRule");
}

/** Invoice_PrintFormat_ID AD_Reference_ID=261 */
public static final int INVOICE_PRINTFORMAT_ID_AD_Reference_ID=261;
/** Set Invoice Print Format.
@param Invoice_PrintFormat_ID Print Format for printing Invoices */
public void setInvoice_PrintFormat_ID (int Invoice_PrintFormat_ID)
{
if (Invoice_PrintFormat_ID <= 0) set_Value ("Invoice_PrintFormat_ID", null);
 else 
set_Value ("Invoice_PrintFormat_ID", new Integer(Invoice_PrintFormat_ID));
}
/** Get Invoice Print Format.
@return Print Format for printing Invoices */
public int getInvoice_PrintFormat_ID() 
{
Integer ii = (Integer)get_Value("Invoice_PrintFormat_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Customer.
@param IsCustomer Indicates if this Business Partner is a Customer */
public void setIsCustomer (boolean IsCustomer)
{
set_Value ("IsCustomer", new Boolean(IsCustomer));
}
/** Get Customer.
@return Indicates if this Business Partner is a Customer */
public boolean isCustomer() 
{
Object oo = get_Value("IsCustomer");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Discount Printed.
@param IsDiscountPrinted Print Discount on Invoice and Order */
public void setIsDiscountPrinted (boolean IsDiscountPrinted)
{
set_Value ("IsDiscountPrinted", new Boolean(IsDiscountPrinted));
}
/** Get Discount Printed.
@return Print Discount on Invoice and Order */
public boolean isDiscountPrinted() 
{
Object oo = get_Value("IsDiscountPrinted");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Employee.
@param IsEmployee Indicates if  this Business Partner is an employee */
public void setIsEmployee (boolean IsEmployee)
{
set_Value ("IsEmployee", new Boolean(IsEmployee));
}
/** Get Employee.
@return Indicates if  this Business Partner is an employee */
public boolean isEmployee() 
{
Object oo = get_Value("IsEmployee");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set One time transaction.
@param IsOneTime One time transaction */
public void setIsOneTime (boolean IsOneTime)
{
set_Value ("IsOneTime", new Boolean(IsOneTime));
}
/** Get One time transaction.
@return One time transaction */
public boolean isOneTime() 
{
Object oo = get_Value("IsOneTime");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Prospect.
@param IsProspect Indicates this is a Prospect */
public void setIsProspect (boolean IsProspect)
{
set_Value ("IsProspect", new Boolean(IsProspect));
}
/** Get Prospect.
@return Indicates this is a Prospect */
public boolean isProspect() 
{
Object oo = get_Value("IsProspect");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Sales Representative.
@param IsSalesRep Indicates if  the business partner is a sales representative or company agent */
public void setIsSalesRep (boolean IsSalesRep)
{
set_Value ("IsSalesRep", new Boolean(IsSalesRep));
}
/** Get Sales Representative.
@return Indicates if  the business partner is a sales representative or company agent */
public boolean isSalesRep() 
{
Object oo = get_Value("IsSalesRep");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Summary Level.
@param IsSummary This is a summary entity */
public void setIsSummary (boolean IsSummary)
{
set_Value ("IsSummary", new Boolean(IsSummary));
}
/** Get Summary Level.
@return This is a summary entity */
public boolean isSummary() 
{
Object oo = get_Value("IsSummary");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Tax exempt.
@param IsTaxExempt Business partner is exempt from tax */
public void setIsTaxExempt (boolean IsTaxExempt)
{
set_Value ("IsTaxExempt", new Boolean(IsTaxExempt));
}
/** Get Tax exempt.
@return Business partner is exempt from tax */
public boolean isTaxExempt() 
{
Object oo = get_Value("IsTaxExempt");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Vendor.
@param IsVendor Indicates if this Business Partner is a Vendor */
public void setIsVendor (boolean IsVendor)
{
set_Value ("IsVendor", new Boolean(IsVendor));
}
/** Get Vendor.
@return Indicates if this Business Partner is a Vendor */
public boolean isVendor() 
{
Object oo = get_Value("IsVendor");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** LBR_CustomerCategory_ID AD_Reference_ID=1000015 */
public static final int LBR_CUSTOMERCATEGORY_ID_AD_Reference_ID=1000015;
/** Set Customer Category.
@param LBR_CustomerCategory_ID Defines the Customer Category */
public void setLBR_CustomerCategory_ID (int LBR_CustomerCategory_ID)
{
if (LBR_CustomerCategory_ID <= 0) set_Value ("LBR_CustomerCategory_ID", null);
 else 
set_Value ("LBR_CustomerCategory_ID", new Integer(LBR_CustomerCategory_ID));
}
/** Get Customer Category.
@return Defines the Customer Category */
public int getLBR_CustomerCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_CustomerCategory_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_FiscalGroup_Customer_ID AD_Reference_ID=1000019 */
public static final int LBR_FISCALGROUP_CUSTOMER_ID_AD_Reference_ID=1000019;
/** Set Fiscal Group - Customer.
@param LBR_FiscalGroup_Customer_ID Defines the Fiscal Group - Customer */
public void setLBR_FiscalGroup_Customer_ID (int LBR_FiscalGroup_Customer_ID)
{
if (LBR_FiscalGroup_Customer_ID <= 0) set_Value ("LBR_FiscalGroup_Customer_ID", null);
 else 
set_Value ("LBR_FiscalGroup_Customer_ID", new Integer(LBR_FiscalGroup_Customer_ID));
}
/** Get Fiscal Group - Customer.
@return Defines the Fiscal Group - Customer */
public int getLBR_FiscalGroup_Customer_ID() 
{
Integer ii = (Integer)get_Value("LBR_FiscalGroup_Customer_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_FiscalGroup_Vendor_ID AD_Reference_ID=1000019 */
public static final int LBR_FISCALGROUP_VENDOR_ID_AD_Reference_ID=1000019;
/** Set Fiscal Group - Vendor.
@param LBR_FiscalGroup_Vendor_ID Defines the Fiscal Group - Vendor */
public void setLBR_FiscalGroup_Vendor_ID (int LBR_FiscalGroup_Vendor_ID)
{
if (LBR_FiscalGroup_Vendor_ID <= 0) set_Value ("LBR_FiscalGroup_Vendor_ID", null);
 else 
set_Value ("LBR_FiscalGroup_Vendor_ID", new Integer(LBR_FiscalGroup_Vendor_ID));
}
/** Get Fiscal Group - Vendor.
@return Defines the Fiscal Group - Vendor */
public int getLBR_FiscalGroup_Vendor_ID() 
{
Integer ii = (Integer)get_Value("LBR_FiscalGroup_Vendor_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** LBR_VendorCategory_ID AD_Reference_ID=1000015 */
public static final int LBR_VENDORCATEGORY_ID_AD_Reference_ID=1000015;
/** Set Vendor Category.
@param LBR_VendorCategory_ID Defines the Vendor Category */
public void setLBR_VendorCategory_ID (int LBR_VendorCategory_ID)
{
if (LBR_VendorCategory_ID <= 0) set_Value ("LBR_VendorCategory_ID", null);
 else 
set_Value ("LBR_VendorCategory_ID", new Integer(LBR_VendorCategory_ID));
}
/** Get Vendor Category.
@return Defines the Vendor Category */
public int getLBR_VendorCategory_ID() 
{
Integer ii = (Integer)get_Value("LBR_VendorCategory_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** M_DiscountSchema_ID AD_Reference_ID=325 */
public static final int M_DISCOUNTSCHEMA_ID_AD_Reference_ID=325;
/** Set Discount Schema.
@param M_DiscountSchema_ID Schema to calculate the trade discount percentage */
public void setM_DiscountSchema_ID (int M_DiscountSchema_ID)
{
if (M_DiscountSchema_ID <= 0) set_Value ("M_DiscountSchema_ID", null);
 else 
set_Value ("M_DiscountSchema_ID", new Integer(M_DiscountSchema_ID));
}
/** Get Discount Schema.
@return Schema to calculate the trade discount percentage */
public int getM_DiscountSchema_ID() 
{
Integer ii = (Integer)get_Value("M_DiscountSchema_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Price List.
@param M_PriceList_ID Unique identifier of a Price List */
public void setM_PriceList_ID (int M_PriceList_ID)
{
if (M_PriceList_ID <= 0) set_Value ("M_PriceList_ID", null);
 else 
set_Value ("M_PriceList_ID", new Integer(M_PriceList_ID));
}
/** Get Price List.
@return Unique identifier of a Price List */
public int getM_PriceList_ID() 
{
Integer ii = (Integer)get_Value("M_PriceList_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set NAICS/SIC.
@param NAICS Standard Industry Code or its successor NAIC - http://www.osha.gov/oshstats/sicser.html */
public void setNAICS (String NAICS)
{
if (NAICS != null && NAICS.length() > 6)
{
log.warning("Length > 6 - truncated");
NAICS = NAICS.substring(0,5);
}
set_Value ("NAICS", NAICS);
}
/** Get NAICS/SIC.
@return Standard Industry Code or its successor NAIC - http://www.osha.gov/oshstats/sicser.html */
public String getNAICS() 
{
return (String)get_Value("NAICS");
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
/** Set Name 2.
@param Name2 Additional Name */
public void setName2 (String Name2)
{
if (Name2 != null && Name2.length() > 60)
{
log.warning("Length > 60 - truncated");
Name2 = Name2.substring(0,59);
}
set_Value ("Name2", Name2);
}
/** Get Name 2.
@return Additional Name */
public String getName2() 
{
return (String)get_Value("Name2");
}
/** Set Employees.
@param NumberEmployees Number of employees */
public void setNumberEmployees (int NumberEmployees)
{
set_Value ("NumberEmployees", new Integer(NumberEmployees));
}
/** Get Employees.
@return Number of employees */
public int getNumberEmployees() 
{
Integer ii = (Integer)get_Value("NumberEmployees");
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

/** PO_DiscountSchema_ID AD_Reference_ID=325 */
public static final int PO_DISCOUNTSCHEMA_ID_AD_Reference_ID=325;
/** Set PO Discount Schema.
@param PO_DiscountSchema_ID Schema to calculate the purchase trade discount percentage */
public void setPO_DiscountSchema_ID (int PO_DiscountSchema_ID)
{
if (PO_DiscountSchema_ID <= 0) set_Value ("PO_DiscountSchema_ID", null);
 else 
set_Value ("PO_DiscountSchema_ID", new Integer(PO_DiscountSchema_ID));
}
/** Get PO Discount Schema.
@return Schema to calculate the purchase trade discount percentage */
public int getPO_DiscountSchema_ID() 
{
Integer ii = (Integer)get_Value("PO_DiscountSchema_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** PO_PaymentTerm_ID AD_Reference_ID=227 */
public static final int PO_PAYMENTTERM_ID_AD_Reference_ID=227;
/** Set PO Payment Term.
@param PO_PaymentTerm_ID Payment rules for a purchase order */
public void setPO_PaymentTerm_ID (int PO_PaymentTerm_ID)
{
if (PO_PaymentTerm_ID <= 0) set_Value ("PO_PaymentTerm_ID", null);
 else 
set_Value ("PO_PaymentTerm_ID", new Integer(PO_PaymentTerm_ID));
}
/** Get PO Payment Term.
@return Payment rules for a purchase order */
public int getPO_PaymentTerm_ID() 
{
Integer ii = (Integer)get_Value("PO_PaymentTerm_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** PO_PriceList_ID AD_Reference_ID=166 */
public static final int PO_PRICELIST_ID_AD_Reference_ID=166;
/** Set Purchase Pricelist.
@param PO_PriceList_ID Price List used by this Business Partner */
public void setPO_PriceList_ID (int PO_PriceList_ID)
{
if (PO_PriceList_ID <= 0) set_Value ("PO_PriceList_ID", null);
 else 
set_Value ("PO_PriceList_ID", new Integer(PO_PriceList_ID));
}
/** Get Purchase Pricelist.
@return Price List used by this Business Partner */
public int getPO_PriceList_ID() 
{
Integer ii = (Integer)get_Value("PO_PriceList_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** PaymentRule AD_Reference_ID=195 */
public static final int PAYMENTRULE_AD_Reference_ID=195;
/** Cash = B */
public static final String PAYMENTRULE_Cash = "B";
/** Credit Card = K */
public static final String PAYMENTRULE_CreditCard = "K";
/** Direct Deposit = T */
public static final String PAYMENTRULE_DirectDeposit = "T";
/** Check = S */
public static final String PAYMENTRULE_Check = "S";
/** On Credit = P */
public static final String PAYMENTRULE_OnCredit = "P";
/** Direct Debit = D */
public static final String PAYMENTRULE_DirectDebit = "D";
/** Set Payment Rule.
@param PaymentRule How you pay the invoice */
public void setPaymentRule (String PaymentRule)
{
if (PaymentRule == null || PaymentRule.equals("B") || PaymentRule.equals("K") || PaymentRule.equals("T") || PaymentRule.equals("S") || PaymentRule.equals("P") || PaymentRule.equals("D"));
 else throw new IllegalArgumentException ("PaymentRule Invalid value - " + PaymentRule + " - Reference_ID=195 - B - K - T - S - P - D");
if (PaymentRule != null && PaymentRule.length() > 1)
{
log.warning("Length > 1 - truncated");
PaymentRule = PaymentRule.substring(0,0);
}
set_Value ("PaymentRule", PaymentRule);
}
/** Get Payment Rule.
@return How you pay the invoice */
public String getPaymentRule() 
{
return (String)get_Value("PaymentRule");
}

/** PaymentRulePO AD_Reference_ID=195 */
public static final int PAYMENTRULEPO_AD_Reference_ID=195;
/** Cash = B */
public static final String PAYMENTRULEPO_Cash = "B";
/** Credit Card = K */
public static final String PAYMENTRULEPO_CreditCard = "K";
/** Direct Deposit = T */
public static final String PAYMENTRULEPO_DirectDeposit = "T";
/** Check = S */
public static final String PAYMENTRULEPO_Check = "S";
/** On Credit = P */
public static final String PAYMENTRULEPO_OnCredit = "P";
/** Direct Debit = D */
public static final String PAYMENTRULEPO_DirectDebit = "D";
/** Set Payment Rule.
@param PaymentRulePO Purchase payment option */
public void setPaymentRulePO (String PaymentRulePO)
{
if (PaymentRulePO == null || PaymentRulePO.equals("B") || PaymentRulePO.equals("K") || PaymentRulePO.equals("T") || PaymentRulePO.equals("S") || PaymentRulePO.equals("P") || PaymentRulePO.equals("D"));
 else throw new IllegalArgumentException ("PaymentRulePO Invalid value - " + PaymentRulePO + " - Reference_ID=195 - B - K - T - S - P - D");
if (PaymentRulePO != null && PaymentRulePO.length() > 1)
{
log.warning("Length > 1 - truncated");
PaymentRulePO = PaymentRulePO.substring(0,0);
}
set_Value ("PaymentRulePO", PaymentRulePO);
}
/** Get Payment Rule.
@return Purchase payment option */
public String getPaymentRulePO() 
{
return (String)get_Value("PaymentRulePO");
}
/** Set Potential Life Time Value.
@param PotentialLifeTimeValue Total Revenue expected */
public void setPotentialLifeTimeValue (BigDecimal PotentialLifeTimeValue)
{
set_Value ("PotentialLifeTimeValue", PotentialLifeTimeValue);
}
/** Get Potential Life Time Value.
@return Total Revenue expected */
public BigDecimal getPotentialLifeTimeValue() 
{
BigDecimal bd = (BigDecimal)get_Value("PotentialLifeTimeValue");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Rating.
@param Rating Classification or Importance */
public void setRating (String Rating)
{
if (Rating != null && Rating.length() > 1)
{
log.warning("Length > 1 - truncated");
Rating = Rating.substring(0,0);
}
set_Value ("Rating", Rating);
}
/** Get Rating.
@return Classification or Importance */
public String getRating() 
{
return (String)get_Value("Rating");
}
/** Set Reference No.
@param ReferenceNo Your customer or vendor number at the Business Partner's site */
public void setReferenceNo (String ReferenceNo)
{
if (ReferenceNo != null && ReferenceNo.length() > 40)
{
log.warning("Length > 40 - truncated");
ReferenceNo = ReferenceNo.substring(0,39);
}
set_Value ("ReferenceNo", ReferenceNo);
}
/** Get Reference No.
@return Your customer or vendor number at the Business Partner's site */
public String getReferenceNo() 
{
return (String)get_Value("ReferenceNo");
}

/** SOCreditStatus AD_Reference_ID=289 */
public static final int SOCREDITSTATUS_AD_Reference_ID=289;
/** Credit Stop = S */
public static final String SOCREDITSTATUS_CreditStop = "S";
/** Credit Hold = H */
public static final String SOCREDITSTATUS_CreditHold = "H";
/** Credit Watch = W */
public static final String SOCREDITSTATUS_CreditWatch = "W";
/** No Credit Check = X */
public static final String SOCREDITSTATUS_NoCreditCheck = "X";
/** Credit OK = O */
public static final String SOCREDITSTATUS_CreditOK = "O";
/** Set Credit Status.
@param SOCreditStatus Business Partner Credit Status */
public void setSOCreditStatus (String SOCreditStatus)
{
if (SOCreditStatus == null || SOCreditStatus.equals("S") || SOCreditStatus.equals("H") || SOCreditStatus.equals("W") || SOCreditStatus.equals("X") || SOCreditStatus.equals("O"));
 else throw new IllegalArgumentException ("SOCreditStatus Invalid value - " + SOCreditStatus + " - Reference_ID=289 - S - H - W - X - O");
if (SOCreditStatus != null && SOCreditStatus.length() > 1)
{
log.warning("Length > 1 - truncated");
SOCreditStatus = SOCreditStatus.substring(0,0);
}
set_Value ("SOCreditStatus", SOCreditStatus);
}
/** Get Credit Status.
@return Business Partner Credit Status */
public String getSOCreditStatus() 
{
return (String)get_Value("SOCreditStatus");
}
/** Set Credit Limit.
@param SO_CreditLimit Total outstanding invoice amounts allowed */
public void setSO_CreditLimit (BigDecimal SO_CreditLimit)
{
if (SO_CreditLimit == null) throw new IllegalArgumentException ("SO_CreditLimit is mandatory.");
set_Value ("SO_CreditLimit", SO_CreditLimit);
}
/** Get Credit Limit.
@return Total outstanding invoice amounts allowed */
public BigDecimal getSO_CreditLimit() 
{
BigDecimal bd = (BigDecimal)get_Value("SO_CreditLimit");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Credit Used.
@param SO_CreditUsed Current open balance */
public void setSO_CreditUsed (BigDecimal SO_CreditUsed)
{
if (SO_CreditUsed == null) throw new IllegalArgumentException ("SO_CreditUsed is mandatory.");
set_ValueNoCheck ("SO_CreditUsed", SO_CreditUsed);
}
/** Get Credit Used.
@return Current open balance */
public BigDecimal getSO_CreditUsed() 
{
BigDecimal bd = (BigDecimal)get_Value("SO_CreditUsed");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Order Description.
@param SO_Description Description to be used on orders */
public void setSO_Description (String SO_Description)
{
if (SO_Description != null && SO_Description.length() > 255)
{
log.warning("Length > 255 - truncated");
SO_Description = SO_Description.substring(0,254);
}
set_Value ("SO_Description", SO_Description);
}
/** Get Order Description.
@return Description to be used on orders */
public String getSO_Description() 
{
return (String)get_Value("SO_Description");
}

/** SalesRep_ID AD_Reference_ID=190 */
public static final int SALESREP_ID_AD_Reference_ID=190;
/** Set Sales Representative.
@param SalesRep_ID Sales Representative or Company Agent */
public void setSalesRep_ID (int SalesRep_ID)
{
if (SalesRep_ID <= 0) set_Value ("SalesRep_ID", null);
 else 
set_Value ("SalesRep_ID", new Integer(SalesRep_ID));
}
/** Get Sales Representative.
@return Sales Representative or Company Agent */
public int getSalesRep_ID() 
{
Integer ii = (Integer)get_Value("SalesRep_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Sales Volume in 1.000.
@param SalesVolume Total Volume of Sales in Thousands of Currency */
public void setSalesVolume (int SalesVolume)
{
set_Value ("SalesVolume", new Integer(SalesVolume));
}
/** Get Sales Volume in 1.000.
@return Total Volume of Sales in Thousands of Currency */
public int getSalesVolume() 
{
Integer ii = (Integer)get_Value("SalesVolume");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Send EMail.
@param SendEMail Enable sending Document EMail */
public void setSendEMail (boolean SendEMail)
{
set_Value ("SendEMail", new Boolean(SendEMail));
}
/** Get Send EMail.
@return Enable sending Document EMail */
public boolean isSendEMail() 
{
Object oo = get_Value("SendEMail");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Share.
@param ShareOfCustomer Share of Customer's business as a percentage */
public void setShareOfCustomer (int ShareOfCustomer)
{
set_Value ("ShareOfCustomer", new Integer(ShareOfCustomer));
}
/** Get Share.
@return Share of Customer's business as a percentage */
public int getShareOfCustomer() 
{
Integer ii = (Integer)get_Value("ShareOfCustomer");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Min Shelf Life %.
@param ShelfLifeMinPct Minimum Shelf Life in percent based on Product Instance Guarantee Date */
public void setShelfLifeMinPct (int ShelfLifeMinPct)
{
set_Value ("ShelfLifeMinPct", new Integer(ShelfLifeMinPct));
}
/** Get Min Shelf Life %.
@return Minimum Shelf Life in percent based on Product Instance Guarantee Date */
public int getShelfLifeMinPct() 
{
Integer ii = (Integer)get_Value("ShelfLifeMinPct");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Tax ID.
@param TaxID Tax Identification */
public void setTaxID (String TaxID)
{
if (TaxID != null && TaxID.length() > 20)
{
log.warning("Length > 20 - truncated");
TaxID = TaxID.substring(0,19);
}
set_Value ("TaxID", TaxID);
}
/** Get Tax ID.
@return Tax Identification */
public String getTaxID() 
{
return (String)get_Value("TaxID");
}
/** Set Open Balance.
@param TotalOpenBalance Total Open Balance Amount in primary Accounting Currency */
public void setTotalOpenBalance (BigDecimal TotalOpenBalance)
{
set_Value ("TotalOpenBalance", TotalOpenBalance);
}
/** Get Open Balance.
@return Total Open Balance Amount in primary Accounting Currency */
public BigDecimal getTotalOpenBalance() 
{
BigDecimal bd = (BigDecimal)get_Value("TotalOpenBalance");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set URL.
@param URL Full URL address - e.g. http://www.adempiere.org */
public void setURL (String URL)
{
if (URL != null && URL.length() > 120)
{
log.warning("Length > 120 - truncated");
URL = URL.substring(0,119);
}
set_Value ("URL", URL);
}
/** Get URL.
@return Full URL address - e.g. http://www.adempiere.org */
public String getURL() 
{
return (String)get_Value("URL");
}
/** Set Search Key.
@param Value Search key for the record in the format required - must be unique */
public void setValue (String Value)
{
if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
if (Value.length() > 40)
{
log.warning("Length > 40 - truncated");
Value = Value.substring(0,39);
}
set_Value ("Value", Value);
}
/** Get Search Key.
@return Search key for the record in the format required - must be unique */
public String getValue() 
{
return (String)get_Value("Value");
}

/** lbr_BPTypeBR AD_Reference_ID=1000000 */
public static final int LBR_BPTYPEBR_AD_Reference_ID=1000000;
/** PJ - Legal Entity = PJ */
public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
/** PF - Individual = PF */
public static final String LBR_BPTYPEBR_PF_Individual = "PF";
/** Set Brazilian BP Type.
@param lbr_BPTypeBR Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual) */
public void setlbr_BPTypeBR (String lbr_BPTypeBR)
{
if (lbr_BPTypeBR == null) throw new IllegalArgumentException ("lbr_BPTypeBR is mandatory");
if (lbr_BPTypeBR.equals("PJ") || lbr_BPTypeBR.equals("PF"));
 else throw new IllegalArgumentException ("lbr_BPTypeBR Invalid value - " + lbr_BPTypeBR + " - Reference_ID=1000000 - PJ - PF");
if (lbr_BPTypeBR.length() > 2)
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
/** Set Brazilian BP Valid.
@param lbr_BPTypeBRIsValid Brazilian BP is Valid */
public void setlbr_BPTypeBRIsValid (boolean lbr_BPTypeBRIsValid)
{
set_Value ("lbr_BPTypeBRIsValid", new Boolean(lbr_BPTypeBRIsValid));
}
/** Get Brazilian BP Valid.
@return Brazilian BP is Valid */
public boolean islbr_BPTypeBRIsValid() 
{
Object oo = get_Value("lbr_BPTypeBRIsValid");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set CCM.
@param lbr_CCM City Identification Code used in Brazil (City Tax ID) */
public void setlbr_CCM (String lbr_CCM)
{
if (lbr_CCM != null && lbr_CCM.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_CCM = lbr_CCM.substring(0,29);
}
set_Value ("lbr_CCM", lbr_CCM);
}
/** Get CCM.
@return City Identification Code used in Brazil (City Tax ID) */
public String getlbr_CCM() 
{
return (String)get_Value("lbr_CCM");
}
/** Set CNPJ.
@param lbr_CNPJ Used to identify Legal Entities in Brazil */
public void setlbr_CNPJ (String lbr_CNPJ)
{
if (lbr_CNPJ == null) throw new IllegalArgumentException ("lbr_CNPJ is mandatory.");
if (lbr_CNPJ.length() > 18)
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
/** Set CPF.
@param lbr_CPF Used to identify individuals in Brazil */
public void setlbr_CPF (String lbr_CPF)
{
if (lbr_CPF == null) throw new IllegalArgumentException ("lbr_CPF is mandatory.");
if (lbr_CPF.length() > 14)
{
log.warning("Length > 14 - truncated");
lbr_CPF = lbr_CPF.substring(0,13);
}
set_Value ("lbr_CPF", lbr_CPF);
}
/** Get CPF.
@return Used to identify individuals in Brazil */
public String getlbr_CPF() 
{
return (String)get_Value("lbr_CPF");
}
/** Set Has Substitution.
@param lbr_HasSubstitution Defines if the record has Substituion */
public void setlbr_HasSubstitution (boolean lbr_HasSubstitution)
{
set_Value ("lbr_HasSubstitution", new Boolean(lbr_HasSubstitution));
}
/** Get Has Substitution.
@return Defines if the record has Substituion */
public boolean islbr_HasSubstitution() 
{
Object oo = get_Value("lbr_HasSubstitution");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
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
/** Set IE Exempt.
@param lbr_IsIEExempt Business Partner is IE Exempt */
public void setlbr_IsIEExempt (boolean lbr_IsIEExempt)
{
set_Value ("lbr_IsIEExempt", new Boolean(lbr_IsIEExempt));
}
/** Get IE Exempt.
@return Business Partner is IE Exempt */
public boolean islbr_IsIEExempt() 
{
Object oo = get_Value("lbr_IsIEExempt");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Nota Fiscal Description.
@param lbr_NFDescription Description Printed on Nota Fiscal */
public void setlbr_NFDescription (String lbr_NFDescription)
{
if (lbr_NFDescription != null && lbr_NFDescription.length() > 255)
{
log.warning("Length > 255 - truncated");
lbr_NFDescription = lbr_NFDescription.substring(0,254);
}
set_Value ("lbr_NFDescription", lbr_NFDescription);
}
/** Get Nota Fiscal Description.
@return Description Printed on Nota Fiscal */
public String getlbr_NFDescription() 
{
return (String)get_Value("lbr_NFDescription");
}

/** lbr_PaymentRule AD_Reference_ID=1000035 */
public static final int LBR_PAYMENTRULE_AD_Reference_ID=1000035;
/** Check = C */
public static final String LBR_PAYMENTRULE_Check = "C";
/** Cash = X */
public static final String LBR_PAYMENTRULE_Cash = "X";
/** Bill = B */
public static final String LBR_PAYMENTRULE_Bill = "B";
/** Direct Deposit = D */
public static final String LBR_PAYMENTRULE_DirectDeposit = "D";
/** Set Payment Rule.
@param lbr_PaymentRule How you pay the invoice */
public void setlbr_PaymentRule (String lbr_PaymentRule)
{
if (lbr_PaymentRule == null || lbr_PaymentRule.equals("C") || lbr_PaymentRule.equals("X") || lbr_PaymentRule.equals("B") || lbr_PaymentRule.equals("D"));
 else throw new IllegalArgumentException ("lbr_PaymentRule Invalid value - " + lbr_PaymentRule + " - Reference_ID=1000035 - C - X - B - D");
if (lbr_PaymentRule != null && lbr_PaymentRule.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_PaymentRule = lbr_PaymentRule.substring(0,0);
}
set_Value ("lbr_PaymentRule", lbr_PaymentRule);
}
/** Get Payment Rule.
@return How you pay the invoice */
public String getlbr_PaymentRule() 
{
return (String)get_Value("lbr_PaymentRule");
}
/** Set RG.
@param lbr_RG Used to identify individuals in Brazil */
public void setlbr_RG (String lbr_RG)
{
if (lbr_RG != null && lbr_RG.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_RG = lbr_RG.substring(0,29);
}
set_Value ("lbr_RG", lbr_RG);
}
/** Get RG.
@return Used to identify individuals in Brazil */
public String getlbr_RG() 
{
return (String)get_Value("lbr_RG");
}
/** Set Suframa.
@param lbr_Suframa Brazilian SUFRAMA Identification Number */
public void setlbr_Suframa (String lbr_Suframa)
{
if (lbr_Suframa != null && lbr_Suframa.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_Suframa = lbr_Suframa.substring(0,29);
}
set_Value ("lbr_Suframa", lbr_Suframa);
}
/** Get Suframa.
@return Brazilian SUFRAMA Identification Number */
public String getlbr_Suframa() 
{
return (String)get_Value("lbr_Suframa");
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
