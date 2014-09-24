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

/** Generated Model for LBR_NotaFiscal
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NotaFiscal extends PO implements I_LBR_NotaFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130710L;

    /** Standard Constructor */
    public X_LBR_NotaFiscal (Properties ctx, int LBR_NotaFiscal_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscal_ID, trxName);
      /** if (LBR_NotaFiscal_ID == 0)
        {
			setDocumentNo (null);
			setIsCancelled (false);
// 'N'
			setIsPrinted (false);
// 'N'
			setIsSOTrx (true);
// 'Y'
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
// 'N'
			setlbr_FinNFe (null);
// 1
			setlbr_IsOwnDocument (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LBR_NotaFiscal (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 1 - Org 
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
      StringBuffer sb = new StringBuffer ("X_LBR_NotaFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_BPartner_Location getBill_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getBill_Location_ID(), get_TrxName());	}

	/** Set Invoice Location.
		@param Bill_Location_ID 
		Business Partner Location for invoicing
	  */
	public void setBill_Location_ID (int Bill_Location_ID)
	{
		if (Bill_Location_ID < 1) 
			set_Value (COLUMNNAME_Bill_Location_ID, null);
		else 
			set_Value (COLUMNNAME_Bill_Location_ID, Integer.valueOf(Bill_Location_ID));
	}

	/** Get Invoice Location.
		@return Business Partner Location for invoicing
	  */
	public int getBill_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Bill_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set BP Name.
		@param BPName BP Name	  */
	public void setBPName (String BPName)
	{
		set_Value (COLUMNNAME_BPName, BPName);
	}

	/** Get BP Name.
		@return BP Name	  */
	public String getBPName () 
	{
		return (String)get_Value(COLUMNNAME_BPName);
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

	public I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_DocType getC_DocType() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocType_ID(), get_TrxName());	}

	/** Set Document Type.
		@param C_DocType_ID 
		Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID)
	{
		if (C_DocType_ID < 0) 
			set_Value (COLUMNNAME_C_DocType_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocType_ID, Integer.valueOf(C_DocType_ID));
	}

	/** Get Document Type.
		@return Document type or rules
	  */
	public int getC_DocType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_DocType getC_DocTypeTarget() throws RuntimeException
    {
		return (I_C_DocType)MTable.get(getCtx(), I_C_DocType.Table_Name)
			.getPO(getC_DocTypeTarget_ID(), get_TrxName());	}

	/** Set Target Document Type.
		@param C_DocTypeTarget_ID 
		Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
	{
		if (C_DocTypeTarget_ID < 1) 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, null);
		else 
			set_Value (COLUMNNAME_C_DocTypeTarget_ID, Integer.valueOf(C_DocTypeTarget_ID));
	}

	/** Get Target Document Type.
		@return Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_DocTypeTarget_ID);
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

	public I_C_Order getC_Order() throws RuntimeException
    {
		return (I_C_Order)MTable.get(getCtx(), I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_PaymentTerm getC_PaymentTerm() throws RuntimeException
    {
		return (I_C_PaymentTerm)MTable.get(getCtx(), I_C_PaymentTerm.Table_Name)
			.getPO(getC_PaymentTerm_ID(), get_TrxName());	}

	/** Set Payment Term.
		@param C_PaymentTerm_ID 
		The terms of Payment (timing, discount)
	  */
	public void setC_PaymentTerm_ID (int C_PaymentTerm_ID)
	{
		if (C_PaymentTerm_ID < 1) 
			set_Value (COLUMNNAME_C_PaymentTerm_ID, null);
		else 
			set_Value (COLUMNNAME_C_PaymentTerm_ID, Integer.valueOf(C_PaymentTerm_ID));
	}

	/** Get Payment Term.
		@return The terms of Payment (timing, discount)
	  */
	public int getC_PaymentTerm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_PaymentTerm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
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

	/** Set Document Note.
		@param DocumentNote 
		Additional information for a Document
	  */
	public void setDocumentNote (String DocumentNote)
	{
		set_Value (COLUMNNAME_DocumentNote, DocumentNote);
	}

	/** Get Document Note.
		@return Additional information for a Document
	  */
	public String getDocumentNote () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNote);
	}

	/** Set Freight Amount.
		@param FreightAmt 
		Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt)
	{
		set_Value (COLUMNNAME_FreightAmt, FreightAmt);
	}

	/** Get Freight Amount.
		@return Freight Amount 
	  */
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		if (bd == null)
			 return Env.ZERO;
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
		@param FreightCostRule 
		Method for charging Freight
	  */
	public void setFreightCostRule (String FreightCostRule)
	{

		set_Value (COLUMNNAME_FreightCostRule, FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getFreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_FreightCostRule);
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

	/** Set Cancelled.
		@param IsCancelled 
		The transaction was cancelled
	  */
	public void setIsCancelled (boolean IsCancelled)
	{
		set_Value (COLUMNNAME_IsCancelled, Boolean.valueOf(IsCancelled));
	}

	/** Get Cancelled.
		@return The transaction was cancelled
	  */
	public boolean isCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Discount Printed.
		@param IsDiscountPrinted 
		Print Discount on Invoice and Order
	 	*/
	public void setIsDiscountPrinted (boolean IsDiscountPrinted)
	{
		set_Value (COLUMNNAME_IsDiscountPrinted, Boolean.valueOf(IsDiscountPrinted));
	}

	/** Get Discount Printed.
		@return Print Discount on Invoice and Order
	  */
	public boolean isDiscountPrinted () 
	{
		Object oo = get_Value(COLUMNNAME_IsDiscountPrinted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Printed.
		@param IsPrinted 
		Indicates if this document / line is printed
	  */
	public void setIsPrinted (boolean IsPrinted)
	{
		set_Value (COLUMNNAME_IsPrinted, Boolean.valueOf(IsPrinted));
	}

	/** Get Printed.
		@return Indicates if this document / line is printed
	  */
	public boolean isPrinted () 
	{
		Object oo = get_Value(COLUMNNAME_IsPrinted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Barcode 1.
		@param lbr_Barcode1 
		First Barcode of the Nota Fiscal
	  */
	public void setlbr_Barcode1 (String lbr_Barcode1)
	{
		set_Value (COLUMNNAME_lbr_Barcode1, lbr_Barcode1);
	}

	/** Get Barcode 1.
		@return First Barcode of the Nota Fiscal
 	 */
	public String getlbr_Barcode1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Barcode1);
	}

	/** Set Barcode 2.
		@param lbr_Barcode2 
		Second Barcode of the Nota Fiscal
	  */
	public void setlbr_Barcode2 (String lbr_Barcode2)
	{
		set_Value (COLUMNNAME_lbr_Barcode2, lbr_Barcode2);
	}

	/** Get Barcode 2.
		@return Second Barcode of the Nota Fiscal
	  */
	public String getlbr_Barcode2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Barcode2);
	}

	/** Set Bill Note.
		@param lbr_BillNote 
		Bill Note
	  */
	public void setlbr_BillNote (String lbr_BillNote)
	{
		set_Value (COLUMNNAME_lbr_BillNote, lbr_BillNote);
	}

	/** Get Bill Note.
		@return Bill Note
	  */
	public String getlbr_BillNote () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BillNote);
	}

	/** Set BP Address 1.
		@param lbr_BPAddress1 
		BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress1 (String lbr_BPAddress1)
	{
		set_Value (COLUMNNAME_lbr_BPAddress1, lbr_BPAddress1);
	}

	/** Get BP Address 1.
		@return BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress1);
	}

	/** Set BP Address 2.
		@param lbr_BPAddress2 
		BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress2 (String lbr_BPAddress2)
	{
		set_Value (COLUMNNAME_lbr_BPAddress2, lbr_BPAddress2);
	}

	/** Get BP Address 2.
		@return BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress2);
	}

	/** Set BP Address 3.
		@param lbr_BPAddress3 
		BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress3 (String lbr_BPAddress3)
	{
		set_Value (COLUMNNAME_lbr_BPAddress3, lbr_BPAddress3);
	}

	/** Get BP Address 3.
		@return BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress3);
	}

	/** Set BP Address 4.
		@param lbr_BPAddress4 
		BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress4 (String lbr_BPAddress4)
	{
		set_Value (COLUMNNAME_lbr_BPAddress4, lbr_BPAddress4);
	}

	/** Get BP Address 4.
		@return BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress4);
	}

	/** Set BP City.
		@param lbr_BPCity 
		BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCity (String lbr_BPCity)
	{
		set_Value (COLUMNNAME_lbr_BPCity, lbr_BPCity);
	}

	/** Get BP City.
		@return BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCity);
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** Set BP Country.
		@param lbr_BPCountry 
		BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCountry (String lbr_BPCountry)
	{
		set_Value (COLUMNNAME_lbr_BPCountry, lbr_BPCountry);
	}

	/** Get BP Country.
		@return BP Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCountry () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCountry);
	}

	/** Set BP Delivery Address 1.
		@param lbr_BPDeliveryAddress1 
		BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress1 (String lbr_BPDeliveryAddress1)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryAddress1, lbr_BPDeliveryAddress1);
	}

	/** Get BP Delivery Address 1.
		@return BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryAddress1);
	}

	/** Set BP Delivery Address 2.
		@param lbr_BPDeliveryAddress2 
		BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress2 (String lbr_BPDeliveryAddress2)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryAddress2, lbr_BPDeliveryAddress2);
	}

	/** Get BP Delivery Address 2.
		@return BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryAddress2);
	}

	/** Set BP Delivery Address 3.
		@param lbr_BPDeliveryAddress3 
		BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress3 (String lbr_BPDeliveryAddress3)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryAddress3, lbr_BPDeliveryAddress3);
	}

	/** Get BP Delivery Address 3.
		@return BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryAddress3);
	}

	/** Set BP Delivery Address 4.
		@param lbr_BPDeliveryAddress4 
		BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryAddress4 (String lbr_BPDeliveryAddress4)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryAddress4, lbr_BPDeliveryAddress4);
	}

	/** Get BP Delivery Address 4.
		@return BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryAddress4);
	}

	/** Set BP Delivery City.
		@param lbr_BPDeliveryCity 
		BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCity (String lbr_BPDeliveryCity)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryCity, lbr_BPDeliveryCity);
	}

	/** Get BP Delivery City.
		@return BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryCity);
	}

	/** Set BP Delivery CNPJ.
		@param lbr_BPDeliveryCNPJ 
		BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCNPJ (String lbr_BPDeliveryCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryCNPJ, lbr_BPDeliveryCNPJ);
	}

	/** Get BP Delivery CNPJ.
		@return BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryCNPJ);
	}

	/** Set BP Delivery Country.
		@param lbr_BPDeliveryCountry 
		BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryCountry (String lbr_BPDeliveryCountry)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryCountry, lbr_BPDeliveryCountry);
	}

	/** Get BP Delivery Country.
		@return BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryCountry () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryCountry);
	}

	/** Set BP Delivery IE.
		@param lbr_BPDeliveryIE 
		BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryIE (String lbr_BPDeliveryIE)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryIE, lbr_BPDeliveryIE);
	}

	/** Get BP Delivery IE.
		@return BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryIE);
	}

	/** Set BP Delivery Postal.
		@param lbr_BPDeliveryPostal 
		BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryPostal (String lbr_BPDeliveryPostal)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryPostal, lbr_BPDeliveryPostal);
	}

	/** Get BP Delivery Postal.
		@return BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryPostal);
	}

	/** Set BP DeliveryRegion.
		@param lbr_BPDeliveryRegion 
		BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryRegion (String lbr_BPDeliveryRegion)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryRegion, lbr_BPDeliveryRegion);
	}

	/** Get BP DeliveryRegion.
		@return BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryRegion);
	}

	/** Set BP IE.
		@param lbr_BPIE 
		BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPIE (String lbr_BPIE)
	{
		set_Value (COLUMNNAME_lbr_BPIE, lbr_BPIE);
	}

	/** Get BP IE.
		@return BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPIE);
	}

	/** Set BP Invoice Address 1.
		@param lbr_BPInvoiceAddress1 
		BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress1 (String lbr_BPInvoiceAddress1)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceAddress1, lbr_BPInvoiceAddress1);
	}

	/** Get BP Invoice Address 1.
		@return BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceAddress1);
	}

	/** Set BP Invoice Address 2.
		@param lbr_BPInvoiceAddress2 
		BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress2 (String lbr_BPInvoiceAddress2)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceAddress2, lbr_BPInvoiceAddress2);
	}

	/** Get BP Invoice Address 2.
		@return BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceAddress2);
	}

	/** Set BP Invoice Address 3.
		@param lbr_BPInvoiceAddress3 
		BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress3 (String lbr_BPInvoiceAddress3)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceAddress3, lbr_BPInvoiceAddress3);
	}

	/** Get BP Invoice Address 3.
		@return BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceAddress3);
	}

	/** Set BP Invoice Address 4.
		@param lbr_BPInvoiceAddress4 
		BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceAddress4 (String lbr_BPInvoiceAddress4)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceAddress4, lbr_BPInvoiceAddress4);
	}

	/** Get BP Invoice Address 4.
		@return BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceAddress4);
	}

	/** Set BP Invoice City.
		@param lbr_BPInvoiceCity 
		BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCity (String lbr_BPInvoiceCity)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceCity, lbr_BPInvoiceCity);
	}

	/** Get BP Invoice City.
		@return BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceCity);
	}

	/** Set BP Invoice CNPJ.
		@param lbr_BPInvoiceCNPJ 
		BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCNPJ (String lbr_BPInvoiceCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceCNPJ, lbr_BPInvoiceCNPJ);
	}

	/** Get BP Invoice CNPJ.
		@return BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceCNPJ);
	}

	/** Set BP Invoice Country.
		@param lbr_BPInvoiceCountry 
		BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceCountry (String lbr_BPInvoiceCountry)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceCountry, lbr_BPInvoiceCountry);
	}

	/** Get BP Invoice Country.
		@return BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceCountry () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceCountry);
	}

	/** Set BP Invoice IE.
		@param lbr_BPInvoiceIE 
		BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceIE (String lbr_BPInvoiceIE)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceIE, lbr_BPInvoiceIE);
	}

	/** Get BP Invoice IE.
		@return BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceIE);
	}

	/** Set BP Invoice Postal.
		@param lbr_BPInvoicePostal 
		BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoicePostal (String lbr_BPInvoicePostal)
	{
		set_Value (COLUMNNAME_lbr_BPInvoicePostal, lbr_BPInvoicePostal);
	}

	/** Get BP Invoice Postal.
		@return BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoicePostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoicePostal);
	}

	/** Set BP InvoiceRegion.
		@param lbr_BPInvoiceRegion 
		BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPInvoiceRegion (String lbr_BPInvoiceRegion)
	{
		set_Value (COLUMNNAME_lbr_BPInvoiceRegion, lbr_BPInvoiceRegion);
	}

	/** Get BP InvoiceRegion.
		@return BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPInvoiceRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPInvoiceRegion);
	}

	/** Set BP Phone.
		@param lbr_BPPhone 
		BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPhone (String lbr_BPPhone)
	{
		set_Value (COLUMNNAME_lbr_BPPhone, lbr_BPPhone);
	}

	/** Get BP Phone.
		@return BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPhone () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPPhone);
	}

	/** Set BP Postal.
		@param lbr_BPPostal 
		BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPostal (String lbr_BPPostal)
	{
		set_Value (COLUMNNAME_lbr_BPPostal, lbr_BPPostal);
	}

	/** Get BP Postal.
		@return BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPPostal);
	}

	/** Set BP Region.
		@param lbr_BPRegion 
		BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion)
	{
		set_Value (COLUMNNAME_lbr_BPRegion, lbr_BPRegion);
	}

	/** Get BP Region.
		@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPRegion);
	}

	/** Set BP Shipper Address 1.
		@param lbr_BPShipperAddress1 
		BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress1 (String lbr_BPShipperAddress1)
	{
		set_Value (COLUMNNAME_lbr_BPShipperAddress1, lbr_BPShipperAddress1);
	}

	/** Get BP Shipper Address 1.
		@return BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperAddress1);
	}

	/** Set BP Shipper Address 2.
		@param lbr_BPShipperAddress2 
		BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress2 (String lbr_BPShipperAddress2)
	{
		set_Value (COLUMNNAME_lbr_BPShipperAddress2, lbr_BPShipperAddress2);
	}

	/** Get BP Shipper Address 2.
		@return BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperAddress2);
	}

	/** Set BP Shipper Address 3.
		@param lbr_BPShipperAddress3 
		BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress3 (String lbr_BPShipperAddress3)
	{
		set_Value (COLUMNNAME_lbr_BPShipperAddress3, lbr_BPShipperAddress3);
	}

	/** Get BP Shipper Address 3.
		@return BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperAddress3);
	}

	/** Set BP Shipper Address 4.
		@param lbr_BPShipperAddress4 
		BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperAddress4 (String lbr_BPShipperAddress4)
	{
		set_Value (COLUMNNAME_lbr_BPShipperAddress4, lbr_BPShipperAddress4);
	}

	/** Get BP Shipper Address 4.
		@return BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperAddress4);
	}

	/** Set BP Shipper City.
		@param lbr_BPShipperCity 
		BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCity (String lbr_BPShipperCity)
	{
		set_Value (COLUMNNAME_lbr_BPShipperCity, lbr_BPShipperCity);
	}

	/** Get BP Shipper City.
		@return BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperCity);
	}

	/** Set BP Shipper CNPJ.
		@param lbr_BPShipperCNPJ 
		BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCNPJ (String lbr_BPShipperCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPShipperCNPJ, lbr_BPShipperCNPJ);
	}

	/** Get BP Shipper CNPJ.
		@return BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperCNPJ);
	}

	/** Set BP Shipper Country.
		@param lbr_BPShipperCountry 
		BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperCountry (String lbr_BPShipperCountry)
	{
		set_Value (COLUMNNAME_lbr_BPShipperCountry, lbr_BPShipperCountry);
	}

	/** Get BP Shipper Country.
		@return BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperCountry () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperCountry);
	}

	/** Set BP Shipper IE.
		@param lbr_BPShipperIE 
		BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperIE (String lbr_BPShipperIE)
	{
		set_Value (COLUMNNAME_lbr_BPShipperIE, lbr_BPShipperIE);
	}

	/** Get BP Shipper IE.
		@return BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperIE);
	}

	/** Set BP Shipper License Plate.
		@param lbr_BPShipperLicensePlate 
		Defines the BP Shipper License Plate
	  */
	public void setlbr_BPShipperLicensePlate (String lbr_BPShipperLicensePlate)
	{
		set_Value (COLUMNNAME_lbr_BPShipperLicensePlate, lbr_BPShipperLicensePlate);
	}

	/** Get BP Shipper License Plate.
		@return Defines the BP Shipper License Plate
	  */
	public String getlbr_BPShipperLicensePlate () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperLicensePlate);
	}

	/** Set BPShipper Name.
		@param lbr_BPShipperName 
		Defines the Shipper Name
	  */
	public void setlbr_BPShipperName (String lbr_BPShipperName)
	{
		set_Value (COLUMNNAME_lbr_BPShipperName, lbr_BPShipperName);
	}

	/** Get BPShipper Name.
		@return Defines the Shipper Name
	  */
	public String getlbr_BPShipperName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperName);
	}

	/** Set BP Shipper Postal.
		@param lbr_BPShipperPostal 
		BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperPostal (String lbr_BPShipperPostal)
	{
		set_Value (COLUMNNAME_lbr_BPShipperPostal, lbr_BPShipperPostal);
	}

	/** Get BP Shipper Postal.
		@return BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperPostal);
	}

	/** Set BP ShipperRegion.
		@param lbr_BPShipperRegion 
		BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPShipperRegion (String lbr_BPShipperRegion)
	{
		set_Value (COLUMNNAME_lbr_BPShipperRegion, lbr_BPShipperRegion);
	}

	/** Get BP ShipperRegion.
		@return BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPShipperRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPShipperRegion);
	}

	/** Set BP Suframa.
		@param lbr_BPSuframa 
		Defines the BP Suframa
	  */
	public void setlbr_BPSuframa (String lbr_BPSuframa)
	{
		set_Value (COLUMNNAME_lbr_BPSuframa, lbr_BPSuframa);
	}

	/** Get BP Suframa.
		@return Defines the BP Suframa
	  */
	public String getlbr_BPSuframa () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPSuframa);
	}

	/** Set Brand.
		@param lbr_Brand 
		Brand transport volumes
	  */
	public void setlbr_Brand (String lbr_Brand)
	{
		set_Value (COLUMNNAME_lbr_Brand, lbr_Brand);
	}

	/** Get Brand.
		@return Brand transport volumes
	  */
	public String getlbr_Brand () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Brand);
	}

	/** Set CFOP Note.
		@param lbr_CFOPNote 
		Defines the CFOP Note
	  */
	public void setlbr_CFOPNote (String lbr_CFOPNote)
	{
		set_Value (COLUMNNAME_lbr_CFOPNote, lbr_CFOPNote);
	}

	/** Get CFOP Note.
		@return Defines the CFOP Note
	  */
	public String getlbr_CFOPNote () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CFOPNote);
	}

	/** Set CFOP Reference.
		@param lbr_CFOPReference 
		Defines the CFOP Reference
	  */
	public void setlbr_CFOPReference (String lbr_CFOPReference)
	{
		set_Value (COLUMNNAME_lbr_CFOPReference, lbr_CFOPReference);
	}

	/** Get CFOP Reference.
		@return Defines the CFOP Reference
	  */
	public String getlbr_CFOPReference () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CFOPReference);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set Date InOut.
		@param lbr_DateInOut 
		Defines the InOut Date
	  */
	public void setlbr_DateInOut (Timestamp lbr_DateInOut)
	{
		set_Value (COLUMNNAME_lbr_DateInOut, lbr_DateInOut);
	}

	/** Get Date InOut.
		@return Defines the InOut Date
	  */
	public Timestamp getlbr_DateInOut () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateInOut);
	}

	/** Set Data contingência.
		@param lbr_DateScan Data contingência	  */
	public void setlbr_DateScan (Timestamp lbr_DateScan)
	{
		set_Value (COLUMNNAME_lbr_DateScan, lbr_DateScan);
	}

	/** Get Data contingência.
		@return Data contingência	  */
	public Timestamp getlbr_DateScan () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateScan);
	}

	public org.adempierelbr.model.I_LBR_DE getLBR_DE() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_DE)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_DE.Table_Name)
			.getPO(getLBR_DE_ID(), get_TrxName());	}

	/** Set DE.
		@param LBR_DE_ID DE	  */
	public void setLBR_DE_ID (int LBR_DE_ID)
	{
		if (LBR_DE_ID < 1) 
			set_Value (COLUMNNAME_LBR_DE_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_DE_ID, Integer.valueOf(LBR_DE_ID));
	}

	/** Get DE.
		@return DE	  */
	public int getLBR_DE_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DE_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner_Location getlbr_Delivery_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getlbr_Delivery_Location_ID(), get_TrxName());	}

	/** Set Delivery Location.
		@param lbr_Delivery_Location_ID 
		The Delivery Location ID
	  */
	public void setlbr_Delivery_Location_ID (int lbr_Delivery_Location_ID)
	{
		if (lbr_Delivery_Location_ID < 1) 
			set_Value (COLUMNNAME_lbr_Delivery_Location_ID, null);
		else 
			set_Value (COLUMNNAME_lbr_Delivery_Location_ID, Integer.valueOf(lbr_Delivery_Location_ID));
	}

	/** Get Delivery Location.
		@return The Delivery Location ID
	  */
	public int getlbr_Delivery_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_Delivery_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Digest Value.
		@param lbr_DigestValue Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue)
	{
		set_Value (COLUMNNAME_lbr_DigestValue, lbr_DigestValue);
	}

	/** Get Digest Value.
		@return Digest Value	  */
	public String getlbr_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DigestValue);
	}

	/** lbr_FinNFe AD_Reference_ID=1100012 */
	public static final int LBR_FINNFE_AD_Reference_ID=1100012;
	/** NFe Normal = 1 */
	public static final String LBR_FINNFE_NFeNormal = "1";
	/** NFe Complementar = 2 */
	public static final String LBR_FINNFE_NFeComplementar = "2";
	/** NFe de Ajuste = 3 */
	public static final String LBR_FINNFE_NFeDeAjuste = "3";
	/** Set Finalidade NFe.
		@param lbr_FinNFe 
		Define a Finalidade da NFe
	  */
	public void setlbr_FinNFe (String lbr_FinNFe)
	{

		set_Value (COLUMNNAME_lbr_FinNFe, lbr_FinNFe);
	}

	/** Get Finalidade NFe.
		@return Define a Finalidade da NFe
	  */
	public String getlbr_FinNFe () 
	{
		return (String)get_Value(COLUMNNAME_lbr_FinNFe);
	}

	/** Set Fiscal Obs..
		@param lbr_FiscalOBS 
		Fiscal Observation for the Fiscal Books
	  */
	public void setlbr_FiscalOBS (String lbr_FiscalOBS)
	{
		set_Value (COLUMNNAME_lbr_FiscalOBS, lbr_FiscalOBS);
	}

	/** Get Fiscal Obs..
		@return Fiscal Observation for the Fiscal Books
	  */
	public String getlbr_FiscalOBS () 
	{
		return (String)get_Value(COLUMNNAME_lbr_FiscalOBS);
	}

	/** LBR_FreightCostRule AD_Reference_ID=1120147 */
	public static final int LBR_FREIGHTCOSTRULE_AD_Reference_ID=1120147;
	/** 0 - Frete por conta do Emitente = 0 */
	public static final String LBR_FREIGHTCOSTRULE_0_FretePorContaDoEmitente = "0";
	/** 1 - Frete por conta do Destinatário = 1 */
	public static final String LBR_FREIGHTCOSTRULE_1_FretePorContaDoDestinatário = "1";
	/** Set Freight Cost Rule.
		@param LBR_FreightCostRule 
		Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule)
	{

		set_Value (COLUMNNAME_LBR_FreightCostRule, LBR_FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getLBR_FreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FreightCostRule);
	}
	
	/** Set Generate NFe XML.
		@param lbr_GenerateNFeXML Generate NFe XML	  */
	public void setlbr_GenerateNFeXML (String lbr_GenerateNFeXML)
	{
		set_Value (COLUMNNAME_lbr_GenerateNFeXML, lbr_GenerateNFeXML);
	}

	/** Get Generate NFe XML.
		@return Generate NFe XML	  */
	public String getlbr_GenerateNFeXML () 
	{
		return (String)get_Value(COLUMNNAME_lbr_GenerateNFeXML);
	}

	/** Set Gross Weight.
		@param lbr_GrossWeight 
		Defines the Gross Weight
	  */
	public void setlbr_GrossWeight (BigDecimal lbr_GrossWeight)
	{
		set_Value (COLUMNNAME_lbr_GrossWeight, lbr_GrossWeight);
	}

	/** Get Gross Weight.
		@return Defines the Gross Weight
	  */
	public BigDecimal getlbr_GrossWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_GrossWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set IE.
		@param lbr_IE 
		Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE)
	{
		set_Value (COLUMNNAME_lbr_IE, lbr_IE);
	}

	/** Get IE.
		@return Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IE);
	}

	/** Set Insurance Amt.
		@param lbr_InsuranceAmt 
		Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt)
	{
		set_Value (COLUMNNAME_lbr_InsuranceAmt, lbr_InsuranceAmt);
	}

	/** Get Insurance Amt.
		@return Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_InsuranceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Is Own Document.
		@param lbr_IsOwnDocument 
		Identifies this is an own document
	  */
	public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument)
	{
		set_Value (COLUMNNAME_lbr_IsOwnDocument, Boolean.valueOf(lbr_IsOwnDocument));
	}

	/** Get Is Own Document.
		@return Identifies this is an own document
	  */
	public boolean islbr_IsOwnDocument () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsOwnDocument);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Motivo do Cancelamento.
		@param lbr_MotivoCancel 
		Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setlbr_MotivoCancel (String lbr_MotivoCancel)
	{
		set_Value (COLUMNNAME_lbr_MotivoCancel, lbr_MotivoCancel);
	}

	/** Get Motivo do Cancelamento.
		@return Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getlbr_MotivoCancel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_MotivoCancel);
	}

	/** Set Motivo contingência.
		@param lbr_MotivoScan Motivo contingência	  */
	public void setlbr_MotivoScan (String lbr_MotivoScan)
	{
		set_Value (COLUMNNAME_lbr_MotivoScan, lbr_MotivoScan);
	}

	/** Get Motivo contingência.
		@return Motivo contingência	  */
	public String getlbr_MotivoScan () 
	{
		return (String)get_Value(COLUMNNAME_lbr_MotivoScan);
	}

	/** Set NCM Reference.
		@param lbr_NCMReference 
		Defines the NCM Reference
	  */
	public void setlbr_NCMReference (String lbr_NCMReference)
	{
		set_Value (COLUMNNAME_lbr_NCMReference, lbr_NCMReference);
	}

	/** Get NCM Reference.
		@return Defines the NCM Reference
	  */
	public String getlbr_NCMReference () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NCMReference);
	}

	/** Set Net Weight.
		@param lbr_NetWeight 
		Defines the Net Weight
	  */
	public void setlbr_NetWeight (BigDecimal lbr_NetWeight)
	{
		set_Value (COLUMNNAME_lbr_NetWeight, lbr_NetWeight);
	}

	/** Get Net Weight.
		@return Defines the Net Weight
	 */
	public BigDecimal getlbr_NetWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_NetWeight);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set NFe Description.
		@param lbr_NFeDesc 
		Description of NFe
	  */
	public void setlbr_NFeDesc (String lbr_NFeDesc)
	{
		set_Value (COLUMNNAME_lbr_NFeDesc, lbr_NFeDesc);
	}

	/** Get NFe Description.
		@return Description of NFe
	  */
	public String getlbr_NFeDesc () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeDesc);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}

	public org.adempierelbr.model.I_LBR_NFeLot getLBR_NFeLot() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFeLot)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFeLot.Table_Name)
			.getPO(getLBR_NFeLot_ID(), get_TrxName());	}

	/** Set NFe Lot.
		@param LBR_NFeLot_ID NFe Lot	  */
	public void setLBR_NFeLot_ID (int LBR_NFeLot_ID)
	{
		if (LBR_NFeLot_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFeLot_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFeLot_ID, Integer.valueOf(LBR_NFeLot_ID));
	}

	/** Get NFe Lot.
		@return NFe Lot	  */
	public int getLBR_NFeLot_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeLot_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NFe No.
		@param lbr_NFENo NFe No	  */
	public void setlbr_NFENo (String lbr_NFENo)
	{
		set_Value (COLUMNNAME_lbr_NFENo, lbr_NFENo);
	}

	/** Get NFe No.
		@return NFe No	  */
	public String getlbr_NFENo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFENo);
	}

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}

	/** lbr_NFeStatus AD_Reference_ID=1100004 */
	public static final int LBR_NFESTATUS_AD_Reference_ID=1100004;
	/** 100-Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E = "100";
	/** 101-Cancelamento de NF-e homologado = 101 */
	public static final String LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado = "101";
	/** 102-Inutilização de número homologado = 102 */
	public static final String LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado = "102";
	/** 103-Lote recebido com sucesso = 103 */
	public static final String LBR_NFESTATUS_103_LoteRecebidoComSucesso = "103";
	/** 104-Lote processado = 104 */
	public static final String LBR_NFESTATUS_104_LoteProcessado = "104";
	/** 105-Lote em processamento = 105 */
	public static final String LBR_NFESTATUS_105_LoteEmProcessamento = "105";
	/** 106-Lote não localizado = 106 */
	public static final String LBR_NFESTATUS_106_LoteNãoLocalizado = "106";
	/** 107-Serviço em Operação = 107 */
	public static final String LBR_NFESTATUS_107_ServiçoEmOperação = "107";
	/** 108-Serviço Paralisado Momentaneamente (curto prazo) = 108 */
	public static final String LBR_NFESTATUS_108_ServiçoParalisadoMomentaneamenteCurtoPrazo = "108";
	/** 109-Serviço Paralisado sem Previsão = 109 */
	public static final String LBR_NFESTATUS_109_ServiçoParalisadoSemPrevisão = "109";
	/** 110-Uso Denegado = 110 */
	public static final String LBR_NFESTATUS_110_UsoDenegado = "110";
	/** 111-Consulta cadastro com uma ocorrência = 111 */
	public static final String LBR_NFESTATUS_111_ConsultaCadastroComUmaOcorrência = "111";
	/** 112-Consulta cadastro com mais de uma ocorrência = 112 */
	public static final String LBR_NFESTATUS_112_ConsultaCadastroComMaisDeUmaOcorrência = "112";
	/** 201-Rejeição: O numero máximo de numeração de NF-e a inutil = 201 */
	public static final String LBR_NFESTATUS_201_RejeiçãoONumeroMáximoDeNumeraçãoDeNF_EAInutil = "201";
	/** 202-Rejeição: Falha no reconhecimento da autoria ou integri = 202 */
	public static final String LBR_NFESTATUS_202_RejeiçãoFalhaNoReconhecimentoDaAutoriaOuIntegri = "202";
	/** 203-Rejeição: Emissor não habilitado para emissão da NF-e = 203 */
	public static final String LBR_NFESTATUS_203_RejeiçãoEmissorNãoHabilitadoParaEmissãoDaNF_E = "203";
	/** 204-Rejeição: Duplicidade de NF-e [999999999999999999999999 = 204 */
	public static final String LBR_NFESTATUS_204_RejeiçãoDuplicidadeDeNF_E999999999999999999999999 = "204";
	/** 205-Rejeição: NF-e está denegada na base de dados da SEFAZ = 205 */
	public static final String LBR_NFESTATUS_205_RejeiçãoNF_EEstáDenegadaNaBaseDeDadosDaSEFAZ = "205";
	/** 206-Rejeição: NF-e já está inutilizada na Base de dados da  = 206 */
	public static final String LBR_NFESTATUS_206_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDa = "206";
	/** 207-Rejeição: CNPJ do emitente inválido = 207 */
	public static final String LBR_NFESTATUS_207_RejeiçãoCNPJDoEmitenteInválido = "207";
	/** 208-Rejeição: CNPJ do destinatário inválido = 208 */
	public static final String LBR_NFESTATUS_208_RejeiçãoCNPJDoDestinatárioInválido = "208";
	/** 209-Rejeição: IE do emitente inválida = 209 */
	public static final String LBR_NFESTATUS_209_RejeiçãoIEDoEmitenteInválida = "209";
	/** 210-Rejeição: IE do destinatário inválida = 210 */
	public static final String LBR_NFESTATUS_210_RejeiçãoIEDoDestinatárioInválida = "210";
	/** 211-Rejeição: IE do substituto inválida = 211 */
	public static final String LBR_NFESTATUS_211_RejeiçãoIEDoSubstitutoInválida = "211";
	/** 212-Rejeição: Data de emissão NF-e posterior a data de rece = 212 */
	public static final String LBR_NFESTATUS_212_RejeiçãoDataDeEmissãoNF_EPosteriorADataDeRece = "212";
	/** 213-Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do  = 213 */
	public static final String LBR_NFESTATUS_213_RejeiçãoCNPJ_BaseDoEmitenteDifereDoCNPJ_BaseDo = "213";
	/** 214-Rejeição: Tamanho da mensagem excedeu o limite estabele = 214 */
	public static final String LBR_NFESTATUS_214_RejeiçãoTamanhoDaMensagemExcedeuOLimiteEstabele = "214";
	/** 215-Rejeição: Falha no schema XML = 215 */
	public static final String LBR_NFESTATUS_215_RejeiçãoFalhaNoSchemaXML = "215";
	/** 216-Rejeição: Chave de Acesso difere da cadastrada = 216 */
	public static final String LBR_NFESTATUS_216_RejeiçãoChaveDeAcessoDifereDaCadastrada = "216";
	/** 217-Rejeição: NF-e não consta na base de dados da SEFAZ = 217 */
	public static final String LBR_NFESTATUS_217_RejeiçãoNF_ENãoConstaNaBaseDeDadosDaSEFAZ = "217";
	/** 218-Rejeição: NF-e já esta cancelada na base de dados da SE = 218 */
	public static final String LBR_NFESTATUS_218_RejeiçãoNF_EJáEstaCanceladaNaBaseDeDadosDaSE = "218";
	/** 219-Rejeição: Circulação da NF-e verificada = 219 */
	public static final String LBR_NFESTATUS_219_RejeiçãoCirculaçãoDaNF_EVerificada = "219";
	/** 220-Rejeição: Prazo de Cancelamento Superior ao Previsto na = 220 */
	public static final String LBR_NFESTATUS_220_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNa = "220";
	/** 221-Rejeição: Confirmado o recebimento da NF-e pelo destina = 221 */
	public static final String LBR_NFESTATUS_221_RejeiçãoConfirmadoORecebimentoDaNF_EPeloDestina = "221";
	/** 222-Rejeição: Protocolo de Autorização de Uso difere do cad = 222 */
	public static final String LBR_NFESTATUS_222_RejeiçãoProtocoloDeAutorizaçãoDeUsoDifereDoCad = "222";
	/** 223-Rejeição: CNPJ do transmissor do lote difere do CNPJ do = 223 */
	public static final String LBR_NFESTATUS_223_RejeiçãoCNPJDoTransmissorDoLoteDifereDoCNPJDo = "223";
	/** 224-Rejeição: A faixa inicial é maior que a faixa final = 224 */
	public static final String LBR_NFESTATUS_224_RejeiçãoAFaixaInicialÉMaiorQueAFaixaFinal = "224";
	/** 225-Rejeição: Falha no Schema XML do lote de NFe = 225 */
	public static final String LBR_NFESTATUS_225_RejeiçãoFalhaNoSchemaXMLDoLoteDeNFe = "225";
	/** 226-Rejeição: Código da UF do Emitente diverge da UF autori = 226 */
	public static final String LBR_NFESTATUS_226_RejeiçãoCódigoDaUFDoEmitenteDivergeDaUFAutori = "226";
	/** 227-Rejeição: Erro na Chave de Acesso - Campo Id – falta a  = 227 */
	public static final String LBR_NFESTATUS_227_RejeiçãoErroNaChaveDeAcesso_CampoIdFaltaA = "227";
	/** 228-Rejeição: Data de Emissão muito atrasada = 228 */
	public static final String LBR_NFESTATUS_228_RejeiçãoDataDeEmissãoMuitoAtrasada = "228";
	/** 229-Rejeição: IE do emitente não informada = 229 */
	public static final String LBR_NFESTATUS_229_RejeiçãoIEDoEmitenteNãoInformada = "229";
	/** 230-Rejeição: IE do emitente não cadastrada = 230 */
	public static final String LBR_NFESTATUS_230_RejeiçãoIEDoEmitenteNãoCadastrada = "230";
	/** 231-Rejeição: IE do emitente não vinculada ao CNPJ = 231 */
	public static final String LBR_NFESTATUS_231_RejeiçãoIEDoEmitenteNãoVinculadaAoCNPJ = "231";
	/** 232-Rejeição: IE do destinatário não informada = 232 */
	public static final String LBR_NFESTATUS_232_RejeiçãoIEDoDestinatárioNãoInformada = "232";
	/** 233-Rejeição: IE do destinatário não cadastrada = 233 */
	public static final String LBR_NFESTATUS_233_RejeiçãoIEDoDestinatárioNãoCadastrada = "233";
	/** 234-Rejeição: IE do destinatário não vinculada ao CNPJ = 234 */
	public static final String LBR_NFESTATUS_234_RejeiçãoIEDoDestinatárioNãoVinculadaAoCNPJ = "234";
	/** 235-Rejeição: Inscrição SUFRAMA inválida = 235 */
	public static final String LBR_NFESTATUS_235_RejeiçãoInscriçãoSUFRAMAInválida = "235";
	/** 236-Rejeição: Chave de Acesso com dígito verificador inváli = 236 */
	public static final String LBR_NFESTATUS_236_RejeiçãoChaveDeAcessoComDígitoVerificadorInváli = "236";
	/** 237-Rejeição: CPF do destinatário inválido = 237 */
	public static final String LBR_NFESTATUS_237_RejeiçãoCPFDoDestinatárioInválido = "237";
	/** 238-Rejeição: Cabeçalho - Versão do arquivo XML superior a  = 238 */
	public static final String LBR_NFESTATUS_238_RejeiçãoCabeçalho_VersãoDoArquivoXMLSuperiorA = "238";
	/** 239-Rejeição: Cabeçalho - Versão do arquivo XML não suporta = 239 */
	public static final String LBR_NFESTATUS_239_RejeiçãoCabeçalho_VersãoDoArquivoXMLNãoSuporta = "239";
	/** 240-Rejeição: Cancelamento/Inutilização - Irregularidade Fi = 240 */
	public static final String LBR_NFESTATUS_240_RejeiçãoCancelamentoInutilização_IrregularidadeFi = "240";
	/** 241-Rejeição: Um número da faixa já foi utilizado = 241 */
	public static final String LBR_NFESTATUS_241_RejeiçãoUmNúmeroDaFaixaJáFoiUtilizado = "241";
	/** 242-Rejeição: Cabeçalho - Falha no Schema XML = 242 */
	public static final String LBR_NFESTATUS_242_RejeiçãoCabeçalho_FalhaNoSchemaXML = "242";
	/** 243-Rejeição: XML Mal Formado = 243 */
	public static final String LBR_NFESTATUS_243_RejeiçãoXMLMalFormado = "243";
	/** 244-Rejeição: CNPJ do Certificado Digital difere do CNPJ da = 244 */
	public static final String LBR_NFESTATUS_244_RejeiçãoCNPJDoCertificadoDigitalDifereDoCNPJDa = "244";
	/** 245-Rejeição: CNPJ Emitente não cadastrado = 245 */
	public static final String LBR_NFESTATUS_245_RejeiçãoCNPJEmitenteNãoCadastrado = "245";
	/** 246-Rejeição: CNPJ Destinatário não cadastrado = 246 */
	public static final String LBR_NFESTATUS_246_RejeiçãoCNPJDestinatárioNãoCadastrado = "246";
	/** 247-Rejeição: Sigla da UF do Emitente diverge da UF autoriz = 247 */
	public static final String LBR_NFESTATUS_247_RejeiçãoSiglaDaUFDoEmitenteDivergeDaUFAutoriz = "247";
	/** 248-Rejeição: UF do Recibo diverge da UF autorizadora = 248 */
	public static final String LBR_NFESTATUS_248_RejeiçãoUFDoReciboDivergeDaUFAutorizadora = "248";
	/** 249-Rejeição: UF da Chave de Acesso diverge da UF autorizad = 249 */
	public static final String LBR_NFESTATUS_249_RejeiçãoUFDaChaveDeAcessoDivergeDaUFAutorizad = "249";
	/** 250-Rejeição: UF diverge da UF autorizadora = 250 */
	public static final String LBR_NFESTATUS_250_RejeiçãoUFDivergeDaUFAutorizadora = "250";
	/** 251-Rejeição: UF/Município destinatário não pertence a SUFR = 251 */
	public static final String LBR_NFESTATUS_251_RejeiçãoUFMunicípioDestinatárioNãoPertenceASUFR = "251";
	/** 252-Rejeição: Ambiente informado diverge do Ambiente de rec = 252 */
	public static final String LBR_NFESTATUS_252_RejeiçãoAmbienteInformadoDivergeDoAmbienteDeRec = "252";
	/** 253-Rejeição: Digito Verificador da chave de acesso compost = 253 */
	public static final String LBR_NFESTATUS_253_RejeiçãoDigitoVerificadorDaChaveDeAcessoCompost = "253";
	/** 254-Rejeição: NF-e complementar não possui NF referenciada = 254 */
	public static final String LBR_NFESTATUS_254_RejeiçãoNF_EComplementarNãoPossuiNFReferenciada = "254";
	/** 255-Rejeição: NF-e complementar possui mais de uma NF refer = 255 */
	public static final String LBR_NFESTATUS_255_RejeiçãoNF_EComplementarPossuiMaisDeUmaNFRefer = "255";
	/** 256-Rejeição: Uma NF-e da faixa já está inutilizada na Base = 256 */
	public static final String LBR_NFESTATUS_256_RejeiçãoUmaNF_EDaFaixaJáEstáInutilizadaNaBase = "256";
	/** 257-Rejeição: Solicitante não habilitado para emissão da NF = 257 */
	public static final String LBR_NFESTATUS_257_RejeiçãoSolicitanteNãoHabilitadoParaEmissãoDaNF = "257";
	/** 258-Rejeição: CNPJ da consulta inválido = 258 */
	public static final String LBR_NFESTATUS_258_RejeiçãoCNPJDaConsultaInválido = "258";
	/** 259-Rejeição: CNPJ da consulta não cadastrado como contribu = 259 */
	public static final String LBR_NFESTATUS_259_RejeiçãoCNPJDaConsultaNãoCadastradoComoContribu = "259";
	/** 260-Rejeição: IE da consulta inválida = 260 */
	public static final String LBR_NFESTATUS_260_RejeiçãoIEDaConsultaInválida = "260";
	/** 261-Rejeição: IE da consulta não cadastrada como contribuin = 261 */
	public static final String LBR_NFESTATUS_261_RejeiçãoIEDaConsultaNãoCadastradaComoContribuin = "261";
	/** 262-Rejeição: UF não fornece consulta por CPF = 262 */
	public static final String LBR_NFESTATUS_262_RejeiçãoUFNãoForneceConsultaPorCPF = "262";
	/** 263-Rejeição: CPF da consulta inválido = 263 */
	public static final String LBR_NFESTATUS_263_RejeiçãoCPFDaConsultaInválido = "263";
	/** 264-Rejeição: CPF da consulta não cadastrado como contribui = 264 */
	public static final String LBR_NFESTATUS_264_RejeiçãoCPFDaConsultaNãoCadastradoComoContribui = "264";
	/** 265-Rejeição: Sigla da UF da consulta difere da UF do Web S = 265 */
	public static final String LBR_NFESTATUS_265_RejeiçãoSiglaDaUFDaConsultaDifereDaUFDoWebS = "265";
	/** 266-Rejeição: Série utilizada não permitida no Web Service = 266 */
	public static final String LBR_NFESTATUS_266_RejeiçãoSérieUtilizadaNãoPermitidaNoWebService = "266";
	/** 267-Rejeição: NF Complementar referencia uma NF-e inexisten = 267 */
	public static final String LBR_NFESTATUS_267_RejeiçãoNFComplementarReferenciaUmaNF_EInexisten = "267";
	/** 268-Rejeição: NF Complementar referencia uma outra NF-e Com = 268 */
	public static final String LBR_NFESTATUS_268_RejeiçãoNFComplementarReferenciaUmaOutraNF_ECom = "268";
	/** 269-Rejeição: CNPJ Emitente da NF Complementar difere do CN = 269 */
	public static final String LBR_NFESTATUS_269_RejeiçãoCNPJEmitenteDaNFComplementarDifereDoCN = "269";
	/** 270-Rejeição: Código Município do Fato Gerador: dígito invá = 270 */
	public static final String LBR_NFESTATUS_270_RejeiçãoCódigoMunicípioDoFatoGeradorDígitoInvá = "270";
	/** 271-Rejeição: Código Município do Fato Gerador: difere da U = 271 */
	public static final String LBR_NFESTATUS_271_RejeiçãoCódigoMunicípioDoFatoGeradorDifereDaU = "271";
	/** 272-Rejeição: Código Município do Emitente: dígito inválido = 272 */
	public static final String LBR_NFESTATUS_272_RejeiçãoCódigoMunicípioDoEmitenteDígitoInválido = "272";
	/** 273-Rejeição: Código Município do Emitente: difere da UF do = 273 */
	public static final String LBR_NFESTATUS_273_RejeiçãoCódigoMunicípioDoEmitenteDifereDaUFDo = "273";
	/** 274-Rejeição: Código Município do Destinatário: dígito invá = 274 */
	public static final String LBR_NFESTATUS_274_RejeiçãoCódigoMunicípioDoDestinatárioDígitoInvá = "274";
	/** 275-Rejeição: Código Município do Destinatário: difere da U = 275 */
	public static final String LBR_NFESTATUS_275_RejeiçãoCódigoMunicípioDoDestinatárioDifereDaU = "275";
	/** 276-Rejeição: Código Município do Local de Retirada: dígito = 276 */
	public static final String LBR_NFESTATUS_276_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDígito = "276";
	/** 277-Rejeição: Código Município do Local de Retirada: difere = 277 */
	public static final String LBR_NFESTATUS_277_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDifere = "277";
	/** 278-Rejeição: Código Município do Local de Entrega: dígito  = 278 */
	public static final String LBR_NFESTATUS_278_RejeiçãoCódigoMunicípioDoLocalDeEntregaDígito = "278";
	/** 279-Rejeição: Código Município do Local de Entrega: difere  = 279 */
	public static final String LBR_NFESTATUS_279_RejeiçãoCódigoMunicípioDoLocalDeEntregaDifere = "279";
	/** 280-Rejeição: Certificado Transmissor inválido = 280 */
	public static final String LBR_NFESTATUS_280_RejeiçãoCertificadoTransmissorInválido = "280";
	/** 281-Rejeição: Certificado Transmissor Data Validade = 281 */
	public static final String LBR_NFESTATUS_281_RejeiçãoCertificadoTransmissorDataValidade = "281";
	/** 282-Rejeição: Certificado Transmissor sem CNPJ = 282 */
	public static final String LBR_NFESTATUS_282_RejeiçãoCertificadoTransmissorSemCNPJ = "282";
	/** 283-Rejeição: Certificado Transmissor - erro Cadeia de Cert = 283 */
	public static final String LBR_NFESTATUS_283_RejeiçãoCertificadoTransmissor_ErroCadeiaDeCert = "283";
	/** 284-Rejeição: Certificado Transmissor revogado = 284 */
	public static final String LBR_NFESTATUS_284_RejeiçãoCertificadoTransmissorRevogado = "284";
	/** 285-Rejeição: Certificado Transmissor difere ICP-Brasil = 285 */
	public static final String LBR_NFESTATUS_285_RejeiçãoCertificadoTransmissorDifereICP_Brasil = "285";
	/** 286-Rejeição: Certificado Transmissor erro no acesso a LCR = 286 */
	public static final String LBR_NFESTATUS_286_RejeiçãoCertificadoTransmissorErroNoAcessoALCR = "286";
	/** 287-Rejeição: Código Município do FG - ISSQN: dígito inváli = 287 */
	public static final String LBR_NFESTATUS_287_RejeiçãoCódigoMunicípioDoFG_ISSQNDígitoInváli = "287";
	/** 288-Rejeição: Código Município do FG - Transporte: dígito i = 288 */
	public static final String LBR_NFESTATUS_288_RejeiçãoCódigoMunicípioDoFG_TransporteDígitoI = "288";
	/** 289-Rejeição: Código da UF informada diverge da UF solicita = 289 */
	public static final String LBR_NFESTATUS_289_RejeiçãoCódigoDaUFInformadaDivergeDaUFSolicita = "289";
	/** 290-Rejeição: Certificado Assinatura inválido = 290 */
	public static final String LBR_NFESTATUS_290_RejeiçãoCertificadoAssinaturaInválido = "290";
	/** 291-Rejeição: Certificado Assinatura Data Validade = 291 */
	public static final String LBR_NFESTATUS_291_RejeiçãoCertificadoAssinaturaDataValidade = "291";
	/** 292-Rejeição: Certificado Assinatura sem CNPJ = 292 */
	public static final String LBR_NFESTATUS_292_RejeiçãoCertificadoAssinaturaSemCNPJ = "292";
	/** 293-Rejeição: Certificado Assinatura - erro Cadeia de Certi = 293 */
	public static final String LBR_NFESTATUS_293_RejeiçãoCertificadoAssinatura_ErroCadeiaDeCerti = "293";
	/** 294-Rejeição: Certificado Assinatura revogado = 294 */
	public static final String LBR_NFESTATUS_294_RejeiçãoCertificadoAssinaturaRevogado = "294";
	/** 295-Rejeição: Certificado Assinatura difere ICP-Brasil = 295 */
	public static final String LBR_NFESTATUS_295_RejeiçãoCertificadoAssinaturaDifereICP_Brasil = "295";
	/** 296-Rejeição: Certificado Assinatura erro no acesso a LCR = 296 */
	public static final String LBR_NFESTATUS_296_RejeiçãoCertificadoAssinaturaErroNoAcessoALCR = "296";
	/** 297-Rejeição: Assinatura difere do calculado = 297 */
	public static final String LBR_NFESTATUS_297_RejeiçãoAssinaturaDifereDoCalculado = "297";
	/** 298-Rejeição: Assinatura difere do padrão do Projeto = 298 */
	public static final String LBR_NFESTATUS_298_RejeiçãoAssinaturaDifereDoPadrãoDoProjeto = "298";
	/** 299-Rejeição: XML da área de cabeçalho com codificação dife = 299 */
	public static final String LBR_NFESTATUS_299_RejeiçãoXMLDaÁreaDeCabeçalhoComCodificaçãoDife = "299";
	/** 401-Rejeição: CPF do remetente inválido = 401 */
	public static final String LBR_NFESTATUS_401_RejeiçãoCPFDoRemetenteInválido = "401";
	/** 402-Rejeição: XML da área de dados com codificação diferent = 402 */
	public static final String LBR_NFESTATUS_402_RejeiçãoXMLDaÁreaDeDadosComCodificaçãoDiferent = "402";
	/** 403-Rejeição: O grupo de informações da NF-e avulsa é de us = 403 */
	public static final String LBR_NFESTATUS_403_RejeiçãoOGrupoDeInformaçõesDaNF_EAvulsaÉDeUs = "403";
	/** 404-Rejeição: Uso de prefixo de namespace não permitido = 404 */
	public static final String LBR_NFESTATUS_404_RejeiçãoUsoDePrefixoDeNamespaceNãoPermitido = "404";
	/** 405-Rejeição: Código do país do emitente: dígito inválido = 405 */
	public static final String LBR_NFESTATUS_405_RejeiçãoCódigoDoPaísDoEmitenteDígitoInválido = "405";
	/** 406-Rejeição: Código do país do destinatário: dígito inváli = 406 */
	public static final String LBR_NFESTATUS_406_RejeiçãoCódigoDoPaísDoDestinatárioDígitoInváli = "406";
	/** 407-Rejeição: O CPF só pode ser informado no campo emitente = 407 */
	public static final String LBR_NFESTATUS_407_RejeiçãoOCPFSóPodeSerInformadoNoCampoEmitente = "407";
	/** 453-Rejeição: Ano de inutilização não pode ser superior ao  = 453 */
	public static final String LBR_NFESTATUS_453_RejeiçãoAnoDeInutilizaçãoNãoPodeSerSuperiorAo = "453";
	/** 454-Rejeição: Ano de inutilização não pode ser inferior a 2 = 454 */
	public static final String LBR_NFESTATUS_454_RejeiçãoAnoDeInutilizaçãoNãoPodeSerInferiorA2 = "454";
	/** 478-Rejeição: Local da entrega não informado para faturamen = 478 */
	public static final String LBR_NFESTATUS_478_RejeiçãoLocalDaEntregaNãoInformadoParaFaturamen = "478";
	/** 999-Rejeição: Erro não catalogado (informar a mensagem de e = 999 */
	public static final String LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeE = "999";
	/** 301-Uso Denegado: Irregularidade fiscal do emitente = 301 */
	public static final String LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente = "301";
	/** 302-Uso Denegado : Irregularidade fiscal do destinatário = 302 */
	public static final String LBR_NFESTATUS_302_UsoDenegadoIrregularidadeFiscalDoDestinatário = "302";
	/** 409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg = 409 */
	public static final String LBR_NFESTATUS_409_RejeiçãoCampoCUFInexistenteNoElementoNfeCabecMsg = "409";
	/** 410-Rejeição: UF informada no campo cUF não é atendida pelo = 410 */
	public static final String LBR_NFESTATUS_410_RejeiçãoUFInformadaNoCampoCUFNãoÉAtendidaPelo = "410";
	/** 411-Rejeição: Campo versaoDados inexistente no elemento nfe = 411 */
	public static final String LBR_NFESTATUS_411_RejeiçãoCampoVersaoDadosInexistenteNoElementoNfe = "411";
	/** 420-Rejeição: Cancelamento para NF-e já cancelada = 420 */
	public static final String LBR_NFESTATUS_420_RejeiçãoCancelamentoParaNF_EJáCancelada = "420";
	/** 450-Rejeição: Modelo da NF-e diferente de 55 = 450 */
	public static final String LBR_NFESTATUS_450_RejeiçãoModeloDaNF_EDiferenteDe55 = "450";
	/** 451-Rejeição: Processo de emissão informado inválido = 451 */
	public static final String LBR_NFESTATUS_451_RejeiçãoProcessoDeEmissãoInformadoInválido = "451";
	/** 452-Rejeição: Tipo Autorizador do Recibo diverge do Órgão A = 452 */
	public static final String LBR_NFESTATUS_452_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoA = "452";
	/** 502-Rejeição: Erro na Chave de Acesso - Campo Id não corres = 502 */
	public static final String LBR_NFESTATUS_502_RejeiçãoErroNaChaveDeAcesso_CampoIdNãoCorres = "502";
	/** 503-Rejeição: Série utilizada fora da faixa permitida no SC = 503 */
	public static final String LBR_NFESTATUS_503_RejeiçãoSérieUtilizadaForaDaFaixaPermitidaNoSC = "503";
	/** 504-Rejeição: Data de Entrada/Saída posterior ao permitido = 504 */
	public static final String LBR_NFESTATUS_504_RejeiçãoDataDeEntradaSaídaPosteriorAoPermitido = "504";
	/** 505-Rejeição: Data de Entrada/Saída anterior ao permitido = 505 */
	public static final String LBR_NFESTATUS_505_RejeiçãoDataDeEntradaSaídaAnteriorAoPermitido = "505";
	/** 506-Rejeição: Data de Saída menor que a Data de Emissão = 506 */
	public static final String LBR_NFESTATUS_506_RejeiçãoDataDeSaídaMenorQueADataDeEmissão = "506";
	/** 507-Rejeição: O CNPJ do destinatário/remetente não deve ser = 507 */
	public static final String LBR_NFESTATUS_507_RejeiçãoOCNPJDoDestinatárioRemetenteNãoDeveSer = "507";
	/** 508-Rejeição: O CNPJ com conteúdo nulo só é válido em opera = 508 */
	public static final String LBR_NFESTATUS_508_RejeiçãoOCNPJComConteúdoNuloSóÉVálidoEmOpera = "508";
	/** 509-Rejeição: O CNPJ com conteúdo nulo só é válido em opera = 509 */
	public static final String LBR_NFESTATUS_509_RejeiçãoOCNPJComConteúdoNuloSóÉVálidoEmOpera = "509";
	/** 510-Rejeição: Operação com Exterior e Código País destinatá = 510 */
	public static final String LBR_NFESTATUS_510_RejeiçãoOperaçãoComExteriorECódigoPaísDestinatá = "510";
	/** 511-Rejeição: Não é de Operação com Exterior e Código País  = 511 */
	public static final String LBR_NFESTATUS_511_RejeiçãoNãoÉDeOperaçãoComExteriorECódigoPaís = "511";
	/** 512-Rejeição: CNPJ do Local de Retirada inválido = 512 */
	public static final String LBR_NFESTATUS_512_RejeiçãoCNPJDoLocalDeRetiradaInválido = "512";
	/** 513-Rejeição: Código Município do Local de Retirada deve se = 513 */
	public static final String LBR_NFESTATUS_513_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDeveSe = "513";
	/** 514-Rejeição: CNPJ do Local de Entrega inválido = 514 */
	public static final String LBR_NFESTATUS_514_RejeiçãoCNPJDoLocalDeEntregaInválido = "514";
	/** 515-Rejeição: Código Município do Local de Entrega deve ser = 515 */
	public static final String LBR_NFESTATUS_515_RejeiçãoCódigoMunicípioDoLocalDeEntregaDeveSer = "515";
	/** 516-Rejeição: Obrigatória a informação do NCM e/ou genero = 516 */
	public static final String LBR_NFESTATUS_516_RejeiçãoObrigatóriaAInformaçãoDoNCMEOuGenero = "516";
	/** 517-Rejeição: Informação do NCM difere da informação de gên = 517 */
	public static final String LBR_NFESTATUS_517_RejeiçãoInformaçãoDoNCMDifereDaInformaçãoDeGên = "517";
	/** 518-Rejeição: CFOP de entrada para NF-e de saída = 518 */
	public static final String LBR_NFESTATUS_518_RejeiçãoCFOPDeEntradaParaNF_EDeSaída = "518";
	/** 519-Rejeição: CFOP de saída para NF-e de entrada = 519 */
	public static final String LBR_NFESTATUS_519_RejeiçãoCFOPDeSaídaParaNF_EDeEntrada = "519";
	/** 520-Rejeição: CFOP de Operação com Exterior e UF destinatár = 520 */
	public static final String LBR_NFESTATUS_520_RejeiçãoCFOPDeOperaçãoComExteriorEUFDestinatár = "520";
	/** 521-Rejeição: CFOP de Operação Estadual e UF do emitente di = 521 */
	public static final String LBR_NFESTATUS_521_RejeiçãoCFOPDeOperaçãoEstadualEUFDoEmitenteDi = "521";
	/** 522-Rejeição: CFOP de Operação Estadual e UF emitente difer = 522 */
	public static final String LBR_NFESTATUS_522_RejeiçãoCFOPDeOperaçãoEstadualEUFEmitenteDifer = "522";
	/** 523-Rejeição: CFOP não é de Operação Estadual e UF emitente = 523 */
	public static final String LBR_NFESTATUS_523_RejeiçãoCFOPNãoÉDeOperaçãoEstadualEUFEmitente = "523";
	/** 524-Rejeição: CFOP de Operação com Exterior e não informado = 524 */
	public static final String LBR_NFESTATUS_524_RejeiçãoCFOPDeOperaçãoComExteriorENãoInformado = "524";
	/** 525-Rejeição: CFOP de Importação e não informado dados da D = 525 */
	public static final String LBR_NFESTATUS_525_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDaD = "525";
	/** 526-Rejeição: CFOP de Exportação e não informado Local de E = 526 */
	public static final String LBR_NFESTATUS_526_RejeiçãoCFOPDeExportaçãoENãoInformadoLocalDeE = "526";
	/** 527-Rejeição: Operação de Exportação com informação de ICMS = 527 */
	public static final String LBR_NFESTATUS_527_RejeiçãoOperaçãoDeExportaçãoComInformaçãoDeICMS = "527";
	/** 528-Rejeição: Valor do ICMS difere do produto BC e Alíquota = 528 */
	public static final String LBR_NFESTATUS_528_RejeiçãoValorDoICMSDifereDoProdutoBCEAlíquota = "528";
	/** 529-Rejeição: NCM de informação obrigatória para produto tr = 529 */
	public static final String LBR_NFESTATUS_529_RejeiçãoNCMDeInformaçãoObrigatóriaParaProdutoTr = "529";
	/** 530-Rejeição: Operação com tributação de ISSQN sem informar = 530 */
	public static final String LBR_NFESTATUS_530_RejeiçãoOperaçãoComTributaçãoDeISSQNSemInformar = "530";
	/** 531-Rejeição: Total da BC ICMS difere do somatório dos iten = 531 */
	public static final String LBR_NFESTATUS_531_RejeiçãoTotalDaBCICMSDifereDoSomatórioDosIten = "531";
	/** 532-Rejeição: Total do ICMS difere do somatório dos itens = 532 */
	public static final String LBR_NFESTATUS_532_RejeiçãoTotalDoICMSDifereDoSomatórioDosItens = "532";
	/** 533-Rejeição: Total da BC ICMS-ST difere do somatório dos i = 533 */
	public static final String LBR_NFESTATUS_533_RejeiçãoTotalDaBCICMS_STDifereDoSomatórioDosI = "533";
	/** 534-Rejeição: Total do ICMS-ST difere do somatório dos iten = 534 */
	public static final String LBR_NFESTATUS_534_RejeiçãoTotalDoICMS_STDifereDoSomatórioDosIten = "534";
	/** 535-Rejeição: Total do Frete difere do somatório dos itens = 535 */
	public static final String LBR_NFESTATUS_535_RejeiçãoTotalDoFreteDifereDoSomatórioDosItens = "535";
	/** 536-Rejeição: Total do Seguro difere do somatório dos itens = 536 */
	public static final String LBR_NFESTATUS_536_RejeiçãoTotalDoSeguroDifereDoSomatórioDosItens = "536";
	/** 537-Rejeição: Total do Desconto difere do somatório dos ite = 537 */
	public static final String LBR_NFESTATUS_537_RejeiçãoTotalDoDescontoDifereDoSomatórioDosIte = "537";
	/** 538-Rejeição: Total do IPI difere do somatório dos itens = 538 */
	public static final String LBR_NFESTATUS_538_RejeiçãoTotalDoIPIDifereDoSomatórioDosItens = "538";
	/** 539-Rejeição: Duplicidade de NF-e, com diferença na Chave d = 539 */
	public static final String LBR_NFESTATUS_539_RejeiçãoDuplicidadeDeNF_EComDiferençaNaChaveD = "539";
	/** 540-Rejeição: CPF do Local de Retirada inválido = 540 */
	public static final String LBR_NFESTATUS_540_RejeiçãoCPFDoLocalDeRetiradaInválido = "540";
	/** 541-Rejeição: CPF do Local de Entrega inválido = 541 */
	public static final String LBR_NFESTATUS_541_RejeiçãoCPFDoLocalDeEntregaInválido = "541";
	/** 542-Rejeição: CNPJ do Transportador inválido = 542 */
	public static final String LBR_NFESTATUS_542_RejeiçãoCNPJDoTransportadorInválido = "542";
	/** 543-Rejeição: CPF do Transportador inválido = 543 */
	public static final String LBR_NFESTATUS_543_RejeiçãoCPFDoTransportadorInválido = "543";
	/** 544-Rejeição: IE do Transportador inválida = 544 */
	public static final String LBR_NFESTATUS_544_RejeiçãoIEDoTransportadorInválida = "544";
	/** 545-Rejeição: Falha no schema XML – versão informada na ver = 545 */
	public static final String LBR_NFESTATUS_545_RejeiçãoFalhaNoSchemaXMLVersãoInformadaNaVer = "545";
	/** 546-Rejeição: Erro na Chave de Acesso – Campo Id – falta a  = 546 */
	public static final String LBR_NFESTATUS_546_RejeiçãoErroNaChaveDeAcessoCampoIdFaltaA = "546";
	/** 547-Rejeição: Dígito Verificador da Chave de Acesso da NF-e = 547 */
	public static final String LBR_NFESTATUS_547_RejeiçãoDígitoVerificadorDaChaveDeAcessoDaNF_E = "547";
	/** 548-Rejeição: CNPJ da NF referenciada inválido. = 548 */
	public static final String LBR_NFESTATUS_548_RejeiçãoCNPJDaNFReferenciadaInválido = "548";
	/** 549-Rejeição: CNPJ da NF referenciada de produtor inválido. = 549 */
	public static final String LBR_NFESTATUS_549_RejeiçãoCNPJDaNFReferenciadaDeProdutorInválido = "549";
	/** 550-Rejeição: CPF da NF referenciada de produtor inválido. = 550 */
	public static final String LBR_NFESTATUS_550_RejeiçãoCPFDaNFReferenciadaDeProdutorInválido = "550";
	/** 551-Rejeição: IE da NF referenciada de produtor inválido. = 551 */
	public static final String LBR_NFESTATUS_551_RejeiçãoIEDaNFReferenciadaDeProdutorInválido = "551";
	/** 552-Rejeição: Dígito Verificador da Chave de Acesso do CT-e = 552 */
	public static final String LBR_NFESTATUS_552_RejeiçãoDígitoVerificadorDaChaveDeAcessoDoCT_E = "552";
	/** 553-Rejeição: Tipo autorizador do recibo diverge do Órgão A = 553 */
	public static final String LBR_NFESTATUS_553_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoA = "553";
	/** 554-Rejeição: Série difere da faixa 0-899 = 554 */
	public static final String LBR_NFESTATUS_554_RejeiçãoSérieDifereDaFaixa0_899 = "554";
	/** 555-Rejeição: Tipo autorizador do protocolo diverge do Órgã = 555 */
	public static final String LBR_NFESTATUS_555_RejeiçãoTipoAutorizadorDoProtocoloDivergeDoÓrgã = "555";
	/** 556-Rejeição: Justificativa de entrada em contingência não  = 556 */
	public static final String LBR_NFESTATUS_556_RejeiçãoJustificativaDeEntradaEmContingênciaNão = "556";
	/** 557-Rejeição: A Justificativa de entrada em contingência de = 557 */
	public static final String LBR_NFESTATUS_557_RejeiçãoAJustificativaDeEntradaEmContingênciaDe = "557";
	/** 558-Rejeição: Data de entrada em contingência posterior a d = 558 */
	public static final String LBR_NFESTATUS_558_RejeiçãoDataDeEntradaEmContingênciaPosteriorAD = "558";
	/** 559-Rejeição: UF do Transportador não informado = 559 */
	public static final String LBR_NFESTATUS_559_RejeiçãoUFDoTransportadorNãoInformado = "559";
	/** 560-Rejeição: CNPJ base do emitente difere do CNPJ base da  = 560 */
	public static final String LBR_NFESTATUS_560_RejeiçãoCNPJBaseDoEmitenteDifereDoCNPJBaseDa = "560";
	/** 561-Rejeição: Mês de Emissão informado na Chave de Acesso d = 561 */
	public static final String LBR_NFESTATUS_561_RejeiçãoMêsDeEmissãoInformadoNaChaveDeAcessoD = "561";
	/** 562-Rejeição: Código numérico informado na Chave de Acesso  = 562 */
	public static final String LBR_NFESTATUS_562_RejeiçãoCódigoNuméricoInformadoNaChaveDeAcesso = "562";
	/** 563-Rejeição: Já existe pedido de Inutilização com a mesma  = 563 */
	public static final String LBR_NFESTATUS_563_RejeiçãoJáExistePedidoDeInutilizaçãoComAMesma = "563";
	/** 564-Rejeição: Total do Produto / Serviço difere do somatóri = 564 */
	public static final String LBR_NFESTATUS_564_RejeiçãoTotalDoProdutoServiçoDifereDoSomatóri = "564";
	/** 565-Rejeição: Falha no schema XML – inexiste a tag raiz esp = 565 */
	public static final String LBR_NFESTATUS_565_RejeiçãoFalhaNoSchemaXMLInexisteATagRaizEsp = "565";
	/** 567-Rejeição: Falha no schema XML – versão informada na ver = 567 */
	public static final String LBR_NFESTATUS_567_RejeiçãoFalhaNoSchemaXMLVersãoInformadaNaVer = "567";
	/** 568-Rejeição: Falha no schema XML – inexiste atributo versa = 568 */
	public static final String LBR_NFESTATUS_568_RejeiçãoFalhaNoSchemaXMLInexisteAtributoVersa = "568";
	/** 569-Rejeição: Data de entrada em contingência muito atrasad = 569 */
	public static final String LBR_NFESTATUS_569_RejeiçãoDataDeEntradaEmContingênciaMuitoAtrasad = "569";
	/** 570-Rejeição: tpEmis = 2 só é válido na contingência SCAN = 570 */
	public static final String LBR_NFESTATUS_570_RejeiçãoTpEmisEq2SóÉVálidoNaContingênciaSCAN = "570";
	/** 571-Rejeição: O tpEmis informado diferente de 2 para contin = 571 */
	public static final String LBR_NFESTATUS_571_RejeiçãoOTpEmisInformadoDiferenteDe2ParaContin = "571";
	/** 129-Lote de Evento Processado = 129 */
	public static final String LBR_NFESTATUS_129_LoteDeEventoProcessado = "129";
	/** 135-Evento registrado e vinculado a NF-e = 135 */
	public static final String LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E = "135";
	/** 136-Evento registrado, mas não vinculado a NF-e  = 136 */
	public static final String LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANF_E = "136";
	/** 489-Rejeição: CNPJ informado inválido (DV ou zeros)  = 489 */
	public static final String LBR_NFESTATUS_489_RejeiçãoCNPJInformadoInválidoDVOuZeros = "489";
	/** 490-Rejeição: CPF informado inválido (DV ou zeros)  = 490 */
	public static final String LBR_NFESTATUS_490_RejeiçãoCPFInformadoInválidoDVOuZeros = "490";
	/** 491-Rejeição: O tpEvento informado inválido  = 491 */
	public static final String LBR_NFESTATUS_491_RejeiçãoOTpEventoInformadoInválido = "491";
	/** 492-Rejeição: O verEvento informado inválido = 492 */
	public static final String LBR_NFESTATUS_492_RejeiçãoOVerEventoInformadoInválido = "492";
	/** 493-Rejeição: Evento não atende o Schema XML específico  = 493 */
	public static final String LBR_NFESTATUS_493_RejeiçãoEventoNãoAtendeOSchemaXMLEspecífico = "493";
	/** 494-Rejeição: Chave de Acesso inexistente  = 494 */
	public static final String LBR_NFESTATUS_494_RejeiçãoChaveDeAcessoInexistente = "494";
	/** 501-Rejeição: Prazo de cancelamento superior ao previsto na = 501 */
	public static final String LBR_NFESTATUS_501_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNa = "501";
	/** 572-Rejeição: Erro Atributo ID do evento não corresponde a  = 572 */
	public static final String LBR_NFESTATUS_572_RejeiçãoErroAtributoIDDoEventoNãoCorrespondeA = "572";
	/** 573-Rejeição: Duplicidade de Evento  = 573 */
	public static final String LBR_NFESTATUS_573_RejeiçãoDuplicidadeDeEvento = "573";
	/** 574-Rejeição: O autor do evento diverge do emissor da NF-e  = 574 */
	public static final String LBR_NFESTATUS_574_RejeiçãoOAutorDoEventoDivergeDoEmissorDaNF_E = "574";
	/** 575-Rejeição: O autor do evento diverge do destinatário da  = 575 */
	public static final String LBR_NFESTATUS_575_RejeiçãoOAutorDoEventoDivergeDoDestinatárioDa = "575";
	/** 576-Rejeição: O autor do evento não é um órgão autorizado a = 576 */
	public static final String LBR_NFESTATUS_576_RejeiçãoOAutorDoEventoNãoÉUmÓrgãoAutorizadoA = "576";
	/** 577-Rejeição: A data do evento não pode ser menor que a dat = 577 */
	public static final String LBR_NFESTATUS_577_RejeiçãoADataDoEventoNãoPodeSerMenorQueADat = "577";
	/** 578-Rejeição: A data do evento não pode ser maior que a dat = 578 */
	public static final String LBR_NFESTATUS_578_RejeiçãoADataDoEventoNãoPodeSerMaiorQueADat = "578";
	/** 579-Rejeição: A data do evento não pode ser menor que a dat = 579 */
	public static final String LBR_NFESTATUS_579_RejeiçãoADataDoEventoNãoPodeSerMenorQueADat = "579";
	/** 580-Rejeição: O evento exige uma NF-e autorizada  = 580 */
	public static final String LBR_NFESTATUS_580_RejeiçãoOEventoExigeUmaNF_EAutorizada = "580";
	/** 587-Rejeição: Usar somente o namespace padrão da NF-e  = 587 */
	public static final String LBR_NFESTATUS_587_RejeiçãoUsarSomenteONamespacePadrãoDaNF_E = "587";
	/** 588-Rejeição: Não é permitida a presença de caracteres de e = 588 */
	public static final String LBR_NFESTATUS_588_RejeiçãoNãoÉPermitidaAPresençaDeCaracteresDeE = "588";
	/** 590-Rejeição: Informado CST para emissor do Simples Naciona = 590 */
	public static final String LBR_NFESTATUS_590_RejeiçãoInformadoCSTParaEmissorDoSimplesNaciona = "590";
	/** 591-Rejeição: Informado CSOSN para emissor que não é do Sim = 591 */
	public static final String LBR_NFESTATUS_591_RejeiçãoInformadoCSOSNParaEmissorQueNãoÉDoSim = "591";
	/** 592-Rejeição: A NF-e deve ter pelo menos um item de produto = 592 */
	public static final String LBR_NFESTATUS_592_RejeiçãoANF_EDeveTerPeloMenosUmItemDeProduto = "592";
	/** 595-Rejeição: Obrigatória a informação da justificativa do  = 595 */
	public static final String LBR_NFESTATUS_595_RejeiçãoObrigatóriaAInformaçãoDaJustificativaDo = "595";
	/** 596-Rejeição: Evento apresentado fora do prazo: [prazo vige = 596 */
	public static final String LBR_NFESTATUS_596_RejeiçãoEventoApresentadoForaDoPrazoPrazoVige = "596";
	/** 597-Rejeição: CFOP de Importação e não informado dados de I = 597 */
	public static final String LBR_NFESTATUS_597_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "597";
	/** 598-Rejeição: NF-e emitida em ambiente de homologação com R = 598 */
	public static final String LBR_NFESTATUS_598_RejeiçãoNF_EEmitidaEmAmbienteDeHomologaçãoComR = "598";
	/** 599-Rejeição: CFOP de Importação e não informado dados de I = 599 */
	public static final String LBR_NFESTATUS_599_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "599";
	/** 128-Lote de Evento Processado 135 Evento registrado e vincu = 128 */
	public static final String LBR_NFESTATUS_128_LoteDeEventoProcessado135EventoRegistradoEVincu = "128";
	/** 594-Rejeição: O número de sequencia do evento informado é m = 594 */
	public static final String LBR_NFESTATUS_594_RejeiçãoONúmeroDeSequenciaDoEventoInformadoÉM = "594";
	/** 601-Rejeição: Total do II difere do somatório dos itens = 601 */
	public static final String LBR_NFESTATUS_601_RejeiçãoTotalDoIIDifereDoSomatórioDosItens = "601";
	/** 602-Rejeição: Total do PIS difere do somatório dos itens su = 602 */
	public static final String LBR_NFESTATUS_602_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSu = "602";
	/** 603-Rejeição: Total do COFINS difere do somatório dos itens = 603 */
	public static final String LBR_NFESTATUS_603_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItens = "603";
	/** 604-Rejeição: Total do vOutro difere do somatório dos itens = 604 */
	public static final String LBR_NFESTATUS_604_RejeiçãoTotalDoVOutroDifereDoSomatórioDosItens = "604";
	/** 605-Rejeição: Total do vServ difere do somatório do vProd d = 605 */
	public static final String LBR_NFESTATUS_605_RejeiçãoTotalDoVServDifereDoSomatórioDoVProdD = "605";
	/** 606-Rejeição: Total do vBC do ISS difere do somatório dos i = 606 */
	public static final String LBR_NFESTATUS_606_RejeiçãoTotalDoVBCDoISSDifereDoSomatórioDosI = "606";
	/** 607-Rejeição: Total do ISS difere do somatório dos itens = 607 */
	public static final String LBR_NFESTATUS_607_RejeiçãoTotalDoISSDifereDoSomatórioDosItens = "607";
	/** 608-Rejeição: Total do PIS difere do somatório dos itens su = 608 */
	public static final String LBR_NFESTATUS_608_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSu = "608";
	/** 609-Rejeição: Total do COFINS difere do somatório dos itens = 609 */
	public static final String LBR_NFESTATUS_609_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItens = "609";
	/** 610-Rejeição: Total da NF difere do somatório dos Valores c = 610 */
	public static final String LBR_NFESTATUS_610_RejeiçãoTotalDaNFDifereDoSomatórioDosValoresC = "610";
	/** 611-Rejeição: cEAN inválido = 611 */
	public static final String LBR_NFESTATUS_611_RejeiçãoCEANInválido = "611";
	/** 612-Rejeição: cEANTrib inválido = 612 */
	public static final String LBR_NFESTATUS_612_RejeiçãoCEANTribInválido = "612";
	/** 613-Rejeição: Chave de Acesso difere da existente em BD [99 = 613 */
	public static final String LBR_NFESTATUS_613_RejeiçãoChaveDeAcessoDifereDaExistenteEmBD99 = "613";
	/** 614-Rejeição: Chave de Acesso inválida (Código UF inválido) = 614 */
	public static final String LBR_NFESTATUS_614_RejeiçãoChaveDeAcessoInválidaCódigoUFInválido = "614";
	/** 615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou = 615 */
	public static final String LBR_NFESTATUS_615_RejeiçãoChaveDeAcessoInválidaAnoMenorQue05Ou = "615";
	/** 616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou  = 616 */
	public static final String LBR_NFESTATUS_616_RejeiçãoChaveDeAcessoInválidaMêsMenorQue1Ou = "616";
	/** 617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígi = 617 */
	public static final String LBR_NFESTATUS_617_RejeiçãoChaveDeAcessoInválidaCNPJZeradoOuDígi = "617";
	/** 618-Rejeição: Chave de Acesso inválida (modelo diferente de = 618 */
	public static final String LBR_NFESTATUS_618_RejeiçãoChaveDeAcessoInválidaModeloDiferenteDe = "618";
	/** 619-Rejeição: Chave de Acesso inválida (número NF = 0)  = 619 */
	public static final String LBR_NFESTATUS_619_RejeiçãoChaveDeAcessoInválidaNúmeroNFEq0 = "619";
	/** 621-Rejeição: CPF Emitente não cadastrado = 621 */
	public static final String LBR_NFESTATUS_621_RejeiçãoCPFEmitenteNãoCadastrado = "621";
	/** 622-Rejeição: IE emitente não vinculada ao CPF = 622 */
	public static final String LBR_NFESTATUS_622_RejeiçãoIEEmitenteNãoVinculadaAoCPF = "622";
	/** 623-Rejeição: CPF Destinatário não cadastrado = 623 */
	public static final String LBR_NFESTATUS_623_RejeiçãoCPFDestinatárioNãoCadastrado = "623";
	/** 624-Rejeição: IE Destinatário não vinculada ao CPF = 624 */
	public static final String LBR_NFESTATUS_624_RejeiçãoIEDestinatárioNãoVinculadaAoCPF = "624";
	/** 625-Rejeição: Inscrição SUFRAMA deve ser informada na venda = 625 */
	public static final String LBR_NFESTATUS_625_RejeiçãoInscriçãoSUFRAMADeveSerInformadaNaVenda = "625";
	/** 626-Rejeição: O CFOP de operação isenta para ZFM deve ser 6 = 626 */
	public static final String LBR_NFESTATUS_626_RejeiçãoOCFOPDeOperaçãoIsentaParaZFMDeveSer6 = "626";
	/** 627-Rejeição: O valor do ICMS desonerado deve ser informado = 627 */
	public static final String LBR_NFESTATUS_627_RejeiçãoOValorDoICMSDesoneradoDeveSerInformado = "627";
	/** 628-Rejeição: Total da NF superior ao valor limite estabele = 628 */
	public static final String LBR_NFESTATUS_628_RejeiçãoTotalDaNFSuperiorAoValorLimiteEstabele = "628";
	/** 629-Rejeição: Valor do Produto difere do produto Valor Unit = 629 */
	public static final String LBR_NFESTATUS_629_RejeiçãoValorDoProdutoDifereDoProdutoValorUnit = "629";
	/** 630-Rejeição: Valor do Produto difere do produto Valor Unit = 630 */
	public static final String LBR_NFESTATUS_630_RejeiçãoValorDoProdutoDifereDoProdutoValorUnit = "630";
	/** 635-Rejeição: NF-e com mesmo número e série já transmitida  = 635 */
	public static final String LBR_NFESTATUS_635_RejeiçãoNF_EComMesmoNúmeroESérieJáTransmitida = "635";
	/** 642-Rejeição: Falha na Consulta do Registro de Passagem, te = 642 */
	public static final String LBR_NFESTATUS_642_RejeiçãoFalhaNaConsultaDoRegistroDePassagemTe = "642";
	/** 137-Nenhum documento localizado para o Destinatário  = 137 */
	public static final String LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário = "137";
	/** 138-Documento localizado para o Destinatário  = 138 */
	public static final String LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário = "138";
	/** 139-Pedido de Download processado  = 139 */
	public static final String LBR_NFESTATUS_139_PedidoDeDownloadProcessado = "139";
	/** 140-Download disponibilizado = 140 */
	public static final String LBR_NFESTATUS_140_DownloadDisponibilizado = "140";
	/** 589-Rejeição: Número do NSU informado superior ao maior NSU = 589 */
	public static final String LBR_NFESTATUS_589_RejeiçãoNúmeroDoNSUInformadoSuperiorAoMaiorNSU = "589";
	/** 593-Rejeição: CNPJ-Base consultado difere do CNPJ-Base do C = 593 */
	public static final String LBR_NFESTATUS_593_RejeiçãoCNPJ_BaseConsultadoDifereDoCNPJ_BaseDoC = "593";
	/** 631-Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base = 631 */
	public static final String LBR_NFESTATUS_631_RejeiçãoCNPJ_BaseDoDestinatárioDifereDoCNPJ_Base = "631";
	/** 632-Rejeição: Solicitação fora de prazo, a NF-e não está ma = 632 */
	public static final String LBR_NFESTATUS_632_RejeiçãoSolicitaçãoForaDePrazoANF_ENãoEstáMa = "632";
	/** 633-Rejeição: NF-e indisponível para download devido a ausê = 633 */
	public static final String LBR_NFESTATUS_633_RejeiçãoNF_EIndisponívelParaDownloadDevidoAAusê = "633";
	/** 634-Rejeição: Destinatário da NF-e não tem o mesmo CNPJ rai = 634 */
	public static final String LBR_NFESTATUS_634_RejeiçãoDestinatárioDaNF_ENãoTemOMesmoCNPJRai = "634";
	/** 640-Rejeição: Evento de "Ciência da Operação" não pode ser  = 640 */
	public static final String LBR_NFESTATUS_640_RejeiçãoEventoDeCiênciaDaOperaçãoNãoPodeSer = "640";
	/** 641-Rejeição: Consumo Indevido 645 = 641 */
	public static final String LBR_NFESTATUS_641_RejeiçãoConsumoIndevido645 = "641";
	/** 645-Rejeição: CNPJ do Certificado Digital não é emitente de = 645 */
	public static final String LBR_NFESTATUS_645_RejeiçãoCNPJDoCertificadoDigitalNãoÉEmitenteDe = "645";
	/** 646-Rejeição: NF-e Cancelada, arquivo indisponível para dow = 646 */
	public static final String LBR_NFESTATUS_646_RejeiçãoNF_ECanceladaArquivoIndisponívelParaDow = "646";
	/** 647-Rejeição: NF-e Denegada, arquivo indisponível para down = 647 */
	public static final String LBR_NFESTATUS_647_RejeiçãoNF_EDenegadaArquivoIndisponívelParaDown = "647";
	/** 650-Rejeição: Evento de "Ciência da Operação" para NF-e Can = 650 */
	public static final String LBR_NFESTATUS_650_RejeiçãoEventoDeCiênciaDaOperaçãoParaNF_ECan = "650";
	/** 651-Rejeição: Evento de "Desconhecimento da Operação" para  = 651 */
	public static final String LBR_NFESTATUS_651_RejeiçãoEventoDeDesconhecimentoDaOperaçãoPara = "651";
	/** Set NFe Status.
		@param lbr_NFeStatus 
		Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus)
	{

		set_Value (COLUMNNAME_lbr_NFeStatus, lbr_NFeStatus);
	}

	/** Get NFe Status.
		@return Status of NFe
	 */
	public String getlbr_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeStatus);
	}

	/** lbr_NFModel AD_Reference_ID=1120009 */
	public static final int LBR_NFMODEL_AD_Reference_ID=1120009;
	/** Nota Fiscal = 01 */
	public static final String LBR_NFMODEL_NotaFiscal = "01";
	/** Nota Fiscal Avulsa = 1B */
	public static final String LBR_NFMODEL_NotaFiscalAvulsa = "1B";
	/** Nota Fiscal de Venda a Consumidor = 02 */
	public static final String LBR_NFMODEL_NotaFiscalDeVendaAConsumidor = "02";
	/** Cupom Fiscal emitido por ECF = 2D */
	public static final String LBR_NFMODEL_CupomFiscalEmitidoPorECF = "2D";
	/** Bilhete de Passagem emitido por ECF = 2E */
	public static final String LBR_NFMODEL_BilheteDePassagemEmitidoPorECF = "2E";
	/** Nota Fiscal de Produtor = 04 */
	public static final String LBR_NFMODEL_NotaFiscalDeProdutor = "04";
	/** Nota Fiscal/Conta de Energia Elétrica = 06 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeEnergiaElétrica = "06";
	/** Nota Fiscal de Serviço de Transporte = 07 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTransporte = "07";
	/** Conhecimento de Transporte Rodoviário de Cargas = 08 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteRodoviárioDeCargas = "08";
	/** Conhecimento de Transporte de Cargas Avulso = 8B */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteDeCargasAvulso = "8B";
	/** Conhecimento de Transporte Aquaviário de Cargas = 09 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteAquaviárioDeCargas = "09";
	/** Conhecimento Aéreo = 10 */
	public static final String LBR_NFMODEL_ConhecimentoAéreo = "10";
	/** Conhecimento de Transporte Ferroviário de Cargas = 11 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteFerroviárioDeCargas = "11";
	/** Bilhete de Passagem Rodoviário = 13 */
	public static final String LBR_NFMODEL_BilheteDePassagemRodoviário = "13";
	/** Bilhete de Passagem Aquaviário = 14 */
	public static final String LBR_NFMODEL_BilheteDePassagemAquaviário = "14";
	/** Bilhete de Passagem e Nota de Bagagem = 15 */
	public static final String LBR_NFMODEL_BilheteDePassagemENotaDeBagagem = "15";
	/** Despacho de Transporte = 17 */
	public static final String LBR_NFMODEL_DespachoDeTransporte = "17";
	/** Bilhete de Passagem Ferroviário = 16 */
	public static final String LBR_NFMODEL_BilheteDePassagemFerroviário = "16";
	/** Resumo de Movimento Diário = 18 */
	public static final String LBR_NFMODEL_ResumoDeMovimentoDiário = "18";
	/** Ordem de Coleta de Cargas = 20 */
	public static final String LBR_NFMODEL_OrdemDeColetaDeCargas = "20";
	/** Nota Fiscal de Serviço de Comunicação = 21 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeComunicação = "21";
	/** Nota Fiscal de Serviço de Telecomunicação = 22 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTelecomunicação = "22";
	/** GNRE = 23 */
	public static final String LBR_NFMODEL_GNRE = "23";
	/** Autorização de Carregamento e Transporte = 24 */
	public static final String LBR_NFMODEL_AutorizaçãoDeCarregamentoETransporte = "24";
	/** Manifesto de Carga = 25 */
	public static final String LBR_NFMODEL_ManifestoDeCarga = "25";
	/** Conhecimento de Transporte Multimodal de Cargas = 26 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteMultimodalDeCargas = "26";
	/** Nota Fiscal de Transporte Ferroviário de Cargas = 27 */
	public static final String LBR_NFMODEL_NotaFiscalDeTransporteFerroviárioDeCargas = "27";
	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado = 28 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeGásCanalizado = "28";
	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada = 29 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeÁguaCanalizada = "29";
	/** Bilhete/Recibo do Passageiro = 30 */
	public static final String LBR_NFMODEL_BilheteReciboDoPassageiro = "30";
	/** Nota Fiscal Eletrônica = 55 */
	public static final String LBR_NFMODEL_NotaFiscalEletrônica = "55";
	/** Conhecimento de Transporte Eletrônico – CT-e = 57 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E = "57";
	/** Set NF Model.
		@param lbr_NFModel 
		Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel)
	{

		set_Value (COLUMNNAME_lbr_NFModel, lbr_NFModel);
	}

	/** Get NF Model.
		@return Identifies the model of Nota Fiscal
	 */
	public String getlbr_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFModel);
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getlbr_NFRefere() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getlbr_NFReference(), get_TrxName());	}

	/** Set NF Reference.
		@param lbr_NFReference 
		Reference to other NF
	  */
	public void setlbr_NFReference (int lbr_NFReference)
	{
		set_Value (COLUMNNAME_lbr_NFReference, Integer.valueOf(lbr_NFReference));
	}

	/** Get NF Reference.
		@return Reference to other NF
	  */
	public int getlbr_NFReference () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_NFReference);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
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
		@param lbr_NFType 
		Nota Fiscal Type
	  */
	public void setlbr_NFType (String lbr_NFType)
	{

		set_Value (COLUMNNAME_lbr_NFType, lbr_NFType);
	}

	/** Get NF Type.
		@return Nota Fiscal Type
	  */
	public String getlbr_NFType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFType);
	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Organization Address 1.
		@param lbr_OrgAddress1 
		The issuer organization address 1
	  */
	public void setlbr_OrgAddress1 (String lbr_OrgAddress1)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress1, lbr_OrgAddress1);
	}

	/** Get Organization Address 1.
		@return The issuer organization address 1
	  */
	public String getlbr_OrgAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress1);
	}

	/** Set Organization Address 2.
		@param lbr_OrgAddress2 
		The issuer organization address 2
	  */
	public void setlbr_OrgAddress2 (String lbr_OrgAddress2)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress2, lbr_OrgAddress2);
	}

	/** Get Organization Address 2.
		@return The issuer organization address 2
	  */
	public String getlbr_OrgAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress2);
	}

	/** Set Organization Address 3.
		@param lbr_OrgAddress3 
		The issuer organization address 3
	  */
	public void setlbr_OrgAddress3 (String lbr_OrgAddress3)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress3, lbr_OrgAddress3);
	}

	/** Get Organization Address 3.
		@return The issuer organization address 3
	  */
	public String getlbr_OrgAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress3);
	}

	/** Set Organization Address 4.
		@param lbr_OrgAddress4 
		The issuer organization address 4
	  */
	public void setlbr_OrgAddress4 (String lbr_OrgAddress4)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress4, lbr_OrgAddress4);
	}

	/** Get Organization Address 4.
		@return The issuer organization address 4
	  */
	public String getlbr_OrgAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress4);
	}

	/** Set Organization CCM.
		@param lbr_OrgCCM 
		The Organization CCM
	  */
	public void setlbr_OrgCCM (String lbr_OrgCCM)
	{
		set_Value (COLUMNNAME_lbr_OrgCCM, lbr_OrgCCM);
	}

	/** Get Organization CCM.
		@return The Organization CCM
	  */
	public String getlbr_OrgCCM () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCCM);
	}

	/** Set Organization City.
		@param lbr_OrgCity 
		The City of the Organization
	  */
	public void setlbr_OrgCity (String lbr_OrgCity)
	{
		set_Value (COLUMNNAME_lbr_OrgCity, lbr_OrgCity);
	}

	/** Get Organization City.
		@return The City of the Organization
	  */
	public String getlbr_OrgCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCity);
	}

	/** Set Organization Country.
		@param lbr_OrgCountry 
		The Country of the Organization
	  */
	public void setlbr_OrgCountry (String lbr_OrgCountry)
	{
		set_Value (COLUMNNAME_lbr_OrgCountry, lbr_OrgCountry);
	}

	/** Get Organization Country.
		@return The Country of the Organization
	  */
	public String getlbr_OrgCountry () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCountry);
	}

	/** Set Organization Name.
		@param lbr_OrgName 
		The Name of the Organization
	  */
	public void setlbr_OrgName (String lbr_OrgName)
	{
		set_Value (COLUMNNAME_lbr_OrgName, lbr_OrgName);
	}

	/** Get Organization Name.
		@return The Name of the Organization
	  */
	public String getlbr_OrgName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgName);
	}

	/** Set Organization Phone.
		@param lbr_OrgPhone 
		The Organization Phone
	  */
	public void setlbr_OrgPhone (String lbr_OrgPhone)
	{
		set_Value (COLUMNNAME_lbr_OrgPhone, lbr_OrgPhone);
	}

	/** Get Organization Phone.
		@return The Organization Phone
	  */
	public String getlbr_OrgPhone () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgPhone);
	}

	/** Set Organization Postal Code.
		@param lbr_OrgPostal 
		The Postal Code of the Organization
	  */
	public void setlbr_OrgPostal (String lbr_OrgPostal)
	{
		set_Value (COLUMNNAME_lbr_OrgPostal, lbr_OrgPostal);
	}

	/** Get Organization Postal Code.
		@return The Postal Code of the Organization
	  */
	public String getlbr_OrgPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgPostal);
	}

	/** Set Organization Region.
		@param lbr_OrgRegion 
		The Region of the Organization
	  */
	public void setlbr_OrgRegion (String lbr_OrgRegion)
	{
		set_Value (COLUMNNAME_lbr_OrgRegion, lbr_OrgRegion);
	}

	/** Get Organization Region.
		@return The Region of the Organization
	  */
	public String getlbr_OrgRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgRegion);
	}

	/** Set Other Charges Amount.
		@param LBR_OtherChargesAmt Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt)
	{
		set_Value (COLUMNNAME_LBR_OtherChargesAmt, LBR_OtherChargesAmt);
	}

	/** Get Other Charges Amount.
		@return Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherChargesAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Packing Type.
		@param lbr_PackingType 
		Defines the Packing Type
	  */
	public void setlbr_PackingType (String lbr_PackingType)
	{
		set_Value (COLUMNNAME_lbr_PackingType, lbr_PackingType);
	}

	/** Get Packing Type.
		@return Defines the Packing Type
	  */
	public String getlbr_PackingType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_PackingType);
	}

	/** Set Process Cancel Nota Fiscal.
		@param lbr_ProcCancelNF 
		Process to Cancel Nota Fiscal
	  */
	public void setlbr_ProcCancelNF (String lbr_ProcCancelNF)
	{
		set_Value (COLUMNNAME_lbr_ProcCancelNF, lbr_ProcCancelNF);
	}

	/** Get Process Cancel Nota Fiscal.
		@return Process to Cancel Nota Fiscal
	  */
	public String getlbr_ProcCancelNF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProcCancelNF);
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_RefNotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_RefNotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal Referenciada.
		@param LBR_RefNotaFiscal_ID Nota Fiscal Referenciada	  */
	public void setLBR_RefNotaFiscal_ID (int LBR_RefNotaFiscal_ID)
	{
		if (LBR_RefNotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_RefNotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_RefNotaFiscal_ID, Integer.valueOf(LBR_RefNotaFiscal_ID));
	}

	/** Get Nota Fiscal Referenciada.
		@return Nota Fiscal Referenciada	  */
	public int getLBR_RefNotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RefNotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_RPSStatus AD_Reference_ID=1120034 */
	public static final int LBR_RPSSTATUS_AD_Reference_ID=1120034;
	/** Operacao normal = T */
	public static final String LBR_RPSSTATUS_OperacaoNormal = "T";
	/** Operacao isenta ou nao tributavel = I */
	public static final String LBR_RPSSTATUS_OperacaoIsentaOuNaoTributavel = "I";
	/** Operacao isenta ou nao tributavel executada em outro Municipio = F */
	public static final String LBR_RPSSTATUS_OperacaoIsentaOuNaoTributavelExecutadaEmOutroMunicipio = "F";
	/** Cancelado = C */
	public static final String LBR_RPSSTATUS_Cancelado = "C";
	/** Extraviado = E */
	public static final String LBR_RPSSTATUS_Extraviado = "E";
	/** ISS Suspenso por Decisao Judicial = J */
	public static final String LBR_RPSSTATUS_ISSSuspensoPorDecisaoJudicial = "J";
	/** Set RPS Status.
		@param lbr_RPSStatus RPS Status	  */
	public void setlbr_RPSStatus (String lbr_RPSStatus)
	{

		set_Value (COLUMNNAME_lbr_RPSStatus, lbr_RPSStatus);
	}

	/** Get RPS Status.
		@return RPS Status	  */
	public String getlbr_RPSStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_RPSStatus);
	}

	/** Set Service Total Amount.
		@param lbr_ServiceTotalAmt 
		Defines the Service Total Amount
	  */
	public void setlbr_ServiceTotalAmt (BigDecimal lbr_ServiceTotalAmt)
	{
		set_Value (COLUMNNAME_lbr_ServiceTotalAmt, lbr_ServiceTotalAmt);
	}

	/** Get Service Total Amount.
		@return Defines the Service Total Amount
	  */
	public BigDecimal getlbr_ServiceTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_ServiceTotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_BPartner_Location getlbr_Ship_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getlbr_Ship_Location_ID(), get_TrxName());	}

	/** Set Ship Location.
		@param lbr_Ship_Location_ID 
		The Shipment Location ID
	  */
	public void setlbr_Ship_Location_ID (int lbr_Ship_Location_ID)
	{
		if (lbr_Ship_Location_ID < 1) 
			set_Value (COLUMNNAME_lbr_Ship_Location_ID, null);
		else 
			set_Value (COLUMNNAME_lbr_Ship_Location_ID, Integer.valueOf(lbr_Ship_Location_ID));
	}

	/** Get Ship Location.
		@return The Shipment Location ID
	  */
	public int getlbr_Ship_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_Ship_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Shipment Note.
		@param lbr_ShipNote 
		Extra Shipment Information 
	  */
	public void setlbr_ShipNote (String lbr_ShipNote)
	{
		set_Value (COLUMNNAME_lbr_ShipNote, lbr_ShipNote);
	}

	/** Get Shipment Note.
		@return Extra Shipment Information 
	  */
	public String getlbr_ShipNote () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ShipNote);
	}

	/** Set Time InOut.
		@param lbr_TimeInOut 
		Defines the InOut Time
	  */
	public void setlbr_TimeInOut (String lbr_TimeInOut)
	{
		set_Value (COLUMNNAME_lbr_TimeInOut, lbr_TimeInOut);
	}

	/** Get Time InOut.
		@return Defines the InOut Time
	  */
	public String getlbr_TimeInOut () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TimeInOut);
	}

	/** Set CIF Total.
		@param lbr_TotalCIF 
		CIF Total for all the document
	  */
	public void setlbr_TotalCIF (BigDecimal lbr_TotalCIF)
	{
		set_Value (COLUMNNAME_lbr_TotalCIF, lbr_TotalCIF);
	}

	/** Get CIF Total.
		@return CIF Total for all the document
	  */
	public BigDecimal getlbr_TotalCIF () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TotalCIF);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set SISCOMEX Total.
		@param lbr_TotalSISCOMEX 
		SISCOMEX Total for all the document
	  */
	public void setlbr_TotalSISCOMEX (BigDecimal lbr_TotalSISCOMEX)
	{
		set_Value (COLUMNNAME_lbr_TotalSISCOMEX, lbr_TotalSISCOMEX);
	}

	/** Get SISCOMEX Total.
		@return SISCOMEX Total for all the document
	  */
	public BigDecimal getlbr_TotalSISCOMEX () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TotalSISCOMEX);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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
		@param lbr_TransactionType 
		Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType)
	{

		set_Value (COLUMNNAME_lbr_TransactionType, lbr_TransactionType);
	}

	/** Get Transaction Type.
		@return Defines the Transaction Type
	  */
	public String getlbr_TransactionType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TransactionType);
	}

	public I_M_InOut getM_InOut() throws RuntimeException
    {
		return (I_M_InOut)MTable.get(getCtx(), I_M_InOut.Table_Name)
			.getPO(getM_InOut_ID(), get_TrxName());	}

	/** Set Shipment/Receipt.
		@param M_InOut_ID 
		Material Shipment Document
	  */
	public void setM_InOut_ID (int M_InOut_ID)
	{
		if (M_InOut_ID < 1) 
			set_Value (COLUMNNAME_M_InOut_ID, null);
		else 
			set_Value (COLUMNNAME_M_InOut_ID, Integer.valueOf(M_InOut_ID));
	}

	/** Get Shipment/Receipt.
		@return Material Shipment Document
	  */
	public int getM_InOut_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_InOut_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Shipper.
		@param M_Shipper_ID 
		Method or manner of product delivery
	  */
	public void setM_Shipper_ID (int M_Shipper_ID)
	{
		if (M_Shipper_ID < 1) 
			set_Value (COLUMNNAME_M_Shipper_ID, null);
		else 
			set_Value (COLUMNNAME_M_Shipper_ID, Integer.valueOf(M_Shipper_ID));
	}

	/** Get Shipper.
		@return Method or manner of product delivery
	  */
	public int getM_Shipper_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Shipper_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set No Packages.
		@param NoPackages 
		Number of packages shipped
	  */
	public void setNoPackages (BigDecimal NoPackages)
	{
		set_Value (COLUMNNAME_NoPackages, NoPackages);
	}

	/** Get No Packages.
		@return Number of packages shipped
	  */
	public BigDecimal getNoPackages () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_NoPackages);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_C_Location getOrg_Location() throws RuntimeException
    {
		return (I_C_Location)MTable.get(getCtx(), I_C_Location.Table_Name)
			.getPO(getOrg_Location_ID(), get_TrxName());	}

	/** Set Org Address.
		@param Org_Location_ID 
		Organization Location/Address
	  */
	public void setOrg_Location_ID (int Org_Location_ID)
	{
		if (Org_Location_ID < 1) 
			set_Value (COLUMNNAME_Org_Location_ID, null);
		else 
			set_Value (COLUMNNAME_Org_Location_ID, Integer.valueOf(Org_Location_ID));
	}

	/** Get Org Address.
		@return Organization Location/Address
	  */
	public int getOrg_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Org_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing2 Process Now	  */
	public void setProcessing2 (String Processing2)
	{
		set_Value (COLUMNNAME_Processing2, Processing2);
	}

	/** Get Process Now.
		@return Process Now	  */
	public String getProcessing2 () 
	{
		return (String)get_Value(COLUMNNAME_Processing2);
	}

	/** Set Reactivate Nota Fiscal.
		@param ProcReactivateNF 
		This Process Reactivates the Nota Fiscal Document
	  */
	public void setProcReactivateNF (String ProcReactivateNF)
	{
		set_Value (COLUMNNAME_ProcReactivateNF, ProcReactivateNF);
	}

	/** Get Reactivate Nota Fiscal.
		@return This Process Reactivates the Nota Fiscal Document
	  */
	public String getProcReactivateNF () 
	{
		return (String)get_Value(COLUMNNAME_ProcReactivateNF);
	}

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_Value (COLUMNNAME_TotalLines, TotalLines);
	}

	/** Get Total Lines.
		@return Total of all document lines
	  */
	public BigDecimal getTotalLines () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalLines);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}