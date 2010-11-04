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

/** Generated Interface for LBR_MatrixPrinter
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_MatrixPrinter 
{

    /** TableName=LBR_MatrixPrinter */
    public static final String Table_Name = "LBR_MatrixPrinter";

    /** AD_Table_ID=1000030 */
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

    /** Column name IsDefault */
    public static final String COLUMNNAME_IsDefault = "IsDefault";

	/** Set Default.
	  * Default value
	  */
	public void setIsDefault (boolean IsDefault);

	/** Get Default.
	  * Default value
	  */
	public boolean isDefault();

    /** Column name lbr_Characterset */
    public static final String COLUMNNAME_lbr_Characterset = "lbr_Characterset";

	/** Set Characterset.
	  * Defines the Characterset
	  */
	public void setlbr_Characterset (String lbr_Characterset);

	/** Get Characterset.
	  * Defines the Characterset
	  */
	public String getlbr_Characterset();

    /** Column name lbr_Interspace */
    public static final String COLUMNNAME_lbr_Interspace = "lbr_Interspace";

	/** Set Interspace.
	  * Defines the Interspace
	  */
	public void setlbr_Interspace (String lbr_Interspace);

	/** Get Interspace.
	  * Defines the Interspace
	  */
	public String getlbr_Interspace();

    /** Column name lbr_IsCondensed */
    public static final String COLUMNNAME_lbr_IsCondensed = "lbr_IsCondensed";

	/** Set Is Condensed.
	  * Defines if Character is Condensed
	  */
	public void setlbr_IsCondensed (boolean lbr_IsCondensed);

	/** Get Is Condensed.
	  * Defines if Character is Condensed
	  */
	public boolean islbr_IsCondensed();

    /** Column name lbr_IsUnixPrinter */
    public static final String COLUMNNAME_lbr_IsUnixPrinter = "lbr_IsUnixPrinter";

	/** Set Is UnixPrinter.
	  * Define if this is an Unix Printer
	  */
	public void setlbr_IsUnixPrinter (boolean lbr_IsUnixPrinter);

	/** Get Is UnixPrinter.
	  * Define if this is an Unix Printer
	  */
	public boolean islbr_IsUnixPrinter();

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

    /** Column name lbr_Pitch */
    public static final String COLUMNNAME_lbr_Pitch = "lbr_Pitch";

	/** Set Pitch.
	  * Defines the Printer Pitch
	  */
	public void setlbr_Pitch (int lbr_Pitch);

	/** Get Pitch.
	  * Defines the Printer Pitch
	  */
	public int getlbr_Pitch();

    /** Column name lbr_PrinterPath */
    public static final String COLUMNNAME_lbr_PrinterPath = "lbr_PrinterPath";

	/** Set Printer Path.
	  * Defines the Printer Path
	  */
	public void setlbr_PrinterPath (String lbr_PrinterPath);

	/** Get Printer Path.
	  * Defines the Printer Path
	  */
	public String getlbr_PrinterPath();

    /** Column name lbr_PrinterType */
    public static final String COLUMNNAME_lbr_PrinterType = "lbr_PrinterType";

	/** Set Printer Type.
	  * Defines the Printer Type
	  */
	public void setlbr_PrinterType (String lbr_PrinterType);

	/** Get Printer Type.
	  * Defines the Printer Type
	  */
	public String getlbr_PrinterType();

    /** Column name lbr_UnixPrinterName */
    public static final String COLUMNNAME_lbr_UnixPrinterName = "lbr_UnixPrinterName";

	/** Set Unix PrinterName.
	  * Defines the Unix PrinterName
	  */
	public void setlbr_UnixPrinterName (String lbr_UnixPrinterName);

	/** Get Unix PrinterName.
	  * Defines the Unix PrinterName
	  */
	public String getlbr_UnixPrinterName();

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
