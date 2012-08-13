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

    /** Column name bpcitycode */
    public static final String COLUMNNAME_bpcitycode = "bpcitycode";

	/** Set bpcitycode	  */
	public void setbpcitycode (int bpcitycode);

	/** Get bpcitycode	  */
	public int getbpcitycode();

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

    /** Column name Cofins_TaxAmt */
    public static final String COLUMNNAME_Cofins_TaxAmt = "Cofins_TaxAmt";

	/** Set Valor do COFINS	  */
	public void setCofins_TaxAmt (BigDecimal Cofins_TaxAmt);

	/** Get Valor do COFINS	  */
	public BigDecimal getCofins_TaxAmt();

    /** Column name cofins_taxbase */
    public static final String COLUMNNAME_cofins_taxbase = "cofins_taxbase";

	/** Set cofins_taxbase	  */
	public void setcofins_taxbase (BigDecimal cofins_taxbase);

	/** Get cofins_taxbase	  */
	public BigDecimal getcofins_taxbase();

    /** Column name cofins_taxbaseamt */
    public static final String COLUMNNAME_cofins_taxbaseamt = "cofins_taxbaseamt";

	/** Set cofins_taxbaseamt	  */
	public void setcofins_taxbaseamt (BigDecimal cofins_taxbaseamt);

	/** Get cofins_taxbaseamt	  */
	public BigDecimal getcofins_taxbaseamt();

    /** Column name cofins_taxrate */
    public static final String COLUMNNAME_cofins_taxrate = "cofins_taxrate";

	/** Set cofins_taxrate	  */
	public void setcofins_taxrate (BigDecimal cofins_taxrate);

	/** Get cofins_taxrate	  */
	public BigDecimal getcofins_taxrate();

    /** Column name cofins_taxstatus */
    public static final String COLUMNNAME_cofins_taxstatus = "cofins_taxstatus";

	/** Set cofins_taxstatus	  */
	public void setcofins_taxstatus (String cofins_taxstatus);

	/** Get cofins_taxstatus	  */
	public String getcofins_taxstatus();

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

    /** Column name Discount */
    public static final String COLUMNNAME_Discount = "Discount";

	/** Set Discount %.
	  * Discount in percent
	  */
	public void setDiscount (BigDecimal Discount);

	/** Get Discount %.
	  * Discount in percent
	  */
	public BigDecimal getDiscount();

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

    /** Column name ICMSST_TaxAmt */
    public static final String COLUMNNAME_ICMSST_TaxAmt = "ICMSST_TaxAmt";

	/** Set Valor do ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt);

	/** Get Valor do ICMSST	  */
	public BigDecimal getICMSST_TaxAmt();

    /** Column name icmsst_taxbase */
    public static final String COLUMNNAME_icmsst_taxbase = "icmsst_taxbase";

	/** Set icmsst_taxbase	  */
	public void seticmsst_taxbase (BigDecimal icmsst_taxbase);

	/** Get icmsst_taxbase	  */
	public BigDecimal geticmsst_taxbase();

    /** Column name icmsst_taxbaseamt */
    public static final String COLUMNNAME_icmsst_taxbaseamt = "icmsst_taxbaseamt";

	/** Set icmsst_taxbaseamt	  */
	public void seticmsst_taxbaseamt (BigDecimal icmsst_taxbaseamt);

	/** Get icmsst_taxbaseamt	  */
	public BigDecimal geticmsst_taxbaseamt();

    /** Column name icmsst_taxrate */
    public static final String COLUMNNAME_icmsst_taxrate = "icmsst_taxrate";

	/** Set icmsst_taxrate	  */
	public void seticmsst_taxrate (BigDecimal icmsst_taxrate);

	/** Get icmsst_taxrate	  */
	public BigDecimal geticmsst_taxrate();

    /** Column name icmsst_taxstatus */
    public static final String COLUMNNAME_icmsst_taxstatus = "icmsst_taxstatus";

	/** Set icmsst_taxstatus	  */
	public void seticmsst_taxstatus (String icmsst_taxstatus);

	/** Get icmsst_taxstatus	  */
	public String geticmsst_taxstatus();

    /** Column name ICMS_TaxAmt */
    public static final String COLUMNNAME_ICMS_TaxAmt = "ICMS_TaxAmt";

	/** Set Valor do ICMS	  */
	public void setICMS_TaxAmt (BigDecimal ICMS_TaxAmt);

	/** Get Valor do ICMS	  */
	public BigDecimal getICMS_TaxAmt();

    /** Column name icms_taxbase */
    public static final String COLUMNNAME_icms_taxbase = "icms_taxbase";

	/** Set icms_taxbase	  */
	public void seticms_taxbase (BigDecimal icms_taxbase);

	/** Get icms_taxbase	  */
	public BigDecimal geticms_taxbase();

    /** Column name icms_taxbaseamt */
    public static final String COLUMNNAME_icms_taxbaseamt = "icms_taxbaseamt";

	/** Set icms_taxbaseamt	  */
	public void seticms_taxbaseamt (BigDecimal icms_taxbaseamt);

	/** Get icms_taxbaseamt	  */
	public BigDecimal geticms_taxbaseamt();

    /** Column name ICMS_TaxRate */
    public static final String COLUMNNAME_ICMS_TaxRate = "ICMS_TaxRate";

	/** Set Aliquota ICMS	  */
	public void setICMS_TaxRate (BigDecimal ICMS_TaxRate);

	/** Get Aliquota ICMS	  */
	public BigDecimal getICMS_TaxRate();

    /** Column name icms_taxstatus */
    public static final String COLUMNNAME_icms_taxstatus = "icms_taxstatus";

	/** Set icms_taxstatus	  */
	public void seticms_taxstatus (String icms_taxstatus);

	/** Get icms_taxstatus	  */
	public String geticms_taxstatus();

    /** Column name II_TaxAmt */
    public static final String COLUMNNAME_II_TaxAmt = "II_TaxAmt";

	/** Set Valor do II	  */
	public void setII_TaxAmt (BigDecimal II_TaxAmt);

	/** Get Valor do II	  */
	public BigDecimal getII_TaxAmt();

    /** Column name ii_taxbase */
    public static final String COLUMNNAME_ii_taxbase = "ii_taxbase";

	/** Set ii_taxbase	  */
	public void setii_taxbase (BigDecimal ii_taxbase);

	/** Get ii_taxbase	  */
	public BigDecimal getii_taxbase();

    /** Column name ii_taxbaseamt */
    public static final String COLUMNNAME_ii_taxbaseamt = "ii_taxbaseamt";

	/** Set ii_taxbaseamt	  */
	public void setii_taxbaseamt (BigDecimal ii_taxbaseamt);

	/** Get ii_taxbaseamt	  */
	public BigDecimal getii_taxbaseamt();

    /** Column name ii_taxrate */
    public static final String COLUMNNAME_ii_taxrate = "ii_taxrate";

	/** Set ii_taxrate	  */
	public void setii_taxrate (BigDecimal ii_taxrate);

	/** Get ii_taxrate	  */
	public BigDecimal getii_taxrate();

    /** Column name ii_taxstatus */
    public static final String COLUMNNAME_ii_taxstatus = "ii_taxstatus";

	/** Set ii_taxstatus	  */
	public void setii_taxstatus (String ii_taxstatus);

	/** Get ii_taxstatus	  */
	public String getii_taxstatus();

    /** Column name IPI_TaxAmt */
    public static final String COLUMNNAME_IPI_TaxAmt = "IPI_TaxAmt";

	/** Set Valor do IPI	  */
	public void setIPI_TaxAmt (BigDecimal IPI_TaxAmt);

	/** Get Valor do IPI	  */
	public BigDecimal getIPI_TaxAmt();

    /** Column name ipi_taxbase */
    public static final String COLUMNNAME_ipi_taxbase = "ipi_taxbase";

	/** Set ipi_taxbase	  */
	public void setipi_taxbase (BigDecimal ipi_taxbase);

	/** Get ipi_taxbase	  */
	public BigDecimal getipi_taxbase();

    /** Column name ipi_taxbaseamt */
    public static final String COLUMNNAME_ipi_taxbaseamt = "ipi_taxbaseamt";

	/** Set ipi_taxbaseamt	  */
	public void setipi_taxbaseamt (BigDecimal ipi_taxbaseamt);

	/** Get ipi_taxbaseamt	  */
	public BigDecimal getipi_taxbaseamt();

    /** Column name ipi_taxrate */
    public static final String COLUMNNAME_ipi_taxrate = "ipi_taxrate";

	/** Set ipi_taxrate	  */
	public void setipi_taxrate (BigDecimal ipi_taxrate);

	/** Get ipi_taxrate	  */
	public BigDecimal getipi_taxrate();

    /** Column name ipi_taxstatus */
    public static final String COLUMNNAME_ipi_taxstatus = "ipi_taxstatus";

	/** Set ipi_taxstatus	  */
	public void setipi_taxstatus (String ipi_taxstatus);

	/** Get ipi_taxstatus	  */
	public String getipi_taxstatus();

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

    /** Column name lbr_orgcitycode */
    public static final String COLUMNNAME_lbr_orgcitycode = "lbr_orgcitycode";

	/** Set lbr_orgcitycode	  */
	public void setlbr_orgcitycode (int lbr_orgcitycode);

	/** Get lbr_orgcitycode	  */
	public int getlbr_orgcitycode();

    /** Column name lbr_org_location_id */
    public static final String COLUMNNAME_lbr_org_location_id = "lbr_org_location_id";

	/** Set lbr_org_location_id	  */
	public void setlbr_org_location_id (int lbr_org_location_id);

	/** Get lbr_org_location_id	  */
	public int getlbr_org_location_id();

	public I_C_Location getlbr_org_location() throws RuntimeException;

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

    /** Column name lbr_uomdescription */
    public static final String COLUMNNAME_lbr_uomdescription = "lbr_uomdescription";

	/** Set lbr_uomdescription	  */
	public void setlbr_uomdescription (String lbr_uomdescription);

	/** Get lbr_uomdescription	  */
	public String getlbr_uomdescription();

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

    /** Column name PIS_TaxAmt */
    public static final String COLUMNNAME_PIS_TaxAmt = "PIS_TaxAmt";

	/** Set Valor do PIS	  */
	public void setPIS_TaxAmt (BigDecimal PIS_TaxAmt);

	/** Get Valor do PIS	  */
	public BigDecimal getPIS_TaxAmt();

    /** Column name pis_taxbase */
    public static final String COLUMNNAME_pis_taxbase = "pis_taxbase";

	/** Set pis_taxbase	  */
	public void setpis_taxbase (BigDecimal pis_taxbase);

	/** Get pis_taxbase	  */
	public BigDecimal getpis_taxbase();

    /** Column name pis_taxbaseamt */
    public static final String COLUMNNAME_pis_taxbaseamt = "pis_taxbaseamt";

	/** Set pis_taxbaseamt	  */
	public void setpis_taxbaseamt (BigDecimal pis_taxbaseamt);

	/** Get pis_taxbaseamt	  */
	public BigDecimal getpis_taxbaseamt();

    /** Column name pis_taxrate */
    public static final String COLUMNNAME_pis_taxrate = "pis_taxrate";

	/** Set pis_taxrate	  */
	public void setpis_taxrate (BigDecimal pis_taxrate);

	/** Get pis_taxrate	  */
	public BigDecimal getpis_taxrate();

    /** Column name pis_taxstatus */
    public static final String COLUMNNAME_pis_taxstatus = "pis_taxstatus";

	/** Set pis_taxstatus	  */
	public void setpis_taxstatus (String pis_taxstatus);

	/** Get pis_taxstatus	  */
	public String getpis_taxstatus();

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

    /** Column name productncm */
    public static final String COLUMNNAME_productncm = "productncm";

	/** Set productncm	  */
	public void setproductncm (String productncm);

	/** Get productncm	  */
	public String getproductncm();

    /** Column name productuom */
    public static final String COLUMNNAME_productuom = "productuom";

	/** Set productuom	  */
	public void setproductuom (String productuom);

	/** Get productuom	  */
	public String getproductuom();

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
