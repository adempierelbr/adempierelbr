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

/** Generated Interface for LBR_IBPTax
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_IBPTax 
{

    /** TableName=LBR_IBPTax */
    public static final String Table_Name = "LBR_IBPTax";

    /** AD_Table_ID=1120342 */
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

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public I_C_Region getC_Region() throws RuntimeException;

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

    /** Column name LBR_IBPTax_ID */
    public static final String COLUMNNAME_LBR_IBPTax_ID = "LBR_IBPTax_ID";

	/** Set Tabela de Impostos do IBPT	  */
	public void setLBR_IBPTax_ID (int LBR_IBPTax_ID);

	/** Get Tabela de Impostos do IBPT	  */
	public int getLBR_IBPTax_ID();

    /** Column name LBR_NBS_ID */
    public static final String COLUMNNAME_LBR_NBS_ID = "LBR_NBS_ID";

	/** Set NBS.
	  * Primary key table LBR_NBS
	  */
	public void setLBR_NBS_ID (int LBR_NBS_ID);

	/** Get NBS.
	  * Primary key table LBR_NBS
	  */
	public int getLBR_NBS_ID();

	public org.adempierelbr.model.I_LBR_NBS getLBR_NBS() throws RuntimeException;

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException;

    /** Column name LBR_Source */
    public static final String COLUMNNAME_LBR_Source = "LBR_Source";

	/** Set Source	  */
	public void setLBR_Source (String LBR_Source);

	/** Get Source	  */
	public String getLBR_Source();

    /** Column name lbr_TaxRate */
    public static final String COLUMNNAME_lbr_TaxRate = "lbr_TaxRate";

	/** Set Tax Rate.
	  * Indicates the Tax Rate
	  */
	public void setlbr_TaxRate (BigDecimal lbr_TaxRate);

	/** Get Tax Rate.
	  * Indicates the Tax Rate
	  */
	public BigDecimal getlbr_TaxRate();

    /** Column name LBR_TaxRateCity */
    public static final String COLUMNNAME_LBR_TaxRateCity = "LBR_TaxRateCity";

	/** Set Tax Rate City	  */
	public void setLBR_TaxRateCity (BigDecimal LBR_TaxRateCity);

	/** Get Tax Rate City	  */
	public BigDecimal getLBR_TaxRateCity();

    /** Column name lbr_TaxRateImp */
    public static final String COLUMNNAME_lbr_TaxRateImp = "lbr_TaxRateImp";

	/** Set Tax Rate Imported.
	  * Indicates the Imported Tax Rate 
	  */
	public void setlbr_TaxRateImp (BigDecimal lbr_TaxRateImp);

	/** Get Tax Rate Imported.
	  * Indicates the Imported Tax Rate 
	  */
	public BigDecimal getlbr_TaxRateImp();

    /** Column name LBR_TaxRateRegion */
    public static final String COLUMNNAME_LBR_TaxRateRegion = "LBR_TaxRateRegion";

	/** Set Tax Rate Region	  */
	public void setLBR_TaxRateRegion (BigDecimal LBR_TaxRateRegion);

	/** Get Tax Rate Region	  */
	public BigDecimal getLBR_TaxRateRegion();

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

    /** Column name ValidFrom */
    public static final String COLUMNNAME_ValidFrom = "ValidFrom";

	/** Set Valid from.
	  * Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom);

	/** Get Valid from.
	  * Valid from including this date (first day)
	  */
	public Timestamp getValidFrom();

    /** Column name ValidTo */
    public static final String COLUMNNAME_ValidTo = "ValidTo";

	/** Set Valid to.
	  * Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo);

	/** Get Valid to.
	  * Valid to including this date (last day)
	  */
	public Timestamp getValidTo();

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();

    /** Column name Version */
    public static final String COLUMNNAME_Version = "Version";

	/** Set Version.
	  * Version of the table definition
	  */
	public void setVersion (String Version);

	/** Get Version.
	  * Version of the table definition
	  */
	public String getVersion();
}
