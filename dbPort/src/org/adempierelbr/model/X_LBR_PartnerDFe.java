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
import org.compiere.util.KeyNamePair;

/** Generated Model for LBR_PartnerDFe
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_PartnerDFe extends PO implements I_LBR_PartnerDFe, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20151110L;

    /** Standard Constructor */
    public X_LBR_PartnerDFe (Properties ctx, int LBR_PartnerDFe_ID, String trxName)
    {
      super (ctx, LBR_PartnerDFe_ID, trxName);
      /** if (LBR_PartnerDFe_ID == 0)
        {
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setDateTrx (new Timestamp( System.currentTimeMillis() ));
			setDocumentType (null);
			setIsSOTrx (false);
// N
			setLBR_IsManifested (false);
// N
			setLBR_IsXMLValid (false);
// N
			setLBR_PartnerDFe_ID (0);
			setProcessed (false);
// N
			setlbr_NFeProt (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_PartnerDFe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_PartnerDFe[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Document Note.
		@param DocumentNote 
		Additional information for a Document
	  */
	public void setDocumentNote (String DocumentNote)
	{
		set_Value (COLUMNNAME_DocumentNote, DocumentNote);
	}

	/** Get Document Note.
		@return Additional information for a Document
	  */
	public String getDocumentNote () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNote);
	}

	/** DocumentType AD_Reference_ID=1120219 */
	public static final int DOCUMENTTYPE_AD_Reference_ID=1120219;
	/** NF-e = 0 */
	public static final String DOCUMENTTYPE_NF_E = "0";
	/** Evento = 1 */
	public static final String DOCUMENTTYPE_Evento = "1";
	/** Set Document Type.
		@param DocumentType 
		Document Type
	  */
	public void setDocumentType (String DocumentType)
	{

		set_Value (COLUMNNAME_DocumentType, DocumentType);
	}

	/** Get Document Type.
		@return Document Type
	  */
	public String getDocumentType () 
	{
		return (String)get_Value(COLUMNNAME_DocumentType);
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

	/** LBR_EventType AD_Reference_ID=1120220 */
	public static final int LBR_EVENTTYPE_AD_Reference_ID=1120220;
	/** Carta de Correcao = 110110 */
	public static final String LBR_EVENTTYPE_CartaDeCorrecao = "110110";
	/** Cancelamento = 110111 */
	public static final String LBR_EVENTTYPE_Cancelamento = "110111";
	/** Encerramento Homologado = 110112 */
	public static final String LBR_EVENTTYPE_EncerramentoHomologado = "110112";
	/** EPEC CT-e = 110113 */
	public static final String LBR_EVENTTYPE_EPECCT_E = "110113";
	/** Inclusao de Condutor = 110114 */
	public static final String LBR_EVENTTYPE_InclusaoDeCondutor = "110114";
	/** EPEC NF-e = 110140 */
	public static final String LBR_EVENTTYPE_EPECNF_E = "110140";
	/** Registro Multimodal = 110160 */
	public static final String LBR_EVENTTYPE_RegistroMultimodal = "110160";
	/** Confirmacao da Operacao = 210200 */
	public static final String LBR_EVENTTYPE_ConfirmacaoDaOperacao = "210200";
	/** Ciencia da Operacao = 210210 */
	public static final String LBR_EVENTTYPE_CienciaDaOperacao = "210210";
	/** Desconhecimento da Operacao = 210220 */
	public static final String LBR_EVENTTYPE_DesconhecimentoDaOperacao = "210220";
	/** Operacao nao Realizada = 210240 */
	public static final String LBR_EVENTTYPE_OperacaoNaoRealizada = "210240";
	/** Registro de Passagem = 310620 */
	public static final String LBR_EVENTTYPE_RegistroDePassagem = "310620";
	/** Registro de Passagem BRID = 510620 */
	public static final String LBR_EVENTTYPE_RegistroDePassagemBRID = "510620";
	/** CT-e Autorizado para NF-e = 610600 */
	public static final String LBR_EVENTTYPE_CT_EAutorizadoParaNF_E = "610600";
	/** Registro de Passagem para NF-e Cancelado = 610501 */
	public static final String LBR_EVENTTYPE_RegistroDePassagemParaNF_ECancelado = "610501";
	/** Registro de Passagem para NF-e RFID = 610550 */
	public static final String LBR_EVENTTYPE_RegistroDePassagemParaNF_ERFID = "610550";
	/** CT-e Cancelado = 610601 */
	public static final String LBR_EVENTTYPE_CT_ECancelado = "610601";
	/** MDF-e Cancelado = 610611 */
	public static final String LBR_EVENTTYPE_MDF_ECancelado = "610611";
	/** Vistoria SUFRAMA = 990900 */
	public static final String LBR_EVENTTYPE_VistoriaSUFRAMA = "990900";
	/** Set Event Type.
		@param LBR_EventType Event Type	  */
	public void setLBR_EventType (String LBR_EventType)
	{

		set_Value (COLUMNNAME_LBR_EventType, LBR_EventType);
	}

	/** Get Event Type.
		@return Event Type	  */
	public String getLBR_EventType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_EventType);
	}

	/** Set Manifested.
		@param LBR_IsManifested Manifested	  */
	public void setLBR_IsManifested (boolean LBR_IsManifested)
	{
		set_Value (COLUMNNAME_LBR_IsManifested, Boolean.valueOf(LBR_IsManifested));
	}

	/** Get Manifested.
		@return Manifested	  */
	public boolean isLBR_IsManifested () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsManifested);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set XML Valid.
		@param LBR_IsXMLValid XML Valid	  */
	public void setLBR_IsXMLValid (boolean LBR_IsXMLValid)
	{
		set_Value (COLUMNNAME_LBR_IsXMLValid, Boolean.valueOf(LBR_IsXMLValid));
	}

	/** Get XML Valid.
		@return XML Valid	  */
	public boolean isLBR_IsXMLValid () 
	{
		Object oo = get_Value(COLUMNNAME_LBR_IsXMLValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Partner Doc Fiscal.
		@param LBR_PartnerDFe_ID Partner Doc Fiscal	  */
	public void setLBR_PartnerDFe_ID (int LBR_PartnerDFe_ID)
	{
		if (LBR_PartnerDFe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_PartnerDFe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_PartnerDFe_ID, Integer.valueOf(LBR_PartnerDFe_ID));
	}

	/** Get Partner Doc Fiscal.
		@return Partner Doc Fiscal	  */
	public int getLBR_PartnerDFe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_PartnerDFe_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_SitNF AD_Reference_ID=1120218 */
	public static final int LBR_SITNF_AD_Reference_ID=1120218;
	/** 1 - Authorized = 1 */
	public static final String LBR_SITNF_1_Authorized = "1";
	/** 2 - Use denied = 2 */
	public static final String LBR_SITNF_2_UseDenied = "2";
	/** Set NF Status.
		@param LBR_SitNF 
		NF Status
	  */
	public void setLBR_SitNF (String LBR_SitNF)
	{

		set_Value (COLUMNNAME_LBR_SitNF, LBR_SitNF);
	}

	/** Get NF Status.
		@return NF Status
	  */
	public String getLBR_SitNF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SitNF);
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

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set CPF.
		@param lbr_CPF 
		Used to identify individuals in Brazil
	  */
	public void setlbr_CPF (String lbr_CPF)
	{
		set_Value (COLUMNNAME_lbr_CPF, lbr_CPF);
	}

	/** Get CPF.
		@return Used to identify individuals in Brazil
	  */
	public String getlbr_CPF () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CPF);
	}

	/** Set Digest Value.
		@param lbr_DigestValue Digest Value	  */
	public void setlbr_DigestValue (String lbr_DigestValue)
	{
		set_Value (COLUMNNAME_lbr_DigestValue, lbr_DigestValue);
	}

	/** Get Digest Value.
		@return Digest Value	  */
	public String getlbr_DigestValue () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DigestValue);
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getlbr_NFeID());
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
}