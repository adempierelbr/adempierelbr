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
/** Generated Model for C_Order
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_C_Order extends PO
{
/** Standard Constructor
@param ctx context
@param C_Order_ID id
@param trxName transaction
*/
public X_C_Order (Properties ctx, int C_Order_ID, String trxName)
{
super (ctx, C_Order_ID, trxName);
/** if (C_Order_ID == 0)
{
setC_BPartner_ID (0);
setC_BPartner_Location_ID (0);
setC_Currency_ID (0);	// @C_Currency_ID@
setC_DocTypeTarget_ID (0);
setC_DocType_ID (0);	// 0
setC_Order_ID (0);
setC_PaymentTerm_ID (0);
setDateAcct (new Timestamp(System.currentTimeMillis()));	// @#Date@
setDateOrdered (new Timestamp(System.currentTimeMillis()));	// @#Date@
setDatePromised (new Timestamp(System.currentTimeMillis()));	// @#Date@
setDeliveryRule (null);	// F
setDeliveryViaRule (null);	// P
setDocAction (null);	// CO
setDocStatus (null);	// DR
setDocumentNo (null);
setFreightAmt (Env.ZERO);
setFreightCostRule (null);	// I
setGrandTotal (Env.ZERO);
setInvoiceRule (null);	// I
setIsApproved (false);	// @IsApproved@
setIsCreditApproved (false);
setIsDelivered (false);
setIsDiscountPrinted (false);
setIsDropShip (false);	// N
setIsInvoiced (false);
setIsPrinted (false);
setIsSOTrx (false);	// @IsSOTrx@
setIsSelected (false);
setIsSelfService (false);
setIsTaxIncluded (false);
setIsTransferred (false);
setM_PriceList_ID (0);
setM_Warehouse_ID (0);
setPaymentRule (null);	// P
setPosted (false);	// N
setPriorityRule (null);	// 5
setProcessed (false);
setSalesRep_ID (0);
setSendEMail (false);
setTotalLines (Env.ZERO);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_C_Order (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("C_Order");

/** TableName=C_Order */
public static final String Table_Name="C_Order";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"C_Order");

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
StringBuffer sb = new StringBuffer ("X_C_Order[").append(get_ID()).append("]");
return sb.toString();
}

/** AD_OrgTrx_ID AD_Reference_ID=130 */
public static final int AD_ORGTRX_ID_AD_Reference_ID=130;
/** Set Trx Organization.
@param AD_OrgTrx_ID Performing or initiating organization */
public void setAD_OrgTrx_ID (int AD_OrgTrx_ID)
{
if (AD_OrgTrx_ID <= 0) set_Value ("AD_OrgTrx_ID", null);
 else 
set_Value ("AD_OrgTrx_ID", new Integer(AD_OrgTrx_ID));
}
/** Get Trx Organization.
@return Performing or initiating organization */
public int getAD_OrgTrx_ID() 
{
Integer ii = (Integer)get_Value("AD_OrgTrx_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set User/Contact.
@param AD_User_ID User within the system - Internal or Business Partner Contact */
public void setAD_User_ID (int AD_User_ID)
{
if (AD_User_ID <= 0) set_Value ("AD_User_ID", null);
 else 
set_Value ("AD_User_ID", new Integer(AD_User_ID));
}
/** Get User/Contact.
@return User within the system - Internal or Business Partner Contact */
public int getAD_User_ID() 
{
Integer ii = (Integer)get_Value("AD_User_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set AmountRefunded.
@param AmountRefunded AmountRefunded */
public void setAmountRefunded (BigDecimal AmountRefunded)
{
set_Value ("AmountRefunded", AmountRefunded);
}
/** Get AmountRefunded.
@return AmountRefunded */
public BigDecimal getAmountRefunded() 
{
BigDecimal bd = (BigDecimal)get_Value("AmountRefunded");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set AmountTendered.
@param AmountTendered AmountTendered */
public void setAmountTendered (BigDecimal AmountTendered)
{
set_Value ("AmountTendered", AmountTendered);
}
/** Get AmountTendered.
@return AmountTendered */
public BigDecimal getAmountTendered() 
{
BigDecimal bd = (BigDecimal)get_Value("AmountTendered");
if (bd == null) return Env.ZERO;
return bd;
}

/** Bill_BPartner_ID AD_Reference_ID=138 */
public static final int BILL_BPARTNER_ID_AD_Reference_ID=138;
/** Set Invoice Partner.
@param Bill_BPartner_ID Business Partner to be invoiced */
public void setBill_BPartner_ID (int Bill_BPartner_ID)
{
if (Bill_BPartner_ID <= 0) set_Value ("Bill_BPartner_ID", null);
 else 
set_Value ("Bill_BPartner_ID", new Integer(Bill_BPartner_ID));
}
/** Get Invoice Partner.
@return Business Partner to be invoiced */
public int getBill_BPartner_ID() 
{
Integer ii = (Integer)get_Value("Bill_BPartner_ID");
if (ii == null) return 0;
return ii.intValue();
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

/** Bill_User_ID AD_Reference_ID=110 */
public static final int BILL_USER_ID_AD_Reference_ID=110;
/** Set Invoice Contact.
@param Bill_User_ID Business Partner Contact for invoicing */
public void setBill_User_ID (int Bill_User_ID)
{
if (Bill_User_ID <= 0) set_Value ("Bill_User_ID", null);
 else 
set_Value ("Bill_User_ID", new Integer(Bill_User_ID));
}
/** Get Invoice Contact.
@return Business Partner Contact for invoicing */
public int getBill_User_ID() 
{
Integer ii = (Integer)get_Value("Bill_User_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Activity.
@param C_Activity_ID Business Activity */
public void setC_Activity_ID (int C_Activity_ID)
{
if (C_Activity_ID <= 0) set_Value ("C_Activity_ID", null);
 else 
set_Value ("C_Activity_ID", new Integer(C_Activity_ID));
}
/** Get Activity.
@return Business Activity */
public int getC_Activity_ID() 
{
Integer ii = (Integer)get_Value("C_Activity_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Business Partner .
@param C_BPartner_ID Identifies a Business Partner */
public void setC_BPartner_ID (int C_BPartner_ID)
{
if (C_BPartner_ID < 1) throw new IllegalArgumentException ("C_BPartner_ID is mandatory.");
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
/** Set Partner Location.
@param C_BPartner_Location_ID Identifies the (ship to) address for this Business Partner */
public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
{
if (C_BPartner_Location_ID < 1) throw new IllegalArgumentException ("C_BPartner_Location_ID is mandatory.");
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
/** Set Campaign.
@param C_Campaign_ID Marketing Campaign */
public void setC_Campaign_ID (int C_Campaign_ID)
{
if (C_Campaign_ID <= 0) set_Value ("C_Campaign_ID", null);
 else 
set_Value ("C_Campaign_ID", new Integer(C_Campaign_ID));
}
/** Get Campaign.
@return Marketing Campaign */
public int getC_Campaign_ID() 
{
Integer ii = (Integer)get_Value("C_Campaign_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Cash Journal Line.
@param C_CashLine_ID Cash Journal Line */
public void setC_CashLine_ID (int C_CashLine_ID)
{
if (C_CashLine_ID <= 0) set_Value ("C_CashLine_ID", null);
 else 
set_Value ("C_CashLine_ID", new Integer(C_CashLine_ID));
}
/** Get Cash Journal Line.
@return Cash Journal Line */
public int getC_CashLine_ID() 
{
Integer ii = (Integer)get_Value("C_CashLine_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_Charge_ID AD_Reference_ID=200 */
public static final int C_CHARGE_ID_AD_Reference_ID=200;
/** Set Charge.
@param C_Charge_ID Additional document charges */
public void setC_Charge_ID (int C_Charge_ID)
{
if (C_Charge_ID <= 0) set_Value ("C_Charge_ID", null);
 else 
set_Value ("C_Charge_ID", new Integer(C_Charge_ID));
}
/** Get Charge.
@return Additional document charges */
public int getC_Charge_ID() 
{
Integer ii = (Integer)get_Value("C_Charge_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Currency Type.
@param C_ConversionType_ID Currency Conversion Rate Type */
public void setC_ConversionType_ID (int C_ConversionType_ID)
{
if (C_ConversionType_ID <= 0) set_Value ("C_ConversionType_ID", null);
 else 
set_Value ("C_ConversionType_ID", new Integer(C_ConversionType_ID));
}
/** Get Currency Type.
@return Currency Conversion Rate Type */
public int getC_ConversionType_ID() 
{
Integer ii = (Integer)get_Value("C_ConversionType_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Currency.
@param C_Currency_ID The Currency for this record */
public void setC_Currency_ID (int C_Currency_ID)
{
if (C_Currency_ID < 1) throw new IllegalArgumentException ("C_Currency_ID is mandatory.");
set_ValueNoCheck ("C_Currency_ID", new Integer(C_Currency_ID));
}
/** Get Currency.
@return The Currency for this record */
public int getC_Currency_ID() 
{
Integer ii = (Integer)get_Value("C_Currency_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_DocTypeTarget_ID AD_Reference_ID=170 */
public static final int C_DOCTYPETARGET_ID_AD_Reference_ID=170;
/** Set Target Document Type.
@param C_DocTypeTarget_ID Target document type for conversing documents */
public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
{
if (C_DocTypeTarget_ID < 1) throw new IllegalArgumentException ("C_DocTypeTarget_ID is mandatory.");
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
if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
set_ValueNoCheck ("C_DocType_ID", new Integer(C_DocType_ID));
}
/** Get Document Type.
@return Document type or rules */
public int getC_DocType_ID() 
{
Integer ii = (Integer)get_Value("C_DocType_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Order.
@param C_Order_ID Order */
public void setC_Order_ID (int C_Order_ID)
{
if (C_Order_ID < 1) throw new IllegalArgumentException ("C_Order_ID is mandatory.");
set_ValueNoCheck ("C_Order_ID", new Integer(C_Order_ID));
}
/** Get Order.
@return Order */
public int getC_Order_ID() 
{
Integer ii = (Integer)get_Value("C_Order_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set POS Terminal.
@param C_POS_ID Point of Sales Terminal */
public void setC_POS_ID (int C_POS_ID)
{
if (C_POS_ID <= 0) set_Value ("C_POS_ID", null);
 else 
set_Value ("C_POS_ID", new Integer(C_POS_ID));
}
/** Get POS Terminal.
@return Point of Sales Terminal */
public int getC_POS_ID() 
{
Integer ii = (Integer)get_Value("C_POS_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Payment Term.
@param C_PaymentTerm_ID The terms of Payment (timing, discount) */
public void setC_PaymentTerm_ID (int C_PaymentTerm_ID)
{
if (C_PaymentTerm_ID < 1) throw new IllegalArgumentException ("C_PaymentTerm_ID is mandatory.");
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
/** Set Payment.
@param C_Payment_ID Payment identifier */
public void setC_Payment_ID (int C_Payment_ID)
{
if (C_Payment_ID <= 0) set_Value ("C_Payment_ID", null);
 else 
set_Value ("C_Payment_ID", new Integer(C_Payment_ID));
}
/** Get Payment.
@return Payment identifier */
public int getC_Payment_ID() 
{
Integer ii = (Integer)get_Value("C_Payment_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Project.
@param C_Project_ID Financial Project */
public void setC_Project_ID (int C_Project_ID)
{
if (C_Project_ID <= 0) set_Value ("C_Project_ID", null);
 else 
set_Value ("C_Project_ID", new Integer(C_Project_ID));
}
/** Get Project.
@return Financial Project */
public int getC_Project_ID() 
{
Integer ii = (Integer)get_Value("C_Project_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Charge amount.
@param ChargeAmt Charge Amount */
public void setChargeAmt (BigDecimal ChargeAmt)
{
set_Value ("ChargeAmt", ChargeAmt);
}
/** Get Charge amount.
@return Charge Amount */
public BigDecimal getChargeAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("ChargeAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Copy From.
@param CopyFrom Copy From Record */
public void setCopyFrom (String CopyFrom)
{
if (CopyFrom != null && CopyFrom.length() > 1)
{
log.warning("Length > 1 - truncated");
CopyFrom = CopyFrom.substring(0,0);
}
set_Value ("CopyFrom", CopyFrom);
}
/** Get Copy From.
@return Copy From Record */
public String getCopyFrom() 
{
return (String)get_Value("CopyFrom");
}
/** Set Create lines from.
@param CreateFrom Process which will generate a new document lines based on an existing document */
public void setCreateFrom (String CreateFrom)
{
if (CreateFrom != null && CreateFrom.length() > 1)
{
log.warning("Length > 1 - truncated");
CreateFrom = CreateFrom.substring(0,0);
}
set_Value ("CreateFrom", CreateFrom);
}
/** Get Create lines from.
@return Process which will generate a new document lines based on an existing document */
public String getCreateFrom() 
{
return (String)get_Value("CreateFrom");
}
/** Set Account Date.
@param DateAcct Accounting Date */
public void setDateAcct (Timestamp DateAcct)
{
if (DateAcct == null) throw new IllegalArgumentException ("DateAcct is mandatory.");
set_Value ("DateAcct", DateAcct);
}
/** Get Account Date.
@return Accounting Date */
public Timestamp getDateAcct() 
{
return (Timestamp)get_Value("DateAcct");
}
/** Set Date Ordered.
@param DateOrdered Date of Order */
public void setDateOrdered (Timestamp DateOrdered)
{
if (DateOrdered == null) throw new IllegalArgumentException ("DateOrdered is mandatory.");
set_Value ("DateOrdered", DateOrdered);
}
/** Get Date Ordered.
@return Date of Order */
public Timestamp getDateOrdered() 
{
return (Timestamp)get_Value("DateOrdered");
}
/** Set Date printed.
@param DatePrinted Date the document was printed. */
public void setDatePrinted (Timestamp DatePrinted)
{
set_Value ("DatePrinted", DatePrinted);
}
/** Get Date printed.
@return Date the document was printed. */
public Timestamp getDatePrinted() 
{
return (Timestamp)get_Value("DatePrinted");
}
/** Set Date Promised.
@param DatePromised Date Order was promised */
public void setDatePromised (Timestamp DatePromised)
{
if (DatePromised == null) throw new IllegalArgumentException ("DatePromised is mandatory.");
set_Value ("DatePromised", DatePromised);
}
/** Get Date Promised.
@return Date Order was promised */
public Timestamp getDatePromised() 
{
return (Timestamp)get_Value("DatePromised");
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
if (DeliveryRule == null) throw new IllegalArgumentException ("DeliveryRule is mandatory");
if (DeliveryRule.equals("R") || DeliveryRule.equals("A") || DeliveryRule.equals("L") || DeliveryRule.equals("O") || DeliveryRule.equals("M") || DeliveryRule.equals("F"));
 else throw new IllegalArgumentException ("DeliveryRule Invalid value - " + DeliveryRule + " - Reference_ID=151 - R - A - L - O - M - F");
if (DeliveryRule.length() > 1)
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
if (DeliveryViaRule == null) throw new IllegalArgumentException ("DeliveryViaRule is mandatory");
if (DeliveryViaRule.equals("P") || DeliveryViaRule.equals("D") || DeliveryViaRule.equals("S"));
 else throw new IllegalArgumentException ("DeliveryViaRule Invalid value - " + DeliveryViaRule + " - Reference_ID=152 - P - D - S");
if (DeliveryViaRule.length() > 1)
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

/** DocAction AD_Reference_ID=135 */
public static final int DOCACTION_AD_Reference_ID=135;
/** Complete = CO */
public static final String DOCACTION_Complete = "CO";
/** Approve = AP */
public static final String DOCACTION_Approve = "AP";
/** Reject = RJ */
public static final String DOCACTION_Reject = "RJ";
/** Post = PO */
public static final String DOCACTION_Post = "PO";
/** Void = VO */
public static final String DOCACTION_Void = "VO";
/** Close = CL */
public static final String DOCACTION_Close = "CL";
/** Reverse - Correct = RC */
public static final String DOCACTION_Reverse_Correct = "RC";
/** Reverse - Accrual = RA */
public static final String DOCACTION_Reverse_Accrual = "RA";
/** Invalidate = IN */
public static final String DOCACTION_Invalidate = "IN";
/** Re-activate = RE */
public static final String DOCACTION_Re_Activate = "RE";
/** <None> = -- */
public static final String DOCACTION_None = "--";
/** Wait Complete = WC */
public static final String DOCACTION_WaitComplete = "WC";
/** Prepare = PR */
public static final String DOCACTION_Prepare = "PR";
/** Unlock = XL */
public static final String DOCACTION_Unlock = "XL";
/** Set Document Action.
@param DocAction The targeted status of the document */
public void setDocAction (String DocAction)
{
if (DocAction == null) throw new IllegalArgumentException ("DocAction is mandatory");
if (DocAction.equals("CO") || DocAction.equals("AP") || DocAction.equals("RJ") || DocAction.equals("PO") || DocAction.equals("VO") || DocAction.equals("CL") || DocAction.equals("RC") || DocAction.equals("RA") || DocAction.equals("IN") || DocAction.equals("RE") || DocAction.equals("--") || DocAction.equals("WC") || DocAction.equals("PR") || DocAction.equals("XL"));
 else throw new IllegalArgumentException ("DocAction Invalid value - " + DocAction + " - Reference_ID=135 - CO - AP - RJ - PO - VO - CL - RC - RA - IN - RE - -- - WC - PR - XL");
if (DocAction.length() > 2)
{
log.warning("Length > 2 - truncated");
DocAction = DocAction.substring(0,1);
}
set_Value ("DocAction", DocAction);
}
/** Get Document Action.
@return The targeted status of the document */
public String getDocAction() 
{
return (String)get_Value("DocAction");
}

/** DocStatus AD_Reference_ID=131 */
public static final int DOCSTATUS_AD_Reference_ID=131;
/** In Progress = IP */
public static final String DOCSTATUS_InProgress = "IP";
/** Waiting Confirmation = WC */
public static final String DOCSTATUS_WaitingConfirmation = "WC";
/** Drafted = DR */
public static final String DOCSTATUS_Drafted = "DR";
/** Completed = CO */
public static final String DOCSTATUS_Completed = "CO";
/** Approved = AP */
public static final String DOCSTATUS_Approved = "AP";
/** Not Approved = NA */
public static final String DOCSTATUS_NotApproved = "NA";
/** Voided = VO */
public static final String DOCSTATUS_Voided = "VO";
/** Invalid = IN */
public static final String DOCSTATUS_Invalid = "IN";
/** Reversed = RE */
public static final String DOCSTATUS_Reversed = "RE";
/** Closed = CL */
public static final String DOCSTATUS_Closed = "CL";
/** Unknown = ?? */
public static final String DOCSTATUS_Unknown = "??";
/** Waiting Payment = WP */
public static final String DOCSTATUS_WaitingPayment = "WP";
/** Set Document Status.
@param DocStatus The current status of the document */
public void setDocStatus (String DocStatus)
{
if (DocStatus == null) throw new IllegalArgumentException ("DocStatus is mandatory");
if (DocStatus.equals("IP") || DocStatus.equals("WC") || DocStatus.equals("DR") || DocStatus.equals("CO") || DocStatus.equals("AP") || DocStatus.equals("NA") || DocStatus.equals("VO") || DocStatus.equals("IN") || DocStatus.equals("RE") || DocStatus.equals("CL") || DocStatus.equals("??") || DocStatus.equals("WP"));
 else throw new IllegalArgumentException ("DocStatus Invalid value - " + DocStatus + " - Reference_ID=131 - IP - WC - DR - CO - AP - NA - VO - IN - RE - CL - ?? - WP");
if (DocStatus.length() > 2)
{
log.warning("Length > 2 - truncated");
DocStatus = DocStatus.substring(0,1);
}
set_Value ("DocStatus", DocStatus);
}
/** Get Document Status.
@return The current status of the document */
public String getDocStatus() 
{
return (String)get_Value("DocStatus");
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
set_ValueNoCheck ("DocumentNo", DocumentNo);
}
/** Get Document No.
@return Document sequence number of the document */
public String getDocumentNo() 
{
return (String)get_Value("DocumentNo");
}
/** Get Record ID/ColumnName
@return ID/ColumnName pair */
public KeyNamePair getKeyNamePair() 
{
return new KeyNamePair(get_ID(), getDocumentNo());
}
/** Set Freight Amount.
@param FreightAmt Freight Amount  */
public void setFreightAmt (BigDecimal FreightAmt)
{
if (FreightAmt == null) throw new IllegalArgumentException ("FreightAmt is mandatory.");
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
/** Freight excluded = E */
public static final String FREIGHTCOSTRULE_FreightExcluded = "E";
/** Set Freight Cost Rule.
@param FreightCostRule Method for charging Freight */
public void setFreightCostRule (String FreightCostRule)
{
if (FreightCostRule == null) throw new IllegalArgumentException ("FreightCostRule is mandatory");
if (FreightCostRule.equals("I") || FreightCostRule.equals("F") || FreightCostRule.equals("C") || FreightCostRule.equals("L") || FreightCostRule.equals("E"));
 else throw new IllegalArgumentException ("FreightCostRule Invalid value - " + FreightCostRule + " - Reference_ID=153 - I - F - C - L - E");
if (FreightCostRule.length() > 1)
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
if (GrandTotal == null) throw new IllegalArgumentException ("GrandTotal is mandatory.");
set_ValueNoCheck ("GrandTotal", GrandTotal);
}
/** Get Grand Total.
@return Total amount of document */
public BigDecimal getGrandTotal() 
{
BigDecimal bd = (BigDecimal)get_Value("GrandTotal");
if (bd == null) return Env.ZERO;
return bd;
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
if (InvoiceRule == null) throw new IllegalArgumentException ("InvoiceRule is mandatory");
if (InvoiceRule.equals("O") || InvoiceRule.equals("D") || InvoiceRule.equals("S") || InvoiceRule.equals("I"));
 else throw new IllegalArgumentException ("InvoiceRule Invalid value - " + InvoiceRule + " - Reference_ID=150 - O - D - S - I");
if (InvoiceRule.length() > 1)
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
/** Set Approved.
@param IsApproved Indicates if this document requires approval */
public void setIsApproved (boolean IsApproved)
{
set_ValueNoCheck ("IsApproved", new Boolean(IsApproved));
}
/** Get Approved.
@return Indicates if this document requires approval */
public boolean isApproved() 
{
Object oo = get_Value("IsApproved");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Credit Approved.
@param IsCreditApproved Credit  has been approved */
public void setIsCreditApproved (boolean IsCreditApproved)
{
set_ValueNoCheck ("IsCreditApproved", new Boolean(IsCreditApproved));
}
/** Get Credit Approved.
@return Credit  has been approved */
public boolean isCreditApproved() 
{
Object oo = get_Value("IsCreditApproved");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Delivered.
@param IsDelivered Delivered */
public void setIsDelivered (boolean IsDelivered)
{
set_ValueNoCheck ("IsDelivered", new Boolean(IsDelivered));
}
/** Get Delivered.
@return Delivered */
public boolean isDelivered() 
{
Object oo = get_Value("IsDelivered");
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
/** Set Drop Shipment.
@param IsDropShip Drop Shipments are sent from the Vendor directly to the Customer */
public void setIsDropShip (boolean IsDropShip)
{
set_ValueNoCheck ("IsDropShip", new Boolean(IsDropShip));
}
/** Get Drop Shipment.
@return Drop Shipments are sent from the Vendor directly to the Customer */
public boolean isDropShip() 
{
Object oo = get_Value("IsDropShip");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Invoiced.
@param IsInvoiced Is this invoiced? */
public void setIsInvoiced (boolean IsInvoiced)
{
set_ValueNoCheck ("IsInvoiced", new Boolean(IsInvoiced));
}
/** Get Invoiced.
@return Is this invoiced? */
public boolean isInvoiced() 
{
Object oo = get_Value("IsInvoiced");
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
set_ValueNoCheck ("IsPrinted", new Boolean(IsPrinted));
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
/** Set Selected.
@param IsSelected Selected */
public void setIsSelected (boolean IsSelected)
{
set_Value ("IsSelected", new Boolean(IsSelected));
}
/** Get Selected.
@return Selected */
public boolean isSelected() 
{
Object oo = get_Value("IsSelected");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Self-Service.
@param IsSelfService This is a Self-Service entry or this entry can be changed via Self-Service */
public void setIsSelfService (boolean IsSelfService)
{
set_Value ("IsSelfService", new Boolean(IsSelfService));
}
/** Get Self-Service.
@return This is a Self-Service entry or this entry can be changed via Self-Service */
public boolean isSelfService() 
{
Object oo = get_Value("IsSelfService");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Price includes Tax.
@param IsTaxIncluded Tax is included in the price  */
public void setIsTaxIncluded (boolean IsTaxIncluded)
{
set_Value ("IsTaxIncluded", new Boolean(IsTaxIncluded));
}
/** Get Price includes Tax.
@return Tax is included in the price  */
public boolean isTaxIncluded() 
{
Object oo = get_Value("IsTaxIncluded");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Transferred.
@param IsTransferred Transferred to General Ledger (i.e. accounted) */
public void setIsTransferred (boolean IsTransferred)
{
set_ValueNoCheck ("IsTransferred", new Boolean(IsTransferred));
}
/** Get Transferred.
@return Transferred to General Ledger (i.e. accounted) */
public boolean isTransferred() 
{
Object oo = get_Value("IsTransferred");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** LBR_Withhold_Order_ID AD_Reference_ID=290 */
public static final int LBR_WITHHOLD_ORDER_ID_AD_Reference_ID=290;
/** Set Withhold Order.
@param LBR_Withhold_Order_ID Defines the Withhold Order */
public void setLBR_Withhold_Order_ID (int LBR_Withhold_Order_ID)
{
if (LBR_Withhold_Order_ID <= 0) set_Value ("LBR_Withhold_Order_ID", null);
 else 
set_Value ("LBR_Withhold_Order_ID", new Integer(LBR_Withhold_Order_ID));
}
/** Get Withhold Order.
@return Defines the Withhold Order */
public int getLBR_Withhold_Order_ID() 
{
Integer ii = (Integer)get_Value("LBR_Withhold_Order_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Price List.
@param M_PriceList_ID Unique identifier of a Price List */
public void setM_PriceList_ID (int M_PriceList_ID)
{
if (M_PriceList_ID < 1) throw new IllegalArgumentException ("M_PriceList_ID is mandatory.");
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
/** Set Warehouse.
@param M_Warehouse_ID Storage Warehouse and Service Point */
public void setM_Warehouse_ID (int M_Warehouse_ID)
{
if (M_Warehouse_ID < 1) throw new IllegalArgumentException ("M_Warehouse_ID is mandatory.");
set_Value ("M_Warehouse_ID", new Integer(M_Warehouse_ID));
}
/** Get Warehouse.
@return Storage Warehouse and Service Point */
public int getM_Warehouse_ID() 
{
Integer ii = (Integer)get_Value("M_Warehouse_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set OrderType.
@param OrderType OrderType */
public void setOrderType (String OrderType)
{
if (OrderType != null && OrderType.length() > 510)
{
log.warning("Length > 510 - truncated");
OrderType = OrderType.substring(0,509);
}
set_Value ("OrderType", OrderType);
}
/** Get OrderType.
@return OrderType */
public String getOrderType() 
{
return (String)get_Value("OrderType");
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
/** Set Payment BPartner.
@param Pay_BPartner_ID Business Partner responsible for the payment */
public void setPay_BPartner_ID (int Pay_BPartner_ID)
{
if (Pay_BPartner_ID <= 0) set_Value ("Pay_BPartner_ID", null);
 else 
set_Value ("Pay_BPartner_ID", new Integer(Pay_BPartner_ID));
}
/** Get Payment BPartner.
@return Business Partner responsible for the payment */
public int getPay_BPartner_ID() 
{
Integer ii = (Integer)get_Value("Pay_BPartner_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Payment Location.
@param Pay_Location_ID Location of the Business Partner responsible for the payment */
public void setPay_Location_ID (int Pay_Location_ID)
{
if (Pay_Location_ID <= 0) set_Value ("Pay_Location_ID", null);
 else 
set_Value ("Pay_Location_ID", new Integer(Pay_Location_ID));
}
/** Get Payment Location.
@return Location of the Business Partner responsible for the payment */
public int getPay_Location_ID() 
{
Integer ii = (Integer)get_Value("Pay_Location_ID");
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
if (PaymentRule == null) throw new IllegalArgumentException ("PaymentRule is mandatory");
if (PaymentRule.equals("B") || PaymentRule.equals("K") || PaymentRule.equals("T") || PaymentRule.equals("S") || PaymentRule.equals("P") || PaymentRule.equals("D"));
 else throw new IllegalArgumentException ("PaymentRule Invalid value - " + PaymentRule + " - Reference_ID=195 - B - K - T - S - P - D");
if (PaymentRule.length() > 1)
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
/** Set Posted.
@param Posted Posting status */
public void setPosted (boolean Posted)
{
set_Value ("Posted", new Boolean(Posted));
}
/** Get Posted.
@return Posting status */
public boolean isPosted() 
{
Object oo = get_Value("Posted");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}

/** PriorityRule AD_Reference_ID=154 */
public static final int PRIORITYRULE_AD_Reference_ID=154;
/** High = 3 */
public static final String PRIORITYRULE_High = "3";
/** Medium = 5 */
public static final String PRIORITYRULE_Medium = "5";
/** Low = 7 */
public static final String PRIORITYRULE_Low = "7";
/** Urgent = 1 */
public static final String PRIORITYRULE_Urgent = "1";
/** Minor = 9 */
public static final String PRIORITYRULE_Minor = "9";
/** Set Priority.
@param PriorityRule Priority of a document */
public void setPriorityRule (String PriorityRule)
{
if (PriorityRule == null) throw new IllegalArgumentException ("PriorityRule is mandatory");
if (PriorityRule.equals("3") || PriorityRule.equals("5") || PriorityRule.equals("7") || PriorityRule.equals("1") || PriorityRule.equals("9"));
 else throw new IllegalArgumentException ("PriorityRule Invalid value - " + PriorityRule + " - Reference_ID=154 - 3 - 5 - 7 - 1 - 9");
if (PriorityRule.length() > 1)
{
log.warning("Length > 1 - truncated");
PriorityRule = PriorityRule.substring(0,0);
}
set_Value ("PriorityRule", PriorityRule);
}
/** Get Priority.
@return Priority of a document */
public String getPriorityRule() 
{
return (String)get_Value("PriorityRule");
}
/** Set Create PO.
@param ProcCreatePO Process to Create PO Lines from Requisition */
public void setProcCreatePO (String ProcCreatePO)
{
if (ProcCreatePO != null && ProcCreatePO.length() > 1)
{
log.warning("Length > 1 - truncated");
ProcCreatePO = ProcCreatePO.substring(0,0);
}
set_Value ("ProcCreatePO", ProcCreatePO);
}
/** Get Create PO.
@return Process to Create PO Lines from Requisition */
public String getProcCreatePO() 
{
return (String)get_Value("ProcCreatePO");
}
/** Set Processed.
@param Processed The document has been processed */
public void setProcessed (boolean Processed)
{
set_ValueNoCheck ("Processed", new Boolean(Processed));
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

/** Ref_Order_ID AD_Reference_ID=290 */
public static final int REF_ORDER_ID_AD_Reference_ID=290;
/** Set Referenced Order.
@param Ref_Order_ID Reference to corresponding Sales/Purchase Order */
public void setRef_Order_ID (int Ref_Order_ID)
{
if (Ref_Order_ID <= 0) set_Value ("Ref_Order_ID", null);
 else 
set_Value ("Ref_Order_ID", new Integer(Ref_Order_ID));
}
/** Get Referenced Order.
@return Reference to corresponding Sales/Purchase Order */
public int getRef_Order_ID() 
{
Integer ii = (Integer)get_Value("Ref_Order_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** SalesRep_ID AD_Reference_ID=190 */
public static final int SALESREP_ID_AD_Reference_ID=190;
/** Set Sales Representative.
@param SalesRep_ID Sales Representative or Company Agent */
public void setSalesRep_ID (int SalesRep_ID)
{
if (SalesRep_ID < 1) throw new IllegalArgumentException ("SalesRep_ID is mandatory.");
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
/** Set Total Lines.
@param TotalLines Total of all document lines */
public void setTotalLines (BigDecimal TotalLines)
{
if (TotalLines == null) throw new IllegalArgumentException ("TotalLines is mandatory.");
set_ValueNoCheck ("TotalLines", TotalLines);
}
/** Get Total Lines.
@return Total of all document lines */
public BigDecimal getTotalLines() 
{
BigDecimal bd = (BigDecimal)get_Value("TotalLines");
if (bd == null) return Env.ZERO;
return bd;
}

/** User1_ID AD_Reference_ID=134 */
public static final int USER1_ID_AD_Reference_ID=134;
/** Set User List 1.
@param User1_ID User defined list element #1 */
public void setUser1_ID (int User1_ID)
{
if (User1_ID <= 0) set_Value ("User1_ID", null);
 else 
set_Value ("User1_ID", new Integer(User1_ID));
}
/** Get User List 1.
@return User defined list element #1 */
public int getUser1_ID() 
{
Integer ii = (Integer)get_Value("User1_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** User2_ID AD_Reference_ID=137 */
public static final int USER2_ID_AD_Reference_ID=137;
/** Set User List 2.
@param User2_ID User defined list element #2 */
public void setUser2_ID (int User2_ID)
{
if (User2_ID <= 0) set_Value ("User2_ID", null);
 else 
set_Value ("User2_ID", new Integer(User2_ID));
}
/** Get User List 2.
@return User defined list element #2 */
public int getUser2_ID() 
{
Integer ii = (Integer)get_Value("User2_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Volume.
@param Volume Volume of a product */
public void setVolume (BigDecimal Volume)
{
set_Value ("Volume", Volume);
}
/** Get Volume.
@return Volume of a product */
public BigDecimal getVolume() 
{
BigDecimal bd = (BigDecimal)get_Value("Volume");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Weight.
@param Weight Weight of a product */
public void setWeight (BigDecimal Weight)
{
set_Value ("Weight", Weight);
}
/** Get Weight.
@return Weight of a product */
public BigDecimal getWeight() 
{
BigDecimal bd = (BigDecimal)get_Value("Weight");
if (bd == null) return Env.ZERO;
return bd;
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