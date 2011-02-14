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

/** Generated Interface for LBR_DE
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_DE 
{

    /** TableName=LBR_DE */
    public static final String Table_Name = "LBR_DE";

    /** AD_Table_ID=1120014 */
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

    /** Column name C_Country_ID */
    public static final String COLUMNNAME_C_Country_ID = "C_Country_ID";

	/** Set Country.
	  * Country 
	  */
	public void setC_Country_ID (int C_Country_ID);

	/** Get Country.
	  * Country 
	  */
	public int getC_Country_ID();

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

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

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

    /** Column name lbr_CHCEmb */
    public static final String COLUMNNAME_lbr_CHCEmb = "lbr_CHCEmb";

	/** Set No. Conhecimento de Embarque.
	  * Número do Conhecimento de Embarque
	  */
	public void setlbr_CHCEmb (String lbr_CHCEmb);

	/** Get No. Conhecimento de Embarque.
	  * Número do Conhecimento de Embarque
	  */
	public String getlbr_CHCEmb();

    /** Column name lbr_CHCType */
    public static final String COLUMNNAME_lbr_CHCType = "lbr_CHCType";

	/** Set Tipo Conhecimento de Transporte.
	  * Define o Tipo de Conhecimento de Transporte
	  */
	public void setlbr_CHCType (String lbr_CHCType);

	/** Get Tipo Conhecimento de Transporte.
	  * Define o Tipo de Conhecimento de Transporte
	  */
	public String getlbr_CHCType();

    /** Column name lbr_DateCHCEmb */
    public static final String COLUMNNAME_lbr_DateCHCEmb = "lbr_DateCHCEmb";

	/** Set Data Conhecimento de Embarque.
	  * Data do Conhecimento de Embarque
	  */
	public void setlbr_DateCHCEmb (Timestamp lbr_DateCHCEmb);

	/** Get Data Conhecimento de Embarque.
	  * Data do Conhecimento de Embarque
	  */
	public Timestamp getlbr_DateCHCEmb();

    /** Column name lbr_DateRE */
    public static final String COLUMNNAME_lbr_DateRE = "lbr_DateRE";

	/** Set Data RE.
	  * Data do Registro de Exportação
	  */
	public void setlbr_DateRE (Timestamp lbr_DateRE);

	/** Get Data RE.
	  * Data do Registro de Exportação
	  */
	public Timestamp getlbr_DateRE();

    /** Column name lbr_DE */
    public static final String COLUMNNAME_lbr_DE = "lbr_DE";

	/** Set DE.
	  * Número do Documento de Exportação
	  */
	public void setlbr_DE (String lbr_DE);

	/** Get DE.
	  * Número do Documento de Exportação
	  */
	public String getlbr_DE();

    /** Column name LBR_DE_ID */
    public static final String COLUMNNAME_LBR_DE_ID = "LBR_DE_ID";

	/** Set DE	  */
	public void setLBR_DE_ID (int LBR_DE_ID);

	/** Get DE	  */
	public int getLBR_DE_ID();

    /** Column name lbr_RE */
    public static final String COLUMNNAME_lbr_RE = "lbr_RE";

	/** Set No. RE.
	  * No. do Registro de Exportação
	  */
	public void setlbr_RE (String lbr_RE);

	/** Get No. RE.
	  * No. do Registro de Exportação
	  */
	public String getlbr_RE();

    /** Column name Type */
    public static final String COLUMNNAME_Type = "Type";

	/** Set Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type);

	/** Get Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType();

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
