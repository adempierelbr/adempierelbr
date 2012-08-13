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
	private static final long serialVersionUID = 20120813L;

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
      * @return 4 - System 
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

	/** Set Valor do COFINS.
		@param Cofins_TaxAmt Valor do COFINS	  */
	public void setCofins_TaxAmt (BigDecimal Cofins_TaxAmt)
	{
		set_Value (COLUMNNAME_Cofins_TaxAmt, Cofins_TaxAmt);
	}

	/** Get Valor do COFINS.
		@return Valor do COFINS	  */
	public BigDecimal getCofins_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Cofins_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxbase.
		@param cofins_taxbase cofins_taxbase	  */
	public void setcofins_taxbase (BigDecimal cofins_taxbase)
	{
		set_Value (COLUMNNAME_cofins_taxbase, cofins_taxbase);
	}

	/** Get cofins_taxbase.
		@return cofins_taxbase	  */
	public BigDecimal getcofins_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxbaseamt.
		@param cofins_taxbaseamt cofins_taxbaseamt	  */
	public void setcofins_taxbaseamt (BigDecimal cofins_taxbaseamt)
	{
		set_Value (COLUMNNAME_cofins_taxbaseamt, cofins_taxbaseamt);
	}

	/** Get cofins_taxbaseamt.
		@return cofins_taxbaseamt	  */
	public BigDecimal getcofins_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxrate.
		@param cofins_taxrate cofins_taxrate	  */
	public void setcofins_taxrate (BigDecimal cofins_taxrate)
	{
		set_Value (COLUMNNAME_cofins_taxrate, cofins_taxrate);
	}

	/** Get cofins_taxrate.
		@return cofins_taxrate	  */
	public BigDecimal getcofins_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_cofins_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set cofins_taxstatus.
		@param cofins_taxstatus cofins_taxstatus	  */
	public void setcofins_taxstatus (String cofins_taxstatus)
	{
		set_Value (COLUMNNAME_cofins_taxstatus, cofins_taxstatus);
	}

	/** Get cofins_taxstatus.
		@return cofins_taxstatus	  */
	public String getcofins_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_cofins_taxstatus);
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

	/** Set Discount %.
		@param Discount 
		Discount in percent
	  */
	public void setDiscount (BigDecimal Discount)
	{
		set_Value (COLUMNNAME_Discount, Discount);
	}

	/** Get Discount %.
		@return Discount in percent
	  */
	public BigDecimal getDiscount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Discount);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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

	/** Set icmsst_taxbase.
		@param icmsst_taxbase icmsst_taxbase	  */
	public void seticmsst_taxbase (BigDecimal icmsst_taxbase)
	{
		set_Value (COLUMNNAME_icmsst_taxbase, icmsst_taxbase);
	}

	/** Get icmsst_taxbase.
		@return icmsst_taxbase	  */
	public BigDecimal geticmsst_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxbaseamt.
		@param icmsst_taxbaseamt icmsst_taxbaseamt	  */
	public void seticmsst_taxbaseamt (BigDecimal icmsst_taxbaseamt)
	{
		set_Value (COLUMNNAME_icmsst_taxbaseamt, icmsst_taxbaseamt);
	}

	/** Get icmsst_taxbaseamt.
		@return icmsst_taxbaseamt	  */
	public BigDecimal geticmsst_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxrate.
		@param icmsst_taxrate icmsst_taxrate	  */
	public void seticmsst_taxrate (BigDecimal icmsst_taxrate)
	{
		set_Value (COLUMNNAME_icmsst_taxrate, icmsst_taxrate);
	}

	/** Get icmsst_taxrate.
		@return icmsst_taxrate	  */
	public BigDecimal geticmsst_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icmsst_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icmsst_taxstatus.
		@param icmsst_taxstatus icmsst_taxstatus	  */
	public void seticmsst_taxstatus (String icmsst_taxstatus)
	{
		set_Value (COLUMNNAME_icmsst_taxstatus, icmsst_taxstatus);
	}

	/** Get icmsst_taxstatus.
		@return icmsst_taxstatus	  */
	public String geticmsst_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_icmsst_taxstatus);
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

	/** Set icms_taxbase.
		@param icms_taxbase icms_taxbase	  */
	public void seticms_taxbase (BigDecimal icms_taxbase)
	{
		set_Value (COLUMNNAME_icms_taxbase, icms_taxbase);
	}

	/** Get icms_taxbase.
		@return icms_taxbase	  */
	public BigDecimal geticms_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set icms_taxbaseamt.
		@param icms_taxbaseamt icms_taxbaseamt	  */
	public void seticms_taxbaseamt (BigDecimal icms_taxbaseamt)
	{
		set_Value (COLUMNNAME_icms_taxbaseamt, icms_taxbaseamt);
	}

	/** Get icms_taxbaseamt.
		@return icms_taxbaseamt	  */
	public BigDecimal geticms_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_icms_taxbaseamt);
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

	/** Set icms_taxstatus.
		@param icms_taxstatus icms_taxstatus	  */
	public void seticms_taxstatus (String icms_taxstatus)
	{
		set_Value (COLUMNNAME_icms_taxstatus, icms_taxstatus);
	}

	/** Get icms_taxstatus.
		@return icms_taxstatus	  */
	public String geticms_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_icms_taxstatus);
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

	/** Set ii_taxbase.
		@param ii_taxbase ii_taxbase	  */
	public void setii_taxbase (BigDecimal ii_taxbase)
	{
		set_Value (COLUMNNAME_ii_taxbase, ii_taxbase);
	}

	/** Get ii_taxbase.
		@return ii_taxbase	  */
	public BigDecimal getii_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ii_taxbaseamt.
		@param ii_taxbaseamt ii_taxbaseamt	  */
	public void setii_taxbaseamt (BigDecimal ii_taxbaseamt)
	{
		set_Value (COLUMNNAME_ii_taxbaseamt, ii_taxbaseamt);
	}

	/** Get ii_taxbaseamt.
		@return ii_taxbaseamt	  */
	public BigDecimal getii_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ii_taxrate.
		@param ii_taxrate ii_taxrate	  */
	public void setii_taxrate (BigDecimal ii_taxrate)
	{
		set_Value (COLUMNNAME_ii_taxrate, ii_taxrate);
	}

	/** Get ii_taxrate.
		@return ii_taxrate	  */
	public BigDecimal getii_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ii_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ii_taxstatus.
		@param ii_taxstatus ii_taxstatus	  */
	public void setii_taxstatus (String ii_taxstatus)
	{
		set_Value (COLUMNNAME_ii_taxstatus, ii_taxstatus);
	}

	/** Get ii_taxstatus.
		@return ii_taxstatus	  */
	public String getii_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_ii_taxstatus);
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

	/** Set ipi_taxbase.
		@param ipi_taxbase ipi_taxbase	  */
	public void setipi_taxbase (BigDecimal ipi_taxbase)
	{
		set_Value (COLUMNNAME_ipi_taxbase, ipi_taxbase);
	}

	/** Get ipi_taxbase.
		@return ipi_taxbase	  */
	public BigDecimal getipi_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxbaseamt.
		@param ipi_taxbaseamt ipi_taxbaseamt	  */
	public void setipi_taxbaseamt (BigDecimal ipi_taxbaseamt)
	{
		set_Value (COLUMNNAME_ipi_taxbaseamt, ipi_taxbaseamt);
	}

	/** Get ipi_taxbaseamt.
		@return ipi_taxbaseamt	  */
	public BigDecimal getipi_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxrate.
		@param ipi_taxrate ipi_taxrate	  */
	public void setipi_taxrate (BigDecimal ipi_taxrate)
	{
		set_Value (COLUMNNAME_ipi_taxrate, ipi_taxrate);
	}

	/** Get ipi_taxrate.
		@return ipi_taxrate	  */
	public BigDecimal getipi_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ipi_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set ipi_taxstatus.
		@param ipi_taxstatus ipi_taxstatus	  */
	public void setipi_taxstatus (String ipi_taxstatus)
	{
		set_Value (COLUMNNAME_ipi_taxstatus, ipi_taxstatus);
	}

	/** Get ipi_taxstatus.
		@return ipi_taxstatus	  */
	public String getipi_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_ipi_taxstatus);
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

	/** Set lbr_orgcitycode.
		@param lbr_orgcitycode lbr_orgcitycode	  */
	public void setlbr_orgcitycode (int lbr_orgcitycode)
	{
		set_Value (COLUMNNAME_lbr_orgcitycode, Integer.valueOf(lbr_orgcitycode));
	}

	/** Get lbr_orgcitycode.
		@return lbr_orgcitycode	  */
	public int getlbr_orgcitycode () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_orgcitycode);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Location getlbr_org_location() throws RuntimeException
    {
		return (I_C_Location)MTable.get(getCtx(), I_C_Location.Table_Name)
			.getPO(getlbr_org_location_id(), get_TrxName());	}

	/** Set lbr_org_location_id.
		@param lbr_org_location_id lbr_org_location_id	  */
	public void setlbr_org_location_id (int lbr_org_location_id)
	{
		set_Value (COLUMNNAME_lbr_org_location_id, Integer.valueOf(lbr_org_location_id));
	}

	/** Get lbr_org_location_id.
		@return lbr_org_location_id	  */
	public int getlbr_org_location_id () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_lbr_org_location_id);
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

	/** Set lbr_uomdescription.
		@param lbr_uomdescription lbr_uomdescription	  */
	public void setlbr_uomdescription (String lbr_uomdescription)
	{
		set_Value (COLUMNNAME_lbr_uomdescription, lbr_uomdescription);
	}

	/** Get lbr_uomdescription.
		@return lbr_uomdescription	  */
	public String getlbr_uomdescription () 
	{
		return (String)get_Value(COLUMNNAME_lbr_uomdescription);
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

	/** Set pis_taxbase.
		@param pis_taxbase pis_taxbase	  */
	public void setpis_taxbase (BigDecimal pis_taxbase)
	{
		set_Value (COLUMNNAME_pis_taxbase, pis_taxbase);
	}

	/** Get pis_taxbase.
		@return pis_taxbase	  */
	public BigDecimal getpis_taxbase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxbase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxbaseamt.
		@param pis_taxbaseamt pis_taxbaseamt	  */
	public void setpis_taxbaseamt (BigDecimal pis_taxbaseamt)
	{
		set_Value (COLUMNNAME_pis_taxbaseamt, pis_taxbaseamt);
	}

	/** Get pis_taxbaseamt.
		@return pis_taxbaseamt	  */
	public BigDecimal getpis_taxbaseamt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxbaseamt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxrate.
		@param pis_taxrate pis_taxrate	  */
	public void setpis_taxrate (BigDecimal pis_taxrate)
	{
		set_Value (COLUMNNAME_pis_taxrate, pis_taxrate);
	}

	/** Get pis_taxrate.
		@return pis_taxrate	  */
	public BigDecimal getpis_taxrate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_pis_taxrate);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pis_taxstatus.
		@param pis_taxstatus pis_taxstatus	  */
	public void setpis_taxstatus (String pis_taxstatus)
	{
		set_Value (COLUMNNAME_pis_taxstatus, pis_taxstatus);
	}

	/** Get pis_taxstatus.
		@return pis_taxstatus	  */
	public String getpis_taxstatus () 
	{
		return (String)get_Value(COLUMNNAME_pis_taxstatus);
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

	/** Set productncm.
		@param productncm productncm	  */
	public void setproductncm (String productncm)
	{
		set_Value (COLUMNNAME_productncm, productncm);
	}

	/** Get productncm.
		@return productncm	  */
	public String getproductncm () 
	{
		return (String)get_Value(COLUMNNAME_productncm);
	}

	/** Set productuom.
		@param productuom productuom	  */
	public void setproductuom (String productuom)
	{
		set_Value (COLUMNNAME_productuom, productuom);
	}

	/** Get productuom.
		@return productuom	  */
	public String getproductuom () 
	{
		return (String)get_Value(COLUMNNAME_productuom);
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