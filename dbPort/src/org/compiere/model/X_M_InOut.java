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
/** Generated Model for M_InOut
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_M_InOut extends PO
{
/** Standard Constructor
@param ctx context
@param M_InOut_ID id
@param trxName transaction
*/
public X_M_InOut (Properties ctx, int M_InOut_ID, String trxName)
{
super (ctx, M_InOut_ID, trxName);
/** if (M_InOut_ID == 0)
{
setC_BPartner_ID (0);
setC_BPartner_Location_ID (0);
setC_DocType_ID (0);
setDateAcct (new Timestamp(System.currentTimeMillis()));	// @#Date@
setDeliveryRule (null);	// A
setDeliveryViaRule (null);	// P
setDocAction (null);	// CO
setDocStatus (null);	// DR
setDocumentNo (null);
setFreightCostRule (null);	// I
setIsApproved (false);
setIsInDispute (false);
setIsInTransit (false);
setIsPrinted (false);
setIsSOTrx (false);	// @IsSOTrx@
setM_InOut_ID (0);
setM_Warehouse_ID (0);
setMovementDate (new Timestamp(System.currentTimeMillis()));	// @#Date@
setMovementType (null);
setPosted (false);
setPriorityRule (null);	// 5
setProcessed (false);
setSendEMail (false);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_M_InOut (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("M_InOut");

/** TableName=M_InOut */
public static final String Table_Name="M_InOut";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"M_InOut");

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
StringBuffer sb = new StringBuffer ("X_M_InOut[").append(get_ID()).append("]");
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
/** Set Invoice.
@param C_Invoice_ID Invoice Identifier */
public void setC_Invoice_ID (int C_Invoice_ID)
{
if (C_Invoice_ID <= 0) set_ValueNoCheck ("C_Invoice_ID", null);
 else 
set_ValueNoCheck ("C_Invoice_ID", new Integer(C_Invoice_ID));
}
/** Get Invoice.
@return Invoice Identifier */
public int getC_Invoice_ID() 
{
Integer ii = (Integer)get_Value("C_Invoice_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Order.
@param C_Order_ID Order */
public void setC_Order_ID (int C_Order_ID)
{
if (C_Order_ID <= 0) set_ValueNoCheck ("C_Order_ID", null);
 else 
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
/** Set Create Confirm.
@param CreateConfirm Create Confirm */
public void setCreateConfirm (String CreateConfirm)
{
if (CreateConfirm != null && CreateConfirm.length() > 1)
{
log.warning("Length > 1 - truncated");
CreateConfirm = CreateConfirm.substring(0,0);
}
set_Value ("CreateConfirm", CreateConfirm);
}
/** Get Create Confirm.
@return Create Confirm */
public String getCreateConfirm() 
{
return (String)get_Value("CreateConfirm");
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
/** Set Create Package.
@param CreatePackage Create Package */
public void setCreatePackage (String CreatePackage)
{
if (CreatePackage != null && CreatePackage.length() > 1)
{
log.warning("Length > 1 - truncated");
CreatePackage = CreatePackage.substring(0,0);
}
set_Value ("CreatePackage", CreatePackage);
}
/** Get Create Package.
@return Create Package */
public String getCreatePackage() 
{
return (String)get_Value("CreatePackage");
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
set_ValueNoCheck ("DateOrdered", DateOrdered);
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
/** Set Date received.
@param DateReceived Date a product was received */
public void setDateReceived (Timestamp DateReceived)
{
set_Value ("DateReceived", DateReceived);
}
/** Get Date received.
@return Date a product was received */
public Timestamp getDateReceived() 
{
return (Timestamp)get_Value("DateReceived");
}

/** DeliveryRule AD_Reference_ID=151 */
public static final int DELIVERYRULE_AD_Reference_ID=151;
/** Availability = A */
public static final String DELIVERYRULE_Availability = "A";
/** Force = F */
public static final String DELIVERYRULE_Force = "F";
/** Complete Line = L */
public static final String DELIVERYRULE_CompleteLine = "L";
/** Manual = M */
public static final String DELIVERYRULE_Manual = "M";
/** Complete Order = O */
public static final String DELIVERYRULE_CompleteOrder = "O";
/** After Receipt = R */
public static final String DELIVERYRULE_AfterReceipt = "R";
/** Set Delivery Rule.
@param DeliveryRule Defines the timing of Delivery */
public void setDeliveryRule (String DeliveryRule)
{
if (DeliveryRule == null) throw new IllegalArgumentException ("DeliveryRule is mandatory");
if (DeliveryRule.equals("A") || DeliveryRule.equals("F") || DeliveryRule.equals("L") || DeliveryRule.equals("M") || DeliveryRule.equals("O") || DeliveryRule.equals("R"));
 else throw new IllegalArgumentException ("DeliveryRule Invalid value - " + DeliveryRule + " - Reference_ID=151 - A - F - L - M - O - R");
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
/** Delivery = D */
public static final String DELIVERYVIARULE_Delivery = "D";
/** Pickup = P */
public static final String DELIVERYVIARULE_Pickup = "P";
/** Shipper = S */
public static final String DELIVERYVIARULE_Shipper = "S";
/** Set Delivery Via.
@param DeliveryViaRule How the order will be delivered */
public void setDeliveryViaRule (String DeliveryViaRule)
{
if (DeliveryViaRule == null) throw new IllegalArgumentException ("DeliveryViaRule is mandatory");
if (DeliveryViaRule.equals("D") || DeliveryViaRule.equals("P") || DeliveryViaRule.equals("S"));
 else throw new IllegalArgumentException ("DeliveryViaRule Invalid value - " + DeliveryViaRule + " - Reference_ID=152 - D - P - S");
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
/** <None> = -- */
public static final String DOCACTION_None = "--";
/** Approve = AP */
public static final String DOCACTION_Approve = "AP";
/** Close = CL */
public static final String DOCACTION_Close = "CL";
/** Complete = CO */
public static final String DOCACTION_Complete = "CO";
/** Invalidate = IN */
public static final String DOCACTION_Invalidate = "IN";
/** Post = PO */
public static final String DOCACTION_Post = "PO";
/** Prepare = PR */
public static final String DOCACTION_Prepare = "PR";
/** Reverse - Accrual = RA */
public static final String DOCACTION_Reverse_Accrual = "RA";
/** Reverse - Correct = RC */
public static final String DOCACTION_Reverse_Correct = "RC";
/** Re-activate = RE */
public static final String DOCACTION_Re_Activate = "RE";
/** Reject = RJ */
public static final String DOCACTION_Reject = "RJ";
/** Void = VO */
public static final String DOCACTION_Void = "VO";
/** Wait Complete = WC */
public static final String DOCACTION_WaitComplete = "WC";
/** Unlock = XL */
public static final String DOCACTION_Unlock = "XL";
/** Set Document Action.
@param DocAction The targeted status of the document */
public void setDocAction (String DocAction)
{
if (DocAction == null) throw new IllegalArgumentException ("DocAction is mandatory");
if (DocAction.equals("--") || DocAction.equals("AP") || DocAction.equals("CL") || DocAction.equals("CO") || DocAction.equals("IN") || DocAction.equals("PO") || DocAction.equals("PR") || DocAction.equals("RA") || DocAction.equals("RC") || DocAction.equals("RE") || DocAction.equals("RJ") || DocAction.equals("VO") || DocAction.equals("WC") || DocAction.equals("XL"));
 else throw new IllegalArgumentException ("DocAction Invalid value - " + DocAction + " - Reference_ID=135 - -- - AP - CL - CO - IN - PO - PR - RA - RC - RE - RJ - VO - WC - XL");
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
/** Unknown = ?? */
public static final String DOCSTATUS_Unknown = "??";
/** Approved = AP */
public static final String DOCSTATUS_Approved = "AP";
/** Closed = CL */
public static final String DOCSTATUS_Closed = "CL";
/** Completed = CO */
public static final String DOCSTATUS_Completed = "CO";
/** Drafted = DR */
public static final String DOCSTATUS_Drafted = "DR";
/** Invalid = IN */
public static final String DOCSTATUS_Invalid = "IN";
/** In Progress = IP */
public static final String DOCSTATUS_InProgress = "IP";
/** Not Approved = NA */
public static final String DOCSTATUS_NotApproved = "NA";
/** Reversed = RE */
public static final String DOCSTATUS_Reversed = "RE";
/** Voided = VO */
public static final String DOCSTATUS_Voided = "VO";
/** Waiting Confirmation = WC */
public static final String DOCSTATUS_WaitingConfirmation = "WC";
/** Waiting Payment = WP */
public static final String DOCSTATUS_WaitingPayment = "WP";
/** Set Document Status.
@param DocStatus The current status of the document */
public void setDocStatus (String DocStatus)
{
if (DocStatus == null) throw new IllegalArgumentException ("DocStatus is mandatory");
if (DocStatus.equals("??") || DocStatus.equals("AP") || DocStatus.equals("CL") || DocStatus.equals("CO") || DocStatus.equals("DR") || DocStatus.equals("IN") || DocStatus.equals("IP") || DocStatus.equals("NA") || DocStatus.equals("RE") || DocStatus.equals("VO") || DocStatus.equals("WC") || DocStatus.equals("WP"));
 else throw new IllegalArgumentException ("DocStatus Invalid value - " + DocStatus + " - Reference_ID=131 - ?? - AP - CL - CO - DR - IN - IP - NA - RE - VO - WC - WP");
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

/** DocVerified AD_Reference_ID=2000003 */
public static final int DOCVERIFIED_AD_Reference_ID=2000003;
/** Documento OK = DOK */
public static final String DOCVERIFIED_DocumentoOK = "DOK";
/** Documento nao Permite o Mesmo Material em Mais de uma Linha  = DPL */
public static final String DOCVERIFIED_DocumentoNaoPermiteOMesmoMaterialEmMaisDeUmaLinha = "DPL";
/** Documento esta Vazio = DVZ */
public static final String DOCVERIFIED_DocumentoEstaVazio = "DVZ";
/** Faturamento e Entrega Divergentes = FED */
public static final String DOCVERIFIED_FaturamentoEEntregaDivergentes = "FED";
/** Existem Items com Quantidade Zero = IQZ */
public static final String DOCVERIFIED_ExistemItemsComQuantidadeZero = "IQZ";
/** Documento nao Permite Materiais com Qtd Negativa = QNG */
public static final String DOCVERIFIED_DocumentoNaoPermiteMateriaisComQtdNegativa = "QNG";
/** Reversed = RE */
public static final String DOCVERIFIED_Reversed = "RE";
/** Documento nao Permite Recebimento sem Ordem de Compra = SOC */
public static final String DOCVERIFIED_DocumentoNaoPermiteRecebimentoSemOrdemDeCompra = "SOC";
/** Existem Itens sem Saldo no Estoque = SSE */
public static final String DOCVERIFIED_ExistemItensSemSaldoNoEstoque = "SSE";
/** Existem Itens sem Saldo na Ordem = SSO */
public static final String DOCVERIFIED_ExistemItensSemSaldoNaOrdem = "SSO";
/** Set Status da Verificação.
@param DocVerified Indica se ocorreram erros ao processar este documento */
public void setDocVerified (String DocVerified)
{
if (DocVerified == null || DocVerified.equals("DOK") || DocVerified.equals("DPL") || DocVerified.equals("DVZ") || DocVerified.equals("FED") || DocVerified.equals("IQZ") || DocVerified.equals("QNG") || DocVerified.equals("RE") || DocVerified.equals("SOC") || DocVerified.equals("SSE") || DocVerified.equals("SSO"));
 else throw new IllegalArgumentException ("DocVerified Invalid value - " + DocVerified + " - Reference_ID=2000003 - DOK - DPL - DVZ - FED - IQZ - QNG - RE - SOC - SSE - SSO");
if (DocVerified != null && DocVerified.length() > 3)
{
log.warning("Length > 3 - truncated");
DocVerified = DocVerified.substring(0,2);
}
set_ValueNoCheck ("DocVerified", DocVerified);
}
/** Get Status da Verificação.
@return Indica se ocorreram erros ao processar este documento */
public String getDocVerified() 
{
return (String)get_Value("DocVerified");
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
if (FreightCostRule == null) throw new IllegalArgumentException ("FreightCostRule is mandatory");
if (FreightCostRule.equals("C") || FreightCostRule.equals("E") || FreightCostRule.equals("F") || FreightCostRule.equals("I") || FreightCostRule.equals("L"));
 else throw new IllegalArgumentException ("FreightCostRule Invalid value - " + FreightCostRule + " - Reference_ID=153 - C - E - F - I - L");
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
/** Set Generate To.
@param GenerateTo Generate To */
public void setGenerateTo (String GenerateTo)
{
if (GenerateTo != null && GenerateTo.length() > 1)
{
log.warning("Length > 1 - truncated");
GenerateTo = GenerateTo.substring(0,0);
}
set_Value ("GenerateTo", GenerateTo);
}
/** Get Generate To.
@return Generate To */
public String getGenerateTo() 
{
return (String)get_Value("GenerateTo");
}
/** Set Gross Weight.
@param GrossWeight Gross Weight */
public void setGrossWeight (BigDecimal GrossWeight)
{
set_Value ("GrossWeight", GrossWeight);
}
/** Get Gross Weight.
@return Gross Weight */
public BigDecimal getGrossWeight() 
{
BigDecimal bd = (BigDecimal)get_Value("GrossWeight");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set Approved.
@param IsApproved Indicates if this document requires approval */
public void setIsApproved (boolean IsApproved)
{
set_Value ("IsApproved", new Boolean(IsApproved));
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
/** Set In Dispute.
@param IsInDispute Document is in dispute */
public void setIsInDispute (boolean IsInDispute)
{
set_Value ("IsInDispute", new Boolean(IsInDispute));
}
/** Get In Dispute.
@return Document is in dispute */
public boolean isInDispute() 
{
Object oo = get_Value("IsInDispute");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set In Transit.
@param IsInTransit Movement is in transit */
public void setIsInTransit (boolean IsInTransit)
{
set_Value ("IsInTransit", new Boolean(IsInTransit));
}
/** Get In Transit.
@return Movement is in transit */
public boolean isInTransit() 
{
Object oo = get_Value("IsInTransit");
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
/** Set Shipment/Receipt.
@param M_InOut_ID Material Shipment Document */
public void setM_InOut_ID (int M_InOut_ID)
{
if (M_InOut_ID < 1) throw new IllegalArgumentException ("M_InOut_ID is mandatory.");
set_ValueNoCheck ("M_InOut_ID", new Integer(M_InOut_ID));
}
/** Get Shipment/Receipt.
@return Material Shipment Document */
public int getM_InOut_ID() 
{
Integer ii = (Integer)get_Value("M_InOut_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set RMA.
@param M_RMA_ID Return Material Authorization */
public void setM_RMA_ID (int M_RMA_ID)
{
if (M_RMA_ID <= 0) set_Value ("M_RMA_ID", null);
 else 
set_Value ("M_RMA_ID", new Integer(M_RMA_ID));
}
/** Get RMA.
@return Return Material Authorization */
public int getM_RMA_ID() 
{
Integer ii = (Integer)get_Value("M_RMA_ID");
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
set_ValueNoCheck ("M_Warehouse_ID", new Integer(M_Warehouse_ID));
}
/** Get Warehouse.
@return Storage Warehouse and Service Point */
public int getM_Warehouse_ID() 
{
Integer ii = (Integer)get_Value("M_Warehouse_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Movement Date.
@param MovementDate Date a product was moved in or out of inventory */
public void setMovementDate (Timestamp MovementDate)
{
if (MovementDate == null) throw new IllegalArgumentException ("MovementDate is mandatory.");
set_Value ("MovementDate", MovementDate);
}
/** Get Movement Date.
@return Date a product was moved in or out of inventory */
public Timestamp getMovementDate() 
{
return (Timestamp)get_Value("MovementDate");
}

/** MovementType AD_Reference_ID=189 */
public static final int MOVEMENTTYPE_AD_Reference_ID=189;
/** Customer Returns = C+ */
public static final String MOVEMENTTYPE_CustomerReturns = "C+";
/** Customer Shipment = C- */
public static final String MOVEMENTTYPE_CustomerShipment = "C-";
/** Inventory In = I+ */
public static final String MOVEMENTTYPE_InventoryIn = "I+";
/** Inventory Out = I- */
public static final String MOVEMENTTYPE_InventoryOut = "I-";
/** Movement To = M+ */
public static final String MOVEMENTTYPE_MovementTo = "M+";
/** Movement From = M- */
public static final String MOVEMENTTYPE_MovementFrom = "M-";
/** Production + = P+ */
public static final String MOVEMENTTYPE_ProductionPlus = "P+";
/** Production - = P- */
public static final String MOVEMENTTYPE_Production_ = "P-";
/** Vendor Receipts = V+ */
public static final String MOVEMENTTYPE_VendorReceipts = "V+";
/** Vendor Returns = V- */
public static final String MOVEMENTTYPE_VendorReturns = "V-";
/** Work Order + = W+ */
public static final String MOVEMENTTYPE_WorkOrderPlus = "W+";
/** Work Order - = W- */
public static final String MOVEMENTTYPE_WorkOrder_ = "W-";
/** Set Movement Type.
@param MovementType Method of moving the inventory */
public void setMovementType (String MovementType)
{
if (MovementType == null) throw new IllegalArgumentException ("MovementType is mandatory");
if (MovementType.equals("C+") || MovementType.equals("C-") || MovementType.equals("I+") || MovementType.equals("I-") || MovementType.equals("M+") || MovementType.equals("M-") || MovementType.equals("P+") || MovementType.equals("P-") || MovementType.equals("V+") || MovementType.equals("V-") || MovementType.equals("W+") || MovementType.equals("W-"));
 else throw new IllegalArgumentException ("MovementType Invalid value - " + MovementType + " - Reference_ID=189 - C+ - C- - I+ - I- - M+ - M- - P+ - P- - V+ - V- - W+ - W-");
if (MovementType.length() > 2)
{
log.warning("Length > 2 - truncated");
MovementType = MovementType.substring(0,1);
}
set_ValueNoCheck ("MovementType", MovementType);
}
/** Get Movement Type.
@return Method of moving the inventory */
public String getMovementType() 
{
return (String)get_Value("MovementType");
}
/** Set Net Weight.
@param NetWeight Net Weight */
public void setNetWeight (BigDecimal NetWeight)
{
set_Value ("NetWeight", NetWeight);
}
/** Get Net Weight.
@return Net Weight */
public BigDecimal getNetWeight() 
{
BigDecimal bd = (BigDecimal)get_Value("NetWeight");
if (bd == null) return Env.ZERO;
return bd;
}
/** Set No Packages.
@param NoPackages Number of packages shipped */
public void setNoPackages (int NoPackages)
{
set_Value ("NoPackages", new Integer(NoPackages));
}
/** Get No Packages.
@return Number of packages shipped */
public int getNoPackages() 
{
Integer ii = (Integer)get_Value("NoPackages");
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

/** PackageType AD_Reference_ID=2000015 */
public static final int PACKAGETYPE_AD_Reference_ID=2000015;
/** 25 Engr + 11 Cxs = 01 */
public static final String PACKAGETYPE_25EngrPlus11Cxs = "01";
/** 15 engr + 9 cxs = 02 */
public static final String PACKAGETYPE_15EngrPlus9Cxs = "02";
/** 1 Palete + 2 Cxs = 03 */
public static final String PACKAGETYPE_1PaletePlus2Cxs = "03";
/** 1 Palete + 1 Caixa + 1 Bobina = 04 */
public static final String PACKAGETYPE_1PaletePlus1CaixaPlus1Bobina = "04";
/** 1 Palete + 3 Caixas = 05 */
public static final String PACKAGETYPE_1PaletePlus3Caixas = "05";
/** 8 Caixas + 1 Engradado = 06 */
public static final String PACKAGETYPE_8CaixasPlus1Engradado = "06";
/** 33 Caixas + 01 Engradado = 07 */
public static final String PACKAGETYPE_33CaixasPlus01Engradado = "07";
/** 8 Engradados + 20 Caixas = 08 */
public static final String PACKAGETYPE_8EngradadosPlus20Caixas = "08";
/** 1 Caixa + 1 Palete = 09 */
public static final String PACKAGETYPE_1CaixaPlus1Palete = "09";
/** 2 Bobinas + 1 Caixa + 1 Palete = 10 */
public static final String PACKAGETYPE_2BobinasPlus1CaixaPlus1Palete = "10";
/** 03 Bobinas + 01 Palete + 23 cxs  = 11 */
public static final String PACKAGETYPE_03BobinasPlus01PaletePlus23Cxs = "11";
/** 02 Bobinas + 01 Palete + 23 Cxs = 12 */
public static final String PACKAGETYPE_02BobinasPlus01PaletePlus23Cxs = "12";
/** 03 Bobinas + 01 Palete + 09 Cxs = 13 */
public static final String PACKAGETYPE_03BobinasPlus01PaletePlus09Cxs = "13";
/** Gabinete = 14 */
public static final String PACKAGETYPE_Gabinete = "14";
/** Volumes = 15 */
public static final String PACKAGETYPE_Volumes = "15";
/** 4 Caixas + 1 Palete   = 16 */
public static final String PACKAGETYPE_4CaixasPlus1Palete = "16";
/** 7 CXS. MAD + 1 BOMBONA = 17 */
public static final String PACKAGETYPE_7CXSMADPlus1BOMBONA = "17";
/** 1 Pal + 2 Bob + 2 Bombonas + 21 Cxs = 18 */
public static final String PACKAGETYPE_1PalPlus2BobPlus2BombonasPlus21Cxs = "18";
/** 5 Engradados + 3 Caixas = 19 */
public static final String PACKAGETYPE_5EngradadosPlus3Caixas = "19";
/** 4 Bobinas + 11 Caixas + 1 Palete = 1A */
public static final String PACKAGETYPE_4BobinasPlus11CaixasPlus1Palete = "1A";
/** Engradado = 1B */
public static final String PACKAGETYPE_Engradado = "1B";
/** Caixa = 20 */
public static final String PACKAGETYPE_Caixa = "20";
/** 1 Engradado + 2 Caixas = 21 */
public static final String PACKAGETYPE_1EngradadoPlus2Caixas = "21";
/** 1 Engr + 1 Bombona + 7 Cxs = 22 */
public static final String PACKAGETYPE_1EngrPlus1BombonaPlus7Cxs = "22";
/** 11 Engradados + 9 Caixas = 23 */
public static final String PACKAGETYPE_11EngradadosPlus9Caixas = "23";
/** 4 Engradados + 3 Caixas = 24 */
public static final String PACKAGETYPE_4EngradadosPlus3Caixas = "24";
/** 15 Engradados + 9 Caixas = 25 */
public static final String PACKAGETYPE_15EngradadosPlus9Caixas = "25";
/** 1 Palete + 1 Bobina = 26 */
public static final String PACKAGETYPE_1PaletePlus1Bobina = "26";
/**  2 Cxs + 1 Palete + 1 Engradado = 27 */
public static final String PACKAGETYPE_2CxsPlus1PaletePlus1Engradado = "27";
/** 3 Caixas + 1 Engradado = 28 */
public static final String PACKAGETYPE_3CaixasPlus1Engradado = "28";
/** 2 Palete + 5 Caixas = 29 */
public static final String PACKAGETYPE_2PaletePlus5Caixas = "29";
/** 15 Engr. de madeira + 15 Cxs. Papelao = 30 */
public static final String PACKAGETYPE_15EngrDeMadeiraPlus15CxsPapelao = "30";
/** 16 Bat + 4 Cx. Madeira = 31 */
public static final String PACKAGETYPE_16BatPlus4CxMadeira = "31";
/** 8 Bat + 2 Cx. Madeira = 32 */
public static final String PACKAGETYPE_8BatPlus2CxMadeira = "32";
/** 40 Bat + 10 Cx. Madeira = 33 */
public static final String PACKAGETYPE_40BatPlus10CxMadeira = "33";
/** 13 Cx. Madeira + 52 Bat  = 34 */
public static final String PACKAGETYPE_13CxMadeiraPlus52Bat = "34";
/** 100 Bat + 25 Caixa Madeira = 35 */
public static final String PACKAGETYPE_100BatPlus25CaixaMadeira = "35";
/** 15 Cx Madeira + 60 Bat  = 36 */
public static final String PACKAGETYPE_15CxMadeiraPlus60Bat = "36";
/** 04 Engr + 01 Bombona + 5 cxs = 37 */
public static final String PACKAGETYPE_04EngrPlus01BombonaPlus5Cxs = "37";
/** 1 Cx. Madeira + 4 Bat  = 38 */
public static final String PACKAGETYPE_1CxMadeiraPlus4Bat = "38";
/** AMARRADO/ATADO/FEIXE = 39 */
public static final String PACKAGETYPE_AMARRADOATADOFEIXE = "39";
/** 3 Carton Boxes + 1 Pallet = 3B */
public static final String PACKAGETYPE_3CartonBoxesPlus1Pallet = "3B";
/** 1 caixa + 4 bat = 40 */
public static final String PACKAGETYPE_1CaixaPlus4Bat = "40";
/** 12 Caixas + 6 Palete = 41 */
public static final String PACKAGETYPE_12CaixasPlus6Palete = "41";
/** 16 Caixas + 16 Palete = 42 */
public static final String PACKAGETYPE_16CaixasPlus16Palete = "42";
/** 16 Caixas + 6 Palete = 43 */
public static final String PACKAGETYPE_16CaixasPlus6Palete = "43";
/** Estrado\Amarrado\Atado\Feixe = 44 */
public static final String PACKAGETYPE_EstradoAmarradoAtadoFeixe = "44";
/** 04 Engradados + 01 Palete + 06 Cxs = 4P */
public static final String PACKAGETYPE_04EngradadosPlus01PaletePlus06Cxs = "4P";
/** 44 Engr + 5 Boxes + 1 Bobine = BB */
public static final String PACKAGETYPE_44EngrPlus5BoxesPlus1Bobine = "BB";
/** Carton Boxes = BC */
public static final String PACKAGETYPE_CartonBoxes = "BC";
/** Wood Boxes = BW */
public static final String PACKAGETYPE_WoodBoxes = "BW";
/** Boxes = BX */
public static final String PACKAGETYPE_Boxes = "BX";
/** 4 Bobinas + 10 Caixas + 1 Palete = CA */
public static final String PACKAGETYPE_4BobinasPlus10CaixasPlus1Palete = "CA";
/** 44 Engr + 5 Boxes = EB */
public static final String PACKAGETYPE_44EngrPlus5Boxes = "EB";
/** Estrado = ES */
public static final String PACKAGETYPE_Estrado = "ES";
/** Metal Boxes = MB */
public static final String PACKAGETYPE_MetalBoxes = "MB";
/** Others = OT */
public static final String PACKAGETYPE_Others = "OT";
/** Pallet = PL */
public static final String PACKAGETYPE_Pallet = "PL";
/** Set Package Type.
@param PackageType Package Type */
public void setPackageType (String PackageType)
{
if (PackageType == null || PackageType.equals("01") || PackageType.equals("02") || PackageType.equals("03") || PackageType.equals("04") || PackageType.equals("05") || PackageType.equals("06") || PackageType.equals("07") || PackageType.equals("08") || PackageType.equals("09") || PackageType.equals("10") || PackageType.equals("11") || PackageType.equals("12") || PackageType.equals("13") || PackageType.equals("14") || PackageType.equals("15") || PackageType.equals("16") || PackageType.equals("17") || PackageType.equals("18") || PackageType.equals("19") || PackageType.equals("1A") || PackageType.equals("1B") || PackageType.equals("20") || PackageType.equals("21") || PackageType.equals("22") || PackageType.equals("23") || PackageType.equals("24") || PackageType.equals("25") || PackageType.equals("26") || PackageType.equals("27") || PackageType.equals("28") || PackageType.equals("29") || PackageType.equals("30") || PackageType.equals("31") || PackageType.equals("32") || PackageType.equals("33") || PackageType.equals("34") || PackageType.equals("35") || PackageType.equals("36") || PackageType.equals("37") || PackageType.equals("38") || PackageType.equals("39") || PackageType.equals("3B") || PackageType.equals("40") || PackageType.equals("41") || PackageType.equals("42") || PackageType.equals("43") || PackageType.equals("44") || PackageType.equals("4P") || PackageType.equals("BB") || PackageType.equals("BC") || PackageType.equals("BW") || PackageType.equals("BX") || PackageType.equals("CA") || PackageType.equals("EB") || PackageType.equals("ES") || PackageType.equals("MB") || PackageType.equals("OT") || PackageType.equals("PL"));
 else throw new IllegalArgumentException ("PackageType Invalid value - " + PackageType + " - Reference_ID=2000015 - 01 - 02 - 03 - 04 - 05 - 06 - 07 - 08 - 09 - 10 - 11 - 12 - 13 - 14 - 15 - 16 - 17 - 18 - 19 - 1A - 1B - 20 - 21 - 22 - 23 - 24 - 25 - 26 - 27 - 28 - 29 - 30 - 31 - 32 - 33 - 34 - 35 - 36 - 37 - 38 - 39 - 3B - 40 - 41 - 42 - 43 - 44 - 4P - BB - BC - BW - BX - CA - EB - ES - MB - OT - PL");
if (PackageType != null && PackageType.length() > 2)
{
log.warning("Length > 2 - truncated");
PackageType = PackageType.substring(0,1);
}
set_Value ("PackageType", PackageType);
}
/** Get Package Type.
@return Package Type */
public String getPackageType() 
{
return (String)get_Value("PackageType");
}
/** Set Pick Date.
@param PickDate Date/Time when picked for Shipment */
public void setPickDate (Timestamp PickDate)
{
set_Value ("PickDate", PickDate);
}
/** Get Pick Date.
@return Date/Time when picked for Shipment */
public Timestamp getPickDate() 
{
return (Timestamp)get_Value("PickDate");
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
/** Urgent = 1 */
public static final String PRIORITYRULE_Urgent = "1";
/** High = 3 */
public static final String PRIORITYRULE_High = "3";
/** Medium = 5 */
public static final String PRIORITYRULE_Medium = "5";
/** Low = 7 */
public static final String PRIORITYRULE_Low = "7";
/** Minor = 9 */
public static final String PRIORITYRULE_Minor = "9";
/** Set Priority.
@param PriorityRule Priority of a document */
public void setPriorityRule (String PriorityRule)
{
if (PriorityRule == null) throw new IllegalArgumentException ("PriorityRule is mandatory");
if (PriorityRule.equals("1") || PriorityRule.equals("3") || PriorityRule.equals("5") || PriorityRule.equals("7") || PriorityRule.equals("9"));
 else throw new IllegalArgumentException ("PriorityRule Invalid value - " + PriorityRule + " - Reference_ID=154 - 1 - 3 - 5 - 7 - 9");
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
/** Set Referenced Shipment.
@param Ref_InOut_ID Referenced Shipment */
public void setRef_InOut_ID (int Ref_InOut_ID)
{
if (Ref_InOut_ID <= 0) set_Value ("Ref_InOut_ID", null);
 else 
set_Value ("Ref_InOut_ID", new Integer(Ref_InOut_ID));
}
/** Get Referenced Shipment.
@return Referenced Shipment */
public int getRef_InOut_ID() 
{
Integer ii = (Integer)get_Value("Ref_InOut_ID");
if (ii == null) return 0;
return ii.intValue();
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
/** Set Ship Date.
@param ShipDate Shipment Date/Time */
public void setShipDate (Timestamp ShipDate)
{
set_Value ("ShipDate", ShipDate);
}
/** Get Ship Date.
@return Shipment Date/Time */
public Timestamp getShipDate() 
{
return (Timestamp)get_Value("ShipDate");
}
/** Set Tracking No.
@param TrackingNo Number to track the shipment */
public void setTrackingNo (String TrackingNo)
{
if (TrackingNo != null && TrackingNo.length() > 60)
{
log.warning("Length > 60 - truncated");
TrackingNo = TrackingNo.substring(0,59);
}
set_Value ("TrackingNo", TrackingNo);
}
/** Get Tracking No.
@return Number to track the shipment */
public String getTrackingNo() 
{
return (String)get_Value("TrackingNo");
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
/** Set Receipt NF Number.
@param lbr_NFEntrada Number of the receipt NF */
public void setlbr_NFEntrada (String lbr_NFEntrada)
{
if (lbr_NFEntrada != null && lbr_NFEntrada.length() > 20)
{
log.warning("Length > 20 - truncated");
lbr_NFEntrada = lbr_NFEntrada.substring(0,19);
}
set_Value ("lbr_NFEntrada", lbr_NFEntrada);
}
/** Get Receipt NF Number.
@return Number of the receipt NF */
public String getlbr_NFEntrada() 
{
return (String)get_Value("lbr_NFEntrada");
}
}
