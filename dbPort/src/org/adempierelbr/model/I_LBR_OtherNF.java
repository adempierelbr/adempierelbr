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

/** Generated Interface for LBR_OtherNF
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_OtherNF 
{

    /** TableName=LBR_OtherNF */
    public static final String Table_Name = "LBR_OtherNF";

    /** AD_Table_ID=1000039 */
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

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public I_C_DocType getC_DocType() throws RuntimeException;

    /** Column name C_DocTypeTarget_ID */
    public static final String COLUMNNAME_C_DocTypeTarget_ID = "C_DocTypeTarget_ID";

	/** Set Target Document Type.
	  * Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID);

	/** Get Target Document Type.
	  * Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID();

	public I_C_DocType getC_DocTypeTarget() throws RuntimeException;

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

    /** Column name IsGenerated */
    public static final String COLUMNNAME_IsGenerated = "IsGenerated";

	/** Set Generated.
	  * This Line is generated
	  */
	public void setIsGenerated (boolean IsGenerated);

	/** Get Generated.
	  * This Line is generated
	  */
	public boolean isGenerated();

    /** Column name lbr_GenerateOtherNF */
    public static final String COLUMNNAME_lbr_GenerateOtherNF = "lbr_GenerateOtherNF";

	/** Set Generate.
	  * Generate
	  */
	public void setlbr_GenerateOtherNF (String lbr_GenerateOtherNF);

	/** Get Generate.
	  * Generate
	  */
	public String getlbr_GenerateOtherNF();

    /** Column name LBR_OtherNF_ID */
    public static final String COLUMNNAME_LBR_OtherNF_ID = "LBR_OtherNF_ID";

	/** Set Other NF.
	  * Other NF
	  */
	public void setLBR_OtherNF_ID (int LBR_OtherNF_ID);

	/** Get Other NF.
	  * Other NF
	  */
	public int getLBR_OtherNF_ID();

    /** Column name lbr_OtherNF_RequestType */
    public static final String COLUMNNAME_lbr_OtherNF_RequestType = "lbr_OtherNF_RequestType";

	/** Set Other NF Request Type.
	  * Type of request for the Other NF Process
	  */
	public void setlbr_OtherNF_RequestType (String lbr_OtherNF_RequestType);

	/** Get Other NF Request Type.
	  * Type of request for the Other NF Process
	  */
	public String getlbr_OtherNF_RequestType();

    /** Column name lbr_ProcessOtherNF */
    public static final String COLUMNNAME_lbr_ProcessOtherNF = "lbr_ProcessOtherNF";

	/** Set Process.
	  * Process now
	  */
	public void setlbr_ProcessOtherNF (String lbr_ProcessOtherNF);

	/** Get Process.
	  * Process now
	  */
	public String getlbr_ProcessOtherNF();

    /** Column name lbr_VoidOtherNF */
    public static final String COLUMNNAME_lbr_VoidOtherNF = "lbr_VoidOtherNF";

	/** Set Void.
	  * Void Other NF
	  */
	public void setlbr_VoidOtherNF (String lbr_VoidOtherNF);

	/** Get Void.
	  * Void Other NF
	  */
	public String getlbr_VoidOtherNF();

    /** Column name M_Warehouse_ID */
    public static final String COLUMNNAME_M_Warehouse_ID = "M_Warehouse_ID";

	/** Set Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID);

	/** Get Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID();

	public I_M_Warehouse getM_Warehouse() throws RuntimeException;

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
