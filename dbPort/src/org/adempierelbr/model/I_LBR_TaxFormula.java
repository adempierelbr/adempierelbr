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

/** Generated Interface for LBR_TaxFormula
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_TaxFormula 
{

    /** TableName=LBR_TaxFormula */
    public static final String Table_Name = "LBR_TaxFormula";

    /** AD_Table_ID=1000026 */
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

    /** Column name lbr_Formula */
    public static final String COLUMNNAME_lbr_Formula = "lbr_Formula";

	/** Set Formula.
	  * Defines the Tax Formula
	  */
	public void setlbr_Formula (String lbr_Formula);

	/** Get Formula.
	  * Defines the Tax Formula
	  */
	public String getlbr_Formula();

    /** Column name lbr_FormulaNetWorth */
    public static final String COLUMNNAME_lbr_FormulaNetWorth = "lbr_FormulaNetWorth";

	/** Set Formula NetWorth.
	  * Defines the Tax Formula NetWorth
	  */
	public void setlbr_FormulaNetWorth (String lbr_FormulaNetWorth);

	/** Get Formula NetWorth.
	  * Defines the Tax Formula NetWorth
	  */
	public String getlbr_FormulaNetWorth();

    /** Column name lbr_ServiceFactor */
    public static final String COLUMNNAME_lbr_ServiceFactor = "lbr_ServiceFactor";

	/** Set Service Factor.
	  * Define the Service Factor Formula
	  */
	public void setlbr_ServiceFactor (String lbr_ServiceFactor);

	/** Get Service Factor.
	  * Define the Service Factor Formula
	  */
	public String getlbr_ServiceFactor();

    /** Column name LBR_TaxFormula_ID */
    public static final String COLUMNNAME_LBR_TaxFormula_ID = "LBR_TaxFormula_ID";

	/** Set Tax Formula.
	  * Primary key table LBR_TaxFormula
	  */
	public void setLBR_TaxFormula_ID (int LBR_TaxFormula_ID);

	/** Get Tax Formula.
	  * Primary key table LBR_TaxFormula
	  */
	public int getLBR_TaxFormula_ID();

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
