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
package org.adempierelbr.wrapper;

import org.compiere.model.*;

/** Generated Interface for C_Order
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_Order extends I_C_Order 
{


    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name CreateFrom */
    public static final String COLUMNNAME_CreateFrom = "CreateFrom";

	/** Set Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public void setCreateFrom (String CreateFrom);

	/** Get Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public String getCreateFrom();

    /** Column name LBR_Withhold_Order_ID */
    public static final String COLUMNNAME_LBR_Withhold_Order_ID = "LBR_Withhold_Order_ID";

	/** Set Withhold Order.
	  * Defines the Withhold Order
	  */
	public void setLBR_Withhold_Order_ID (int LBR_Withhold_Order_ID);

	/** Get Withhold Order.
	  * Defines the Withhold Order
	  */
	public int getLBR_Withhold_Order_ID();

	public I_C_Order getLBR_Withhold_Order() throws RuntimeException;

    /** Column name ProcCreatePO */
    public static final String COLUMNNAME_ProcCreatePO = "ProcCreatePO";

	/** Set Create PO.
	  * Process to Create PO Lines from Requisition
	  */
	public void setProcCreatePO (String ProcCreatePO);

	/** Get Create PO.
	  * Process to Create PO Lines from Requisition
	  */
	public String getProcCreatePO();

    /** Column name lbr_BillNote */
    public static final String COLUMNNAME_lbr_BillNote = "lbr_BillNote";

	/** Set Bill Note.
	  * Bill Note
	  */
	public void setlbr_BillNote (String lbr_BillNote);

	/** Get Bill Note.
	  * Bill Note
	  */
	public String getlbr_BillNote();

    /** Column name lbr_NFDescription */
    public static final String COLUMNNAME_lbr_NFDescription = "lbr_NFDescription";

	/** Set Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public void setlbr_NFDescription (String lbr_NFDescription);

	/** Get Nota Fiscal Description.
	  * Description Printed on Nota Fiscal
	  */
	public String getlbr_NFDescription();

    /** Column name lbr_NFEntrada */
    public static final String COLUMNNAME_lbr_NFEntrada = "lbr_NFEntrada";

	/** Set Customer NF Number.
	  * Number of the Customer NF
	  */
	public void setlbr_NFEntrada (String lbr_NFEntrada);

	/** Get Customer NF Number.
	  * Number of the Customer NF
	  */
	public String getlbr_NFEntrada();

    /** Column name lbr_PaymentRule */
    public static final String COLUMNNAME_lbr_PaymentRule = "lbr_PaymentRule";

	/** Set Payment Rule.
	  * How you pay the invoice
	  */
	public void setlbr_PaymentRule (String lbr_PaymentRule);

	/** Get Payment Rule.
	  * How you pay the invoice
	  */
	public String getlbr_PaymentRule();

    /** Column name lbr_ShipNote */
    public static final String COLUMNNAME_lbr_ShipNote = "lbr_ShipNote";

	/** Set Shipment Note.
	  * Extra Shipment Information 
	  */
	public void setlbr_ShipNote (String lbr_ShipNote);

	/** Get Shipment Note.
	  * Extra Shipment Information 
	  */
	public String getlbr_ShipNote();

    /** Column name lbr_TransactionType */
    public static final String COLUMNNAME_lbr_TransactionType = "lbr_TransactionType";

	/** Set Transaction Type.
	  * Defines the Transaction Type
	  */
	public void setlbr_TransactionType (String lbr_TransactionType);

	/** Get Transaction Type.
	  * Defines the Transaction Type
	  */
	public String getlbr_TransactionType();
}
