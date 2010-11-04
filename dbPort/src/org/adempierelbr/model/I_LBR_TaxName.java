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

/** Generated Interface for LBR_TaxName
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_TaxName 
{

    /** TableName=LBR_TaxName */
    public static final String Table_Name = "LBR_TaxName";

    /** AD_Table_ID=1000025 */
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

    /** Column name HasWithHold */
    public static final String COLUMNNAME_HasWithHold = "HasWithHold";

	/** Set Has WithHold.
	  * Defines if the Tax, has WithHold
	  */
	public void setHasWithHold (boolean HasWithHold);

	/** Get Has WithHold.
	  * Defines if the Tax, has WithHold
	  */
	public boolean isHasWithHold();

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

    /** Column name LBR_TaxSubstitution_ID */
    public static final String COLUMNNAME_LBR_TaxSubstitution_ID = "LBR_TaxSubstitution_ID";

	/** Set Tax Substitution.
	  * Defines the Tax Substitution
	  */
	public void setLBR_TaxSubstitution_ID (int LBR_TaxSubstitution_ID);

	/** Get Tax Substitution.
	  * Defines the Tax Substitution
	  */
	public int getLBR_TaxSubstitution_ID();

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxSubstitution() throws RuntimeException;

    /** Column name lbr_TaxType */
    public static final String COLUMNNAME_lbr_TaxType = "lbr_TaxType";

	/** Set Tax Type.
	  * Define the Tax Type
	  */
	public void setlbr_TaxType (String lbr_TaxType);

	/** Get Tax Type.
	  * Define the Tax Type
	  */
	public String getlbr_TaxType();

    /** Column name lbr_WithholdFrequency */
    public static final String COLUMNNAME_lbr_WithholdFrequency = "lbr_WithholdFrequency";

	/** Set Withhold Frequency.
	  * Defines the Withhold Frequency
	  */
	public void setlbr_WithholdFrequency (String lbr_WithholdFrequency);

	/** Get Withhold Frequency.
	  * Defines the Withhold Frequency
	  */
	public String getlbr_WithholdFrequency();

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

    /** Column name WithHoldThreshold */
    public static final String COLUMNNAME_WithHoldThreshold = "WithHoldThreshold";

	/** Set WithHold Threshold.
	  * Defines the WithHold Threshold 
	  */
	public void setWithHoldThreshold (BigDecimal WithHoldThreshold);

	/** Get WithHold Threshold.
	  * Defines the WithHold Threshold 
	  */
	public BigDecimal getWithHoldThreshold();
}
