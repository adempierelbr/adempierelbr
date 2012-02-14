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

/** Generated Interface for C_BPartner
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_BPartner extends I_C_BPartner 
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

    /** Column name LBR_CustomerCategory_ID */
    public static final String COLUMNNAME_LBR_CustomerCategory_ID = "LBR_CustomerCategory_ID";

	/** Set Customer Category.
	  * Defines the Customer Category
	  */
	public void setLBR_CustomerCategory_ID (int LBR_CustomerCategory_ID);

	/** Get Customer Category.
	  * Defines the Customer Category
	  */
	public int getLBR_CustomerCategory_ID();

    /** Column name LBR_FiscalGroup_Customer_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Customer_ID = "LBR_FiscalGroup_Customer_ID";

	/** Set Fiscal Group - Customer.
	  * Defines the Fiscal Group - Customer
	  */
	public void setLBR_FiscalGroup_Customer_ID (int LBR_FiscalGroup_Customer_ID);

	/** Get Fiscal Group - Customer.
	  * Defines the Fiscal Group - Customer
	  */
	public int getLBR_FiscalGroup_Customer_ID();

    /** Column name LBR_FiscalGroup_Vendor_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Vendor_ID = "LBR_FiscalGroup_Vendor_ID";

	/** Set Fiscal Group - Vendor.
	  * Defines the Fiscal Group - Vendor
	  */
	public void setLBR_FiscalGroup_Vendor_ID (int LBR_FiscalGroup_Vendor_ID);

	/** Get Fiscal Group - Vendor.
	  * Defines the Fiscal Group - Vendor
	  */
	public int getLBR_FiscalGroup_Vendor_ID();

    /** Column name LBR_VendorCategory_ID */
    public static final String COLUMNNAME_LBR_VendorCategory_ID = "LBR_VendorCategory_ID";

	/** Set Vendor Category.
	  * Defines the Vendor Category
	  */
	public void setLBR_VendorCategory_ID (int LBR_VendorCategory_ID);

	/** Get Vendor Category.
	  * Defines the Vendor Category
	  */
	public int getLBR_VendorCategory_ID();

    /** Column name lbr_BPTypeBR */
    public static final String COLUMNNAME_lbr_BPTypeBR = "lbr_BPTypeBR";

	/** Set Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public void setlbr_BPTypeBR (String lbr_BPTypeBR);

	/** Get Brazilian BP Type.
	  * Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)
	  */
	public String getlbr_BPTypeBR();

    /** Column name lbr_BPTypeBRIsValid */
    public static final String COLUMNNAME_lbr_BPTypeBRIsValid = "lbr_BPTypeBRIsValid";

	/** Set Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public void setlbr_BPTypeBRIsValid (boolean lbr_BPTypeBRIsValid);

	/** Get Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public boolean islbr_BPTypeBRIsValid();

    /** Column name lbr_CCM */
    public static final String COLUMNNAME_lbr_CCM = "lbr_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setlbr_CCM (String lbr_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getlbr_CCM();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();

    /** Column name lbr_HasSubstitution */
    public static final String COLUMNNAME_lbr_HasSubstitution = "lbr_HasSubstitution";

	/** Set Has Substitution.
	  * Defines if the record has Substituion
	  */
	public void setlbr_HasSubstitution (boolean lbr_HasSubstitution);

	/** Get Has Substitution.
	  * Defines if the record has Substituion
	  */
	public boolean islbr_HasSubstitution();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_IsIEExempt */
    public static final String COLUMNNAME_lbr_IsIEExempt = "lbr_IsIEExempt";

	/** Set IE Exempt.
	  * Business Partner is IE Exempt
	  */
	public void setlbr_IsIEExempt (boolean lbr_IsIEExempt);

	/** Get IE Exempt.
	  * Business Partner is IE Exempt
	  */
	public boolean islbr_IsIEExempt();

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

    /** Column name lbr_RG */
    public static final String COLUMNNAME_lbr_RG = "lbr_RG";

	/** Set RG.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_RG (String lbr_RG);

	/** Get RG.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_RG();

    /** Column name lbr_Suframa */
    public static final String COLUMNNAME_lbr_Suframa = "lbr_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setlbr_Suframa (String lbr_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getlbr_Suframa();

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
