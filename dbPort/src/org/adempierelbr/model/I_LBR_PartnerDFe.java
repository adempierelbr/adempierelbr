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

/** Generated Interface for LBR_PartnerDFe
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_PartnerDFe 
{

    /** TableName=LBR_PartnerDFe */
    public static final String Table_Name = "LBR_PartnerDFe";

    /** AD_Table_ID=1120461 */
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

    /** Column name BPName */
    public static final String COLUMNNAME_BPName = "BPName";

	/** Set BP Name	  */
	public void setBPName (String BPName);

	/** Get BP Name	  */
	public String getBPName();

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

    /** Column name DocumentNote */
    public static final String COLUMNNAME_DocumentNote = "DocumentNote";

	/** Set Document Note.
	  * Additional information for a Document
	  */
	public void setDocumentNote (String DocumentNote);

	/** Get Document Note.
	  * Additional information for a Document
	  */
	public String getDocumentNote();

    /** Column name DocumentType */
    public static final String COLUMNNAME_DocumentType = "DocumentType";

	/** Set Document Type.
	  * Document Type
	  */
	public void setDocumentType (String DocumentType);

	/** Get Document Type.
	  * Document Type
	  */
	public String getDocumentType();

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

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

    /** Column name IsSOTrx */
    public static final String COLUMNNAME_IsSOTrx = "IsSOTrx";

	/** Set Sales Transaction.
	  * This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx);

	/** Get Sales Transaction.
	  * This is a Sales Transaction
	  */
	public boolean isSOTrx();

    /** Column name LBR_EventType */
    public static final String COLUMNNAME_LBR_EventType = "LBR_EventType";

	/** Set Event Type	  */
	public void setLBR_EventType (String LBR_EventType);

	/** Get Event Type	  */
	public String getLBR_EventType();

    /** Column name LBR_IsManifested */
    public static final String COLUMNNAME_LBR_IsManifested = "LBR_IsManifested";

	/** Set Manifested	  */
	public void setLBR_IsManifested (boolean LBR_IsManifested);

	/** Get Manifested	  */
	public boolean isLBR_IsManifested();

    /** Column name LBR_IsXMLValid */
    public static final String COLUMNNAME_LBR_IsXMLValid = "LBR_IsXMLValid";

	/** Set XML Valid	  */
	public void setLBR_IsXMLValid (boolean LBR_IsXMLValid);

	/** Get XML Valid	  */
	public boolean isLBR_IsXMLValid();

    /** Column name LBR_PartnerDFe_ID */
    public static final String COLUMNNAME_LBR_PartnerDFe_ID = "LBR_PartnerDFe_ID";

	/** Set Partner Doc Fiscal	  */
	public void setLBR_PartnerDFe_ID (int LBR_PartnerDFe_ID);

	/** Get Partner Doc Fiscal	  */
	public int getLBR_PartnerDFe_ID();

    /** Column name LBR_SitNF */
    public static final String COLUMNNAME_LBR_SitNF = "LBR_SitNF";

	/** Set NF Status.
	  * NF Status
	  */
	public void setLBR_SitNF (String LBR_SitNF);

	/** Get NF Status.
	  * NF Status
	  */
	public String getLBR_SitNF();

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

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

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

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_CPF */
    public static final String COLUMNNAME_lbr_CPF = "lbr_CPF";

	/** Set CPF.
	  * Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF);

	/** Get CPF.
	  * Used to identify individuals in Brazil
	  */
	public String getlbr_CPF();

    /** Column name lbr_DigestValue */
    public static final String COLUMNNAME_lbr_DigestValue = "lbr_DigestValue";

	/** Set Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue);

	/** Get Digest Value	  */
	public String getlbr_DigestValue();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_NFeID */
    public static final String COLUMNNAME_lbr_NFeID = "lbr_NFeID";

	/** Set NFe ID.
	  * Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID);

	/** Get NFe ID.
	  * Identification of NFe
	  */
	public String getlbr_NFeID();

    /** Column name lbr_NFeProt */
    public static final String COLUMNNAME_lbr_NFeProt = "lbr_NFeProt";

	/** Set NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt);

	/** Get NFe Protocol	  */
	public String getlbr_NFeProt();
}
