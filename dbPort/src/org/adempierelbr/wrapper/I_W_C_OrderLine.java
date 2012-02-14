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

/** Generated Interface for C_OrderLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_OrderLine extends I_C_OrderLine 
{


    /** Column name LBR_ADILine_ID */
    public static final String COLUMNNAME_LBR_ADILine_ID = "LBR_ADILine_ID";

	/** Set Linhas da Adição	  */
	public void setLBR_ADILine_ID (int LBR_ADILine_ID);

	/** Get Linhas da Adição	  */
	public int getLBR_ADILine_ID();

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

    /** Column name LBR_DI_ID */
    public static final String COLUMNNAME_LBR_DI_ID = "LBR_DI_ID";

	/** Set Declaracao de Importacao	  */
	public void setLBR_DI_ID (int LBR_DI_ID);

	/** Get Declaracao de Importacao	  */
	public int getLBR_DI_ID();

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID();

    /** Column name M_Locator_ID */
    public static final String COLUMNNAME_M_Locator_ID = "M_Locator_ID";

	/** Set Locator.
	  * Warehouse Locator
	  */
	public void setM_Locator_ID (int M_Locator_ID);

	/** Get Locator.
	  * Warehouse Locator
	  */
	public int getM_Locator_ID();

	public I_C_Location getM_Locator() throws RuntimeException;

    /** Column name M_ProductionLine_ID */
    public static final String COLUMNNAME_M_ProductionLine_ID = "M_ProductionLine_ID";

	/** Set Production Line.
	  * Document Line representing a production
	  */
	public void setM_ProductionLine_ID (int M_ProductionLine_ID);

	/** Get Production Line.
	  * Document Line representing a production
	  */
	public int getM_ProductionLine_ID();

	public I_M_ProductionLine getM_ProductionLine() throws RuntimeException;

    /** Column name TaxAmt */
    public static final String COLUMNNAME_TaxAmt = "TaxAmt";

	/** Set Tax Amount.
	  * Tax Amount for a document
	  */
	public void setTaxAmt (BigDecimal TaxAmt);

	/** Get Tax Amount.
	  * Tax Amount for a document
	  */
	public BigDecimal getTaxAmt();

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

    /** Column name lbr_RecalculateTax */
    public static final String COLUMNNAME_lbr_RecalculateTax = "lbr_RecalculateTax";

	/** Set Recalculate Tax	  */
	public void setlbr_RecalculateTax (boolean lbr_RecalculateTax);

	/** Get Recalculate Tax	  */
	public boolean islbr_RecalculateTax();

    /** Column name lbr_Ref_C_InvoiceLine_ID */
    public static final String COLUMNNAME_lbr_Ref_C_InvoiceLine_ID = "lbr_Ref_C_InvoiceLine_ID";

	/** Set Reference Invoice Line.
	  * Reference Invoice Line
	  */
	public void setlbr_Ref_C_InvoiceLine_ID (int lbr_Ref_C_InvoiceLine_ID);

	/** Get Reference Invoice Line.
	  * Reference Invoice Line
	  */
	public int getlbr_Ref_C_InvoiceLine_ID();

	public I_C_InvoiceLine getlbr_Ref_C_InvoiceLine() throws RuntimeException;

    /** Column name lbr_SISCOMEXAmt */
    public static final String COLUMNNAME_lbr_SISCOMEXAmt = "lbr_SISCOMEXAmt";

	/** Set SISCOMEX Amt	  */
	public void setlbr_SISCOMEXAmt (BigDecimal lbr_SISCOMEXAmt);

	/** Get SISCOMEX Amt	  */
	public BigDecimal getlbr_SISCOMEXAmt();

    /** Column name lbr_TaxStatus */
    public static final String COLUMNNAME_lbr_TaxStatus = "lbr_TaxStatus";

	/** Set Tax Status.
	  * Defines the Tax Status
	  */
	public void setlbr_TaxStatus (String lbr_TaxStatus);

	/** Get Tax Status.
	  * Defines the Tax Status
	  */
	public String getlbr_TaxStatus();
}
