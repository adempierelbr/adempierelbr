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

/** Generated Interface for LBR_DocPrintField
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_DocPrintField 
{

    /** TableName=LBR_DocPrintField */
    public static final String Table_Name = "LBR_DocPrintField";

    /** AD_Table_ID=1000005 */
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

    /** Column name Comments */
    public static final String COLUMNNAME_Comments = "Comments";

	/** Set Comments.
	  * Comments or additional information
	  */
	public void setComments (String Comments);

	/** Get Comments.
	  * Comments or additional information
	  */
	public String getComments();

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

    /** Column name lbr_ColumnNo */
    public static final String COLUMNNAME_lbr_ColumnNo = "lbr_ColumnNo";

	/** Set Column Number.
	  * Defines the X Position
	  */
	public void setlbr_ColumnNo (int lbr_ColumnNo);

	/** Get Column Number.
	  * Defines the X Position
	  */
	public int getlbr_ColumnNo();

    /** Column name LBR_DocPrintField_ID */
    public static final String COLUMNNAME_LBR_DocPrintField_ID = "LBR_DocPrintField_ID";

	/** Set DocPrint Field.
	  * Primary key table LBR_DocPrintField
	  */
	public void setLBR_DocPrintField_ID (int LBR_DocPrintField_ID);

	/** Get DocPrint Field.
	  * Primary key table LBR_DocPrintField
	  */
	public int getLBR_DocPrintField_ID();

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

	public org.adempierelbr.model.I_LBR_DocPrint getLBR_DocPrint() throws RuntimeException;

    /** Column name lbr_FieldAlignment */
    public static final String COLUMNNAME_lbr_FieldAlignment = "lbr_FieldAlignment";

	/** Set Field Alignment.
	  * Defines the Field Alignment
	  */
	public void setlbr_FieldAlignment (String lbr_FieldAlignment);

	/** Get Field Alignment.
	  * Defines the Field Alignment
	  */
	public String getlbr_FieldAlignment();

    /** Column name lbr_FieldLength */
    public static final String COLUMNNAME_lbr_FieldLength = "lbr_FieldLength";

	/** Set Field Length.
	  * Defines the Field Length
	  */
	public void setlbr_FieldLength (int lbr_FieldLength);

	/** Get Field Length.
	  * Defines the Field Length
	  */
	public int getlbr_FieldLength();

    /** Column name lbr_IsHeader */
    public static final String COLUMNNAME_lbr_IsHeader = "lbr_IsHeader";

	/** Set IsHeader.
	  * Identifies if this is a Header Information (all pages prints column)
	  */
	public void setlbr_IsHeader (boolean lbr_IsHeader);

	/** Get IsHeader.
	  * Identifies if this is a Header Information (all pages prints column)
	  */
	public boolean islbr_IsHeader();

    /** Column name lbr_OtherRow */
    public static final String COLUMNNAME_lbr_OtherRow = "lbr_OtherRow";

	/** Set Other Row.
	  * Defines if this field uses another row or truncate
	  */
	public void setlbr_OtherRow (boolean lbr_OtherRow);

	/** Get Other Row.
	  * Defines if this field uses another row or truncate
	  */
	public boolean islbr_OtherRow();

    /** Column name lbr_PrintFormat */
    public static final String COLUMNNAME_lbr_PrintFormat = "lbr_PrintFormat";

	/** Set Print Format.
	  * Defines the Print Format Type
	  */
	public void setlbr_PrintFormat (String lbr_PrintFormat);

	/** Get Print Format.
	  * Defines the Print Format Type
	  */
	public String getlbr_PrintFormat();

    /** Column name lbr_RowNo */
    public static final String COLUMNNAME_lbr_RowNo = "lbr_RowNo";

	/** Set Row Number.
	  * Defines the Y Position
	  */
	public void setlbr_RowNo (int lbr_RowNo);

	/** Get Row Number.
	  * Defines the Y Position
	  */
	public int getlbr_RowNo();

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
