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

import java.math.BigDecimal;
import org.compiere.model.*;

/** Generated Interface for C_Invoice
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_Invoice extends I_C_Invoice 
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

    /** Column name LBR_FreightCostRule */
    public static final String COLUMNNAME_LBR_FreightCostRule = "LBR_FreightCostRule";

	/** Set Freight Cost Rule.
	  * Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getLBR_FreightCostRule();

    /** Column name LBR_HasWithhold */
    public static final String COLUMNNAME_LBR_HasWithhold = "LBR_HasWithhold";

	/** Set Has Withhold.
	  * Defines if the Tax, has Withhold
	  */
	public void setLBR_HasWithhold (boolean LBR_HasWithhold);

	/** Get Has Withhold.
	  * Defines if the Tax, has Withhold
	  */
	public boolean isLBR_HasWithhold();

    /** Column name LBR_IndPres */
    public static final String COLUMNNAME_LBR_IndPres = "LBR_IndPres";

	/** Set Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public void setLBR_IndPres (String LBR_IndPres);

	/** Get Indicação de Atendimento Presencial.
	  * Indicador de presença do comprador no estabelecimento comercial no momento da operação
	  */
	public String getLBR_IndPres();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

    /** Column name LBR_OtherChargesAmt */
    public static final String COLUMNNAME_LBR_OtherChargesAmt = "LBR_OtherChargesAmt";

	/** Set Other Charges Amount	  */
	public void setLBR_OtherChargesAmt (BigDecimal LBR_OtherChargesAmt);

	/** Get Other Charges Amount	  */
	public BigDecimal getLBR_OtherChargesAmt();

    /** Column name LBR_ProcCancelBoleto */
    public static final String COLUMNNAME_LBR_ProcCancelBoleto = "LBR_ProcCancelBoleto";

	/** Set Process Cancel Boleto.
	  * Process to Cancel Boleto
	  */
	public void setLBR_ProcCancelBoleto (String LBR_ProcCancelBoleto);

	/** Get Process Cancel Boleto.
	  * Process to Cancel Boleto
	  */
	public String getLBR_ProcCancelBoleto();

    /** Column name LBR_Withhold_Invoice_ID */
    public static final String COLUMNNAME_LBR_Withhold_Invoice_ID = "LBR_Withhold_Invoice_ID";

	/** Set Withhold Invoice.
	  * Defines the Withhold Invoice
	  */
	public void setLBR_Withhold_Invoice_ID (int LBR_Withhold_Invoice_ID);

	/** Get Withhold Invoice.
	  * Defines the Withhold Invoice
	  */
	public int getLBR_Withhold_Invoice_ID();

	public I_C_Invoice getLBR_Withhold_Invoice() throws RuntimeException;

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

    /** Column name lbr_BoletoComments */
    public static final String COLUMNNAME_lbr_BoletoComments = "lbr_BoletoComments";

	/** Set Boleto Comments.
	  * Define the Boleto Comments
	  */
	public void setlbr_BoletoComments (String lbr_BoletoComments);

	/** Get Boleto Comments.
	  * Define the Boleto Comments
	  */
	public String getlbr_BoletoComments();

    /** Column name lbr_IsBillPrinted */
    public static final String COLUMNNAME_lbr_IsBillPrinted = "lbr_IsBillPrinted";

	/** Set Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public void setlbr_IsBillPrinted (boolean lbr_IsBillPrinted);

	/** Get Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public boolean islbr_IsBillPrinted();

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

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFType */
    public static final String COLUMNNAME_lbr_NFType = "lbr_NFType";

	/** Set NF Type.
	  * Nota Fiscal Type
	  */
	public void setlbr_NFType (String lbr_NFType);

	/** Get NF Type.
	  * Nota Fiscal Type
	  */
	public String getlbr_NFType();

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
