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

/** Generated Interface for LBR_DocPrint
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_DocPrint 
{

    /** TableName=LBR_DocPrint */
    public static final String Table_Name = "LBR_DocPrint";

    /** AD_Table_ID=1000004 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 4 - System 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(4);

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

    /** Column name lbr_CreateFields */
    public static final String COLUMNNAME_lbr_CreateFields = "lbr_CreateFields";

	/** Set Create Fields.
	  * Processo to Create Document Fields
	  */
	public void setlbr_CreateFields (String lbr_CreateFields);

	/** Get Create Fields.
	  * Processo to Create Document Fields
	  */
	public String getlbr_CreateFields();

    /** Column name LBR_DocPrint_ID */
    public static final String COLUMNNAME_LBR_DocPrint_ID = "LBR_DocPrint_ID";

	/** Set DocPrint.
	  * Primary key table LBR_DocPrint
	  */
	public void setLBR_DocPrint_ID (int LBR_DocPrint_ID);

	/** Get DocPrint.
	  * Primary key table LBR_DocPrint
	  */
	public int getLBR_DocPrint_ID();

    /** Column name lbr_HasSubDoc */
    public static final String COLUMNNAME_lbr_HasSubDoc = "lbr_HasSubDoc";

	/** Set Has SubDoc.
	  * Identifies if the Document has SubDocuments
	  */
	public void setlbr_HasSubDoc (boolean lbr_HasSubDoc);

	/** Get Has SubDoc.
	  * Identifies if the Document has SubDocuments
	  */
	public boolean islbr_HasSubDoc();

    /** Column name lbr_IsSubDoc */
    public static final String COLUMNNAME_lbr_IsSubDoc = "lbr_IsSubDoc";

	/** Set IsSubDoc.
	  * Defines if this Documento is a SubDocument
	  */
	public void setlbr_IsSubDoc (boolean lbr_IsSubDoc);

	/** Get IsSubDoc.
	  * Defines if this Documento is a SubDocument
	  */
	public boolean islbr_IsSubDoc();

    /** Column name LBR_MatrixPrinter_ID */
    public static final String COLUMNNAME_LBR_MatrixPrinter_ID = "LBR_MatrixPrinter_ID";

	/** Set Matrix Printer.
	  * Primary key table LBR_MatrixPrinter
	  */
	public void setLBR_MatrixPrinter_ID (int LBR_MatrixPrinter_ID);

	/** Get Matrix Printer.
	  * Primary key table LBR_MatrixPrinter
	  */
	public int getLBR_MatrixPrinter_ID();

	public org.adempierelbr.model.I_LBR_MatrixPrinter getLBR_MatrixPrinter() throws RuntimeException;

    /** Column name lbr_NoCols */
    public static final String COLUMNNAME_lbr_NoCols = "lbr_NoCols";

	/** Set Number of Columns.
	  * Identifies the Number of Columns
	  */
	public void setlbr_NoCols (int lbr_NoCols);

	/** Get Number of Columns.
	  * Identifies the Number of Columns
	  */
	public int getlbr_NoCols();

    /** Column name lbr_NoRows */
    public static final String COLUMNNAME_lbr_NoRows = "lbr_NoRows";

	/** Set Number of Rows.
	  * Identifies the Number of Rows (If this is a SubDocument, enter 0 for unlimited)
	  */
	public void setlbr_NoRows (int lbr_NoRows);

	/** Get Number of Rows.
	  * Identifies the Number of Rows (If this is a SubDocument, enter 0 for unlimited)
	  */
	public int getlbr_NoRows();

    /** Column name lbr_SubDoc_ID */
    public static final String COLUMNNAME_lbr_SubDoc_ID = "lbr_SubDoc_ID";

	/** Set SubDoc_ID.
	  * Identifies the ID of the SubDocument
	  */
	public void setlbr_SubDoc_ID (int lbr_SubDoc_ID);

	/** Get SubDoc_ID.
	  * Identifies the ID of the SubDocument
	  */
	public int getlbr_SubDoc_ID();

	public org.adempierelbr.model.I_LBR_DocPrint getlbr_SubDoc() throws RuntimeException;

    /** Column name lbr_SubDocRow */
    public static final String COLUMNNAME_lbr_SubDocRow = "lbr_SubDocRow";

	/** Set SubDoc Row.
	  * Identifies the Starter Row of the SubDocument
	  */
	public void setlbr_SubDocRow (int lbr_SubDocRow);

	/** Get SubDoc Row.
	  * Identifies the Starter Row of the SubDocument
	  */
	public int getlbr_SubDocRow();

    /** Column name lbr_SubDoc2_ID */
    public static final String COLUMNNAME_lbr_SubDoc2_ID = "lbr_SubDoc2_ID";

	/** Set SubDoc_ID (2).
	  * Identifies the ID of the SubDocument
	  */
	public void setlbr_SubDoc2_ID (int lbr_SubDoc2_ID);

	/** Get SubDoc_ID (2).
	  * Identifies the ID of the SubDocument
	  */
	public int getlbr_SubDoc2_ID();

	public org.adempierelbr.model.I_LBR_DocPrint getlbr_SubDoc2() throws RuntimeException;

    /** Column name lbr_TableName */
    public static final String COLUMNNAME_lbr_TableName = "lbr_TableName";

	/** Set Table Name.
	  * Identifies the Table or View Name
	  */
	public void setlbr_TableName (String lbr_TableName);

	/** Get Table Name.
	  * Identifies the Table or View Name
	  */
	public String getlbr_TableName();

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
}
