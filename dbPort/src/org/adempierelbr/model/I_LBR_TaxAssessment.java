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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_TaxAssessment
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_TaxAssessment 
{

    /** TableName=LBR_TaxAssessment */
    public static final String Table_Name = "LBR_TaxAssessment";

    /** AD_Table_ID=1120331 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AmtSourceCr */
    public static final String COLUMNNAME_AmtSourceCr = "AmtSourceCr";

	/** Set Source Credit.
	  * Source Credit Amount
	  */
	public void setAmtSourceCr (BigDecimal AmtSourceCr);

	/** Get Source Credit.
	  * Source Credit Amount
	  */
	public BigDecimal getAmtSourceCr();

    /** Column name AmtSourceDr */
    public static final String COLUMNNAME_AmtSourceDr = "AmtSourceDr";

	/** Set Source Debit.
	  * Source Debit Amount
	  */
	public void setAmtSourceDr (BigDecimal AmtSourceDr);

	/** Get Source Debit.
	  * Source Debit Amount
	  */
	public BigDecimal getAmtSourceDr();

    /** Column name booknumber */
    public static final String COLUMNNAME_booknumber = "booknumber";

	/** Set booknumber	  */
	public void setbooknumber (int booknumber);

	/** Get booknumber	  */
	public int getbooknumber();

    /** Column name C_Period_ID */
    public static final String COLUMNNAME_C_Period_ID = "C_Period_ID";

	/** Set Period.
	  * Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID);

	/** Get Period.
	  * Period of the Calendar
	  */
	public int getC_Period_ID();

	public I_C_Period getC_Period() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name CumulatedAmt */
    public static final String COLUMNNAME_CumulatedAmt = "CumulatedAmt";

	/** Set Accumulated Amt.
	  * Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt);

	/** Get Accumulated Amt.
	  * Total Amount
	  */
	public BigDecimal getCumulatedAmt();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_Cod_OR */
    public static final String COLUMNNAME_LBR_Cod_OR = "LBR_Cod_OR";

	/** Set Código da Obrigação	  */
	public void setLBR_Cod_OR (String LBR_Cod_OR);

	/** Get Código da Obrigação	  */
	public String getLBR_Cod_OR();

    /** Column name LBR_Cod_Rec */
    public static final String COLUMNNAME_LBR_Cod_Rec = "LBR_Cod_Rec";

	/** Set Código da Receita	  */
	public void setLBR_Cod_Rec (String LBR_Cod_Rec);

	/** Get Código da Receita	  */
	public String getLBR_Cod_Rec();

    /** Column name LBR_Dt_Vcto */
    public static final String COLUMNNAME_LBR_Dt_Vcto = "LBR_Dt_Vcto";

	/** Set Data do Vencimento	  */
	public void setLBR_Dt_Vcto (Timestamp LBR_Dt_Vcto);

	/** Get Data do Vencimento	  */
	public Timestamp getLBR_Dt_Vcto();

    /** Column name LBR_Ind_Proc */
    public static final String COLUMNNAME_LBR_Ind_Proc = "LBR_Ind_Proc";

	/** Set Origem do Processo	  */
	public void setLBR_Ind_Proc (String LBR_Ind_Proc);

	/** Get Origem do Processo	  */
	public String getLBR_Ind_Proc();

    /** Column name LBR_Num_Proc */
    public static final String COLUMNNAME_LBR_Num_Proc = "LBR_Num_Proc";

	/** Set Número do Processo	  */
	public void setLBR_Num_Proc (String LBR_Num_Proc);

	/** Get Número do Processo	  */
	public String getLBR_Num_Proc();

    /** Column name LBR_Proc */
    public static final String COLUMNNAME_LBR_Proc = "LBR_Proc";

	/** Set Descrição do Processo	  */
	public void setLBR_Proc (String LBR_Proc);

	/** Get Descrição do Processo	  */
	public String getLBR_Proc();

    /** Column name LBR_SaldoCredorTrasnportar */
    public static final String COLUMNNAME_LBR_SaldoCredorTrasnportar = "LBR_SaldoCredorTrasnportar";

	/** Set Saldo Credor Trasnportar	  */
	public void setLBR_SaldoCredorTrasnportar (BigDecimal LBR_SaldoCredorTrasnportar);

	/** Get Saldo Credor Trasnportar	  */
	public BigDecimal getLBR_SaldoCredorTrasnportar();

    /** Column name LBR_TaxAssessment_ID */
    public static final String COLUMNNAME_LBR_TaxAssessment_ID = "LBR_TaxAssessment_ID";

	/** Set Tax Assessment	  */
	public void setLBR_TaxAssessment_ID (int LBR_TaxAssessment_ID);

	/** Get Tax Assessment	  */
	public int getLBR_TaxAssessment_ID();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

    /** Column name LBR_Txt_Compl */
    public static final String COLUMNNAME_LBR_Txt_Compl = "LBR_Txt_Compl";

	/** Set Descrição Complementar	  */
	public void setLBR_Txt_Compl (String LBR_Txt_Compl);

	/** Get Descrição Complementar	  */
	public String getLBR_Txt_Compl();

    /** Column name LBR_VL_OR */
    public static final String COLUMNNAME_LBR_VL_OR = "LBR_VL_OR";

	/** Set Valor à Recolher	  */
	public void setLBR_VL_OR (BigDecimal LBR_VL_OR);

	/** Get Valor à Recolher	  */
	public BigDecimal getLBR_VL_OR();

    /** Column name pagenumber */
    public static final String COLUMNNAME_pagenumber = "pagenumber";

	/** Set pagenumber	  */
	public void setpagenumber (int pagenumber);

	/** Get pagenumber	  */
	public int getpagenumber();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name TotalAmt */
    public static final String COLUMNNAME_TotalAmt = "TotalAmt";

	/** Set Total Amount.
	  * Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt);

	/** Get Total Amount.
	  * Total Amount
	  */
	public BigDecimal getTotalAmt();

    /** Column name TotalCr */
    public static final String COLUMNNAME_TotalCr = "TotalCr";

	/** Set Total Credit.
	  * Total Credit in document currency
	  */
	public void setTotalCr (BigDecimal TotalCr);

	/** Get Total Credit.
	  * Total Credit in document currency
	  */
	public BigDecimal getTotalCr();

    /** Column name TotalDr */
    public static final String COLUMNNAME_TotalDr = "TotalDr";

	/** Set Total Debit.
	  * Total debit in document currency
	  */
	public void setTotalDr (BigDecimal TotalDr);

	/** Get Total Debit.
	  * Total debit in document currency
	  */
	public BigDecimal getTotalDr();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
