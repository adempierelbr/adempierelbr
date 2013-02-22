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

/** Generated Model for LBR_TaxAssessment
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_TaxAssessment extends PO implements I_LBR_TaxAssessment, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130221L;

    /** Standard Constructor */
    public X_LBR_TaxAssessment (Properties ctx, int LBR_TaxAssessment_ID, String trxName)
    {
      super (ctx, LBR_TaxAssessment_ID, trxName);
      /** if (LBR_TaxAssessment_ID == 0)
        {
			setAmtSourceCr (Env.ZERO);
			setAmtSourceDr (Env.ZERO);
			setbooknumber (0);
			setC_Period_ID (0);
			setCumulatedAmt (Env.ZERO);
			setLBR_SaldoCredorTrasnportar (Env.ZERO);
			setLBR_TaxAssessment_ID (0);
			setLBR_TaxName_ID (0);
			setpagenumber (0);
			setProcessed (false);
			setTotalAmt (Env.ZERO);
			setTotalCr (Env.ZERO);
			setTotalDr (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LBR_TaxAssessment (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_TaxAssessment[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Source Credit.
		@param AmtSourceCr 
		Source Credit Amount
	  */
	public void setAmtSourceCr (BigDecimal AmtSourceCr)
	{
		set_Value (COLUMNNAME_AmtSourceCr, AmtSourceCr);
	}

	/** Get Source Credit.
		@return Source Credit Amount
	  */
	public BigDecimal getAmtSourceCr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AmtSourceCr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Source Debit.
		@param AmtSourceDr 
		Source Debit Amount
	  */
	public void setAmtSourceDr (BigDecimal AmtSourceDr)
	{
		set_Value (COLUMNNAME_AmtSourceDr, AmtSourceDr);
	}

	/** Get Source Debit.
		@return Source Debit Amount
	  */
	public BigDecimal getAmtSourceDr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AmtSourceDr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set booknumber.
		@param booknumber booknumber	  */
	public void setbooknumber (int booknumber)
	{
		set_Value (COLUMNNAME_booknumber, Integer.valueOf(booknumber));
	}

	/** Get booknumber.
		@return booknumber	  */
	public int getbooknumber () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_booknumber);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_C_Period getC_Period() throws RuntimeException
    {
		return (I_C_Period)MTable.get(getCtx(), I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_Value (COLUMNNAME_C_Period_ID, null);
		else 
			set_Value (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Accumulated Amt.
		@param CumulatedAmt 
		Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt)
	{
		set_Value (COLUMNNAME_CumulatedAmt, CumulatedAmt);
	}

	/** Get Accumulated Amt.
		@return Total Amount
	  */
	public BigDecimal getCumulatedAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CumulatedAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_Cod_OR AD_Reference_ID=1120160 */
	public static final int LBR_COD_OR_AD_Reference_ID=1120160;
	/** ICMS a recolher = 000 */
	public static final String LBR_COD_OR_ICMSARecolher = "000";
	/** ICMS da substituição tributária pelas entradas = 001 */
	public static final String LBR_COD_OR_ICMSDaSubstituiçãoTributáriaPelasEntradas = "001";
	/** ICMS da substituição tributária pelas saídas para o Estado = 002 */
	public static final String LBR_COD_OR_ICMSDaSubstituiçãoTributáriaPelasSaídasParaOEstado = "002";
	/** Antecipação do diferencial de alíquotas do ICMS = 003 */
	public static final String LBR_COD_OR_AntecipaçãoDoDiferencialDeAlíquotasDoICMS = "003";
	/** Antecipação do ICMS da importação = 004 */
	public static final String LBR_COD_OR_AntecipaçãoDoICMSDaImportação = "004";
	/** Antecipação tributária = 005 */
	public static final String LBR_COD_OR_AntecipaçãoTributária = "005";
	/** ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza = 006 */
	public static final String LBR_COD_OR_ICMSResultanteDaAlíquotaAdicionalDosItensIncluídosNoFundoDeCombateÀPobreza = "006";
	/** Outras obrigações do ICMS = 090 */
	public static final String LBR_COD_OR_OutrasObrigaçõesDoICMS = "090";
	/** ICMS da substituição tributária pelas saídas para outro Estado = 999 */
	public static final String LBR_COD_OR_ICMSDaSubstituiçãoTributáriaPelasSaídasParaOutroEstado = "999";
	/** Set Código da Obrigação.
		@param LBR_Cod_OR Código da Obrigação	  */
	public void setLBR_Cod_OR (String LBR_Cod_OR)
	{

		set_Value (COLUMNNAME_LBR_Cod_OR, LBR_Cod_OR);
	}

	/** Get Código da Obrigação.
		@return Código da Obrigação	  */
	public String getLBR_Cod_OR () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cod_OR);
	}

	/** Set Código da Receita.
		@param LBR_Cod_Rec Código da Receita	  */
	public void setLBR_Cod_Rec (String LBR_Cod_Rec)
	{
		set_Value (COLUMNNAME_LBR_Cod_Rec, LBR_Cod_Rec);
	}

	/** Get Código da Receita.
		@return Código da Receita	  */
	public String getLBR_Cod_Rec () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Cod_Rec);
	}

	/** Set Data do Vencimento.
		@param LBR_Dt_Vcto Data do Vencimento	  */
	public void setLBR_Dt_Vcto (Timestamp LBR_Dt_Vcto)
	{
		set_Value (COLUMNNAME_LBR_Dt_Vcto, LBR_Dt_Vcto);
	}

	/** Get Data do Vencimento.
		@return Data do Vencimento	  */
	public Timestamp getLBR_Dt_Vcto () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_Dt_Vcto);
	}

	/** LBR_Ind_Proc AD_Reference_ID=1120161 */
	public static final int LBR_IND_PROC_AD_Reference_ID=1120161;
	/** SEFAZ = 0 */
	public static final String LBR_IND_PROC_SEFAZ = "0";
	/** Justiça Federal = 1 */
	public static final String LBR_IND_PROC_JustiçaFederal = "1";
	/** Justiça Estadual = 2 */
	public static final String LBR_IND_PROC_JustiçaEstadual = "2";
	/** Outros = 9 */
	public static final String LBR_IND_PROC_Outros = "9";
	/** Set Origem do Processo.
		@param LBR_Ind_Proc Origem do Processo	  */
	public void setLBR_Ind_Proc (String LBR_Ind_Proc)
	{

		set_Value (COLUMNNAME_LBR_Ind_Proc, LBR_Ind_Proc);
	}

	/** Get Origem do Processo.
		@return Origem do Processo	  */
	public String getLBR_Ind_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Ind_Proc);
	}

	/** Set Número do Processo.
		@param LBR_Num_Proc Número do Processo	  */
	public void setLBR_Num_Proc (String LBR_Num_Proc)
	{
		set_Value (COLUMNNAME_LBR_Num_Proc, LBR_Num_Proc);
	}

	/** Get Número do Processo.
		@return Número do Processo	  */
	public String getLBR_Num_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Num_Proc);
	}

	/** Set Descrição do Processo.
		@param LBR_Proc Descrição do Processo	  */
	public void setLBR_Proc (String LBR_Proc)
	{
		set_Value (COLUMNNAME_LBR_Proc, LBR_Proc);
	}

	/** Get Descrição do Processo.
		@return Descrição do Processo	  */
	public String getLBR_Proc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Proc);
	}

	/** Set Saldo Credor Trasnportar.
		@param LBR_SaldoCredorTrasnportar Saldo Credor Trasnportar	  */
	public void setLBR_SaldoCredorTrasnportar (BigDecimal LBR_SaldoCredorTrasnportar)
	{
		set_Value (COLUMNNAME_LBR_SaldoCredorTrasnportar, LBR_SaldoCredorTrasnportar);
	}

	/** Get Saldo Credor Trasnportar.
		@return Saldo Credor Trasnportar	  */
	public BigDecimal getLBR_SaldoCredorTrasnportar () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_SaldoCredorTrasnportar);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Tax Assessment.
		@param LBR_TaxAssessment_ID Tax Assessment	  */
	public void setLBR_TaxAssessment_ID (int LBR_TaxAssessment_ID)
	{
		if (LBR_TaxAssessment_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_TaxAssessment_ID, Integer.valueOf(LBR_TaxAssessment_ID));
	}

	/** Get Tax Assessment.
		@return Tax Assessment	  */
	public int getLBR_TaxAssessment_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxAssessment_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_TaxName)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_TaxName.Table_Name)
			.getPO(getLBR_TaxName_ID(), get_TrxName());	}

	/** Set Tax Name.
		@param LBR_TaxName_ID 
		Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID)
	{
		if (LBR_TaxName_ID < 1) 
			set_Value (COLUMNNAME_LBR_TaxName_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_TaxName_ID, Integer.valueOf(LBR_TaxName_ID));
	}

	/** Get Tax Name.
		@return Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_TaxName_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Descrição Complementar.
		@param LBR_Txt_Compl Descrição Complementar	  */
	public void setLBR_Txt_Compl (String LBR_Txt_Compl)
	{
		set_Value (COLUMNNAME_LBR_Txt_Compl, LBR_Txt_Compl);
	}

	/** Get Descrição Complementar.
		@return Descrição Complementar	  */
	public String getLBR_Txt_Compl () 
	{
		return (String)get_Value(COLUMNNAME_LBR_Txt_Compl);
	}

	/** Set Valor à Recolher.
		@param LBR_VL_OR Valor à Recolher	  */
	public void setLBR_VL_OR (BigDecimal LBR_VL_OR)
	{
		set_Value (COLUMNNAME_LBR_VL_OR, LBR_VL_OR);
	}

	/** Get Valor à Recolher.
		@return Valor à Recolher	  */
	public BigDecimal getLBR_VL_OR () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VL_OR);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set pagenumber.
		@param pagenumber pagenumber	  */
	public void setpagenumber (int pagenumber)
	{
		set_Value (COLUMNNAME_pagenumber, Integer.valueOf(pagenumber));
	}

	/** Get pagenumber.
		@return pagenumber	  */
	public int getpagenumber () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_pagenumber);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Total Amount.
		@param TotalAmt 
		Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt)
	{
		set_Value (COLUMNNAME_TotalAmt, TotalAmt);
	}

	/** Get Total Amount.
		@return Total Amount
	  */
	public BigDecimal getTotalAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Credit.
		@param TotalCr 
		Total Credit in document currency
	  */
	public void setTotalCr (BigDecimal TotalCr)
	{
		set_Value (COLUMNNAME_TotalCr, TotalCr);
	}

	/** Get Total Credit.
		@return Total Credit in document currency
	  */
	public BigDecimal getTotalCr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalCr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Total Debit.
		@param TotalDr 
		Total debit in document currency
	  */
	public void setTotalDr (BigDecimal TotalDr)
	{
		set_Value (COLUMNNAME_TotalDr, TotalDr);
	}

	/** Get Total Debit.
		@return Total debit in document currency
	  */
	public BigDecimal getTotalDr () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalDr);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}