/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_Boleto
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_Boleto extends PO implements I_LBR_Boleto, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_Boleto (Properties ctx, int LBR_Boleto_ID, String trxName)
    {
      super (ctx, LBR_Boleto_ID, trxName);
      /** if (LBR_Boleto_ID == 0)
        {
			setAccountNo (null);
			setC_BPartner_ID (0);
			setC_Invoice_ID (0);
			setDiscountAmt (Env.ZERO);
			setDiscountDate (new Timestamp( System.currentTimeMillis() ));
			setDocumentNo (null);
			setDueDate (new Timestamp( System.currentTimeMillis() ));
			setGrandTotal (Env.ZERO);
			setIsPaid (false);
// 'N'
			setlbr_AgencyNo (null);
			setlbr_BillFold (null);
			setLBR_Boleto_ID (0);
			setlbr_BPTypeBR (null);
			setlbr_Cessionary (null);
			setlbr_DocDate (new Timestamp( System.currentTimeMillis() ));
			setlbr_HasSue (false);
// 'N'
			setlbr_IsCancelled (false);
// 'N'
			setlbr_jBoletoNo (null);
			setlbr_ReceiverName (null);
			setRoutingNo (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_Boleto (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_Boleto[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Account No.
		@param AccountNo 
		Account Number
	  */
	public void setAccountNo (String AccountNo)
	{
		set_Value (COLUMNNAME_AccountNo, AccountNo);
	}

	/** Get Account No.
		@return Account Number
	  */
	public String getAccountNo () 
	{
		return (String)get_Value(COLUMNNAME_AccountNo);
	}

	/** Set Address 1.
		@param Address1 
		Address line 1 for this location
	  */
	public void setAddress1 (String Address1)
	{
		set_Value (COLUMNNAME_Address1, Address1);
	}

	/** Get Address 1.
		@return Address line 1 for this location
	  */
	public String getAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_Address1);
	}

	/** Set Address 2.
		@param Address2 
		Address line 2 for this location
	  */
	public void setAddress2 (String Address2)
	{
		set_Value (COLUMNNAME_Address2, Address2);
	}

	/** Get Address 2.
		@return Address line 2 for this location
	  */
	public String getAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_Address2);
	}

	/** Set Address 3.
		@param Address3 
		Address Line 3 for the location
	  */
	public void setAddress3 (String Address3)
	{
		set_Value (COLUMNNAME_Address3, Address3);
	}

	/** Get Address 3.
		@return Address Line 3 for the location
	  */
	public String getAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_Address3);
	}

	/** Set Address 4.
		@param Address4 
		Address Line 4 for the location
	  */
	public void setAddress4 (String Address4)
	{
		set_Value (COLUMNNAME_Address4, Address4);
	}

	/** Get Address 4.
		@return Address Line 4 for the location
	  */
	public String getAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_Address4);
	}

	public I_C_BankAccount getC_BankAccount() throws RuntimeException
    {
		return (I_C_BankAccount)MTable.get(getCtx(), I_C_BankAccount.Table_Name)
			.getPO(getC_BankAccount_ID(), get_TrxName());	}

	/** Set Bank Account.
		@param C_BankAccount_ID 
		Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID)
	{
		if (C_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BankAccount_ID, Integer.valueOf(C_BankAccount_ID));
	}

	/** Get Bank Account.
		@return Account at the Bank
	  */
	public int getC_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (I_C_Invoice)MTable.get(getCtx(), I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set City.
		@param City 
		Identifies a City
	  */
	public void setCity (String City)
	{
		set_Value (COLUMNNAME_City, City);
	}

	/** Get City.
		@return Identifies a City
	  */
	public String getCity () 
	{
		return (String)get_Value(COLUMNNAME_City);
	}

	/** Set Comments.
		@param Comments 
		Comments or additional information
	  */
	public void setComments (String Comments)
	{
		set_Value (COLUMNNAME_Comments, Comments);
	}

	/** Get Comments.
		@return Comments or additional information
	  */
	public String getComments () 
	{
		return (String)get_Value(COLUMNNAME_Comments);
	}

	public I_C_Payment getC_Payment() throws RuntimeException
    {
		return (I_C_Payment)MTable.get(getCtx(), I_C_Payment.Table_Name)
			.getPO(getC_Payment_ID(), get_TrxName());	}

	/** Set Payment.
		@param C_Payment_ID 
		Payment identifier
	  */
	public void setC_Payment_ID (int C_Payment_ID)
	{
		if (C_Payment_ID < 1) 
			set_Value (COLUMNNAME_C_Payment_ID, null);
		else 
			set_Value (COLUMNNAME_C_Payment_ID, Integer.valueOf(C_Payment_ID));
	}

	/** Get Payment.
		@return Payment identifier
	  */
	public int getC_Payment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Payment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Discount Date.
		@param DiscountDate 
		Last Date for payments with discount
	  */
	public void setDiscountDate (Timestamp DiscountDate)
	{
		set_Value (COLUMNNAME_DiscountDate, DiscountDate);
	}

	/** Get Discount Date.
		@return Last Date for payments with discount
	  */
	public Timestamp getDiscountDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DiscountDate);
	}

	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{
		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Paid.
		@param IsPaid 
		The document is paid
	  */
	public void setIsPaid (boolean IsPaid)
	{
		set_Value (COLUMNNAME_IsPaid, Boolean.valueOf(IsPaid));
	}

	/** Get Paid.
		@return The document is paid
	  */
	public boolean isPaid () 
	{
		Object oo = get_Value(COLUMNNAME_IsPaid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Agency Number.
		@param lbr_AgencyNo 
		Agency Number
	  */
	public void setlbr_AgencyNo (String lbr_AgencyNo)
	{
		set_Value (COLUMNNAME_lbr_AgencyNo, lbr_AgencyNo);
	}

	/** Get Agency Number.
		@return Agency Number
	  */
	public String getlbr_AgencyNo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_AgencyNo);
	}

	/** Set Bill Fold.
		@param lbr_BillFold 
		Type of Bill Fold - For Bank Usage
	  */
	public void setlbr_BillFold (String lbr_BillFold)
	{
		set_Value (COLUMNNAME_lbr_BillFold, lbr_BillFold);
	}

	/** Get Bill Fold.
		@return Type of Bill Fold - For Bank Usage
	  */
	public String getlbr_BillFold () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BillFold);
	}

	/** Set Bill Kind.
		@param lbr_BillKind 
		Defines the kind of Bill
	  */
	public void setlbr_BillKind (String lbr_BillKind)
	{
		set_Value (COLUMNNAME_lbr_BillKind, lbr_BillKind);
	}

	/** Get Bill Kind.
		@return Defines the kind of Bill
	  */
	public String getlbr_BillKind () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BillKind);
	}

	/** Set Boleto.
		@param LBR_Boleto_ID 
		Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID)
	{
		if (LBR_Boleto_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_Boleto_ID, Integer.valueOf(LBR_Boleto_ID));
	}

	/** Get Boleto.
		@return Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Boleto_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_BPTypeBR AD_Reference_ID=1000000 */
	public static final int LBR_BPTYPEBR_AD_Reference_ID=1000000;
	/** PJ - Legal Entity = PJ */
	public static final String LBR_BPTYPEBR_PJ_LegalEntity = "PJ";
	/** PF - Individual = PF */
	public static final String LBR_BPTYPEBR_PF_Individual = "PF";
	/** Set Brazilian BP Type.
		@param lbr_BPTypeBR 
		Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR)
	{

		set_Value (COLUMNNAME_lbr_BPTypeBR, lbr_BPTypeBR);
	}

	/** Get Brazilian BP Type.
		@return Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPTypeBR);
	}

	/** Set Cessionary.
		@param lbr_Cessionary 
		Identifies the Cessionary
	  */
	public void setlbr_Cessionary (String lbr_Cessionary)
	{
		set_Value (COLUMNNAME_lbr_Cessionary, lbr_Cessionary);
	}

	/** Get Cessionary.
		@return Identifies the Cessionary
	  */
	public String getlbr_Cessionary () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Cessionary);
	}

	/** Set Client Code.
		@param lbr_ClientCode 
		Client Code - needed for some Banks
	  */
	public void setlbr_ClientCode (String lbr_ClientCode)
	{
		set_Value (COLUMNNAME_lbr_ClientCode, lbr_ClientCode);
	}

	/** Get Client Code.
		@return Client Code - needed for some Banks
	  */
	public String getlbr_ClientCode () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ClientCode);
	}

	/** Set Document Date.
		@param lbr_DocDate 
		Identifies the Document Date
	  */
	public void setlbr_DocDate (Timestamp lbr_DocDate)
	{
		set_Value (COLUMNNAME_lbr_DocDate, lbr_DocDate);
	}

	/** Get Document Date.
		@return Identifies the Document Date
	  */
	public Timestamp getlbr_DocDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DocDate);
	}

	/** Set Has Sue.
		@param lbr_HasSue 
		Define if this Document must be Sue
	  */
	public void setlbr_HasSue (boolean lbr_HasSue)
	{
		set_Value (COLUMNNAME_lbr_HasSue, Boolean.valueOf(lbr_HasSue));
	}

	/** Get Has Sue.
		@return Define if this Document must be Sue
	  */
	public boolean islbr_HasSue () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_HasSue);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Instruction 1.
		@param lbr_Instruction1 
		Identifies the Instrucion 1
	  */
	public void setlbr_Instruction1 (String lbr_Instruction1)
	{
		set_Value (COLUMNNAME_lbr_Instruction1, lbr_Instruction1);
	}

	/** Get Instruction 1.
		@return Identifies the Instrucion 1
	  */
	public String getlbr_Instruction1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction1);
	}

	/** Set Instruction 2.
		@param lbr_Instruction2 
		Identifies the Instrucion 2
	  */
	public void setlbr_Instruction2 (String lbr_Instruction2)
	{
		set_Value (COLUMNNAME_lbr_Instruction2, lbr_Instruction2);
	}

	/** Get Instruction 2.
		@return Identifies the Instrucion 2
	  */
	public String getlbr_Instruction2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction2);
	}

	/** Set Instruction 3.
		@param lbr_Instruction3 
		Identifies the Instrucion 3
	  */
	public void setlbr_Instruction3 (String lbr_Instruction3)
	{
		set_Value (COLUMNNAME_lbr_Instruction3, lbr_Instruction3);
	}

	/** Get Instruction 3.
		@return Identifies the Instrucion 3
	  */
	public String getlbr_Instruction3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Instruction3);
	}

	/** Set Interest.
		@param lbr_Interest 
		Defines the Interest
	  */
	public void setlbr_Interest (BigDecimal lbr_Interest)
	{
		set_Value (COLUMNNAME_lbr_Interest, lbr_Interest);
	}

	/** Get Interest.
		@return Defines the Interest
	  */
	public BigDecimal getlbr_Interest () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_Interest);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set IsCancelled.
		@param lbr_IsCancelled 
		Defines if the Document IsCancelled
	  */
	public void setlbr_IsCancelled (boolean lbr_IsCancelled)
	{
		set_Value (COLUMNNAME_lbr_IsCancelled, Boolean.valueOf(lbr_IsCancelled));
	}

	/** Get IsCancelled.
		@return Defines if the Document IsCancelled
	  */
	public boolean islbr_IsCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set jBoleto Number.
		@param lbr_jBoletoNo 
		Identifies the bank number at jBoleto
	  */
	public void setlbr_jBoletoNo (String lbr_jBoletoNo)
	{
		set_Value (COLUMNNAME_lbr_jBoletoNo, lbr_jBoletoNo);
	}

	/** Get jBoleto Number.
		@return Identifies the bank number at jBoleto
	  */
	public String getlbr_jBoletoNo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_jBoletoNo);
	}

	/** Set Occurrence Number.
		@param lbr_OccurNo 
		Defines the Occurrence Number
	  */
	public void setlbr_OccurNo (int lbr_OccurNo)
	{
		set_Value (COLUMNNAME_lbr_OccurNo, Integer.valueOf(lbr_OccurNo));
	}

	/** Get Occurrence Number.
		@return Defines the Occurrence Number
	  */
	public int getlbr_OccurNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_OccurNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Payment Location 1.
		@param lbr_PaymentLocation1 
		Identifies the Payment Location 1
	  */
	public void setlbr_PaymentLocation1 (String lbr_PaymentLocation1)
	{
		set_Value (COLUMNNAME_lbr_PaymentLocation1, lbr_PaymentLocation1);
	}

	/** Get Payment Location 1.
		@return Identifies the Payment Location 1
	  */
	public String getlbr_PaymentLocation1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PaymentLocation1);
	}

	/** Set Payment Location 2.
		@param lbr_PaymentLocation2 
		Identifies the Payment Location 2
	  */
	public void setlbr_PaymentLocation2 (String lbr_PaymentLocation2)
	{
		set_Value (COLUMNNAME_lbr_PaymentLocation2, lbr_PaymentLocation2);
	}

	/** Get Payment Location 2.
		@return Identifies the Payment Location 2
	  */
	public String getlbr_PaymentLocation2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PaymentLocation2);
	}

	/** Set PaySchedule Number.
		@param lbr_PayScheduleNo 
		Defines the PaySchedule Number
	  */
	public void setlbr_PayScheduleNo (String lbr_PayScheduleNo)
	{
		set_Value (COLUMNNAME_lbr_PayScheduleNo, lbr_PayScheduleNo);
	}

	/** Get PaySchedule Number.
		@return Defines the PaySchedule Number
	  */
	public String getlbr_PayScheduleNo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PayScheduleNo);
	}

	/** Set Receiver Name.
		@param lbr_ReceiverName 
		Name of the Receiver
	  */
	public void setlbr_ReceiverName (String lbr_ReceiverName)
	{
		set_Value (COLUMNNAME_lbr_ReceiverName, lbr_ReceiverName);
	}

	/** Get Receiver Name.
		@return Name of the Receiver
	  */
	public String getlbr_ReceiverName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ReceiverName);
	}

	/** Set Sue Days.
		@param lbr_SueDays 
		Define the Sue Days
	  */
	public void setlbr_SueDays (int lbr_SueDays)
	{
		set_Value (COLUMNNAME_lbr_SueDays, Integer.valueOf(lbr_SueDays));
	}

	/** Get Sue Days.
		@return Define the Sue Days
	  */
	public int getlbr_SueDays () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_SueDays);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set ZIP.
		@param Postal 
		Postal code
	  */
	public void setPostal (String Postal)
	{
		set_Value (COLUMNNAME_Postal, Postal);
	}

	/** Get ZIP.
		@return Postal code
	  */
	public String getPostal () 
	{
		return (String)get_Value(COLUMNNAME_Postal);
	}

	/** Set Region.
		@param RegionName 
		Name of the Region
	  */
	public void setRegionName (String RegionName)
	{
		set_Value (COLUMNNAME_RegionName, RegionName);
	}

	/** Get Region.
		@return Name of the Region
	  */
	public String getRegionName () 
	{
		return (String)get_Value(COLUMNNAME_RegionName);
	}

	/** Set Routing No.
		@param RoutingNo 
		Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo)
	{
		set_Value (COLUMNNAME_RoutingNo, RoutingNo);
	}

	/** Get Routing No.
		@return Bank Routing Number
	  */
	public String getRoutingNo () 
	{
		return (String)get_Value(COLUMNNAME_RoutingNo);
	}
}