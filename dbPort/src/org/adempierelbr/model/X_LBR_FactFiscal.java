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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_FactFiscal
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_FactFiscal extends PO implements I_LBR_FactFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20120817L;

    /** Standard Constructor */
    public X_LBR_FactFiscal (Properties ctx, int LBR_FactFiscal_ID, String trxName)
    {
      super (ctx, LBR_FactFiscal_ID, trxName);
      /** if (LBR_FactFiscal_ID == 0)
        {
        } */
    }

    /** Load Constructor */
    public X_LBR_FactFiscal (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_FactFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Cod. Cidade do PN .
		@param BPCityCode Cod. Cidade do PN 	  */
	public void setBPCityCode (int BPCityCode)
	{
		set_Value (COLUMNNAME_BPCityCode, Integer.valueOf(BPCityCode));
	}

	/** Get Cod. Cidade do PN .
		@return Cod. Cidade do PN 	  */
	public int getBPCityCode () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_BPCityCode);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Código do País do PN.
		@param BPCountryCode Código do País do PN	  */
	public void setBPCountryCode (int BPCountryCode)
	{
		set_Value (COLUMNNAME_BPCountryCode, Integer.valueOf(BPCountryCode));
	}

	/** Get Código do País do PN.
		@return Código do País do PN	  */
	public int getBPCountryCode () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_BPCountryCode);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set BP Name.
		@param BPName BP Name	  */
	public void setBPName (String BPName)
	{
		set_Value (COLUMNNAME_BPName, BPName);
	}

	/** Get BP Name.
		@return BP Name	  */
	public String getBPName () 
	{
		return (String)get_Value(COLUMNNAME_BPName);
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException
    {
		return (I_C_BPartner_Location)MTable.get(getCtx(), I_C_BPartner_Location.Table_Name)
			.getPO(getC_BPartner_Location_ID(), get_TrxName());	}

	/** Set Partner Location.
		@param C_BPartner_Location_ID 
		Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		if (C_BPartner_Location_ID < 1) 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_Location_ID, Integer.valueOf(C_BPartner_Location_ID));
	}

	/** Get Partner Location.
		@return Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (I_C_Invoice)MTable.get(getCtx(), I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Total de Cofins da NF.
		@param COFINS_NFTaxAmt Total de Cofins da NF	  */
	public void setCOFINS_NFTaxAmt (BigDecimal COFINS_NFTaxAmt)
	{
		set_Value (COLUMNNAME_COFINS_NFTaxAmt, COFINS_NFTaxAmt);
	}

	/** Get Total de Cofins da NF.
		@return Total de Cofins da NF	  */
	public BigDecimal getCOFINS_NFTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_COFINS_NFTaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor do COFINS.
		@param COFINS_TaxAmt Valor do COFINS	  */
	public void setCOFINS_TaxAmt (BigDecimal COFINS_TaxAmt)
	{
		set_Value (COLUMNNAME_COFINS_TaxAmt, COFINS_TaxAmt);
	}

	/** Get Valor do COFINS.
		@return Valor do COFINS	  */
	public BigDecimal getCOFINS_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_COFINS_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. Base de Cálculo do COFINS.
		@param COFINS_TaxBase Red. Base de Cálculo do COFINS	  */
	public void setCOFINS_TaxBase (BigDecimal COFINS_TaxBase)
	{
		set_Value (COLUMNNAME_COFINS_TaxBase, COFINS_TaxBase);
	}

	/** Get Red. Base de Cálculo do COFINS.
		@return Red. Base de Cálculo do COFINS	  */
	public BigDecimal getCOFINS_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_COFINS_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vlr. BC COFINS.
		@param COFINS_TaxBaseAmt Vlr. BC COFINS	  */
	public void setCOFINS_TaxBaseAmt (BigDecimal COFINS_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_COFINS_TaxBaseAmt, COFINS_TaxBaseAmt);
	}

	/** Get Vlr. BC COFINS.
		@return Vlr. BC COFINS	  */
	public BigDecimal getCOFINS_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_COFINS_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíq. Cofins.
		@param COFINS_TaxRate Alíq. Cofins	  */
	public void setCOFINS_TaxRate (BigDecimal COFINS_TaxRate)
	{
		set_Value (COLUMNNAME_COFINS_TaxRate, COFINS_TaxRate);
	}

	/** Get Alíq. Cofins.
		@return Alíq. Cofins	  */
	public BigDecimal getCOFINS_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_COFINS_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CST Cofins.
		@param COFINS_TaxStatus CST Cofins	  */
	public void setCOFINS_TaxStatus (String COFINS_TaxStatus)
	{
		set_Value (COLUMNNAME_COFINS_TaxStatus, COFINS_TaxStatus);
	}

	/** Get CST Cofins.
		@return CST Cofins	  */
	public String getCOFINS_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_COFINS_TaxStatus);
	}

	public I_C_Order getC_Order() throws RuntimeException
    {
		return (I_C_Order)MTable.get(getCtx(), I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_UOM getC_UOM() throws RuntimeException
    {
		return (I_C_UOM)MTable.get(getCtx(), I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set Discount Amount.
		@param DiscountAmt 
		Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt)
	{
		set_Value (COLUMNNAME_DiscountAmt, DiscountAmt);
	}

	/** Get Discount Amount.
		@return Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** DocBaseTypeBR AD_Reference_ID=2000024 */
	public static final int DOCBASETYPEBR_AD_Reference_ID=2000024;
	/** Compra = COMP */
	public static final String DOCBASETYPEBR_Compra = "COMP";
	/** Devolução de Compra = DEVC */
	public static final String DOCBASETYPEBR_DevoluçãoDeCompra = "DEVC";
	/** Devolução de Remessas Diversas = DEVR */
	public static final String DOCBASETYPEBR_DevoluçãoDeRemessasDiversas = "DEVR";
	/** Devolução de Venda = DEVV */
	public static final String DOCBASETYPEBR_DevoluçãoDeVenda = "DEVV";
	/** Outros = OUTR */
	public static final String DOCBASETYPEBR_Outros = "OUTR";
	/** Remessas Diversas = REMD */
	public static final String DOCBASETYPEBR_RemessasDiversas = "REMD";
	/** Transferência (Entrada) = TRFE */
	public static final String DOCBASETYPEBR_TransferênciaEntrada = "TRFE";
	/** Transferência (Saída) = TRXS */
	public static final String DOCBASETYPEBR_TransferênciaSaída = "TRXS";
	/** Venda = VEND */
	public static final String DOCBASETYPEBR_Venda = "VEND";
	/** Set Sub Classificação do Documento.
		@param DocBaseTypeBR Sub Classificação do Documento	  */
	public void setDocBaseTypeBR (String DocBaseTypeBR)
	{

		set_Value (COLUMNNAME_DocBaseTypeBR, DocBaseTypeBR);
	}

	/** Get Sub Classificação do Documento.
		@return Sub Classificação do Documento	  */
	public String getDocBaseTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_DocBaseTypeBR);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_Value (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	/** Set EMail Address.
		@param EMail 
		Electronic Mail Address
	  */
	public void setEMail (String EMail)
	{
		set_Value (COLUMNNAME_EMail, EMail);
	}

	/** Get EMail Address.
		@return Electronic Mail Address
	  */
	public String getEMail () 
	{
		return (String)get_Value(COLUMNNAME_EMail);
	}

	/** Set Freight Amount.
		@param FreightAmt 
		Freight Amount 
	  */
	public void setFreightAmt (BigDecimal FreightAmt)
	{
		set_Value (COLUMNNAME_FreightAmt, FreightAmt);
	}

	/** Get Freight Amount.
		@return Freight Amount 
	  */
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** FreightCostRule AD_Reference_ID=153 */
	public static final int FREIGHTCOSTRULE_AD_Reference_ID=153;
	/** Freight included = I */
	public static final String FREIGHTCOSTRULE_FreightIncluded = "I";
	/** Fix price = F */
	public static final String FREIGHTCOSTRULE_FixPrice = "F";
	/** Calculated = C */
	public static final String FREIGHTCOSTRULE_Calculated = "C";
	/** Line = L */
	public static final String FREIGHTCOSTRULE_Line = "L";
	/** Freight excluded = E */
	public static final String FREIGHTCOSTRULE_FreightExcluded = "E";
	/** 3 - Por Conta de Terceiros = T */
	public static final String FREIGHTCOSTRULE_3_PorContaDeTerceiros = "T";
	/** 9 - Sem Frete = S */
	public static final String FREIGHTCOSTRULE_9_SemFrete = "S";
	/** Set Freight Cost Rule.
		@param FreightCostRule 
		Method for charging Freight
	  */
	public void setFreightCostRule (String FreightCostRule)
	{

		set_Value (COLUMNNAME_FreightCostRule, FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getFreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_FreightCostRule);
	}

	/** Set Grand Total.
		@param GrandTotal 
		Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		set_Value (COLUMNNAME_GrandTotal, GrandTotal);
	}

	/** Get Grand Total.
		@return Total amount of document
	  */
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de ICMS da NF.
		@param ICMS_NFTaxAmt Total de ICMS da NF	  */
	public void setICMS_NFTaxAmt (BigDecimal ICMS_NFTaxAmt)
	{
		set_Value (COLUMNNAME_ICMS_NFTaxAmt, ICMS_NFTaxAmt);
	}

	/** Get Total de ICMS da NF.
		@return Total de ICMS da NF	  */
	public BigDecimal getICMS_NFTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_NFTaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tot da BC do ICMS.
		@param ICMS_NFTaxBaseAmt Tot da BC do ICMS	  */
	public void setICMS_NFTaxBaseAmt (BigDecimal ICMS_NFTaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMS_NFTaxBaseAmt, ICMS_NFTaxBaseAmt);
	}

	/** Get Tot da BC do ICMS.
		@return Tot da BC do ICMS	  */
	public BigDecimal getICMS_NFTaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_NFTaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de ICMSST da NF.
		@param ICMSST_NFTaxAmt Total de ICMSST da NF	  */
	public void setICMSST_NFTaxAmt (BigDecimal ICMSST_NFTaxAmt)
	{
		set_Value (COLUMNNAME_ICMSST_NFTaxAmt, ICMSST_NFTaxAmt);
	}

	/** Get Total de ICMSST da NF.
		@return Total de ICMSST da NF	  */
	public BigDecimal getICMSST_NFTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_NFTaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total da BC ICMSST da NF.
		@param ICMSST_NFTaxBaseAmt Total da BC ICMSST da NF	  */
	public void setICMSST_NFTaxBaseAmt (BigDecimal ICMSST_NFTaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMSST_NFTaxBaseAmt, ICMSST_NFTaxBaseAmt);
	}

	/** Get Total da BC ICMSST da NF.
		@return Total da BC ICMSST da NF	  */
	public BigDecimal getICMSST_NFTaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_NFTaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor do ICMSST.
		@param ICMSST_TaxAmt Valor do ICMSST	  */
	public void setICMSST_TaxAmt (BigDecimal ICMSST_TaxAmt)
	{
		set_Value (COLUMNNAME_ICMSST_TaxAmt, ICMSST_TaxAmt);
	}

	/** Get Valor do ICMSST.
		@return Valor do ICMSST	  */
	public BigDecimal getICMSST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. da BC do ICMSST.
		@param ICMSST_TaxBase Red. da BC do ICMSST	  */
	public void setICMSST_TaxBase (BigDecimal ICMSST_TaxBase)
	{
		set_Value (COLUMNNAME_ICMSST_TaxBase, ICMSST_TaxBase);
	}

	/** Get Red. da BC do ICMSST.
		@return Red. da BC do ICMSST	  */
	public BigDecimal getICMSST_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total da BC ICMSST.
		@param ICMSST_TaxBaseAmt Total da BC ICMSST	  */
	public void setICMSST_TaxBaseAmt (BigDecimal ICMSST_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMSST_TaxBaseAmt, ICMSST_TaxBaseAmt);
	}

	/** Get Total da BC ICMSST.
		@return Total da BC ICMSST	  */
	public BigDecimal getICMSST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíq. do ICMSST.
		@param ICMSST_TaxRate Alíq. do ICMSST	  */
	public void setICMSST_TaxRate (BigDecimal ICMSST_TaxRate)
	{
		set_Value (COLUMNNAME_ICMSST_TaxRate, ICMSST_TaxRate);
	}

	/** Get Alíq. do ICMSST.
		@return Alíq. do ICMSST	  */
	public BigDecimal getICMSST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMSST_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CST do ICMSST.
		@param ICMSST_TaxStatus CST do ICMSST	  */
	public void setICMSST_TaxStatus (String ICMSST_TaxStatus)
	{
		set_Value (COLUMNNAME_ICMSST_TaxStatus, ICMSST_TaxStatus);
	}

	/** Get CST do ICMSST.
		@return CST do ICMSST	  */
	public String getICMSST_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_ICMSST_TaxStatus);
	}

	/** Set Valor do ICMS.
		@param ICMS_TaxAmt Valor do ICMS	  */
	public void setICMS_TaxAmt (BigDecimal ICMS_TaxAmt)
	{
		set_Value (COLUMNNAME_ICMS_TaxAmt, ICMS_TaxAmt);
	}

	/** Get Valor do ICMS.
		@return Valor do ICMS	  */
	public BigDecimal getICMS_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. BC ICMS.
		@param ICMS_TaxBase Red. BC ICMS	  */
	public void setICMS_TaxBase (BigDecimal ICMS_TaxBase)
	{
		set_Value (COLUMNNAME_ICMS_TaxBase, ICMS_TaxBase);
	}

	/** Get Red. BC ICMS.
		@return Red. BC ICMS	  */
	public BigDecimal getICMS_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vlr. BC ICMS.
		@param ICMS_TaxBaseAmt Vlr. BC ICMS	  */
	public void setICMS_TaxBaseAmt (BigDecimal ICMS_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_ICMS_TaxBaseAmt, ICMS_TaxBaseAmt);
	}

	/** Get Vlr. BC ICMS.
		@return Vlr. BC ICMS	  */
	public BigDecimal getICMS_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Aliquota ICMS.
		@param ICMS_TaxRate Aliquota ICMS	  */
	public void setICMS_TaxRate (BigDecimal ICMS_TaxRate)
	{
		set_Value (COLUMNNAME_ICMS_TaxRate, ICMS_TaxRate);
	}

	/** Get Aliquota ICMS.
		@return Aliquota ICMS	  */
	public BigDecimal getICMS_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ICMS_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CST do ICMS.
		@param ICMS_TaxStatus CST do ICMS	  */
	public void setICMS_TaxStatus (String ICMS_TaxStatus)
	{
		set_Value (COLUMNNAME_ICMS_TaxStatus, ICMS_TaxStatus);
	}

	/** Get CST do ICMS.
		@return CST do ICMS	  */
	public String getICMS_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_ICMS_TaxStatus);
	}

	/** Set Valor do II.
		@param II_TaxAmt Valor do II	  */
	public void setII_TaxAmt (BigDecimal II_TaxAmt)
	{
		set_Value (COLUMNNAME_II_TaxAmt, II_TaxAmt);
	}

	/** Get Valor do II.
		@return Valor do II	  */
	public BigDecimal getII_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_II_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vlr. da BC do II.
		@param II_TaxBaseAmt Vlr. da BC do II	  */
	public void setII_TaxBaseAmt (BigDecimal II_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_II_TaxBaseAmt, II_TaxBaseAmt);
	}

	/** Get Vlr. da BC do II.
		@return Vlr. da BC do II	  */
	public BigDecimal getII_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_II_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíq. do II.
		@param II_TaxRate Alíq. do II	  */
	public void setII_TaxRate (BigDecimal II_TaxRate)
	{
		set_Value (COLUMNNAME_II_TaxRate, II_TaxRate);
	}

	/** Get Alíq. do II.
		@return Alíq. do II	  */
	public BigDecimal getII_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_II_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total de IPI da NF.
		@param IPI_NFTaxAmt Total de IPI da NF	  */
	public void setIPI_NFTaxAmt (BigDecimal IPI_NFTaxAmt)
	{
		set_Value (COLUMNNAME_IPI_NFTaxAmt, IPI_NFTaxAmt);
	}

	/** Get Total de IPI da NF.
		@return Total de IPI da NF	  */
	public BigDecimal getIPI_NFTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_IPI_NFTaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor do IPI.
		@param IPI_TaxAmt Valor do IPI	  */
	public void setIPI_TaxAmt (BigDecimal IPI_TaxAmt)
	{
		set_Value (COLUMNNAME_IPI_TaxAmt, IPI_TaxAmt);
	}

	/** Get Valor do IPI.
		@return Valor do IPI	  */
	public BigDecimal getIPI_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_IPI_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vlr da BC do IPI.
		@param IPI_TaxBaseAmt Vlr da BC do IPI	  */
	public void setIPI_TaxBaseAmt (BigDecimal IPI_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_IPI_TaxBaseAmt, IPI_TaxBaseAmt);
	}

	/** Get Vlr da BC do IPI.
		@return Vlr da BC do IPI	  */
	public BigDecimal getIPI_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_IPI_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíq. do IPI.
		@param IPI_TaxRate Alíq. do IPI	  */
	public void setIPI_TaxRate (BigDecimal IPI_TaxRate)
	{
		set_Value (COLUMNNAME_IPI_TaxRate, IPI_TaxRate);
	}

	/** Get Alíq. do IPI.
		@return Alíq. do IPI	  */
	public BigDecimal getIPI_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_IPI_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CST do IPI.
		@param IPI_TaxStatus CST do IPI	  */
	public void setIPI_TaxStatus (String IPI_TaxStatus)
	{
		set_Value (COLUMNNAME_IPI_TaxStatus, IPI_TaxStatus);
	}

	/** Get CST do IPI.
		@return CST do IPI	  */
	public String getIPI_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_IPI_TaxStatus);
	}

	/** Set Cancelled.
		@param IsCancelled 
		The transaction was cancelled
	  */
	public void setIsCancelled (boolean IsCancelled)
	{
		set_Value (COLUMNNAME_IsCancelled, Boolean.valueOf(IsCancelled));
	}

	/** Get Cancelled.
		@return The transaction was cancelled
	  */
	public boolean isCancelled () 
	{
		Object oo = get_Value(COLUMNNAME_IsCancelled);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Sales Transaction.
		@param IsSOTrx 
		This is a Sales Transaction
	  */
	public void setIsSOTrx (boolean IsSOTrx)
	{
		set_Value (COLUMNNAME_IsSOTrx, Boolean.valueOf(IsSOTrx));
	}

	/** Get Sales Transaction.
		@return This is a Sales Transaction
	  */
	public boolean isSOTrx () 
	{
		Object oo = get_Value(COLUMNNAME_IsSOTrx);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public I_C_BPartner getLBR_BP_Accountant() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
			.getPO(getLBR_BP_Accountant_ID(), get_TrxName());	}

	/** Set Contador.
		@param LBR_BP_Accountant_ID 
		Parceiro de Negócios que exerce a função de Contador na Organização. OBRIGATÓRIO PARA O SPED
	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID)
	{
		if (LBR_BP_Accountant_ID < 1) 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_BP_Accountant_ID, Integer.valueOf(LBR_BP_Accountant_ID));
	}

	/** Get Contador.
		@return Parceiro de Negócios que exerce a função de Contador na Organização. OBRIGATÓRIO PARA O SPED
	  */
	public int getLBR_BP_Accountant_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_BP_Accountant_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set BP Address 1.
		@param lbr_BPAddress1 
		BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress1 (String lbr_BPAddress1)
	{
		set_Value (COLUMNNAME_lbr_BPAddress1, lbr_BPAddress1);
	}

	/** Get BP Address 1.
		@return BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress1);
	}

	/** Set BP Address 2.
		@param lbr_BPAddress2 
		BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress2 (String lbr_BPAddress2)
	{
		set_Value (COLUMNNAME_lbr_BPAddress2, lbr_BPAddress2);
	}

	/** Get BP Address 2.
		@return BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress2);
	}

	/** Set BP Address 3.
		@param lbr_BPAddress3 
		BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress3 (String lbr_BPAddress3)
	{
		set_Value (COLUMNNAME_lbr_BPAddress3, lbr_BPAddress3);
	}

	/** Get BP Address 3.
		@return BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress3);
	}

	/** Set BP Address 4.
		@param lbr_BPAddress4 
		BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPAddress4 (String lbr_BPAddress4)
	{
		set_Value (COLUMNNAME_lbr_BPAddress4, lbr_BPAddress4);
	}

	/** Get BP Address 4.
		@return BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPAddress4);
	}

	/** Set BP City.
		@param lbr_BPCity 
		BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCity (String lbr_BPCity)
	{
		set_Value (COLUMNNAME_lbr_BPCity, lbr_BPCity);
	}

	/** Get BP City.
		@return BP City - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCity);
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** Set BP IE.
		@param lbr_BPIE 
		BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPIE (String lbr_BPIE)
	{
		set_Value (COLUMNNAME_lbr_BPIE, lbr_BPIE);
	}

	/** Get BP IE.
		@return BP IE - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPIE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPIE);
	}

	/** Set BP Phone.
		@param lbr_BPPhone 
		BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPhone (String lbr_BPPhone)
	{
		set_Value (COLUMNNAME_lbr_BPPhone, lbr_BPPhone);
	}

	/** Get BP Phone.
		@return BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPhone () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPPhone);
	}

	/** Set BP Postal.
		@param lbr_BPPostal 
		BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPPostal (String lbr_BPPostal)
	{
		set_Value (COLUMNNAME_lbr_BPPostal, lbr_BPPostal);
	}

	/** Get BP Postal.
		@return BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPPostal);
	}

	/** Set BP Region.
		@param lbr_BPRegion 
		BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion)
	{
		set_Value (COLUMNNAME_lbr_BPRegion, lbr_BPRegion);
	}

	/** Get BP Region.
		@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPRegion);
	}

	/** Set BP Suframa.
		@param lbr_BPSuframa 
		Defines the BP Suframa
	  */
	public void setlbr_BPSuframa (String lbr_BPSuframa)
	{
		set_Value (COLUMNNAME_lbr_BPSuframa, lbr_BPSuframa);
	}

	/** Get BP Suframa.
		@return Defines the BP Suframa
	  */
	public String getlbr_BPSuframa () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPSuframa);
	}

	public org.adempierelbr.model.I_LBR_CFOP getLBR_CFOP() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_CFOP)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_CFOP.Table_Name)
			.getPO(getLBR_CFOP_ID(), get_TrxName());	}

	/** Set CFOP.
		@param LBR_CFOP_ID 
		Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID < 1) 
			set_Value (COLUMNNAME_LBR_CFOP_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_CFOP_ID, Integer.valueOf(LBR_CFOP_ID));
	}

	/** Get CFOP.
		@return Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CFOP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set CFOP Name.
		@param lbr_CFOPName 
		Defines the CFOP Name
	  */
	public void setlbr_CFOPName (String lbr_CFOPName)
	{
		set_Value (COLUMNNAME_lbr_CFOPName, lbr_CFOPName);
	}

	/** Get CFOP Name.
		@return Defines the CFOP Name
	  */
	public String getlbr_CFOPName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CFOPName);
	}

	/** Set CNAE.
		@param lbr_CNAE 
		Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE)
	{
		set_Value (COLUMNNAME_lbr_CNAE, lbr_CNAE);
	}

	/** Get CNAE.
		@return Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNAE);
	}

	/** Set CNPJ.
		@param lbr_CNPJ 
		Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ)
	{
		set_Value (COLUMNNAME_lbr_CNPJ, lbr_CNPJ);
	}

	/** Get CNPJ.
		@return Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNPJ);
	}

	/** Set Date InOut.
		@param lbr_DateInOut 
		Defines the InOut Date
	  */
	public void setlbr_DateInOut (Timestamp lbr_DateInOut)
	{
		set_Value (COLUMNNAME_lbr_DateInOut, lbr_DateInOut);
	}

	/** Get Date InOut.
		@return Defines the InOut Date
	  */
	public Timestamp getlbr_DateInOut () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DateInOut);
	}

	/** Set Detalhes de Fatos Fiscais.
		@param LBR_FactFiscal_ID Detalhes de Fatos Fiscais	  */
	public void setLBR_FactFiscal_ID (int LBR_FactFiscal_ID)
	{
		if (LBR_FactFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FactFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FactFiscal_ID, Integer.valueOf(LBR_FactFiscal_ID));
	}

	/** Get Detalhes de Fatos Fiscais.
		@return Detalhes de Fatos Fiscais	  */
	public int getLBR_FactFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FactFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Fantasia.
		@param lbr_Fantasia Fantasia	  */
	public void setlbr_Fantasia (String lbr_Fantasia)
	{
		set_Value (COLUMNNAME_lbr_Fantasia, lbr_Fantasia);
	}

	/** Get Fantasia.
		@return Fantasia	  */
	public String getlbr_Fantasia () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Fantasia);
	}

	/** Set IE.
		@param lbr_IE 
		Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE)
	{
		set_Value (COLUMNNAME_lbr_IE, lbr_IE);
	}

	/** Get IE.
		@return Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IE);
	}

	/** Set Indicador de Atividade Econômica.
		@param lbr_IndAtividade Indicador de Atividade Econômica	  */
	public void setlbr_IndAtividade (String lbr_IndAtividade)
	{
		set_Value (COLUMNNAME_lbr_IndAtividade, lbr_IndAtividade);
	}

	/** Get Indicador de Atividade Econômica.
		@return Indicador de Atividade Econômica	  */
	public String getlbr_IndAtividade () 
	{
		return (String)get_Value(COLUMNNAME_lbr_IndAtividade);
	}

	/** Set Insurance Amt.
		@param lbr_InsuranceAmt 
		Defines the Insurance Amt
	  */
	public void setlbr_InsuranceAmt (BigDecimal lbr_InsuranceAmt)
	{
		set_Value (COLUMNNAME_lbr_InsuranceAmt, lbr_InsuranceAmt);
	}

	/** Get Insurance Amt.
		@return Defines the Insurance Amt
	  */
	public BigDecimal getlbr_InsuranceAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_InsuranceAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Is Own Document.
		@param lbr_IsOwnDocument 
		Identifies this is an own document
	  */
	public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument)
	{
		set_Value (COLUMNNAME_lbr_IsOwnDocument, Boolean.valueOf(lbr_IsOwnDocument));
	}

	/** Get Is Own Document.
		@return Identifies this is an own document
	  */
	public boolean islbr_IsOwnDocument () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsOwnDocument);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Is Service.
		@param lbr_IsService 
		Defines if the lines is a Service
	  */
	public void setlbr_IsService (boolean lbr_IsService)
	{
		set_Value (COLUMNNAME_lbr_IsService, Boolean.valueOf(lbr_IsService));
	}

	/** Get Is Service.
		@return Defines if the lines is a Service
	  */
	public boolean islbr_IsService () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_IsService);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Tipo do Item (Classif. Fiscal do SPED).
		@param lbr_ItemTypeBR Tipo do Item (Classif. Fiscal do SPED)	  */
	public void setlbr_ItemTypeBR (String lbr_ItemTypeBR)
	{
		set_Value (COLUMNNAME_lbr_ItemTypeBR, lbr_ItemTypeBR);
	}

	/** Get Tipo do Item (Classif. Fiscal do SPED).
		@return Tipo do Item (Classif. Fiscal do SPED)	  */
	public String getlbr_ItemTypeBR () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ItemTypeBR);
	}

	public org.adempierelbr.model.I_LBR_NCM getLBR_NCM() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NCM)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NCM.Table_Name)
			.getPO(getLBR_NCM_ID(), get_TrxName());	}

	/** Set NCM.
		@param LBR_NCM_ID 
		Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID < 1) 
			set_Value (COLUMNNAME_LBR_NCM_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NCM_ID, Integer.valueOf(LBR_NCM_ID));
	}

	/** Get NCM.
		@return Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NCM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NCM Name.
		@param lbr_NCMName 
		Defines the NCM Name
	  */
	public void setlbr_NCMName (String lbr_NCMName)
	{
		set_Value (COLUMNNAME_lbr_NCMName, lbr_NCMName);
	}

	/** Get NCM Name.
		@return Defines the NCM Name
	  */
	public String getlbr_NCMName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NCMName);
	}

	public org.adempierelbr.model.I_LBR_NFDI getLBR_NFDI() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NFDI)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NFDI.Table_Name)
			.getPO(getLBR_NFDI_ID(), get_TrxName());	}

	/** Set DI.
		@param LBR_NFDI_ID DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID)
	{
		if (LBR_NFDI_ID < 1) 
			set_Value (COLUMNNAME_LBR_NFDI_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NFDI_ID, Integer.valueOf(LBR_NFDI_ID));
	}

	/** Get DI.
		@return DI	  */
	public int getLBR_NFDI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFDI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}

	/** Set NFe Protocol.
		@param lbr_NFeProt NFe Protocol	  */
	public void setlbr_NFeProt (String lbr_NFeProt)
	{
		set_Value (COLUMNNAME_lbr_NFeProt, lbr_NFeProt);
	}

	/** Get NFe Protocol.
		@return NFe Protocol	  */
	public String getlbr_NFeProt () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeProt);
	}

	/** lbr_NFModel AD_Reference_ID=2000011 */
	public static final int LBR_NFMODEL_AD_Reference_ID=2000011;
	/** Nota Fiscal = 1 */
	public static final String LBR_NFMODEL_NotaFiscal = "1";
	/** Nota Fiscal Avulsa = 1B */
	public static final String LBR_NFMODEL_NotaFiscalAvulsa = "1B";
	/** Nota Fiscal de Venda a Consumidor = 2 */
	public static final String LBR_NFMODEL_NotaFiscalDeVendaAConsumidor = "2";
	/** Cupom Fiscal emitido por ECF = 2D */
	public static final String LBR_NFMODEL_CupomFiscalEmitidoPorECF = "2D";
	/** Bilhete de Passagem emitido por ECF = 2E */
	public static final String LBR_NFMODEL_BilheteDePassagemEmitidoPorECF = "2E";
	/** Nota Fiscal de Produtor = 4 */
	public static final String LBR_NFMODEL_NotaFiscalDeProdutor = "4";
	/** Nota Fiscal/Conta de Energia Elétrica = 6 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeEnergiaElétrica = "6";
	/** Nota Fiscal de Serviço de Transporte = 7 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTransporte = "7";
	/** Conhecimento de Transporte Rodoviário de Cargas = 8 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteRodoviárioDeCargas = "8";
	/** Conhecimento de Transporte de Cargas Avulso = 8B */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteDeCargasAvulso = "8B";
	/** Conhecimento de Transporte Aquaviário de Cargas = 9 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteAquaviárioDeCargas = "9";
	/** Conhecimento Aéreo = 10 */
	public static final String LBR_NFMODEL_ConhecimentoAéreo = "10";
	/** Conhecimento de Transporte Ferroviário de Cargas = 11 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteFerroviárioDeCargas = "11";
	/** Bilhete de Passagem Rodoviário = 13 */
	public static final String LBR_NFMODEL_BilheteDePassagemRodoviário = "13";
	/** Bilhete de Passagem Aquaviário = 14 */
	public static final String LBR_NFMODEL_BilheteDePassagemAquaviário = "14";
	/** Bilhete de Passagem e Nota de Bagagem = 15 */
	public static final String LBR_NFMODEL_BilheteDePassagemENotaDeBagagem = "15";
	/** Despacho de Transporte = 17 */
	public static final String LBR_NFMODEL_DespachoDeTransporte = "17";
	/** Bilhete de Passagem Ferroviário = 16 */
	public static final String LBR_NFMODEL_BilheteDePassagemFerroviário = "16";
	/** Resumo de Movimento Diário = 18 */
	public static final String LBR_NFMODEL_ResumoDeMovimentoDiário = "18";
	/** Ordem de Coleta de Cargas = 20 */
	public static final String LBR_NFMODEL_OrdemDeColetaDeCargas = "20";
	/** Nota Fiscal de Serviço de Comunicação = 21 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeComunicação = "21";
	/** Nota Fiscal de Serviço de Telecomunicação = 22 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTelecomunicação = "22";
	/** GNRE = 23 */
	public static final String LBR_NFMODEL_GNRE = "23";
	/** Autorização de Carregamento e Transporte = 24 */
	public static final String LBR_NFMODEL_AutorizaçãoDeCarregamentoETransporte = "24";
	/** Manifesto de Carga = 25 */
	public static final String LBR_NFMODEL_ManifestoDeCarga = "25";
	/** Conhecimento de Transporte Multimodal de Cargas = 26 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteMultimodalDeCargas = "26";
	/** Nota Fiscal de Transporte Ferroviário de Cargas = 27 */
	public static final String LBR_NFMODEL_NotaFiscalDeTransporteFerroviárioDeCargas = "27";
	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado = 28 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeGásCanalizado = "28";
	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada = 29 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeÁguaCanalizada = "29";
	/** Bilhete/Recibo do Passageiro = 30 */
	public static final String LBR_NFMODEL_BilheteReciboDoPassageiro = "30";
	/** Nota Fiscal Eletrônica = 55 */
	public static final String LBR_NFMODEL_NotaFiscalEletrônica = "55";
	/** Conhecimento de Transporte Eletrônico – CT-e = 57 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E = "57";
	/** Set Modelo de Documento Fiscal.
		@param lbr_NFModel 
		Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel)
	{

		set_Value (COLUMNNAME_lbr_NFModel, lbr_NFModel);
	}

	/** Get Modelo de Documento Fiscal.
		@return Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFModel);
	}

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscalLine)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Organization Address 1.
		@param lbr_OrgAddress1 
		The issuer organization address 1
	  */
	public void setlbr_OrgAddress1 (String lbr_OrgAddress1)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress1, lbr_OrgAddress1);
	}

	/** Get Organization Address 1.
		@return The issuer organization address 1
	  */
	public String getlbr_OrgAddress1 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress1);
	}

	/** Set Organization Address 2.
		@param lbr_OrgAddress2 
		The issuer organization address 2
	  */
	public void setlbr_OrgAddress2 (String lbr_OrgAddress2)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress2, lbr_OrgAddress2);
	}

	/** Get Organization Address 2.
		@return The issuer organization address 2
	  */
	public String getlbr_OrgAddress2 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress2);
	}

	/** Set Organization Address 3.
		@param lbr_OrgAddress3 
		The issuer organization address 3
	  */
	public void setlbr_OrgAddress3 (String lbr_OrgAddress3)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress3, lbr_OrgAddress3);
	}

	/** Get Organization Address 3.
		@return The issuer organization address 3
	  */
	public String getlbr_OrgAddress3 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress3);
	}

	/** Set Organization Address 4.
		@param lbr_OrgAddress4 
		The issuer organization address 4
	  */
	public void setlbr_OrgAddress4 (String lbr_OrgAddress4)
	{
		set_Value (COLUMNNAME_lbr_OrgAddress4, lbr_OrgAddress4);
	}

	/** Get Organization Address 4.
		@return The issuer organization address 4
	  */
	public String getlbr_OrgAddress4 () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgAddress4);
	}

	/** Set Organization CCM.
		@param lbr_OrgCCM 
		The Organization CCM
	  */
	public void setlbr_OrgCCM (String lbr_OrgCCM)
	{
		set_Value (COLUMNNAME_lbr_OrgCCM, lbr_OrgCCM);
	}

	/** Get Organization CCM.
		@return The Organization CCM
	  */
	public String getlbr_OrgCCM () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCCM);
	}

	/** Set Organization City.
		@param lbr_OrgCity 
		The City of the Organization
	  */
	public void setlbr_OrgCity (String lbr_OrgCity)
	{
		set_Value (COLUMNNAME_lbr_OrgCity, lbr_OrgCity);
	}

	/** Get Organization City.
		@return The City of the Organization
	  */
	public String getlbr_OrgCity () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgCity);
	}

	/** Set Cód. da Cidade da Org.(IBGE).
		@param LBR_OrgCityCode Cód. da Cidade da Org.(IBGE)	  */
	public void setLBR_OrgCityCode (int LBR_OrgCityCode)
	{
		set_Value (COLUMNNAME_LBR_OrgCityCode, Integer.valueOf(LBR_OrgCityCode));
	}

	/** Get Cód. da Cidade da Org.(IBGE).
		@return Cód. da Cidade da Org.(IBGE)	  */
	public int getLBR_OrgCityCode () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_OrgCityCode);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Location getLBR_Org_Location() throws RuntimeException
    {
		return (I_C_Location)MTable.get(getCtx(), I_C_Location.Table_Name)
			.getPO(getLBR_Org_Location_ID(), get_TrxName());	}

	/** Set Localização da Organização.
		@param LBR_Org_Location_ID Localização da Organização	  */
	public void setLBR_Org_Location_ID (int LBR_Org_Location_ID)
	{
		if (LBR_Org_Location_ID < 1) 
			set_Value (COLUMNNAME_LBR_Org_Location_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_Org_Location_ID, Integer.valueOf(LBR_Org_Location_ID));
	}

	/** Get Localização da Organização.
		@return Localização da Organização	  */
	public int getLBR_Org_Location_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_Org_Location_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Organization Name.
		@param lbr_OrgName 
		The Name of the Organization
	  */
	public void setlbr_OrgName (String lbr_OrgName)
	{
		set_Value (COLUMNNAME_lbr_OrgName, lbr_OrgName);
	}

	/** Get Organization Name.
		@return The Name of the Organization
	  */
	public String getlbr_OrgName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgName);
	}

	/** Set Organization Phone.
		@param lbr_OrgPhone 
		The Organization Phone
	  */
	public void setlbr_OrgPhone (String lbr_OrgPhone)
	{
		set_Value (COLUMNNAME_lbr_OrgPhone, lbr_OrgPhone);
	}

	/** Get Organization Phone.
		@return The Organization Phone
	  */
	public String getlbr_OrgPhone () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgPhone);
	}

	/** Set Organization Postal Code.
		@param lbr_OrgPostal 
		The Postal Code of the Organization
	  */
	public void setlbr_OrgPostal (String lbr_OrgPostal)
	{
		set_Value (COLUMNNAME_lbr_OrgPostal, lbr_OrgPostal);
	}

	/** Get Organization Postal Code.
		@return The Postal Code of the Organization
	  */
	public String getlbr_OrgPostal () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgPostal);
	}

	/** Set Organization Region.
		@param lbr_OrgRegion 
		The Region of the Organization
	  */
	public void setlbr_OrgRegion (String lbr_OrgRegion)
	{
		set_Value (COLUMNNAME_lbr_OrgRegion, lbr_OrgRegion);
	}

	/** Get Organization Region.
		@return The Region of the Organization
	  */
	public String getlbr_OrgRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_OrgRegion);
	}

	/** Set Suframa.
		@param lbr_Suframa 
		Brazilian SUFRAMA Identification Number
	  */
	public void setlbr_Suframa (String lbr_Suframa)
	{
		set_Value (COLUMNNAME_lbr_Suframa, lbr_Suframa);
	}

	/** Get Suframa.
		@return Brazilian SUFRAMA Identification Number
	  */
	public String getlbr_Suframa () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Suframa);
	}

	/** Set SISCOMEX Total.
		@param lbr_TotalSISCOMEX 
		SISCOMEX Total for all the document
	  */
	public void setlbr_TotalSISCOMEX (BigDecimal lbr_TotalSISCOMEX)
	{
		set_Value (COLUMNNAME_lbr_TotalSISCOMEX, lbr_TotalSISCOMEX);
	}

	/** Get SISCOMEX Total.
		@return SISCOMEX Total for all the document
	  */
	public BigDecimal getlbr_TotalSISCOMEX () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_TotalSISCOMEX);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Descrição da UOM.
		@param LBR_UOMDescription Descrição da UOM	  */
	public void setLBR_UOMDescription (String LBR_UOMDescription)
	{
		set_Value (COLUMNNAME_LBR_UOMDescription, LBR_UOMDescription);
	}

	/** Get Descrição da UOM.
		@return Descrição da UOM	  */
	public String getLBR_UOMDescription () 
	{
		return (String)get_Value(COLUMNNAME_LBR_UOMDescription);
	}

	/** Set UOM Name.
		@param lbr_UOMName 
		Defines the UOM Name
	  */
	public void setlbr_UOMName (String lbr_UOMName)
	{
		set_Value (COLUMNNAME_lbr_UOMName, lbr_UOMName);
	}

	/** Get UOM Name.
		@return Defines the UOM Name
	  */
	public String getlbr_UOMName () 
	{
		return (String)get_Value(COLUMNNAME_lbr_UOMName);
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Line Amount.
		@param LineNetAmt 
		Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public void setLineNetAmt (BigDecimal LineNetAmt)
	{
		set_Value (COLUMNNAME_LineNetAmt, LineNetAmt);
	}

	/** Get Line Amount.
		@return Line Extended Amount (Quantity * Actual Price) without Freight and Charges
	  */
	public BigDecimal getLineNetAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineNetAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Line Total.
		@param LineTotalAmt 
		Total line amount incl. Tax
	  */
	public void setLineTotalAmt (BigDecimal LineTotalAmt)
	{
		set_Value (COLUMNNAME_LineTotalAmt, LineTotalAmt);
	}

	/** Get Line Total.
		@return Total line amount incl. Tax
	  */
	public BigDecimal getLineTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LineTotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	public I_M_Product getM_Product() throws RuntimeException
    {
		return (I_M_Product)MTable.get(getCtx(), I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Total de PIS da NF.
		@param PIS_NFTaxAmt Total de PIS da NF	  */
	public void setPIS_NFTaxAmt (BigDecimal PIS_NFTaxAmt)
	{
		set_Value (COLUMNNAME_PIS_NFTaxAmt, PIS_NFTaxAmt);
	}

	/** Get Total de PIS da NF.
		@return Total de PIS da NF	  */
	public BigDecimal getPIS_NFTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PIS_NFTaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Valor do PIS.
		@param PIS_TaxAmt Valor do PIS	  */
	public void setPIS_TaxAmt (BigDecimal PIS_TaxAmt)
	{
		set_Value (COLUMNNAME_PIS_TaxAmt, PIS_TaxAmt);
	}

	/** Get Valor do PIS.
		@return Valor do PIS	  */
	public BigDecimal getPIS_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PIS_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Red. da BC do PIS.
		@param PIS_TaxBase Red. da BC do PIS	  */
	public void setPIS_TaxBase (BigDecimal PIS_TaxBase)
	{
		set_Value (COLUMNNAME_PIS_TaxBase, PIS_TaxBase);
	}

	/** Get Red. da BC do PIS.
		@return Red. da BC do PIS	  */
	public BigDecimal getPIS_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PIS_TaxBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Vlr. da BC do PIS.
		@param PIS_TaxBaseAmt Vlr. da BC do PIS	  */
	public void setPIS_TaxBaseAmt (BigDecimal PIS_TaxBaseAmt)
	{
		set_Value (COLUMNNAME_PIS_TaxBaseAmt, PIS_TaxBaseAmt);
	}

	/** Get Vlr. da BC do PIS.
		@return Vlr. da BC do PIS	  */
	public BigDecimal getPIS_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PIS_TaxBaseAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Alíq. do PIS.
		@param PIS_TaxRate Alíq. do PIS	  */
	public void setPIS_TaxRate (BigDecimal PIS_TaxRate)
	{
		set_Value (COLUMNNAME_PIS_TaxRate, PIS_TaxRate);
	}

	/** Get Alíq. do PIS.
		@return Alíq. do PIS	  */
	public BigDecimal getPIS_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PIS_TaxRate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set CST do PIS.
		@param PIS_TaxStatus CST do PIS	  */
	public void setPIS_TaxStatus (String PIS_TaxStatus)
	{
		set_Value (COLUMNNAME_PIS_TaxStatus, PIS_TaxStatus);
	}

	/** Get CST do PIS.
		@return CST do PIS	  */
	public String getPIS_TaxStatus () 
	{
		return (String)get_Value(COLUMNNAME_PIS_TaxStatus);
	}

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_Value (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product Name.
		@param ProductName 
		Name of the Product
	  */
	public void setProductName (String ProductName)
	{
		set_Value (COLUMNNAME_ProductName, ProductName);
	}

	/** Get Product Name.
		@return Name of the Product
	  */
	public String getProductName () 
	{
		return (String)get_Value(COLUMNNAME_ProductName);
	}

	/** Set NCM do Produto.
		@param ProductNCM NCM do Produto	  */
	public void setProductNCM (String ProductNCM)
	{
		set_Value (COLUMNNAME_ProductNCM, ProductNCM);
	}

	/** Get NCM do Produto.
		@return NCM do Produto	  */
	public String getProductNCM () 
	{
		return (String)get_Value(COLUMNNAME_ProductNCM);
	}

	/** Set UOM do Produto.
		@param ProductUOM UOM do Produto	  */
	public void setProductUOM (String ProductUOM)
	{
		set_Value (COLUMNNAME_ProductUOM, ProductUOM);
	}

	/** Get UOM do Produto.
		@return UOM do Produto	  */
	public String getProductUOM () 
	{
		return (String)get_Value(COLUMNNAME_ProductUOM);
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_Value (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Lines.
		@param TotalLines 
		Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines)
	{
		set_Value (COLUMNNAME_TotalLines, TotalLines);
	}

	/** Get Total Lines.
		@return Total of all document lines
	  */
	public BigDecimal getTotalLines () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalLines);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set UPC/EAN.
		@param UPC 
		Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public void setUPC (String UPC)
	{
		set_Value (COLUMNNAME_UPC, UPC);
	}

	/** Get UPC/EAN.
		@return Bar Code (Universal Product Code or its superset European Article Number)
	  */
	public String getUPC () 
	{
		return (String)get_Value(COLUMNNAME_UPC);
	}
}