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

/** Generated Interface for LBR_NFeLot
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_NFeLot 
{

    /** TableName=LBR_NFeLot */
    public static final String Table_Name = "LBR_NFeLot";

    /** AD_Table_ID=1100001 */
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

    /** Column name CreateFrom */
    public static final String COLUMNNAME_CreateFrom = "CreateFrom";

	/** Set Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public void setCreateFrom (String CreateFrom);

	/** Get Create lines from.
	  * Process which will generate a new document lines based on an existing document
	  */
	public String getCreateFrom();

    /** Column name DateFinish */
    public static final String COLUMNNAME_DateFinish = "DateFinish";

	/** Set Finish Date.
	  * Finish or (planned) completion date
	  */
	public void setDateFinish (Timestamp DateFinish);

	/** Get Finish Date.
	  * Finish or (planned) completion date
	  */
	public Timestamp getDateFinish();

    /** Column name DateTrx */
    public static final String COLUMNNAME_DateTrx = "DateTrx";

	/** Set Transaction Date.
	  * Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx);

	/** Get Transaction Date.
	  * Transaction Date
	  */
	public Timestamp getDateTrx();

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

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

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

    /** Column name lbr_LotReceived */
    public static final String COLUMNNAME_lbr_LotReceived = "lbr_LotReceived";

	/** Set Lot Received	  */
	public void setlbr_LotReceived (boolean lbr_LotReceived);

	/** Get Lot Received	  */
	public boolean islbr_LotReceived();

    /** Column name lbr_LotSent */
    public static final String COLUMNNAME_lbr_LotSent = "lbr_LotSent";

	/** Set Lot Sent	  */
	public void setlbr_LotSent (boolean lbr_LotSent);

	/** Get Lot Sent	  */
	public boolean islbr_LotSent();

    /** Column name lbr_NFeAnswerStatus */
    public static final String COLUMNNAME_lbr_NFeAnswerStatus = "lbr_NFeAnswerStatus";

	/** Set NFe Answer Status.
	  * Status of Answer NFe
	  */
	public void setlbr_NFeAnswerStatus (String lbr_NFeAnswerStatus);

	/** Get NFe Answer Status.
	  * Status of Answer NFe
	  */
	public String getlbr_NFeAnswerStatus();

    /** Column name LBR_NFeLot_ID */
    public static final String COLUMNNAME_LBR_NFeLot_ID = "LBR_NFeLot_ID";

	/** Set NFe Lot	  */
	public void setLBR_NFeLot_ID (int LBR_NFeLot_ID);

	/** Get NFe Lot	  */
	public int getLBR_NFeLot_ID();

    /** Column name lbr_NFeRecID */
    public static final String COLUMNNAME_lbr_NFeRecID = "lbr_NFeRecID";

	/** Set Recebimento ID	  */
	public void setlbr_NFeRecID (String lbr_NFeRecID);

	/** Get Recebimento ID	  */
	public String getlbr_NFeRecID();

    /** Column name lbr_NFeRespID */
    public static final String COLUMNNAME_lbr_NFeRespID = "lbr_NFeRespID";

	/** Set Resposta ID	  */
	public void setlbr_NFeRespID (String lbr_NFeRespID);

	/** Get Resposta ID	  */
	public String getlbr_NFeRespID();

    /** Column name lbr_NFeStatus */
    public static final String COLUMNNAME_lbr_NFeStatus = "lbr_NFeStatus";

	/** Set NFe Status.
	  * Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus);

	/** Get NFe Status.
	  * Status of NFe
	  */
	public String getlbr_NFeStatus();

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

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name Processing2 */
    public static final String COLUMNNAME_Processing2 = "Processing2";

	/** Set Process Now	  */
	public void setProcessing2 (String Processing2);

	/** Get Process Now	  */
	public String getProcessing2();

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
