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

/** Generated Interface for LBR_BSSetup
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_BSSetup 
{

    /** TableName=LBR_BSSetup */
    public static final String Table_Name = "LBR_BSSetup";

    /** AD_Table_ID=1120556 */
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

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

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

    /** Column name IsOverUnderPayment */
    public static final String COLUMNNAME_IsOverUnderPayment = "IsOverUnderPayment";

	/** Set Over/Under Payment.
	  * Over-Payment (unallocated) or Under-Payment (partial payment)
	  */
	public void setIsOverUnderPayment (boolean IsOverUnderPayment);

	/** Get Over/Under Payment.
	  * Over-Payment (unallocated) or Under-Payment (partial payment)
	  */
	public boolean isOverUnderPayment();

    /** Column name LBR_BSMatcherType */
    public static final String COLUMNNAME_LBR_BSMatcherType = "LBR_BSMatcherType";

	/** Set Matcher Type	  */
	public void setLBR_BSMatcherType (String LBR_BSMatcherType);

	/** Get Matcher Type	  */
	public String getLBR_BSMatcherType();

    /** Column name LBR_BSSetup_ID */
    public static final String COLUMNNAME_LBR_BSSetup_ID = "LBR_BSSetup_ID";

	/** Set Bank Statement Setup	  */
	public void setLBR_BSSetup_ID (int LBR_BSSetup_ID);

	/** Get Bank Statement Setup	  */
	public int getLBR_BSSetup_ID();

    /** Column name Period_OpenFuture */
    public static final String COLUMNNAME_Period_OpenFuture = "Period_OpenFuture";

	/** Set Future Days.
	  * Number of days to be able to post to a future date (based on system date)
	  */
	public void setPeriod_OpenFuture (BigDecimal Period_OpenFuture);

	/** Get Future Days.
	  * Number of days to be able to post to a future date (based on system date)
	  */
	public BigDecimal getPeriod_OpenFuture();

    /** Column name Period_OpenHistory */
    public static final String COLUMNNAME_Period_OpenHistory = "Period_OpenHistory";

	/** Set History Days.
	  * Number of days to be able to post in the past (based on system date)
	  */
	public void setPeriod_OpenHistory (BigDecimal Period_OpenHistory);

	/** Get History Days.
	  * Number of days to be able to post in the past (based on system date)
	  */
	public BigDecimal getPeriod_OpenHistory();

    /** Column name PriceMatchDifference */
    public static final String COLUMNNAME_PriceMatchDifference = "PriceMatchDifference";

	/** Set Price Match Difference.
	  * Difference between Purchase and Invoice Price per matched line
	  */
	public void setPriceMatchDifference (BigDecimal PriceMatchDifference);

	/** Get Price Match Difference.
	  * Difference between Purchase and Invoice Price per matched line
	  */
	public BigDecimal getPriceMatchDifference();

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
