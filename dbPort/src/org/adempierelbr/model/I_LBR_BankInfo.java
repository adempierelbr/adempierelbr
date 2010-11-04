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

/** Generated Interface for LBR_BankInfo
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_BankInfo 
{

    /** TableName=LBR_BankInfo */
    public static final String Table_Name = "LBR_BankInfo";

    /** AD_Table_ID=1000008 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 7 - System - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(7);

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

    /** Column name LBR_Bank_ID */
    public static final String COLUMNNAME_LBR_Bank_ID = "LBR_Bank_ID";

	/** Set Bank.
	  * Primary Key table LBR_Bank
	  */
	public void setLBR_Bank_ID (int LBR_Bank_ID);

	/** Get Bank.
	  * Primary Key table LBR_Bank
	  */
	public int getLBR_Bank_ID();

	public org.adempierelbr.model.I_LBR_Bank getLBR_Bank() throws RuntimeException;

    /** Column name LBR_BankInfo_ID */
    public static final String COLUMNNAME_LBR_BankInfo_ID = "LBR_BankInfo_ID";

	/** Set Bank Info.
	  * Primary key table LBR_BankInfo
	  */
	public void setLBR_BankInfo_ID (int LBR_BankInfo_ID);

	/** Get Bank Info.
	  * Primary key table LBR_BankInfo
	  */
	public int getLBR_BankInfo_ID();

    /** Column name lbr_OccurNo */
    public static final String COLUMNNAME_lbr_OccurNo = "lbr_OccurNo";

	/** Set Occurrence Number.
	  * Defines the Occurrence Number
	  */
	public void setlbr_OccurNo (String lbr_OccurNo);

	/** Get Occurrence Number.
	  * Defines the Occurrence Number
	  */
	public String getlbr_OccurNo();

    /** Column name lbr_OccurType */
    public static final String COLUMNNAME_lbr_OccurType = "lbr_OccurType";

	/** Set Occurrence Type.
	  * Defines the Occurrence Type
	  */
	public void setlbr_OccurType (String lbr_OccurType);

	/** Get Occurrence Type.
	  * Defines the Occurrence Type
	  */
	public String getlbr_OccurType();

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
