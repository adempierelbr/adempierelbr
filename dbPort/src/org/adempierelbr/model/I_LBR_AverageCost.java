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

/** Generated Interface for LBR_AverageCost
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_AverageCost 
{

    /** TableName=LBR_AverageCost */
    public static final String Table_Name = "LBR_AverageCost";

    /** AD_Table_ID=1120019 */
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

    /** Column name LBR_AverageCost_ID */
    public static final String COLUMNNAME_LBR_AverageCost_ID = "LBR_AverageCost_ID";

	/** Set Average Cost.
	  * Defines the Average Cost
	  */
	public void setLBR_AverageCost_ID (int LBR_AverageCost_ID);

	/** Get Average Cost.
	  * Defines the Average Cost
	  */
	public int getLBR_AverageCost_ID();

    /** Column name lbr_AvgCost_ConfirmMAN */
    public static final String COLUMNNAME_lbr_AvgCost_ConfirmMAN = "lbr_AvgCost_ConfirmMAN";

	/** Set AvgCost - Confirm Manufactured	  */
	public void setlbr_AvgCost_ConfirmMAN (String lbr_AvgCost_ConfirmMAN);

	/** Get AvgCost - Confirm Manufactured	  */
	public String getlbr_AvgCost_ConfirmMAN();

    /** Column name lbr_AvgCost_ConfirmPUR */
    public static final String COLUMNNAME_lbr_AvgCost_ConfirmPUR = "lbr_AvgCost_ConfirmPUR";

	/** Set AvgCost - Confirm Purchased	  */
	public void setlbr_AvgCost_ConfirmPUR (String lbr_AvgCost_ConfirmPUR);

	/** Get AvgCost - Confirm Purchased	  */
	public String getlbr_AvgCost_ConfirmPUR();

    /** Column name lbr_AvgCost_CreateMAN */
    public static final String COLUMNNAME_lbr_AvgCost_CreateMAN = "lbr_AvgCost_CreateMAN";

	/** Set AvgCost - Create Record Manufactured	  */
	public void setlbr_AvgCost_CreateMAN (String lbr_AvgCost_CreateMAN);

	/** Get AvgCost - Create Record Manufactured	  */
	public String getlbr_AvgCost_CreateMAN();

    /** Column name lbr_AvgCost_CreatePUR */
    public static final String COLUMNNAME_lbr_AvgCost_CreatePUR = "lbr_AvgCost_CreatePUR";

	/** Set AvgCost - Create Record Purchased	  */
	public void setlbr_AvgCost_CreatePUR (String lbr_AvgCost_CreatePUR);

	/** Get AvgCost - Create Record Purchased	  */
	public String getlbr_AvgCost_CreatePUR();

    /** Column name lbr_AvgCost_RePostAcct */
    public static final String COLUMNNAME_lbr_AvgCost_RePostAcct = "lbr_AvgCost_RePostAcct";

	/** Set AvgCost - RePost Acct	  */
	public void setlbr_AvgCost_RePostAcct (String lbr_AvgCost_RePostAcct);

	/** Get AvgCost - RePost Acct	  */
	public String getlbr_AvgCost_RePostAcct();

    /** Column name lbr_AvgStep1 */
    public static final String COLUMNNAME_lbr_AvgStep1 = "lbr_AvgStep1";

	/** Set Step 1	  */
	public void setlbr_AvgStep1 (boolean lbr_AvgStep1);

	/** Get Step 1	  */
	public boolean islbr_AvgStep1();

    /** Column name lbr_AvgStep2 */
    public static final String COLUMNNAME_lbr_AvgStep2 = "lbr_AvgStep2";

	/** Set Step 2	  */
	public void setlbr_AvgStep2 (boolean lbr_AvgStep2);

	/** Get Step 2	  */
	public boolean islbr_AvgStep2();

    /** Column name lbr_AvgStep3 */
    public static final String COLUMNNAME_lbr_AvgStep3 = "lbr_AvgStep3";

	/** Set Step 3	  */
	public void setlbr_AvgStep3 (boolean lbr_AvgStep3);

	/** Get Step 3	  */
	public boolean islbr_AvgStep3();

    /** Column name lbr_AvgStep4 */
    public static final String COLUMNNAME_lbr_AvgStep4 = "lbr_AvgStep4";

	/** Set Step 4	  */
	public void setlbr_AvgStep4 (boolean lbr_AvgStep4);

	/** Get Step 4	  */
	public boolean islbr_AvgStep4();

    /** Column name lbr_AvgStep5 */
    public static final String COLUMNNAME_lbr_AvgStep5 = "lbr_AvgStep5";

	/** Set Step 5	  */
	public void setlbr_AvgStep5 (boolean lbr_AvgStep5);

	/** Get Step 5	  */
	public boolean islbr_AvgStep5();

    /** Column name M_CostElement_ID */
    public static final String COLUMNNAME_M_CostElement_ID = "M_CostElement_ID";

	/** Set Cost Element.
	  * Product Cost Element
	  */
	public void setM_CostElement_ID (int M_CostElement_ID);

	/** Get Cost Element.
	  * Product Cost Element
	  */
	public int getM_CostElement_ID();

	public I_M_CostElement getM_CostElement() throws RuntimeException;

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

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
