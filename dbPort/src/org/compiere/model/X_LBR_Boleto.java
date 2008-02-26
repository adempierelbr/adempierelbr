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
/** Generated Model for LBR_Boleto
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_Boleto extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_Boleto_ID id
@param trxName transaction
*/
public X_LBR_Boleto (Properties ctx, int LBR_Boleto_ID, String trxName)
{
super (ctx, LBR_Boleto_ID, trxName);
/** if (LBR_Boleto_ID == 0)
{
setAccountNo (null);
setC_BPartner_ID (0);
setC_Invoice_ID (0);
setDiscountAmt (Env.ZERO);
setDiscountDate (new Timestamp(System.currentTimeMillis()));
setDocumentNo (null);
setDueDate (new Timestamp(System.currentTimeMillis()));
setGrandTotal (Env.ZERO);
setLBR_Boleto_ID (0);
setRoutingNo (null);
setlbr_AgencyNo (null);
setlbr_BPTypeBR (null);
setlbr_BillFold (null);
setlbr_Cessionary (null);
setlbr_DocDate (new Timestamp(System.currentTimeMillis()));
setlbr_IsCancelled (false);	// 'N'
setlbr_ReceiverName (null);
setlbr_jBoletoNo (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_Boleto (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_Boleto");

/** TableName=LBR_Boleto */
public static final String Table_Name="LBR_Boleto";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_Boleto");

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
StringBuffer sb = new StringBuffer ("X_LBR_Boleto[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Account No.
@param AccountNo Account Number */
public void setAccountNo (String AccountNo)
{
if (AccountNo == null) throw new IllegalArgumentException ("AccountNo is mandatory.");
if (AccountNo.length() > 20)
{
log.warning("Length > 20 - truncated");
AccountNo = AccountNo.substring(0,19);
}
set_Value ("AccountNo", AccountNo);
}
/** Get Account No.
@return Account Number */
public String getAccountNo() 
{
return (String)get_Value("AccountNo");
}
/** Set Address 1.
@param Address1 Address line 1 for this location */
public void setAddress1 (String Address1)
{
if (Address1 != null && Address1.length() > 60)
{
log.warning("Length > 60 - truncated");
Address1 = Address1.substring(0,59);
}
set_Value ("Address1", Address1);
}
/** Get Address 1.
@return Address line 1 for this location */
public String getAddress1() 
{
return (String)get_Value("Address1");
}
/** Set Address 2.
@param Address2 Address line 2 for this location */
public void setAddress2 (String Address2)
{
if (Address2 != null && Address2.length() > 60)
{
log.warning("Length > 60 - truncated");
Address2 = Address2.substring(0,59);
}
set_Value ("Address2", Address2);
}
/** Get Address 2.
@return Address line 2 for this location */
public String getAddress2() 
{
return (String)get_Value("Address2");
}
/** Set Address 3.
@param Address3 Address Line 3 for the location */
public void setAddress3 (String Address3)
{
if (Address3 != null && Address3.length() > 60)
{
log.warning("Length > 60 - truncated");
Address3 = Address3.substring(0,59);
}
set_Value ("Address3", Address3);
}
/** Get Address 3.
@return Address Line 3 for the location */
public String getAddress3() 
{
return (String)get_Value("Address3");
}
/** Set Address 4.
@param Address4 Address Line 4 for the location */
public void setAddress4 (String Address4)
{
if (Address4 != null && Address4.length() > 60)
{
log.warning("Length > 60 - truncated");
Address4 = Address4.substring(0,59);
}
set_Value ("Address4", Address4);
}
/** Get Address 4.
@return Address Line 4 for the location */
public String getAddress4() 
{
return (String)get_Value("Address4");
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
/** Set Invoice.
@param C_Invoice_ID Invoice Identifier */
public void setC_Invoice_ID (int C_Invoice_ID)
{
if (C_Invoice_ID < 1) throw new IllegalArgumentException ("C_Invoice_ID is mandatory.");
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
/** Set City.
@param City Identifies a City */
public void setCity (String City)
{
if (City != null && City.length() > 60)
{
log.warning("Length > 60 - truncated");
City = City.substring(0,59);
}
set_Value ("City", City);
}
/** Get City.
@return Identifies a City */
public String getCity() 
{
return (String)get_Value("City");
}
/** Set Discount Amount.
@param DiscountAmt Calculated amount of discount */
public void setDiscountAmt (BigDecimal DiscountAmt)
{
if (DiscountAmt == null) throw new IllegalArgumentException ("DiscountAmt is mandatory.");
set_Value ("DiscountAmt", DiscountAmt);
}
/** Get Discount Amount.
@return Calculated amount of discount */
public BigDecimal getDiscountAmt() 
{
BigDecimal bd = (BigDecimal)get_Value("DiscountAmt");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Discount Date.
@param DiscountDate Last Date for payments with discount */
public void setDiscountDate (Timestamp DiscountDate)
{
if (DiscountDate == null) throw new IllegalArgumentException ("DiscountDate is mandatory.");
set_Value ("DiscountDate", DiscountDate);
}
/** Get Discount Date.
@return Last Date for payments with discount */
public Timestamp getDiscountDate() 
{
return (Timestamp)get_Value("DiscountDate");
}
/** Set Document No.
@param DocumentNo Document sequence number of the document */
public void setDocumentNo (String DocumentNo)
{
if (DocumentNo == null) throw new IllegalArgumentException ("DocumentNo is mandatory.");
if (DocumentNo.length() > 60)
{
log.warning("Length > 60 - truncated");
DocumentNo = DocumentNo.substring(0,59);
}
set_Value ("DocumentNo", DocumentNo);
}
/** Get Document No.
@return Document sequence number of the document */
public String getDocumentNo() 
{
return (String)get_Value("DocumentNo");
}
/** Set Due Date.
@param DueDate Date when the payment is due */
public void setDueDate (Timestamp DueDate)
{
if (DueDate == null) throw new IllegalArgumentException ("DueDate is mandatory.");
set_Value ("DueDate", DueDate);
}
/** Get Due Date.
@return Date when the payment is due */
public Timestamp getDueDate() 
{
return (Timestamp)get_Value("DueDate");
}
/** Set Grand Total.
@param GrandTotal Total amount of document */
public void setGrandTotal (BigDecimal GrandTotal)
{
if (GrandTotal == null) throw new IllegalArgumentException ("GrandTotal is mandatory.");
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
/** Set Boleto.
@param LBR_Boleto_ID Primary Key table LBR_Boleto */
public void setLBR_Boleto_ID (int LBR_Boleto_ID)
{
if (LBR_Boleto_ID < 1) throw new IllegalArgumentException ("LBR_Boleto_ID is mandatory.");
set_ValueNoCheck ("LBR_Boleto_ID", new Integer(LBR_Boleto_ID));
}
/** Get Boleto.
@return Primary Key table LBR_Boleto */
public int getLBR_Boleto_ID() 
{
Integer ii = (Integer)get_Value("LBR_Boleto_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set ZIP.
@param Postal Postal code */
public void setPostal (String Postal)
{
if (Postal != null && Postal.length() > 10)
{
log.warning("Length > 10 - truncated");
Postal = Postal.substring(0,9);
}
set_Value ("Postal", Postal);
}
/** Get ZIP.
@return Postal code */
public String getPostal() 
{
return (String)get_Value("Postal");
}
/** Set Region.
@param RegionName Name of the Region */
public void setRegionName (String RegionName)
{
if (RegionName != null && RegionName.length() > 2)
{
log.warning("Length > 2 - truncated");
RegionName = RegionName.substring(0,1);
}
set_Value ("RegionName", RegionName);
}
/** Get Region.
@return Name of the Region */
public String getRegionName() 
{
return (String)get_Value("RegionName");
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
/** Set Agency Number.
@param lbr_AgencyNo Agency Number */
public void setlbr_AgencyNo (String lbr_AgencyNo)
{
if (lbr_AgencyNo == null) throw new IllegalArgumentException ("lbr_AgencyNo is mandatory.");
if (lbr_AgencyNo.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_AgencyNo = lbr_AgencyNo.substring(0,9);
}
set_Value ("lbr_AgencyNo", lbr_AgencyNo);
}
/** Get Agency Number.
@return Agency Number */
public String getlbr_AgencyNo() 
{
return (String)get_Value("lbr_AgencyNo");
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
/** Set Bill Fold.
@param lbr_BillFold Type of Bill Fold - For Bank Usage */
public void setlbr_BillFold (String lbr_BillFold)
{
if (lbr_BillFold == null) throw new IllegalArgumentException ("lbr_BillFold is mandatory.");
if (lbr_BillFold.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_BillFold = lbr_BillFold.substring(0,9);
}
set_Value ("lbr_BillFold", lbr_BillFold);
}
/** Get Bill Fold.
@return Type of Bill Fold - For Bank Usage */
public String getlbr_BillFold() 
{
return (String)get_Value("lbr_BillFold");
}
/** Set Bill Kind.
@param lbr_BillKind Defines the kind of Bill */
public void setlbr_BillKind (String lbr_BillKind)
{
if (lbr_BillKind != null && lbr_BillKind.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_BillKind = lbr_BillKind.substring(0,9);
}
set_Value ("lbr_BillKind", lbr_BillKind);
}
/** Get Bill Kind.
@return Defines the kind of Bill */
public String getlbr_BillKind() 
{
return (String)get_Value("lbr_BillKind");
}
/** Set Cessionary.
@param lbr_Cessionary Identifies the Cessionary */
public void setlbr_Cessionary (String lbr_Cessionary)
{
if (lbr_Cessionary == null) throw new IllegalArgumentException ("lbr_Cessionary is mandatory.");
if (lbr_Cessionary.length() > 200)
{
log.warning("Length > 200 - truncated");
lbr_Cessionary = lbr_Cessionary.substring(0,199);
}
set_Value ("lbr_Cessionary", lbr_Cessionary);
}
/** Get Cessionary.
@return Identifies the Cessionary */
public String getlbr_Cessionary() 
{
return (String)get_Value("lbr_Cessionary");
}
/** Set Client Code.
@param lbr_ClientCode Client Code - needed for some Banks */
public void setlbr_ClientCode (String lbr_ClientCode)
{
if (lbr_ClientCode != null && lbr_ClientCode.length() > 30)
{
log.warning("Length > 30 - truncated");
lbr_ClientCode = lbr_ClientCode.substring(0,29);
}
set_Value ("lbr_ClientCode", lbr_ClientCode);
}
/** Get Client Code.
@return Client Code - needed for some Banks */
public String getlbr_ClientCode() 
{
return (String)get_Value("lbr_ClientCode");
}
/** Set Document Date.
@param lbr_DocDate Identifies the Document Date */
public void setlbr_DocDate (Timestamp lbr_DocDate)
{
if (lbr_DocDate == null) throw new IllegalArgumentException ("lbr_DocDate is mandatory.");
set_Value ("lbr_DocDate", lbr_DocDate);
}
/** Get Document Date.
@return Identifies the Document Date */
public Timestamp getlbr_DocDate() 
{
return (Timestamp)get_Value("lbr_DocDate");
}
/** Set Instruction 1.
@param lbr_Instruction1 Identifies the Instrucion 1 */
public void setlbr_Instruction1 (String lbr_Instruction1)
{
if (lbr_Instruction1 != null && lbr_Instruction1.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_Instruction1 = lbr_Instruction1.substring(0,59);
}
set_Value ("lbr_Instruction1", lbr_Instruction1);
}
/** Get Instruction 1.
@return Identifies the Instrucion 1 */
public String getlbr_Instruction1() 
{
return (String)get_Value("lbr_Instruction1");
}
/** Set Instruction 2.
@param lbr_Instruction2 Identifies the Instrucion 2 */
public void setlbr_Instruction2 (String lbr_Instruction2)
{
if (lbr_Instruction2 != null && lbr_Instruction2.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_Instruction2 = lbr_Instruction2.substring(0,59);
}
set_Value ("lbr_Instruction2", lbr_Instruction2);
}
/** Get Instruction 2.
@return Identifies the Instrucion 2 */
public String getlbr_Instruction2() 
{
return (String)get_Value("lbr_Instruction2");
}
/** Set Instruction 3.
@param lbr_Instruction3 Identifies the Instrucion 3 */
public void setlbr_Instruction3 (String lbr_Instruction3)
{
if (lbr_Instruction3 != null && lbr_Instruction3.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_Instruction3 = lbr_Instruction3.substring(0,59);
}
set_Value ("lbr_Instruction3", lbr_Instruction3);
}
/** Get Instruction 3.
@return Identifies the Instrucion 3 */
public String getlbr_Instruction3() 
{
return (String)get_Value("lbr_Instruction3");
}
/** Set IsCancelled.
@param lbr_IsCancelled Defines if the Document IsCancelled */
public void setlbr_IsCancelled (boolean lbr_IsCancelled)
{
set_Value ("lbr_IsCancelled", new Boolean(lbr_IsCancelled));
}
/** Get IsCancelled.
@return Defines if the Document IsCancelled */
public boolean islbr_IsCancelled() 
{
Object oo = get_Value("lbr_IsCancelled");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set PaySchedule Number.
@param lbr_PayScheduleNo Defines the PaySchedule Number */
public void setlbr_PayScheduleNo (String lbr_PayScheduleNo)
{
if (lbr_PayScheduleNo != null && lbr_PayScheduleNo.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_PayScheduleNo = lbr_PayScheduleNo.substring(0,1);
}
set_Value ("lbr_PayScheduleNo", lbr_PayScheduleNo);
}
/** Get PaySchedule Number.
@return Defines the PaySchedule Number */
public String getlbr_PayScheduleNo() 
{
return (String)get_Value("lbr_PayScheduleNo");
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
/** Set Receiver Name.
@param lbr_ReceiverName Name of the Receiver */
public void setlbr_ReceiverName (String lbr_ReceiverName)
{
if (lbr_ReceiverName == null) throw new IllegalArgumentException ("lbr_ReceiverName is mandatory.");
if (lbr_ReceiverName.length() > 200)
{
log.warning("Length > 200 - truncated");
lbr_ReceiverName = lbr_ReceiverName.substring(0,199);
}
set_Value ("lbr_ReceiverName", lbr_ReceiverName);
}
/** Get Receiver Name.
@return Name of the Receiver */
public String getlbr_ReceiverName() 
{
return (String)get_Value("lbr_ReceiverName");
}
/** Set jBoleto Number.
@param lbr_jBoletoNo Identifies the bank number at jBoleto */
public void setlbr_jBoletoNo (String lbr_jBoletoNo)
{
if (lbr_jBoletoNo == null) throw new IllegalArgumentException ("lbr_jBoletoNo is mandatory.");
if (lbr_jBoletoNo.length() > 3)
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
}
