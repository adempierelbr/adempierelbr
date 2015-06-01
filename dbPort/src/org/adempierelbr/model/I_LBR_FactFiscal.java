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

/** Generated Interface for LBR_FactFiscal
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_FactFiscal 
{

    /** TableName=LBR_FactFiscal */
    public static final String Table_Name = "LBR_FactFiscal";

    /** AD_Table_ID=2000058 */
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

    /** Column name BPCityCode */
    public static final String COLUMNNAME_BPCityCode = "BPCityCode";

	/** Set Cod. Cidade do PN 	  */
	public void setBPCityCode (int BPCityCode);

	/** Get Cod. Cidade do PN 	  */
	public int getBPCityCode();

    /** Column name BPCountryCode */
    public static final String COLUMNNAME_BPCountryCode = "BPCountryCode";

	/** Set Código do País do PN	  */
	public void setBPCountryCode (int BPCountryCode);

	/** Get Código do País do PN	  */
	public int getBPCountryCode();

    /** Column name BPName */
    public static final String COLUMNNAME_BPName = "BPName";

	/** Set BP Name	  */
	public void setBPName (String BPName);

	/** Get BP Name	  */
	public String getBPName();

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

    /** Column name C_BPartner_Location_ID */
    public static final String COLUMNNAME_C_BPartner_Location_ID = "C_BPartner_Location_ID";

	/** Set Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID);

	/** Get Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID();

	public I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException;

    /** Column name C_Invoice_ID */
    public static final String COLUMNNAME_C_Invoice_ID = "C_Invoice_ID";

	/** Set Invoice.
	  * Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID);

	/** Get Invoice.
	  * Invoice Identifier
	  */
	public int getC_Invoice_ID();

	public I_C_Invoice getC_Invoice() throws RuntimeException;

    /** Column name COFINS_NFTaxAmt */
    public static final String COLUMNNAME_COFINS_NFTaxAmt = "COFINS_NFTaxAmt";

	/** Set Total de Cofins da NF	  */
	public void setCOFINS_NFTaxAmt (BigDecimal COFINS_NFTaxAmt);

	/** Get Total de Cofins da NF	  */
	public BigDecimal getCOFINS_NFTaxAmt();

    /** Column name COFINS_TaxAmt */
    public static final String COLUMNNAME_COFINS_TaxAmt = "COFINS_TaxAmt";

	/** Set Valor do COFINS	  */
	public void setCOFINS_TaxAmt (BigDecimal COFINS_TaxAmt);

	/** Get Valor do COFINS	  */
	public BigDecimal getCOFINS_TaxAmt();

    /** Column name COFINS_TaxBase */
    public static final String COLUMNNAME_COFINS_TaxBase = "COFINS_TaxBase";

	/** Set Red. Base de Cálculo do COFINS	  */
	public void setCOFINS_TaxBase (BigDecimal COFINS_TaxBase);

	/** Get Red. Base de Cálculo do COFINS	  */
	public BigDecimal getCOFINS_TaxBase();

    /** Column name COFINS_TaxBaseAmt */
    public static final String COLUMNNAME_COFINS_TaxBaseAmt = "COFINS_TaxBaseAmt";

	/** Set Vlr. BC COFINS	  */
	public void setCOFINS_TaxBaseAmt (BigDecimal COFINS_TaxBaseAmt);

	/** Get Vlr. BC COFINS	  */
	public BigDecimal getCOFINS_TaxBaseAmt();

    /** Column name COFINS_TaxRate */
    public static final String COLUMNNAME_COFINS_TaxRate = "COFINS_TaxRate";

	/** Set Alíq. Cofins	  */
	public void setCOFINS_TaxRate (BigDecimal COFINS_TaxRate);

	/** Get Alíq. Cofins	  */
	public BigDecimal getCOFINS_TaxRate();

    /** Column name COFINS_TaxStatus */
    public static final String COLUMNNAME_COFINS_TaxStatus = "COFINS_TaxStatus";

	/** Set CST Cofins	  */
	public void setCOFINS_TaxStatus (String COFINS_TaxStatus);

	/** Get CST Cofins	  */
	public String getCOFINS_TaxStatus();

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Order.
	  * Order
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Order.
	  * Order
	  */
	public int getC_Order_ID();

	public I_C_Order getC_Order() throws RuntimeException;

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

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public I_C_UOM getC_UOM() throws RuntimeException;

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

    /** Column name DiscountAmt */
    public static final String COLUMNNAME_DiscountAmt = "DiscountAmt";

	/** Set Discount Amount.
	  * Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt);

	/** Get Discount Amount.
	  * Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt();

    /** Column name DocBaseTypeBR */
    public static final String COLUMNNAME_DocBaseTypeBR = "DocBaseTypeBR";

	/** Set Sub Classificação do Documento	  */
	public void setDocBaseTypeBR (String DocBaseTypeBR);

	/** Get Sub Classificação do Documento	  */
	public String getDocBaseTypeBR();

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

    /** Column name EMail */
    public static final String COLUMNNAME_EMail = "EMail";

	/** Set EMail Address.
	  * Electronic Mail Address
	  */
	public void setEMail (String EMail);

	/** Get EMail Address.
	  * Electronic Mail Address
	  */
	public String getEMail();

    /** Column name FreightAmt */
    public static final String COLUMNNAME_FreightAmt = "FreightAmt";

	/** Set Freight Amount.
	  * Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt);

	/** Get Freight Amount.
	  * Freight Amount 
	  */
	public BigDecimal getFreightAmt();

    /** Column name FreightCostRule */
    public static final String COLUMNNAME_FreightCostRule = "FreightCostRule";

	/** Set Freight Cost Rule.
	  * Method for charging Freight
	  */
	public void setFreightCostRule (String FreightCostRule);

	/** Get Freight Cost Rule.
	  * Method for charging Freight
	  */
	public String getFreightCostRule();

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

    /** Column name ICMS_NFTaxAmt */
    public static final String COLUMNNAME_ICMS_NFTaxAmt = "ICMS_NFTaxAmt";

	/** Set Total de ICMS da NF	  */
	public void setICMS_NFTaxAmt (BigDecimal ICMS_NFTaxAmt);

	/** Get Total de ICMS da NF	  */
	public BigDecimal getICMS_NFTaxAmt();

    /** Column name ICMS_NFTaxBaseAmt */
    public static final String COLUMNNAME_ICMS_NFTaxBaseAmt = "ICMS_NFTaxBaseAmt";

	/** Set Tot da BC do ICMS	  */
	public void setICMS_NFTaxBaseAmt (BigDecimal ICMS_NFTaxBaseAmt);

	/** Get Tot da BC do ICMS	  */
	public BigDecimal getICMS_NFTaxBaseAmt();

    /** Column name ICMSST_NFTaxAmt */
    public static final String COLUMNNAME_ICMSST_NFTaxAmt = "ICMSST_NFTaxAmt";

	/** Set Total de ICMSST da NF	  */
	public void setICMSST_NFTaxAmt (BigDecimal ICMSST_NFTaxAmt);

	/** Get Total de ICMSST da NF	  */
	public BigDecimal getICMSST_NFTaxAmt();

    /** Column name ICMSST_NFTaxBaseAmt */
    public static final String COLUMNNAME_ICMSST_NFTaxBaseAmt = "ICMSST_NFTaxBaseAmt";

	/** Set Total da BC ICMSST da NF	  */
	public void setICMSST_NFTaxBaseAmt (BigDecimal ICMSST_NFTaxBaseAmt);

	/** Get Total da BC ICMSST da NF	  */
	public BigDecimal getICMSST_NFTaxBaseAmt();

    /** Column name ICMSST_TaxAmt */
    public static final String COLUMNNAME_ICMSST_TaxAmt = "ICMSST_TaxAmt";

	/** Set Valor do ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt);

	/** Get Valor do ICMSST	  */
	public BigDecimal getICMSST_TaxAmt();

    /** Column name ICMSST_TaxBase */
    public static final String COLUMNNAME_ICMSST_TaxBase = "ICMSST_TaxBase";

	/** Set Red. da BC do ICMSST	  */
	public void setICMSST_TaxBase (BigDecimal ICMSST_TaxBase);

	/** Get Red. da BC do ICMSST	  */
	public BigDecimal getICMSST_TaxBase();

    /** Column name ICMSST_TaxBaseAmt */
    public static final String COLUMNNAME_ICMSST_TaxBaseAmt = "ICMSST_TaxBaseAmt";

	/** Set Total da BC ICMSST	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt);

	/** Get Total da BC ICMSST	  */
	public BigDecimal getICMSST_TaxBaseAmt();

    /** Column name ICMSST_TaxRate */
    public static final String COLUMNNAME_ICMSST_TaxRate = "ICMSST_TaxRate";

	/** Set Alíq. do ICMSST	  */
	public void setICMSST_TaxRate (BigDecimal ICMSST_TaxRate);

	/** Get Alíq. do ICMSST	  */
	public BigDecimal getICMSST_TaxRate();

    /** Column name ICMSST_TaxStatus */
    public static final String COLUMNNAME_ICMSST_TaxStatus = "ICMSST_TaxStatus";

	/** Set CST do ICMSST	  */
	public void setICMSST_TaxStatus (String ICMSST_TaxStatus);

	/** Get CST do ICMSST	  */
	public String getICMSST_TaxStatus();

    /** Column name ICMS_TaxAmt */
    public static final String COLUMNNAME_ICMS_TaxAmt = "ICMS_TaxAmt";

	/** Set Valor do ICMS	  */
	public void setICMS_TaxAmt (BigDecimal ICMS_TaxAmt);

	/** Get Valor do ICMS	  */
	public BigDecimal getICMS_TaxAmt();

    /** Column name ICMS_TaxBase */
    public static final String COLUMNNAME_ICMS_TaxBase = "ICMS_TaxBase";

	/** Set Red. BC ICMS	  */
	public void setICMS_TaxBase (BigDecimal ICMS_TaxBase);

	/** Get Red. BC ICMS	  */
	public BigDecimal getICMS_TaxBase();

    /** Column name ICMS_TaxBaseAmt */
    public static final String COLUMNNAME_ICMS_TaxBaseAmt = "ICMS_TaxBaseAmt";

	/** Set Vlr. BC ICMS	  */
	public void setICMS_TaxBaseAmt (BigDecimal ICMS_TaxBaseAmt);

	/** Get Vlr. BC ICMS	  */
	public BigDecimal getICMS_TaxBaseAmt();

    /** Column name ICMS_TaxRate */
    public static final String COLUMNNAME_ICMS_TaxRate = "ICMS_TaxRate";

	/** Set Aliquota ICMS	  */
	public void setICMS_TaxRate (BigDecimal ICMS_TaxRate);

	/** Get Aliquota ICMS	  */
	public BigDecimal getICMS_TaxRate();

    /** Column name ICMS_TaxStatus */
    public static final String COLUMNNAME_ICMS_TaxStatus = "ICMS_TaxStatus";

	/** Set CST do ICMS	  */
	public void setICMS_TaxStatus (String ICMS_TaxStatus);

	/** Get CST do ICMS	  */
	public String getICMS_TaxStatus();

    /** Column name II_TaxAmt */
    public static final String COLUMNNAME_II_TaxAmt = "II_TaxAmt";

	/** Set Valor do II	  */
	public void setII_TaxAmt (BigDecimal II_TaxAmt);

	/** Get Valor do II	  */
	public BigDecimal getII_TaxAmt();

    /** Column name II_TaxBaseAmt */
    public static final String COLUMNNAME_II_TaxBaseAmt = "II_TaxBaseAmt";

	/** Set Vlr. da BC do II	  */
	public void setII_TaxBaseAmt (BigDecimal II_TaxBaseAmt);

	/** Get Vlr. da BC do II	  */
	public BigDecimal getII_TaxBaseAmt();

    /** Column name II_TaxRate */
    public static final String COLUMNNAME_II_TaxRate = "II_TaxRate";

	/** Set Alíq. do II	  */
	public void setII_TaxRate (BigDecimal II_TaxRate);

	/** Get Alíq. do II	  */
	public BigDecimal getII_TaxRate();

    /** Column name IPI_NFTaxAmt */
    public static final String COLUMNNAME_IPI_NFTaxAmt = "IPI_NFTaxAmt";

	/** Set Total de IPI da NF	  */
	public void setIPI_NFTaxAmt (BigDecimal IPI_NFTaxAmt);

	/** Get Total de IPI da NF	  */
	public BigDecimal getIPI_NFTaxAmt();

    /** Column name IPI_TaxAmt */
    public static final String COLUMNNAME_IPI_TaxAmt = "IPI_TaxAmt";

	/** Set Valor do IPI	  */
	public void setIPI_TaxAmt (BigDecimal IPI_TaxAmt);

	/** Get Valor do IPI	  */
	public BigDecimal getIPI_TaxAmt();

    /** Column name IPI_TaxBaseAmt */
    public static final String COLUMNNAME_IPI_TaxBaseAmt = "IPI_TaxBaseAmt";

	/** Set Vlr da BC do IPI	  */
	public void setIPI_TaxBaseAmt (BigDecimal IPI_TaxBaseAmt);

	/** Get Vlr da BC do IPI	  */
	public BigDecimal getIPI_TaxBaseAmt();

    /** Column name IPI_TaxRate */
    public static final String COLUMNNAME_IPI_TaxRate = "IPI_TaxRate";

	/** Set Alíq. do IPI	  */
	public void setIPI_TaxRate (BigDecimal IPI_TaxRate);

	/** Get Alíq. do IPI	  */
	public BigDecimal getIPI_TaxRate();

    /** Column name IPI_TaxStatus */
    public static final String COLUMNNAME_IPI_TaxStatus = "IPI_TaxStatus";

	/** Set CST do IPI	  */
	public void setIPI_TaxStatus (String IPI_TaxStatus);

	/** Get CST do IPI	  */
	public String getIPI_TaxStatus();

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

    /** Column name IsCancelled */
    public static final String COLUMNNAME_IsCancelled = "IsCancelled";

	/** Set Cancelled.
	  * The transaction was cancelled
	  */
	public void setIsCancelled (boolean IsCancelled);

	/** Get Cancelled.
	  * The transaction was cancelled
	  */
	public boolean isCancelled();

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

    /** Column name LBR_BP_Accountant_ID */
    public static final String COLUMNNAME_LBR_BP_Accountant_ID = "LBR_BP_Accountant_ID";

	/** Set Contador.
	  * Parceiro de Negócios que exerce a função de Contador na Organização. OBRIGATÓRIO PARA O SPED
	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID);

	/** Get Contador.
	  * Parceiro de Negócios que exerce a função de Contador na Organização. OBRIGATÓRIO PARA O SPED
	  */
	public int getLBR_BP_Accountant_ID();

	public I_C_BPartner getLBR_BP_Accountant() throws RuntimeException;

    /** Column name lbr_BPAddress1 */
    public static final String COLUMNNAME_lbr_BPAddress1 = "lbr_BPAddress1";

	/** Set BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress1 (String lbr_BPAddress1);

	/** Get BP Address 1.
	  * BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress1();

    /** Column name lbr_BPAddress2 */
    public static final String COLUMNNAME_lbr_BPAddress2 = "lbr_BPAddress2";

	/** Set BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress2 (String lbr_BPAddress2);

	/** Get BP Address 2.
	  * BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress2();

    /** Column name lbr_BPAddress3 */
    public static final String COLUMNNAME_lbr_BPAddress3 = "lbr_BPAddress3";

	/** Set BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress3 (String lbr_BPAddress3);

	/** Get BP Address 3.
	  * BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress3();

    /** Column name lbr_BPAddress4 */
    public static final String COLUMNNAME_lbr_BPAddress4 = "lbr_BPAddress4";

	/** Set BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress4 (String lbr_BPAddress4);

	/** Get BP Address 4.
	  * BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress4();

    /** Column name lbr_BPCity */
    public static final String COLUMNNAME_lbr_BPCity = "lbr_BPCity";

	/** Set BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCity (String lbr_BPCity);

	/** Get BP City.
	  * BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCity();

    /** Column name lbr_BPCNPJ */
    public static final String COLUMNNAME_lbr_BPCNPJ = "lbr_BPCNPJ";

	/** Set BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ);

	/** Get BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ();

    /** Column name lbr_BPIE */
    public static final String COLUMNNAME_lbr_BPIE = "lbr_BPIE";

	/** Set BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPIE (String lbr_BPIE);

	/** Get BP IE.
	  * BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPIE();

    /** Column name lbr_BPPhone */
    public static final String COLUMNNAME_lbr_BPPhone = "lbr_BPPhone";

	/** Set BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPhone (String lbr_BPPhone);

	/** Get BP Phone.
	  * BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPhone();

    /** Column name lbr_BPPostal */
    public static final String COLUMNNAME_lbr_BPPostal = "lbr_BPPostal";

	/** Set BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPostal (String lbr_BPPostal);

	/** Get BP Postal.
	  * BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPostal();

    /** Column name lbr_BPRegion */
    public static final String COLUMNNAME_lbr_BPRegion = "lbr_BPRegion";

	/** Set BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion);

	/** Get BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion();

    /** Column name lbr_BPSuframa */
    public static final String COLUMNNAME_lbr_BPSuframa = "lbr_BPSuframa";

	/** Set BP Suframa.
	  * Defines the BP Suframa
	  */
	public void setlbr_BPSuframa (String lbr_BPSuframa);

	/** Get BP Suframa.
	  * Defines the BP Suframa
	  */
	public String getlbr_BPSuframa();

    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException;

    /** Column name lbr_CFOPName */
    public static final String COLUMNNAME_lbr_CFOPName = "lbr_CFOPName";

	/** Set CFOP Name.
	  * Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName);

	/** Get CFOP Name.
	  * Defines the CFOP Name
	  */
	public String getlbr_CFOPName();

    /** Column name lbr_CNAE */
    public static final String COLUMNNAME_lbr_CNAE = "lbr_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE();

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

    /** Column name lbr_DateInOut */
    public static final String COLUMNNAME_lbr_DateInOut = "lbr_DateInOut";

	/** Set Date InOut.
	  * Defines the InOut Date
	  */
	public void setlbr_DateInOut (Timestamp lbr_DateInOut);

	/** Get Date InOut.
	  * Defines the InOut Date
	  */
	public Timestamp getlbr_DateInOut();

    /** Column name LBR_FactFiscal_ID */
    public static final String COLUMNNAME_LBR_FactFiscal_ID = "LBR_FactFiscal_ID";

	/** Set Detalhes de Fatos Fiscais	  */
	public void setLBR_FactFiscal_ID (int LBR_FactFiscal_ID);

	/** Get Detalhes de Fatos Fiscais	  */
	public int getLBR_FactFiscal_ID();

    /** Column name lbr_Fantasia */
    public static final String COLUMNNAME_lbr_Fantasia = "lbr_Fantasia";

	/** Set Fantasia	  */
	public void setlbr_Fantasia (String lbr_Fantasia);

	/** Get Fantasia	  */
	public String getlbr_Fantasia();

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

    /** Column name lbr_IndAtividade */
    public static final String COLUMNNAME_lbr_IndAtividade = "lbr_IndAtividade";

	/** Set Indicador de Atividade Econômica	  */
	public void setlbr_IndAtividade (String lbr_IndAtividade);

	/** Get Indicador de Atividade Econômica	  */
	public String getlbr_IndAtividade();

    /** Column name lbr_InsuranceAmt */
    public static final String COLUMNNAME_lbr_InsuranceAmt = "lbr_InsuranceAmt";

	/** Set Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt);

	/** Get Insurance Amt.
	  * Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt();

    /** Column name lbr_IsOwnDocument */
    public static final String COLUMNNAME_lbr_IsOwnDocument = "lbr_IsOwnDocument";

	/** Set Is Own Document.
	  * Identifies this is an own document
	  */
	public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public boolean islbr_IsOwnDocument();

    /** Column name lbr_IsService */
    public static final String COLUMNNAME_lbr_IsService = "lbr_IsService";

	/** Set Is Service.
	  * Defines if the lines is a Service
	  */
	public void setlbr_IsService (boolean lbr_IsService);

	/** Get Is Service.
	  * Defines if the lines is a Service
	  */
	public boolean islbr_IsService();

    /** Column name lbr_ItemTypeBR */
    public static final String COLUMNNAME_lbr_ItemTypeBR = "lbr_ItemTypeBR";

	/** Set Tipo do Item (Classif. Fiscal do SPED)	  */
	public void setlbr_ItemTypeBR (String lbr_ItemTypeBR);

	/** Get Tipo do Item (Classif. Fiscal do SPED)	  */
	public String getlbr_ItemTypeBR();

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

    /** Column name lbr_NCMName */
    public static final String COLUMNNAME_lbr_NCMName = "lbr_NCMName";

	/** Set NCM Name.
	  * Defines the NCM Name
	  */
	public void setlbr_NCMName (String lbr_NCMName);

	/** Get NCM Name.
	  * Defines the NCM Name
	  */
	public String getlbr_NCMName();

    /** Column name LBR_NFDI_ID */
    public static final String COLUMNNAME_LBR_NFDI_ID = "LBR_NFDI_ID";

	/** Set DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID);

	/** Get DI	  */
	public int getLBR_NFDI_ID();

	public org.adempierelbr.model.I_LBR_NFDI getLBR_NFDI() throws RuntimeException;

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

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set Modelo de Documento Fiscal.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get Modelo de Documento Fiscal.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

    /** Column name lbr_OrgAddress1 */
    public static final String COLUMNNAME_lbr_OrgAddress1 = "lbr_OrgAddress1";

	/** Set Organization Address 1.
	  * The issuer organization address 1
	  */
	public void setlbr_OrgAddress1 (String lbr_OrgAddress1);

	/** Get Organization Address 1.
	  * The issuer organization address 1
	  */
	public String getlbr_OrgAddress1();

    /** Column name lbr_OrgAddress2 */
    public static final String COLUMNNAME_lbr_OrgAddress2 = "lbr_OrgAddress2";

	/** Set Organization Address 2.
	  * The issuer organization address 2
	  */
	public void setlbr_OrgAddress2 (String lbr_OrgAddress2);

	/** Get Organization Address 2.
	  * The issuer organization address 2
	  */
	public String getlbr_OrgAddress2();

    /** Column name lbr_OrgAddress3 */
    public static final String COLUMNNAME_lbr_OrgAddress3 = "lbr_OrgAddress3";

	/** Set Organization Address 3.
	  * The issuer organization address 3
	  */
	public void setlbr_OrgAddress3 (String lbr_OrgAddress3);

	/** Get Organization Address 3.
	  * The issuer organization address 3
	  */
	public String getlbr_OrgAddress3();

    /** Column name lbr_OrgAddress4 */
    public static final String COLUMNNAME_lbr_OrgAddress4 = "lbr_OrgAddress4";

	/** Set Organization Address 4.
	  * The issuer organization address 4
	  */
	public void setlbr_OrgAddress4 (String lbr_OrgAddress4);

	/** Get Organization Address 4.
	  * The issuer organization address 4
	  */
	public String getlbr_OrgAddress4();

    /** Column name lbr_OrgCCM */
    public static final String COLUMNNAME_lbr_OrgCCM = "lbr_OrgCCM";

	/** Set Organization CCM.
	  * The Organization CCM
	  */
	public void setlbr_OrgCCM (String lbr_OrgCCM);

	/** Get Organization CCM.
	  * The Organization CCM
	  */
	public String getlbr_OrgCCM();

    /** Column name lbr_OrgCity */
    public static final String COLUMNNAME_lbr_OrgCity = "lbr_OrgCity";

	/** Set Organization City.
	  * The City of the Organization
	  */
	public void setlbr_OrgCity (String lbr_OrgCity);

	/** Get Organization City.
	  * The City of the Organization
	  */
	public String getlbr_OrgCity();

    /** Column name LBR_OrgCityCode */
    public static final String COLUMNNAME_LBR_OrgCityCode = "LBR_OrgCityCode";

	/** Set Cód. da Cidade da Org.(IBGE)	  */
	public void setLBR_OrgCityCode (int LBR_OrgCityCode);

	/** Get Cód. da Cidade da Org.(IBGE)	  */
	public int getLBR_OrgCityCode();

    /** Column name LBR_Org_Location_ID */
    public static final String COLUMNNAME_LBR_Org_Location_ID = "LBR_Org_Location_ID";

	/** Set Localização da Organização	  */
	public void setLBR_Org_Location_ID (int LBR_Org_Location_ID);

	/** Get Localização da Organização	  */
	public int getLBR_Org_Location_ID();

	public I_C_Location getLBR_Org_Location() throws RuntimeException;

    /** Column name lbr_OrgName */
    public static final String COLUMNNAME_lbr_OrgName = "lbr_OrgName";

	/** Set Organization Name.
	  * The Name of the Organization
	  */
	public void setlbr_OrgName (String lbr_OrgName);

	/** Get Organization Name.
	  * The Name of the Organization
	  */
	public String getlbr_OrgName();

    /** Column name lbr_OrgPhone */
    public static final String COLUMNNAME_lbr_OrgPhone = "lbr_OrgPhone";

	/** Set Organization Phone.
	  * The Organization Phone
	  */
	public void setlbr_OrgPhone (String lbr_OrgPhone);

	/** Get Organization Phone.
	  * The Organization Phone
	  */
	public String getlbr_OrgPhone();

    /** Column name lbr_OrgPostal */
    public static final String COLUMNNAME_lbr_OrgPostal = "lbr_OrgPostal";

	/** Set Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public void setlbr_OrgPostal (String lbr_OrgPostal);

	/** Get Organization Postal Code.
	  * The Postal Code of the Organization
	  */
	public String getlbr_OrgPostal();

    /** Column name lbr_OrgRegion */
    public static final String COLUMNNAME_lbr_OrgRegion = "lbr_OrgRegion";

	/** Set Organization Region.
	  * The Region of the Organization
	  */
	public void setlbr_OrgRegion (String lbr_OrgRegion);

	/** Get Organization Region.
	  * The Region of the Organization
	  */
	public String getlbr_OrgRegion();

    /** Column name lbr_Suframa */
    public static final String COLUMNNAME_lbr_Suframa = "lbr_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setlbr_Suframa (String lbr_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getlbr_Suframa();

    /** Column name lbr_TotalSISCOMEX */
    public static final String COLUMNNAME_lbr_TotalSISCOMEX = "lbr_TotalSISCOMEX";

	/** Set SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public void setlbr_TotalSISCOMEX (BigDecimal lbr_TotalSISCOMEX);

	/** Get SISCOMEX Total.
	  * SISCOMEX Total for all the document
	  */
	public BigDecimal getlbr_TotalSISCOMEX();

    /** Column name LBR_UOMDescription */
    public static final String COLUMNNAME_LBR_UOMDescription = "LBR_UOMDescription";

	/** Set Descrição da UOM	  */
	public void setLBR_UOMDescription (String LBR_UOMDescription);

	/** Get Descrição da UOM	  */
	public String getLBR_UOMDescription();

    /** Column name lbr_UOMName */
    public static final String COLUMNNAME_lbr_UOMName = "lbr_UOMName";

	/** Set UOM Name.
	  * Defines the UOM Name
	  */
	public void setlbr_UOMName (String lbr_UOMName);

	/** Get UOM Name.
	  * Defines the UOM Name
	  */
	public String getlbr_UOMName();

    /** Column name Line */
    public static final String COLUMNNAME_Line = "Line";

	/** Set Line No.
	  * Unique line for this document
	  */
	public void setLine (int Line);

	/** Get Line No.
	  * Unique line for this document
	  */
	public int getLine();

    /** Column name LineNetAmt */
    public static final String COLUMNNAME_LineNetAmt = "LineNetAmt";

	/** Set Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt);

	/** Get Line Amount.
	  * Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt();

    /** Column name LineTotalAmt */
    public static final String COLUMNNAME_LineTotalAmt = "LineTotalAmt";

	/** Set Line Total.
	  * Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt);

	/** Get Line Total.
	  * Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public I_M_Product getM_Product() throws RuntimeException;

    /** Column name PIS_NFTaxAmt */
    public static final String COLUMNNAME_PIS_NFTaxAmt = "PIS_NFTaxAmt";

	/** Set Total de PIS da NF	  */
	public void setPIS_NFTaxAmt (BigDecimal PIS_NFTaxAmt);

	/** Get Total de PIS da NF	  */
	public BigDecimal getPIS_NFTaxAmt();

    /** Column name PIS_TaxAmt */
    public static final String COLUMNNAME_PIS_TaxAmt = "PIS_TaxAmt";

	/** Set Valor do PIS	  */
	public void setPIS_TaxAmt (BigDecimal PIS_TaxAmt);

	/** Get Valor do PIS	  */
	public BigDecimal getPIS_TaxAmt();

    /** Column name PIS_TaxBase */
    public static final String COLUMNNAME_PIS_TaxBase = "PIS_TaxBase";

	/** Set Red. da BC do PIS	  */
	public void setPIS_TaxBase (BigDecimal PIS_TaxBase);

	/** Get Red. da BC do PIS	  */
	public BigDecimal getPIS_TaxBase();

    /** Column name PIS_TaxBaseAmt */
    public static final String COLUMNNAME_PIS_TaxBaseAmt = "PIS_TaxBaseAmt";

	/** Set Vlr. da BC do PIS	  */
	public void setPIS_TaxBaseAmt (BigDecimal PIS_TaxBaseAmt);

	/** Get Vlr. da BC do PIS	  */
	public BigDecimal getPIS_TaxBaseAmt();

    /** Column name PIS_TaxRate */
    public static final String COLUMNNAME_PIS_TaxRate = "PIS_TaxRate";

	/** Set Alíq. do PIS	  */
	public void setPIS_TaxRate (BigDecimal PIS_TaxRate);

	/** Get Alíq. do PIS	  */
	public BigDecimal getPIS_TaxRate();

    /** Column name PIS_TaxStatus */
    public static final String COLUMNNAME_PIS_TaxStatus = "PIS_TaxStatus";

	/** Set CST do PIS	  */
	public void setPIS_TaxStatus (String PIS_TaxStatus);

	/** Get CST do PIS	  */
	public String getPIS_TaxStatus();

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

    /** Column name ProductName */
    public static final String COLUMNNAME_ProductName = "ProductName";

	/** Set Product Name.
	  * Name of the Product
	  */
	public void setProductName (String ProductName);

	/** Get Product Name.
	  * Name of the Product
	  */
	public String getProductName();

    /** Column name ProductNCM */
    public static final String COLUMNNAME_ProductNCM = "ProductNCM";

	/** Set NCM do Produto	  */
	public void setProductNCM (String ProductNCM);

	/** Get NCM do Produto	  */
	public String getProductNCM();

    /** Column name ProductUOM */
    public static final String COLUMNNAME_ProductUOM = "ProductUOM";

	/** Set UOM do Produto	  */
	public void setProductUOM (String ProductUOM);

	/** Get UOM do Produto	  */
	public String getProductUOM();

    /** Column name ProductValue */
    public static final String COLUMNNAME_ProductValue = "ProductValue";

	/** Set Product Key.
	  * Key of the Product
	  */
	public void setProductValue (String ProductValue);

	/** Get Product Key.
	  * Key of the Product
	  */
	public String getProductValue();

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

    /** Column name TotalLines */
    public static final String COLUMNNAME_TotalLines = "TotalLines";

	/** Set Total Lines.
	  * Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines);

	/** Get Total Lines.
	  * Total of all document lines
	  */
	public BigDecimal getTotalLines();

    /** Column name UPC */
    public static final String COLUMNNAME_UPC = "UPC";

	/** Set UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC);

	/** Get UPC/EAN.
	  * Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC();

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
