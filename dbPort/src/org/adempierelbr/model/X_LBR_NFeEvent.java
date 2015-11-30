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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_NFeEvent
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NFeEvent extends PO implements I_LBR_NFeEvent, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20151030L;

    /** Standard Constructor */
    public X_LBR_NFeEvent (Properties ctx, int LBR_NFeEvent_ID, String trxName)
    {
      super (ctx, LBR_NFeEvent_ID, trxName);
      /** if (LBR_NFeEvent_ID == 0)
        {
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setDocumentNo (null);
			setLBR_EventType (null);
			setLBR_NFeEvent_ID (0);
			setProcessed (false);
// N
			setSeqNo (0);
// 1
			setlbr_NFeID (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFeEvent (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_NFeEvent[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** DocAction AD_Reference_ID=135 */
	public static final int DOCACTION_AD_Reference_ID=135;
	/** Complete = CO */
	public static final String DOCACTION_Complete = "CO";
	/** Approve = AP */
	public static final String DOCACTION_Approve = "AP";
	/** Reject = RJ */
	public static final String DOCACTION_Reject = "RJ";
	/** Post = PO */
	public static final String DOCACTION_Post = "PO";
	/** Void = VO */
	public static final String DOCACTION_Void = "VO";
	/** Close = CL */
	public static final String DOCACTION_Close = "CL";
	/** Reverse - Correct = RC */
	public static final String DOCACTION_Reverse_Correct = "RC";
	/** Reverse - Accrual = RA */
	public static final String DOCACTION_Reverse_Accrual = "RA";
	/** Invalidate = IN */
	public static final String DOCACTION_Invalidate = "IN";
	/** Re-activate = RE */
	public static final String DOCACTION_Re_Activate = "RE";
	/** <None> = -- */
	public static final String DOCACTION_None = "--";
	/** Prepare = PR */
	public static final String DOCACTION_Prepare = "PR";
	/** Unlock = XL */
	public static final String DOCACTION_Unlock = "XL";
	/** Wait Complete = WC */
	public static final String DOCACTION_WaitComplete = "WC";
	/** Set Document Action.
		@param DocAction 
		The targeted status of the document
	  */
	public void setDocAction (String DocAction)
	{

		set_Value (COLUMNNAME_DocAction, DocAction);
	}

	/** Get Document Action.
		@return The targeted status of the document
	  */
	public String getDocAction () 
	{
		return (String)get_Value(COLUMNNAME_DocAction);
	}

	/** DocStatus AD_Reference_ID=131 */
	public static final int DOCSTATUS_AD_Reference_ID=131;
	/** Drafted = DR */
	public static final String DOCSTATUS_Drafted = "DR";
	/** Completed = CO */
	public static final String DOCSTATUS_Completed = "CO";
	/** Approved = AP */
	public static final String DOCSTATUS_Approved = "AP";
	/** Not Approved = NA */
	public static final String DOCSTATUS_NotApproved = "NA";
	/** Voided = VO */
	public static final String DOCSTATUS_Voided = "VO";
	/** Invalid = IN */
	public static final String DOCSTATUS_Invalid = "IN";
	/** Reversed = RE */
	public static final String DOCSTATUS_Reversed = "RE";
	/** Closed = CL */
	public static final String DOCSTATUS_Closed = "CL";
	/** Unknown = ?? */
	public static final String DOCSTATUS_Unknown = "??";
	/** In Progress = IP */
	public static final String DOCSTATUS_InProgress = "IP";
	/** Waiting Payment = WP */
	public static final String DOCSTATUS_WaitingPayment = "WP";
	/** Waiting Confirmation = WC */
	public static final String DOCSTATUS_WaitingConfirmation = "WC";
	/** Set Document Status.
		@param DocStatus 
		The current status of the document
	  */
	public void setDocStatus (String DocStatus)
	{

		set_Value (COLUMNNAME_DocStatus, DocStatus);
	}

	/** Get Document Status.
		@return The current status of the document
	  */
	public String getDocStatus () 
	{
		return (String)get_Value(COLUMNNAME_DocStatus);
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

	/** Set NFe Event.
		@param LBR_NFeEvent_ID NFe Event	  */
	public void setLBR_NFeEvent_ID (int LBR_NFeEvent_ID)
	{
		if (LBR_NFeEvent_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeEvent_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFeEvent_ID, Integer.valueOf(LBR_NFeEvent_ID));
	}

	/** Get NFe Event.
		@return NFe Event	  */
	public int getLBR_NFeEvent_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFeEvent_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Status.
		@param Status 
		Status of the currently running check
	  */
	public void setStatus (String Status)
	{
		set_Value (COLUMNNAME_Status, Status);
	}

	/** Get Status.
		@return Status of the currently running check
	  */
	public String getStatus () 
	{
		return (String)get_Value(COLUMNNAME_Status);
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

	/** lbr_NFeStatus AD_Reference_ID=1100004 */
	public static final int LBR_NFESTATUS_AD_Reference_ID=1100004;
	/** 100-Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E = "100";
	/** 101-Cancelamento de NF-e homologado = 101 */
	public static final String LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado = "101";
	/** 102-Inutilização de número homologado = 102 */
	public static final String LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado = "102";
	/** 103-Lote recebido com sucesso = 103 */
	public static final String LBR_NFESTATUS_103_LoteRecebidoComSucesso = "103";
	/** 104-Lote processado = 104 */
	public static final String LBR_NFESTATUS_104_LoteProcessado = "104";
	/** 105-Lote em processamento = 105 */
	public static final String LBR_NFESTATUS_105_LoteEmProcessamento = "105";
	/** 106-Lote não localizado = 106 */
	public static final String LBR_NFESTATUS_106_LoteNãoLocalizado = "106";
	/** 107-Serviço em Operação = 107 */
	public static final String LBR_NFESTATUS_107_ServiçoEmOperação = "107";
	/** 108-Serviço Paralisado Momentaneamente (curto prazo) = 108 */
	public static final String LBR_NFESTATUS_108_ServiçoParalisadoMomentaneamenteCurtoPrazo = "108";
	/** 109-Serviço Paralisado sem Previsão = 109 */
	public static final String LBR_NFESTATUS_109_ServiçoParalisadoSemPrevisão = "109";
	/** 110-Uso Denegado = 110 */
	public static final String LBR_NFESTATUS_110_UsoDenegado = "110";
	/** 111-Consulta cadastro com uma ocorrência = 111 */
	public static final String LBR_NFESTATUS_111_ConsultaCadastroComUmaOcorrência = "111";
	/** 112-Consulta cadastro com mais de uma ocorrência = 112 */
	public static final String LBR_NFESTATUS_112_ConsultaCadastroComMaisDeUmaOcorrência = "112";
	/** 201-Rejeição: O numero máximo de numeração de NF-e a inutil = 201 */
	public static final String LBR_NFESTATUS_201_RejeiçãoONumeroMáximoDeNumeraçãoDeNF_EAInutil = "201";
	/** 202-Rejeição: Falha no reconhecimento da autoria ou integri = 202 */
	public static final String LBR_NFESTATUS_202_RejeiçãoFalhaNoReconhecimentoDaAutoriaOuIntegri = "202";
	/** 203-Rejeição: Emissor não habilitado para emissão de NFC-e = 203 */
	public static final String LBR_NFESTATUS_203_RejeiçãoEmissorNãoHabilitadoParaEmissãoDeNFC_E = "203";
	/** 204-Rejeição: Duplicidade de NF-e [999999999999999999999999 = 204 */
	public static final String LBR_NFESTATUS_204_RejeiçãoDuplicidadeDeNF_E999999999999999999999999 = "204";
	/** 205-Rejeição: NF-e está denegada na base de dados da SEFAZ = 205 */
	public static final String LBR_NFESTATUS_205_RejeiçãoNF_EEstáDenegadaNaBaseDeDadosDaSEFAZ = "205";
	/** 206-Rejeição: NFC-e já está inutilizada na Base de Dados da = 206 */
	public static final String LBR_NFESTATUS_206_RejeiçãoNFC_EJáEstáInutilizadaNaBaseDeDadosDa = "206";
	/** 207-Rejeição: CNPJ do emitente inválido = 207 */
	public static final String LBR_NFESTATUS_207_RejeiçãoCNPJDoEmitenteInválido = "207";
	/** 208-Rejeição: CNPJ do destinatário inválido = 208 */
	public static final String LBR_NFESTATUS_208_RejeiçãoCNPJDoDestinatárioInválido = "208";
	/** 209-Rejeição: IE do emitente inválida = 209 */
	public static final String LBR_NFESTATUS_209_RejeiçãoIEDoEmitenteInválida = "209";
	/** 210-Rejeição: IE do destinatário inválida = 210 */
	public static final String LBR_NFESTATUS_210_RejeiçãoIEDoDestinatárioInválida = "210";
	/** 211-Rejeição: IE do substituto inválida = 211 */
	public static final String LBR_NFESTATUS_211_RejeiçãoIEDoSubstitutoInválida = "211";
	/** 212-Rejeição: Data de emissão NFC-e posterior a data de rec = 212 */
	public static final String LBR_NFESTATUS_212_RejeiçãoDataDeEmissãoNFC_EPosteriorADataDeRec = "212";
	/** 213-Rejeição: CNPJ-Base do Autor difere do CNPJ-Base do Cer = 213 */
	public static final String LBR_NFESTATUS_213_RejeiçãoCNPJ_BaseDoAutorDifereDoCNPJ_BaseDoCer = "213";
	/** 214-Rejeição: Tamanho da mensagem excedeu o limite estabele = 214 */
	public static final String LBR_NFESTATUS_214_RejeiçãoTamanhoDaMensagemExcedeuOLimiteEstabele = "214";
	/** 215-Rejeição: Falha Schema XML = 215 */
	public static final String LBR_NFESTATUS_215_RejeiçãoFalhaSchemaXML = "215";
	/** 216-Rejeição: Chave de Acesso difere da cadastrada = 216 */
	public static final String LBR_NFESTATUS_216_RejeiçãoChaveDeAcessoDifereDaCadastrada = "216";
	/** 217-Rejeição: NF-e não consta na base de dados da SEFAZ = 217 */
	public static final String LBR_NFESTATUS_217_RejeiçãoNF_ENãoConstaNaBaseDeDadosDaSEFAZ = "217";
	/** 218-Rejeição: NF-e já esta cancelada na base de dados da SE = 218 */
	public static final String LBR_NFESTATUS_218_RejeiçãoNF_EJáEstaCanceladaNaBaseDeDadosDaSE = "218";
	/** 219-Rejeição: Circulação da NF-e verificada = 219 */
	public static final String LBR_NFESTATUS_219_RejeiçãoCirculaçãoDaNF_EVerificada = "219";
	/** 220-Rejeição: Prazo de Cancelamento Superior ao Previsto na = 220 */
	public static final String LBR_NFESTATUS_220_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNa = "220";
	/** 221-Rejeição: Confirmado o recebimento da NF-e pelo destina = 221 */
	public static final String LBR_NFESTATUS_221_RejeiçãoConfirmadoORecebimentoDaNF_EPeloDestina = "221";
	/** 222-Rejeição: Protocolo de Autorização de Uso difere do cad = 222 */
	public static final String LBR_NFESTATUS_222_RejeiçãoProtocoloDeAutorizaçãoDeUsoDifereDoCad = "222";
	/** 223-Rejeição: CNPJ do transmissor do lote difere do CNPJ do = 223 */
	public static final String LBR_NFESTATUS_223_RejeiçãoCNPJDoTransmissorDoLoteDifereDoCNPJDo = "223";
	/** 224-Rejeição: A faixa inicial é maior que a faixa final = 224 */
	public static final String LBR_NFESTATUS_224_RejeiçãoAFaixaInicialÉMaiorQueAFaixaFinal = "224";
	/** 225-Rejeição: Falha no Schema XML do lote de NFe = 225 */
	public static final String LBR_NFESTATUS_225_RejeiçãoFalhaNoSchemaXMLDoLoteDeNFe = "225";
	/** 226-Rejeição: Código da UF do Emitente diverge da UF autori = 226 */
	public static final String LBR_NFESTATUS_226_RejeiçãoCódigoDaUFDoEmitenteDivergeDaUFAutori = "226";
	/** 227-Rejeição: Erro na Chave de Acesso - Campo Id – falta a  = 227 */
	public static final String LBR_NFESTATUS_227_RejeiçãoErroNaChaveDeAcesso_CampoIdFaltaA = "227";
	/** 228-Rejeição: Data de Emissão muito atrasada = 228 */
	public static final String LBR_NFESTATUS_228_RejeiçãoDataDeEmissãoMuitoAtrasada = "228";
	/** 229-Rejeição: IE do emitente não informada = 229 */
	public static final String LBR_NFESTATUS_229_RejeiçãoIEDoEmitenteNãoInformada = "229";
	/** 230-Rejeição: IE do emitente não cadastrada = 230 */
	public static final String LBR_NFESTATUS_230_RejeiçãoIEDoEmitenteNãoCadastrada = "230";
	/** 231-Rejeição: IE do emitente não vinculada ao CNPJ = 231 */
	public static final String LBR_NFESTATUS_231_RejeiçãoIEDoEmitenteNãoVinculadaAoCNPJ = "231";
	/** 232-Rejeição: IE do destinatário não informada = 232 */
	public static final String LBR_NFESTATUS_232_RejeiçãoIEDoDestinatárioNãoInformada = "232";
	/** 233-Rejeição: IE do destinatário não cadastrada = 233 */
	public static final String LBR_NFESTATUS_233_RejeiçãoIEDoDestinatárioNãoCadastrada = "233";
	/** 234-Rejeição: IE do destinatário não vinculada ao CNPJ = 234 */
	public static final String LBR_NFESTATUS_234_RejeiçãoIEDoDestinatárioNãoVinculadaAoCNPJ = "234";
	/** 235-Rejeição: Inscrição SUFRAMA inválida = 235 */
	public static final String LBR_NFESTATUS_235_RejeiçãoInscriçãoSUFRAMAInválida = "235";
	/** 236-Rejeição: Chave de Acesso com dígito verificador inváli = 236 */
	public static final String LBR_NFESTATUS_236_RejeiçãoChaveDeAcessoComDígitoVerificadorInváli = "236";
	/** 237-Rejeição: CPF do destinatário inválido = 237 */
	public static final String LBR_NFESTATUS_237_RejeiçãoCPFDoDestinatárioInválido = "237";
	/** 238-Rejeição: Cabeçalho - Versão do arquivo XML superior a  = 238 */
	public static final String LBR_NFESTATUS_238_RejeiçãoCabeçalho_VersãoDoArquivoXMLSuperiorA = "238";
	/** 239-Rejeição: Cabeçalho - Versão do arquivo XML não suporta = 239 */
	public static final String LBR_NFESTATUS_239_RejeiçãoCabeçalho_VersãoDoArquivoXMLNãoSuporta = "239";
	/** 240-Rejeição: Cancelamento/Inutilização - Irregularidade Fi = 240 */
	public static final String LBR_NFESTATUS_240_RejeiçãoCancelamentoInutilização_IrregularidadeFi = "240";
	/** 241-Rejeição: Um número da faixa já foi utilizado = 241 */
	public static final String LBR_NFESTATUS_241_RejeiçãoUmNúmeroDaFaixaJáFoiUtilizado = "241";
	/** 242-Rejeição: Elemento nfeCabecMsg inexistente no SOAP Head = 242 */
	public static final String LBR_NFESTATUS_242_RejeiçãoElementoNfeCabecMsgInexistenteNoSOAPHead = "242";
	/** 243-Rejeição: XML Mal Formado = 243 */
	public static final String LBR_NFESTATUS_243_RejeiçãoXMLMalFormado = "243";
	/** 244-Rejeição: CNPJ do Certificado Digital difere do CNPJ da = 244 */
	public static final String LBR_NFESTATUS_244_RejeiçãoCNPJDoCertificadoDigitalDifereDoCNPJDa = "244";
	/** 245-Rejeição: CNPJ Emitente não cadastrado = 245 */
	public static final String LBR_NFESTATUS_245_RejeiçãoCNPJEmitenteNãoCadastrado = "245";
	/** 246-Rejeição: CNPJ Destinatário não cadastrado = 246 */
	public static final String LBR_NFESTATUS_246_RejeiçãoCNPJDestinatárioNãoCadastrado = "246";
	/** 247-Rejeição: Sigla da UF do Emitente diverge da UF autoriz = 247 */
	public static final String LBR_NFESTATUS_247_RejeiçãoSiglaDaUFDoEmitenteDivergeDaUFAutoriz = "247";
	/** 248-Rejeição: UF do Recibo diverge da UF autorizadora = 248 */
	public static final String LBR_NFESTATUS_248_RejeiçãoUFDoReciboDivergeDaUFAutorizadora = "248";
	/** 249-Rejeição: UF da Chave de Acesso diverge da UF autorizad = 249 */
	public static final String LBR_NFESTATUS_249_RejeiçãoUFDaChaveDeAcessoDivergeDaUFAutorizad = "249";
	/** 250-Rejeição: UF diverge da UF autorizadora = 250 */
	public static final String LBR_NFESTATUS_250_RejeiçãoUFDivergeDaUFAutorizadora = "250";
	/** 251-Rejeição: UF/Município destinatário não pertence a SUFR = 251 */
	public static final String LBR_NFESTATUS_251_RejeiçãoUFMunicípioDestinatárioNãoPertenceASUFR = "251";
	/** 252-Rejeição: Ambiente informado diverge do Ambiente de rec = 252 */
	public static final String LBR_NFESTATUS_252_RejeiçãoAmbienteInformadoDivergeDoAmbienteDeRec = "252";
	/** 253-Rejeição: Digito Verificador da chave de acesso compost = 253 */
	public static final String LBR_NFESTATUS_253_RejeiçãoDigitoVerificadorDaChaveDeAcessoCompost = "253";
	/** 254-Rejeição: NF-e complementar não possui NF referenciada = 254 */
	public static final String LBR_NFESTATUS_254_RejeiçãoNF_EComplementarNãoPossuiNFReferenciada = "254";
	/** 255-Rejeição: NF-e complementar possui mais de uma NF refer = 255 */
	public static final String LBR_NFESTATUS_255_RejeiçãoNF_EComplementarPossuiMaisDeUmaNFRefer = "255";
	/** 256-Rejeição: Uma NF-e da faixa já está inutilizada na Base = 256 */
	public static final String LBR_NFESTATUS_256_RejeiçãoUmaNF_EDaFaixaJáEstáInutilizadaNaBase = "256";
	/** 257-Rejeição: Solicitante não habilitado para emissão da NF = 257 */
	public static final String LBR_NFESTATUS_257_RejeiçãoSolicitanteNãoHabilitadoParaEmissãoDaNF = "257";
	/** 258-Rejeição: CNPJ da consulta inválido = 258 */
	public static final String LBR_NFESTATUS_258_RejeiçãoCNPJDaConsultaInválido = "258";
	/** 259-Rejeição: CNPJ da consulta não cadastrado como contribu = 259 */
	public static final String LBR_NFESTATUS_259_RejeiçãoCNPJDaConsultaNãoCadastradoComoContribu = "259";
	/** 260-Rejeição: IE da consulta inválida = 260 */
	public static final String LBR_NFESTATUS_260_RejeiçãoIEDaConsultaInválida = "260";
	/** 261-Rejeição: IE da consulta não cadastrada como contribuin = 261 */
	public static final String LBR_NFESTATUS_261_RejeiçãoIEDaConsultaNãoCadastradaComoContribuin = "261";
	/** 262-Rejeição: UF não fornece consulta por CPF = 262 */
	public static final String LBR_NFESTATUS_262_RejeiçãoUFNãoForneceConsultaPorCPF = "262";
	/** 263-Rejeição: CPF da consulta inválido = 263 */
	public static final String LBR_NFESTATUS_263_RejeiçãoCPFDaConsultaInválido = "263";
	/** 264-Rejeição: CPF da consulta não cadastrado como contribui = 264 */
	public static final String LBR_NFESTATUS_264_RejeiçãoCPFDaConsultaNãoCadastradoComoContribui = "264";
	/** 265-Rejeição: Sigla da UF da consulta difere da UF do Web S = 265 */
	public static final String LBR_NFESTATUS_265_RejeiçãoSiglaDaUFDaConsultaDifereDaUFDoWebS = "265";
	/** 266-Rejeição: Série utilizada não permitida no Web Service = 266 */
	public static final String LBR_NFESTATUS_266_RejeiçãoSérieUtilizadaNãoPermitidaNoWebService = "266";
	/** 267-Rejeição: Chave de Acesso referenciada inexistente = 267 */
	public static final String LBR_NFESTATUS_267_RejeiçãoChaveDeAcessoReferenciadaInexistente = "267";
	/** 268-Rejeição: NF Complementar referencia uma outra NF-e Com = 268 */
	public static final String LBR_NFESTATUS_268_RejeiçãoNFComplementarReferenciaUmaOutraNF_ECom = "268";
	/** 269-Rejeição: CNPJ Emitente da NF Complementar difere do CN = 269 */
	public static final String LBR_NFESTATUS_269_RejeiçãoCNPJEmitenteDaNFComplementarDifereDoCN = "269";
	/** 270-Rejeição: Código Município do Fato Gerador: dígito invá = 270 */
	public static final String LBR_NFESTATUS_270_RejeiçãoCódigoMunicípioDoFatoGeradorDígitoInvá = "270";
	/** 271-Rejeição: Código Município do Fato Gerador: difere da U = 271 */
	public static final String LBR_NFESTATUS_271_RejeiçãoCódigoMunicípioDoFatoGeradorDifereDaU = "271";
	/** 272-Rejeição: Código Município do Emitente: dígito inválido = 272 */
	public static final String LBR_NFESTATUS_272_RejeiçãoCódigoMunicípioDoEmitenteDígitoInválido = "272";
	/** 273-Rejeição: Código Município do Emitente: difere da UF do = 273 */
	public static final String LBR_NFESTATUS_273_RejeiçãoCódigoMunicípioDoEmitenteDifereDaUFDo = "273";
	/** 274-Rejeição: Código Município do Destinatário: dígito invá = 274 */
	public static final String LBR_NFESTATUS_274_RejeiçãoCódigoMunicípioDoDestinatárioDígitoInvá = "274";
	/** 275-Rejeição: Código Município do Destinatário: difere da U = 275 */
	public static final String LBR_NFESTATUS_275_RejeiçãoCódigoMunicípioDoDestinatárioDifereDaU = "275";
	/** 276-Rejeição: Código Município do Local de Retirada: dígito = 276 */
	public static final String LBR_NFESTATUS_276_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDígito = "276";
	/** 277-Rejeição: Código Município do Local de Retirada: difere = 277 */
	public static final String LBR_NFESTATUS_277_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDifere = "277";
	/** 278-Rejeição: Código Município do Local de Entrega: dígito  = 278 */
	public static final String LBR_NFESTATUS_278_RejeiçãoCódigoMunicípioDoLocalDeEntregaDígito = "278";
	/** 279-Rejeição: Código Município do Local de Entrega: difere  = 279 */
	public static final String LBR_NFESTATUS_279_RejeiçãoCódigoMunicípioDoLocalDeEntregaDifere = "279";
	/** 280-Rejeição: Certificado Transmissor inválido = 280 */
	public static final String LBR_NFESTATUS_280_RejeiçãoCertificadoTransmissorInválido = "280";
	/** 281-Rejeição: Certificado Transmissor Data Validade = 281 */
	public static final String LBR_NFESTATUS_281_RejeiçãoCertificadoTransmissorDataValidade = "281";
	/** 282-Rejeição: Certificado Transmissor sem CNPJ = 282 */
	public static final String LBR_NFESTATUS_282_RejeiçãoCertificadoTransmissorSemCNPJ = "282";
	/** 283-Rejeição: Certificado Transmissor - erro Cadeia de Cert = 283 */
	public static final String LBR_NFESTATUS_283_RejeiçãoCertificadoTransmissor_ErroCadeiaDeCert = "283";
	/** 284-Rejeição: Certificado Transmissor revogado = 284 */
	public static final String LBR_NFESTATUS_284_RejeiçãoCertificadoTransmissorRevogado = "284";
	/** 285-Rejeição: Certificado Transmissor difere ICP-Brasil = 285 */
	public static final String LBR_NFESTATUS_285_RejeiçãoCertificadoTransmissorDifereICP_Brasil = "285";
	/** 286-Rejeição: Certificado Transmissor erro no acesso a LCR = 286 */
	public static final String LBR_NFESTATUS_286_RejeiçãoCertificadoTransmissorErroNoAcessoALCR = "286";
	/** 287-Rejeição: Código Município do FG - ISSQN: dígito inváli = 287 */
	public static final String LBR_NFESTATUS_287_RejeiçãoCódigoMunicípioDoFG_ISSQNDígitoInváli = "287";
	/** 288-Rejeição: Código Município do FG - Transporte: dígito i = 288 */
	public static final String LBR_NFESTATUS_288_RejeiçãoCódigoMunicípioDoFG_TransporteDígitoI = "288";
	/** 289-Rejeição: Código da UF informada diverge da UF solicita = 289 */
	public static final String LBR_NFESTATUS_289_RejeiçãoCódigoDaUFInformadaDivergeDaUFSolicita = "289";
	/** 290-Rejeição: Certificado Assinatura inválido = 290 */
	public static final String LBR_NFESTATUS_290_RejeiçãoCertificadoAssinaturaInválido = "290";
	/** 291-Rejeição: Certificado Assinatura Data Validade = 291 */
	public static final String LBR_NFESTATUS_291_RejeiçãoCertificadoAssinaturaDataValidade = "291";
	/** 292-Rejeição: Certificado Assinatura sem CNPJ = 292 */
	public static final String LBR_NFESTATUS_292_RejeiçãoCertificadoAssinaturaSemCNPJ = "292";
	/** 293-Rejeição: Certificado Assinatura - erro Cadeia de Certi = 293 */
	public static final String LBR_NFESTATUS_293_RejeiçãoCertificadoAssinatura_ErroCadeiaDeCerti = "293";
	/** 294-Rejeição: Certificado Assinatura revogado = 294 */
	public static final String LBR_NFESTATUS_294_RejeiçãoCertificadoAssinaturaRevogado = "294";
	/** 295-Rejeição: Certificado Assinatura difere ICP-Brasil = 295 */
	public static final String LBR_NFESTATUS_295_RejeiçãoCertificadoAssinaturaDifereICP_Brasil = "295";
	/** 296-Rejeição: Certificado Assinatura erro no acesso a LCR = 296 */
	public static final String LBR_NFESTATUS_296_RejeiçãoCertificadoAssinaturaErroNoAcessoALCR = "296";
	/** 297-Rejeição: Assinatura difere do calculado = 297 */
	public static final String LBR_NFESTATUS_297_RejeiçãoAssinaturaDifereDoCalculado = "297";
	/** 298-Rejeição: Assinatura difere do padrão do Projeto = 298 */
	public static final String LBR_NFESTATUS_298_RejeiçãoAssinaturaDifereDoPadrãoDoProjeto = "298";
	/** 299-Rejeição: XML da área de cabeçalho com codificação dife = 299 */
	public static final String LBR_NFESTATUS_299_RejeiçãoXMLDaÁreaDeCabeçalhoComCodificaçãoDife = "299";
	/** 401-Rejeição: CPF do remetente inválido = 401 */
	public static final String LBR_NFESTATUS_401_RejeiçãoCPFDoRemetenteInválido = "401";
	/** 402-Rejeição: XML da área de dados com codificação diferent = 402 */
	public static final String LBR_NFESTATUS_402_RejeiçãoXMLDaÁreaDeDadosComCodificaçãoDiferent = "402";
	/** 403-Rejeição: O grupo de informações da NF-e avulsa é de us = 403 */
	public static final String LBR_NFESTATUS_403_RejeiçãoOGrupoDeInformaçõesDaNF_EAvulsaÉDeUs = "403";
	/** 404-Rejeição: Uso de prefixo de namespace não permitido = 404 */
	public static final String LBR_NFESTATUS_404_RejeiçãoUsoDePrefixoDeNamespaceNãoPermitido = "404";
	/** 405-Rejeição: Código do país do emitente: dígito inválido = 405 */
	public static final String LBR_NFESTATUS_405_RejeiçãoCódigoDoPaísDoEmitenteDígitoInválido = "405";
	/** 406-Rejeição: Código do país do destinatário: dígito inváli = 406 */
	public static final String LBR_NFESTATUS_406_RejeiçãoCódigoDoPaísDoDestinatárioDígitoInváli = "406";
	/** 407-Rejeição: O CPF só pode ser informado no campo emitente = 407 */
	public static final String LBR_NFESTATUS_407_RejeiçãoOCPFSóPodeSerInformadoNoCampoEmitente = "407";
	/** 453-Rejeição: Ano de inutilização não pode ser superior ao  = 453 */
	public static final String LBR_NFESTATUS_453_RejeiçãoAnoDeInutilizaçãoNãoPodeSerSuperiorAo = "453";
	/** 454-Rejeição: Ano de inutilização não pode ser inferior a 2 = 454 */
	public static final String LBR_NFESTATUS_454_RejeiçãoAnoDeInutilizaçãoNãoPodeSerInferiorA2 = "454";
	/** 478-Rejeição: Local da entrega não informado para faturamen = 478 */
	public static final String LBR_NFESTATUS_478_RejeiçãoLocalDaEntregaNãoInformadoParaFaturamen = "478";
	/** 999-Rejeição: Erro não catalogado = 999 */
	public static final String LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogado = "999";
	/** 301-Rejeição: Irregularidade Cadastral do Emitente = 301 */
	public static final String LBR_NFESTATUS_301_RejeiçãoIrregularidadeCadastralDoEmitente = "301";
	/** 302-Rejeição: Irregularidade fiscal do destinatário = 302 */
	public static final String LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário = "302";
	/** 409-Rejeição: Campo cUF inexistente no elemento nfeCabecMsg = 409 */
	public static final String LBR_NFESTATUS_409_RejeiçãoCampoCUFInexistenteNoElementoNfeCabecMsg = "409";
	/** 410-Rejeição: UF informada no campo cUF não é atendida pelo = 410 */
	public static final String LBR_NFESTATUS_410_RejeiçãoUFInformadaNoCampoCUFNãoÉAtendidaPelo = "410";
	/** 411-Rejeição: Campo versaoDados inexistente no elemento nfe = 411 */
	public static final String LBR_NFESTATUS_411_RejeiçãoCampoVersaoDadosInexistenteNoElementoNfe = "411";
	/** 420-Rejeição: Cancelamento para NF-e já cancelada = 420 */
	public static final String LBR_NFESTATUS_420_RejeiçãoCancelamentoParaNF_EJáCancelada = "420";
	/** 450-Rejeição: Modelo da NF-e diferente de 55 = 450 */
	public static final String LBR_NFESTATUS_450_RejeiçãoModeloDaNF_EDiferenteDe55 = "450";
	/** 451-Rejeição: Processo de emissão informado inválido = 451 */
	public static final String LBR_NFESTATUS_451_RejeiçãoProcessoDeEmissãoInformadoInválido = "451";
	/** 452-Rejeição: Tipo Autorizador do Recibo diverge do Órgão A = 452 */
	public static final String LBR_NFESTATUS_452_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoA = "452";
	/** 502-Rejeição: Erro na Chave de Acesso - Campo Id não corres = 502 */
	public static final String LBR_NFESTATUS_502_RejeiçãoErroNaChaveDeAcesso_CampoIdNãoCorres = "502";
	/** 503-Rejeição: Série utilizada fora da faixa permitida no SC = 503 */
	public static final String LBR_NFESTATUS_503_RejeiçãoSérieUtilizadaForaDaFaixaPermitidaNoSC = "503";
	/** 504-Rejeição: Data de Entrada/Saída posterior ao permitido = 504 */
	public static final String LBR_NFESTATUS_504_RejeiçãoDataDeEntradaSaídaPosteriorAoPermitido = "504";
	/** 505-Rejeição: Data de Entrada/Saída anterior ao permitido = 505 */
	public static final String LBR_NFESTATUS_505_RejeiçãoDataDeEntradaSaídaAnteriorAoPermitido = "505";
	/** 506-Rejeição: Data de Saída menor que a Data de Emissão = 506 */
	public static final String LBR_NFESTATUS_506_RejeiçãoDataDeSaídaMenorQueADataDeEmissão = "506";
	/** 507-Rejeição: O CNPJ do destinatário/remetente não deve ser = 507 */
	public static final String LBR_NFESTATUS_507_RejeiçãoOCNPJDoDestinatárioRemetenteNãoDeveSer = "507";
	/** 508-Rejeição: O CNPJ com conteúdo nulo só é válido em opera = 508 */
	public static final String LBR_NFESTATUS_508_RejeiçãoOCNPJComConteúdoNuloSóÉVálidoEmOpera = "508";
	/** 509-Rejeição: O CNPJ com conteúdo nulo só é válido em opera = 509 */
	public static final String LBR_NFESTATUS_509_RejeiçãoOCNPJComConteúdoNuloSóÉVálidoEmOpera = "509";
	/** 510-Rejeição: Operação com Exterior e Código País destinatá = 510 */
	public static final String LBR_NFESTATUS_510_RejeiçãoOperaçãoComExteriorECódigoPaísDestinatá = "510";
	/** 511-Rejeição: Não é de Operação com Exterior e Código País  = 511 */
	public static final String LBR_NFESTATUS_511_RejeiçãoNãoÉDeOperaçãoComExteriorECódigoPaís = "511";
	/** 512-Rejeição: CNPJ do Local de Retirada inválido = 512 */
	public static final String LBR_NFESTATUS_512_RejeiçãoCNPJDoLocalDeRetiradaInválido = "512";
	/** 513-Rejeição: Código Município do Local de Retirada deve se = 513 */
	public static final String LBR_NFESTATUS_513_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDeveSe = "513";
	/** 514-Rejeição: CNPJ do Local de Entrega inválido = 514 */
	public static final String LBR_NFESTATUS_514_RejeiçãoCNPJDoLocalDeEntregaInválido = "514";
	/** 515-Rejeição: Código Município do Local de Entrega deve ser = 515 */
	public static final String LBR_NFESTATUS_515_RejeiçãoCódigoMunicípioDoLocalDeEntregaDeveSer = "515";
	/** 516-Rejeição: Falha Schema XML, inexiste a tag raiz esperad = 516 */
	public static final String LBR_NFESTATUS_516_RejeiçãoFalhaSchemaXMLInexisteATagRaizEsperad = "516";
	/** 517-Rejeição: Falha Schema XML, inexiste atributo versão na = 517 */
	public static final String LBR_NFESTATUS_517_RejeiçãoFalhaSchemaXMLInexisteAtributoVersãoNa = "517";
	/** 518-Rejeição: CFOP de entrada para NF-e de saída = 518 */
	public static final String LBR_NFESTATUS_518_RejeiçãoCFOPDeEntradaParaNF_EDeSaída = "518";
	/** 519-Rejeição: CFOP de saída para NF-e de entrada = 519 */
	public static final String LBR_NFESTATUS_519_RejeiçãoCFOPDeSaídaParaNF_EDeEntrada = "519";
	/** 520-Rejeição: CFOP de Operação com Exterior e UF destinatár = 520 */
	public static final String LBR_NFESTATUS_520_RejeiçãoCFOPDeOperaçãoComExteriorEUFDestinatár = "520";
	/** 521-Rejeição: CFOP de Operação Estadual e UF do emitente di = 521 */
	public static final String LBR_NFESTATUS_521_RejeiçãoCFOPDeOperaçãoEstadualEUFDoEmitenteDi = "521";
	/** 522-Rejeição: CFOP de Operação Estadual e UF emitente difer = 522 */
	public static final String LBR_NFESTATUS_522_RejeiçãoCFOPDeOperaçãoEstadualEUFEmitenteDifer = "522";
	/** 523-Rejeição: CFOP não é de Operação Estadual e UF emitente = 523 */
	public static final String LBR_NFESTATUS_523_RejeiçãoCFOPNãoÉDeOperaçãoEstadualEUFEmitente = "523";
	/** 524-Rejeição: CFOP de Operação com Exterior e não informado = 524 */
	public static final String LBR_NFESTATUS_524_RejeiçãoCFOPDeOperaçãoComExteriorENãoInformado = "524";
	/** 525-Rejeição: CFOP de Importação e não informado dados da D = 525 */
	public static final String LBR_NFESTATUS_525_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDaD = "525";
	/** 526-Rejeição: CFOP de Exportação e não informado Local de E = 526 */
	public static final String LBR_NFESTATUS_526_RejeiçãoCFOPDeExportaçãoENãoInformadoLocalDeE = "526";
	/** 527-Rejeição: Operação de Exportação com informação de ICMS = 527 */
	public static final String LBR_NFESTATUS_527_RejeiçãoOperaçãoDeExportaçãoComInformaçãoDeICMS = "527";
	/** 528-Rejeição: Valor do ICMS difere do produto BC e Alíquota = 528 */
	public static final String LBR_NFESTATUS_528_RejeiçãoValorDoICMSDifereDoProdutoBCEAlíquota = "528";
	/** 529-Rejeição: NCM de informação obrigatória para produto tr = 529 */
	public static final String LBR_NFESTATUS_529_RejeiçãoNCMDeInformaçãoObrigatóriaParaProdutoTr = "529";
	/** 530-Rejeição: Operação com tributação de ISSQN sem informar = 530 */
	public static final String LBR_NFESTATUS_530_RejeiçãoOperaçãoComTributaçãoDeISSQNSemInformar = "530";
	/** 531-Rejeição: Total da BC ICMS difere do somatório dos iten = 531 */
	public static final String LBR_NFESTATUS_531_RejeiçãoTotalDaBCICMSDifereDoSomatórioDosIten = "531";
	/** 532-Rejeição: Total do ICMS difere do somatório dos itens = 532 */
	public static final String LBR_NFESTATUS_532_RejeiçãoTotalDoICMSDifereDoSomatórioDosItens = "532";
	/** 533-Rejeição: Total da BC ICMS-ST difere do somatório dos i = 533 */
	public static final String LBR_NFESTATUS_533_RejeiçãoTotalDaBCICMS_STDifereDoSomatórioDosI = "533";
	/** 534-Rejeição: Total do ICMS-ST difere do somatório dos iten = 534 */
	public static final String LBR_NFESTATUS_534_RejeiçãoTotalDoICMS_STDifereDoSomatórioDosIten = "534";
	/** 535-Rejeição: Total do Frete difere do somatório dos itens = 535 */
	public static final String LBR_NFESTATUS_535_RejeiçãoTotalDoFreteDifereDoSomatórioDosItens = "535";
	/** 536-Rejeição: Total do Seguro difere do somatório dos itens = 536 */
	public static final String LBR_NFESTATUS_536_RejeiçãoTotalDoSeguroDifereDoSomatórioDosItens = "536";
	/** 537-Rejeição: Total do Desconto difere do somatório dos ite = 537 */
	public static final String LBR_NFESTATUS_537_RejeiçãoTotalDoDescontoDifereDoSomatórioDosIte = "537";
	/** 538-Rejeição: Total do IPI difere do somatório dos itens = 538 */
	public static final String LBR_NFESTATUS_538_RejeiçãoTotalDoIPIDifereDoSomatórioDosItens = "538";
	/** 539-Rejeição: Duplicidade de NFC-e com diferença na Chave d = 539 */
	public static final String LBR_NFESTATUS_539_RejeiçãoDuplicidadeDeNFC_EComDiferençaNaChaveD = "539";
	/** 540-Rejeição: CPF do Local de Retirada inválido = 540 */
	public static final String LBR_NFESTATUS_540_RejeiçãoCPFDoLocalDeRetiradaInválido = "540";
	/** 541-Rejeição: CPF do Local de Entrega inválido = 541 */
	public static final String LBR_NFESTATUS_541_RejeiçãoCPFDoLocalDeEntregaInválido = "541";
	/** 542-Rejeição: CNPJ do Transportador inválido = 542 */
	public static final String LBR_NFESTATUS_542_RejeiçãoCNPJDoTransportadorInválido = "542";
	/** 543-Rejeição: CPF do Transportador inválido = 543 */
	public static final String LBR_NFESTATUS_543_RejeiçãoCPFDoTransportadorInválido = "543";
	/** 544-Rejeição: IE do Transportador inválida = 544 */
	public static final String LBR_NFESTATUS_544_RejeiçãoIEDoTransportadorInválida = "544";
	/** 545-Rejeição: Falha no schema XML – versão informada na ver = 545 */
	public static final String LBR_NFESTATUS_545_RejeiçãoFalhaNoSchemaXMLVersãoInformadaNaVer = "545";
	/** 546-Rejeição: Erro na Chave de Acesso – Campo Id – falta a  = 546 */
	public static final String LBR_NFESTATUS_546_RejeiçãoErroNaChaveDeAcessoCampoIdFaltaA = "546";
	/** 547-Rejeição: Dígito Verificador da Chave de Acesso da NF-e = 547 */
	public static final String LBR_NFESTATUS_547_RejeiçãoDígitoVerificadorDaChaveDeAcessoDaNF_E = "547";
	/** 548-Rejeição: CNPJ da NF referenciada inválido. = 548 */
	public static final String LBR_NFESTATUS_548_RejeiçãoCNPJDaNFReferenciadaInválido = "548";
	/** 549-Rejeição: CNPJ da NF referenciada de produtor inválido. = 549 */
	public static final String LBR_NFESTATUS_549_RejeiçãoCNPJDaNFReferenciadaDeProdutorInválido = "549";
	/** 550-Rejeição: CPF da NF referenciada de produtor inválido. = 550 */
	public static final String LBR_NFESTATUS_550_RejeiçãoCPFDaNFReferenciadaDeProdutorInválido = "550";
	/** 551-Rejeição: IE da NF referenciada de produtor inválido. = 551 */
	public static final String LBR_NFESTATUS_551_RejeiçãoIEDaNFReferenciadaDeProdutorInválido = "551";
	/** 552-Rejeição: Dígito Verificador da Chave de Acesso do CT-e = 552 */
	public static final String LBR_NFESTATUS_552_RejeiçãoDígitoVerificadorDaChaveDeAcessoDoCT_E = "552";
	/** 553-Rejeição: Tipo autorizador do recibo diverge do Órgão A = 553 */
	public static final String LBR_NFESTATUS_553_RejeiçãoTipoAutorizadorDoReciboDivergeDoÓrgãoA = "553";
	/** 554-Rejeição: Série difere da faixa 0-899 = 554 */
	public static final String LBR_NFESTATUS_554_RejeiçãoSérieDifereDaFaixa0_899 = "554";
	/** 555-Rejeição: Tipo autorizador do protocolo diverge do Órgã = 555 */
	public static final String LBR_NFESTATUS_555_RejeiçãoTipoAutorizadorDoProtocoloDivergeDoÓrgã = "555";
	/** 556-Rejeição: Justificativa de entrada em contingência não  = 556 */
	public static final String LBR_NFESTATUS_556_RejeiçãoJustificativaDeEntradaEmContingênciaNão = "556";
	/** 557-Rejeição: A Justificativa de entrada em contingência de = 557 */
	public static final String LBR_NFESTATUS_557_RejeiçãoAJustificativaDeEntradaEmContingênciaDe = "557";
	/** 558-Rejeição: Data de entrada em contingência posterior a d = 558 */
	public static final String LBR_NFESTATUS_558_RejeiçãoDataDeEntradaEmContingênciaPosteriorAD = "558";
	/** 559-Rejeição: UF do Transportador não informado = 559 */
	public static final String LBR_NFESTATUS_559_RejeiçãoUFDoTransportadorNãoInformado = "559";
	/** 560-Rejeição: CNPJ base do emitente difere do CNPJ base da  = 560 */
	public static final String LBR_NFESTATUS_560_RejeiçãoCNPJBaseDoEmitenteDifereDoCNPJBaseDa = "560";
	/** 561-Rejeição: Mês de Emissão informado na Chave de Acesso d = 561 */
	public static final String LBR_NFESTATUS_561_RejeiçãoMêsDeEmissãoInformadoNaChaveDeAcessoD = "561";
	/** 562-Rejeição: Código numérico informado na Chave de Acesso  = 562 */
	public static final String LBR_NFESTATUS_562_RejeiçãoCódigoNuméricoInformadoNaChaveDeAcesso = "562";
	/** 563-Rejeição: Já existe pedido de Inutilização com a mesma  = 563 */
	public static final String LBR_NFESTATUS_563_RejeiçãoJáExistePedidoDeInutilizaçãoComAMesma = "563";
	/** 564-Rejeição: Total do Produto / Serviço difere do somatóri = 564 */
	public static final String LBR_NFESTATUS_564_RejeiçãoTotalDoProdutoServiçoDifereDoSomatóri = "564";
	/** 565-Rejeição: Falha no schema XML – inexiste a tag raiz esp = 565 */
	public static final String LBR_NFESTATUS_565_RejeiçãoFalhaNoSchemaXMLInexisteATagRaizEsp = "565";
	/** 567-Rejeição: Falha no schema XML – versão informada na ver = 567 */
	public static final String LBR_NFESTATUS_567_RejeiçãoFalhaNoSchemaXMLVersãoInformadaNaVer = "567";
	/** 568-Rejeição: Falha no schema XML – inexiste atributo versa = 568 */
	public static final String LBR_NFESTATUS_568_RejeiçãoFalhaNoSchemaXMLInexisteAtributoVersa = "568";
	/** 569-Rejeição: Data de entrada em contingência muito atrasad = 569 */
	public static final String LBR_NFESTATUS_569_RejeiçãoDataDeEntradaEmContingênciaMuitoAtrasad = "569";
	/** 570-Rejeição: Tipo de emissão 3, 6 e 7 só é valido nas cont = 570 */
	public static final String LBR_NFESTATUS_570_RejeiçãoTipoDeEmissão36E7SóÉValidoNasCont = "570";
	/** 571-Rejeição:  O tpEmis informado diferente de 3 para conti = 571 */
	public static final String LBR_NFESTATUS_571_RejeiçãoOTpEmisInformadoDiferenteDe3ParaConti = "571";
	/** 129-Lote de Evento Processado = 129 */
	public static final String LBR_NFESTATUS_129_LoteDeEventoProcessado = "129";
	/** 135-Evento registrado e vinculado a NFC-e = 135 */
	public static final String LBR_NFESTATUS_135_EventoRegistradoEVinculadoANFC_E = "135";
	/** 136-Evento registrado, mas não vinculado a NFC-e = 136 */
	public static final String LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANFC_E = "136";
	/** 489-Rejeição: CNPJ informado inválido (DV ou zeros) = 489 */
	public static final String LBR_NFESTATUS_489_RejeiçãoCNPJInformadoInválidoDVOuZeros = "489";
	/** 490-Rejeição: CPF informado inválido (DV ou zeros) = 490 */
	public static final String LBR_NFESTATUS_490_RejeiçãoCPFInformadoInválidoDVOuZeros = "490";
	/** 491-Rejeição: O tpEvento informado inválido = 491 */
	public static final String LBR_NFESTATUS_491_RejeiçãoOTpEventoInformadoInválido = "491";
	/** 492-Rejeição: O verEvento informado inválido = 492 */
	public static final String LBR_NFESTATUS_492_RejeiçãoOVerEventoInformadoInválido = "492";
	/** 493-Rejeição: Evento não atende o Schema XML específico = 493 */
	public static final String LBR_NFESTATUS_493_RejeiçãoEventoNãoAtendeOSchemaXMLEspecífico = "493";
	/** 494-Rejeição: Chave de Acesso inexistente  = 494 */
	public static final String LBR_NFESTATUS_494_RejeiçãoChaveDeAcessoInexistente = "494";
	/** 501-Rejeição: Prazo de cancelamento superior ao previsto na = 501 */
	public static final String LBR_NFESTATUS_501_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNa = "501";
	/** 572-Rejeição: Erro Atributo ID do evento não corresponde a  = 572 */
	public static final String LBR_NFESTATUS_572_RejeiçãoErroAtributoIDDoEventoNãoCorrespondeA = "572";
	/** 573-Rejeição: Duplicidade de Evento = 573 */
	public static final String LBR_NFESTATUS_573_RejeiçãoDuplicidadeDeEvento = "573";
	/** 574-Rejeição: O autor do evento diverge do emissor da NFC-e = 574 */
	public static final String LBR_NFESTATUS_574_RejeiçãoOAutorDoEventoDivergeDoEmissorDaNFC_E = "574";
	/** 575-Rejeição: O autor do evento diverge do destinatário da  = 575 */
	public static final String LBR_NFESTATUS_575_RejeiçãoOAutorDoEventoDivergeDoDestinatárioDa = "575";
	/** 576-Rejeição: O autor do evento não é um órgão autorizado a = 576 */
	public static final String LBR_NFESTATUS_576_RejeiçãoOAutorDoEventoNãoÉUmÓrgãoAutorizadoA = "576";
	/** 577-Rejeição: A data do evento não pode ser menor que a dat = 577 */
	public static final String LBR_NFESTATUS_577_RejeiçãoADataDoEventoNãoPodeSerMenorQueADat = "577";
	/** 578-Rejeição: A data do evento não pode ser maior que a dat = 578 */
	public static final String LBR_NFESTATUS_578_RejeiçãoADataDoEventoNãoPodeSerMaiorQueADat = "578";
	/** 579-Rejeição: A data do evento não pode ser menor que a dat = 579 */
	public static final String LBR_NFESTATUS_579_RejeiçãoADataDoEventoNãoPodeSerMenorQueADat = "579";
	/** 580-Rejeição: O evento exige uma NF-e autorizada  = 580 */
	public static final String LBR_NFESTATUS_580_RejeiçãoOEventoExigeUmaNF_EAutorizada = "580";
	/** 587-Rejeição: Usar somente o namespace padrão da NFC-e = 587 */
	public static final String LBR_NFESTATUS_587_RejeiçãoUsarSomenteONamespacePadrãoDaNFC_E = "587";
	/** 588-Rejeição: Não é permitida a presença de caracteres de e = 588 */
	public static final String LBR_NFESTATUS_588_RejeiçãoNãoÉPermitidaAPresençaDeCaracteresDeE = "588";
	/** 590-Rejeição: Informado CST para emissor do Simples Naciona = 590 */
	public static final String LBR_NFESTATUS_590_RejeiçãoInformadoCSTParaEmissorDoSimplesNaciona = "590";
	/** 591-Rejeição: Informado CSOSN para emissor que não é do Sim = 591 */
	public static final String LBR_NFESTATUS_591_RejeiçãoInformadoCSOSNParaEmissorQueNãoÉDoSim = "591";
	/** 592-Rejeição: A NF-e deve ter pelo menos um item de produto = 592 */
	public static final String LBR_NFESTATUS_592_RejeiçãoANF_EDeveTerPeloMenosUmItemDeProduto = "592";
	/** 595-Rejeição: A versão do leiaute da NF-e utilizada não é m = 595 */
	public static final String LBR_NFESTATUS_595_RejeiçãoAVersãoDoLeiauteDaNF_EUtilizadaNãoÉM = "595";
	/** 596-Rejeição: Ambiente de homologação indisponível para rec = 596 */
	public static final String LBR_NFESTATUS_596_RejeiçãoAmbienteDeHomologaçãoIndisponívelParaRec = "596";
	/** 597-Rejeição: CFOP de Importação e não informado dados de I = 597 */
	public static final String LBR_NFESTATUS_597_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "597";
	/** 598-Rejeição: NF-e emitida em ambiente de homologação com r = 598 */
	public static final String LBR_NFESTATUS_598_RejeiçãoNF_EEmitidaEmAmbienteDeHomologaçãoComR = "598";
	/** 599-Rejeição: CFOP de Importação e não informado dados de I = 599 */
	public static final String LBR_NFESTATUS_599_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "599";
	/** 128-Lote de Evento Processado = 128 */
	public static final String LBR_NFESTATUS_128_LoteDeEventoProcessado = "128";
	/** 594-Rejeição: O número de sequencia do evento informado é m = 594 */
	public static final String LBR_NFESTATUS_594_RejeiçãoONúmeroDeSequenciaDoEventoInformadoÉM = "594";
	/** 601-Rejeição: Total do II difere do somatório dos itens = 601 */
	public static final String LBR_NFESTATUS_601_RejeiçãoTotalDoIIDifereDoSomatórioDosItens = "601";
	/** 602-Rejeição: Total do PIS difere do somatório dos itens su = 602 */
	public static final String LBR_NFESTATUS_602_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSu = "602";
	/** 603-Rejeição: Total do COFINS difere do somatório dos itens = 603 */
	public static final String LBR_NFESTATUS_603_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItens = "603";
	/** 604-Rejeição: Total do vOutro difere do somatório dos itens = 604 */
	public static final String LBR_NFESTATUS_604_RejeiçãoTotalDoVOutroDifereDoSomatórioDosItens = "604";
	/** 605-Rejeição: Total do vServ difere do somatório do vProd d = 605 */
	public static final String LBR_NFESTATUS_605_RejeiçãoTotalDoVServDifereDoSomatórioDoVProdD = "605";
	/** 606-Rejeição: Total do vBC do ISS difere do somatório dos i = 606 */
	public static final String LBR_NFESTATUS_606_RejeiçãoTotalDoVBCDoISSDifereDoSomatórioDosI = "606";
	/** 607-Rejeição: Total do ISS difere do somatório dos itens = 607 */
	public static final String LBR_NFESTATUS_607_RejeiçãoTotalDoISSDifereDoSomatórioDosItens = "607";
	/** 608-Rejeição: Total do PIS difere do somatório dos itens su = 608 */
	public static final String LBR_NFESTATUS_608_RejeiçãoTotalDoPISDifereDoSomatórioDosItensSu = "608";
	/** 609-Rejeição: Total do COFINS difere do somatório dos itens = 609 */
	public static final String LBR_NFESTATUS_609_RejeiçãoTotalDoCOFINSDifereDoSomatórioDosItens = "609";
	/** 610-Rejeição: Total da NF difere do somatório dos Valores c = 610 */
	public static final String LBR_NFESTATUS_610_RejeiçãoTotalDaNFDifereDoSomatórioDosValoresC = "610";
	/** 611-Rejeição: cEAN inválido = 611 */
	public static final String LBR_NFESTATUS_611_RejeiçãoCEANInválido = "611";
	/** 612-Rejeição: cEANTrib inválido = 612 */
	public static final String LBR_NFESTATUS_612_RejeiçãoCEANTribInválido = "612";
	/** 613-Rejeição: Chave de Acesso difere da existente em BD [99 = 613 */
	public static final String LBR_NFESTATUS_613_RejeiçãoChaveDeAcessoDifereDaExistenteEmBD99 = "613";
	/** 614-Rejeição: Chave de Acesso inválida (Código UF inválido) = 614 */
	public static final String LBR_NFESTATUS_614_RejeiçãoChaveDeAcessoInválidaCódigoUFInválido = "614";
	/** 615-Rejeição: Chave de Acesso inválida (Ano menor que 06 ou = 615 */
	public static final String LBR_NFESTATUS_615_RejeiçãoChaveDeAcessoInválidaAnoMenorQue06Ou = "615";
	/** 616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou  = 616 */
	public static final String LBR_NFESTATUS_616_RejeiçãoChaveDeAcessoInválidaMêsMenorQue1Ou = "616";
	/** 617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígi = 617 */
	public static final String LBR_NFESTATUS_617_RejeiçãoChaveDeAcessoInválidaCNPJZeradoOuDígi = "617";
	/** 618-Rejeição: Chave de Acesso inválida (modelo diferente de = 618 */
	public static final String LBR_NFESTATUS_618_RejeiçãoChaveDeAcessoInválidaModeloDiferenteDe = "618";
	/** 619-Rejeição: Chave de Acesso inválida (número NF = 0) = 619 */
	public static final String LBR_NFESTATUS_619_RejeiçãoChaveDeAcessoInválidaNúmeroNFEq0 = "619";
	/** 621-Rejeição: CPF Emitente não cadastrado = 621 */
	public static final String LBR_NFESTATUS_621_RejeiçãoCPFEmitenteNãoCadastrado = "621";
	/** 622-Rejeição: IE emitente não vinculada ao CPF = 622 */
	public static final String LBR_NFESTATUS_622_RejeiçãoIEEmitenteNãoVinculadaAoCPF = "622";
	/** 623-Rejeição: CPF Destinatário não cadastrado = 623 */
	public static final String LBR_NFESTATUS_623_RejeiçãoCPFDestinatárioNãoCadastrado = "623";
	/** 624-Rejeição: IE Destinatário não vinculada ao CPF = 624 */
	public static final String LBR_NFESTATUS_624_RejeiçãoIEDestinatárioNãoVinculadaAoCPF = "624";
	/** 625-Rejeição: Inscrição SUFRAMA deve ser informada na venda = 625 */
	public static final String LBR_NFESTATUS_625_RejeiçãoInscriçãoSUFRAMADeveSerInformadaNaVenda = "625";
	/** 626-Rejeição: CFOP de operação isenta para ZFM diferente do = 626 */
	public static final String LBR_NFESTATUS_626_RejeiçãoCFOPDeOperaçãoIsentaParaZFMDiferenteDo = "626";
	/** 627-Rejeição: O valor do ICMS desonerado deve ser informado = 627 */
	public static final String LBR_NFESTATUS_627_RejeiçãoOValorDoICMSDesoneradoDeveSerInformado = "627";
	/** 628-Rejeição: Total da NF superior ao valor limite estabele = 628 */
	public static final String LBR_NFESTATUS_628_RejeiçãoTotalDaNFSuperiorAoValorLimiteEstabele = "628";
	/** 629-Rejeição: Valor do Produto difere do produto Valor Unit = 629 */
	public static final String LBR_NFESTATUS_629_RejeiçãoValorDoProdutoDifereDoProdutoValorUnit = "629";
	/** 630-Rejeição: Valor do Produto difere do produto Valor Unit = 630 */
	public static final String LBR_NFESTATUS_630_RejeiçãoValorDoProdutoDifereDoProdutoValorUnit = "630";
	/** 635-Rejeição: NF-e com mesmo número e série já transmitida  = 635 */
	public static final String LBR_NFESTATUS_635_RejeiçãoNF_EComMesmoNúmeroESérieJáTransmitida = "635";
	/** 642-Rejeição: Falha na Consulta do Registro de Passagem, te = 642 */
	public static final String LBR_NFESTATUS_642_RejeiçãoFalhaNaConsultaDoRegistroDePassagemTe = "642";
	/** 137-Nenhum documento localizado = 137 */
	public static final String LBR_NFESTATUS_137_NenhumDocumentoLocalizado = "137";
	/** 138-Documento localizado = 138 */
	public static final String LBR_NFESTATUS_138_DocumentoLocalizado = "138";
	/** 139-Pedido de Download processado  = 139 */
	public static final String LBR_NFESTATUS_139_PedidoDeDownloadProcessado = "139";
	/** 140-Download disponibilizado = 140 */
	public static final String LBR_NFESTATUS_140_DownloadDisponibilizado = "140";
	/** 589-Rejeição: Número do NSU informado superior ao maior NSU = 589 */
	public static final String LBR_NFESTATUS_589_RejeiçãoNúmeroDoNSUInformadoSuperiorAoMaiorNSU = "589";
	/** 593-Rejeição: CNPJ-Base consultado difere do CNPJ-Base do C = 593 */
	public static final String LBR_NFESTATUS_593_RejeiçãoCNPJ_BaseConsultadoDifereDoCNPJ_BaseDoC = "593";
	/** 631-Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base = 631 */
	public static final String LBR_NFESTATUS_631_RejeiçãoCNPJ_BaseDoDestinatárioDifereDoCNPJ_Base = "631";
	/** 632-Rejeição: Solicitação fora de prazo, a NF-e não está ma = 632 */
	public static final String LBR_NFESTATUS_632_RejeiçãoSolicitaçãoForaDePrazoANF_ENãoEstáMa = "632";
	/** 633-Rejeição: NF-e indisponível para download devido a ausê = 633 */
	public static final String LBR_NFESTATUS_633_RejeiçãoNF_EIndisponívelParaDownloadDevidoAAusê = "633";
	/** 634-Rejeição: Destinatário da NF-e não tem o mesmo CNPJ rai = 634 */
	public static final String LBR_NFESTATUS_634_RejeiçãoDestinatárioDaNF_ENãoTemOMesmoCNPJRai = "634";
	/** 640-Rejeição: Evento de "Ciência da Operação" não pode ser  = 640 */
	public static final String LBR_NFESTATUS_640_RejeiçãoEventoDeCiênciaDaOperaçãoNãoPodeSer = "640";
	/** 641-Rejeição: Consumo Indevido 645 = 641 */
	public static final String LBR_NFESTATUS_641_RejeiçãoConsumoIndevido645 = "641";
	/** 645-Rejeição: CNPJ do Certificado Digital não é emitente de = 645 */
	public static final String LBR_NFESTATUS_645_RejeiçãoCNPJDoCertificadoDigitalNãoÉEmitenteDe = "645";
	/** 646-Rejeição: NF-e Cancelada, arquivo indisponível para dow = 646 */
	public static final String LBR_NFESTATUS_646_RejeiçãoNF_ECanceladaArquivoIndisponívelParaDow = "646";
	/** 647-Rejeição: NF-e Denegada, arquivo indisponível para down = 647 */
	public static final String LBR_NFESTATUS_647_RejeiçãoNF_EDenegadaArquivoIndisponívelParaDown = "647";
	/** 650-Rejeição: Evento de "Ciência da Operação" para NF-e Can = 650 */
	public static final String LBR_NFESTATUS_650_RejeiçãoEventoDeCiênciaDaOperaçãoParaNF_ECan = "650";
	/** 651-Rejeição: Evento de "Desconhecimento da Operação" para  = 651 */
	public static final String LBR_NFESTATUS_651_RejeiçãoEventoDeDesconhecimentoDaOperaçãoPara = "651";
	/** 653-Rejeição: NF-e Cancelada, arquivo indisponível para dow = 653 */
	public static final String LBR_NFESTATUS_653_RejeiçãoNF_ECanceladaArquivoIndisponívelParaDow = "653";
	/** 654-Rejeição: NF-e Denegada, arquivo indisponível para down = 654 */
	public static final String LBR_NFESTATUS_654_RejeiçãoNF_EDenegadaArquivoIndisponívelParaDown = "654";
	/** 655-Rejeição: Evento de Ciência da Operação informado após  = 655 */
	public static final String LBR_NFESTATUS_655_RejeiçãoEventoDeCiênciaDaOperaçãoInformadoApós = "655";
	/** 656-Rejeição: Consumo Indevido = 656 */
	public static final String LBR_NFESTATUS_656_RejeiçãoConsumoIndevido = "656";
	/** 657-Rejeição: Código do Órgão diverge do órgão autorizador = 657 */
	public static final String LBR_NFESTATUS_657_RejeiçãoCódigoDoÓrgãoDivergeDoÓrgãoAutorizador = "657";
	/** 658-Rejeição: UF do destinatário da Chave de Acesso diverge = 658 */
	public static final String LBR_NFESTATUS_658_RejeiçãoUFDoDestinatárioDaChaveDeAcessoDiverge = "658";
	/** 150-Consulta de CSC realizada com sucesso, com CSC ativo(s) = 150 */
	public static final String LBR_NFESTATUS_150_ConsultaDeCSCRealizadaComSucessoComCSCAtivoS = "150";
	/** 151-Consulta de CSC realizada com sucesso, sem CSC ativo = 151 */
	public static final String LBR_NFESTATUS_151_ConsultaDeCSCRealizadaComSucessoSemCSCAtivo = "151";
	/** 479-Rejeição: Emissor em situação irregular perante o fisco = 479 */
	public static final String LBR_NFESTATUS_479_RejeiçãoEmissorEmSituaçãoIrregularPeranteOFisco = "479";
	/** 480-Rejeição: CNPJ da Chave de acesso da NF-e informada div = 480 */
	public static final String LBR_NFESTATUS_480_RejeiçãoCNPJDaChaveDeAcessoDaNF_EInformadaDiv = "480";
	/** 481-Rejeição: UF da Chave de acesso diverge do código da UF = 481 */
	public static final String LBR_NFESTATUS_481_RejeiçãoUFDaChaveDeAcessoDivergeDoCódigoDaUF = "481";
	/** 482-Rejeição: AA da Chave de acesso inválida = 482 */
	public static final String LBR_NFESTATUS_482_RejeiçãoAADaChaveDeAcessoInválida = "482";
	/** 483-Rejeição: MM da chave de acesso inválido = 483 */
	public static final String LBR_NFESTATUS_483_RejeiçãoMMDaChaveDeAcessoInválido = "483";
	/** 484-Rejeição: Chave de Acesso com tipo de emissão diferente = 484 */
	public static final String LBR_NFESTATUS_484_RejeiçãoChaveDeAcessoComTipoDeEmissãoDiferente = "484";
	/** 485-Rejeição: Duplicidade de numeração do EPEC (Modelo, CNP = 485 */
	public static final String LBR_NFESTATUS_485_RejeiçãoDuplicidadeDeNumeraçãoDoEPECModeloCNP = "485";
	/** 486-Rejeição: DPEC não localizada para o número de registro = 486 */
	public static final String LBR_NFESTATUS_486_RejeiçãoDPECNãoLocalizadaParaONúmeroDeRegistro = "486";
	/** 487-Rejeição: Nenhuma DPEC localizada para a chave de acess = 487 */
	public static final String LBR_NFESTATUS_487_RejeiçãoNenhumaDPECLocalizadaParaAChaveDeAcess = "487";
	/** 488-Rejeição: Requisitante de Consulta não tem o mesmo CNPJ = 488 */
	public static final String LBR_NFESTATUS_488_RejeiçãoRequisitanteDeConsultaNãoTemOMesmoCNPJ = "488";
	/** 660-Rejeição: CFOP de Combustível e não informado grupo de  = 660 */
	public static final String LBR_NFESTATUS_660_RejeiçãoCFOPDeCombustívelENãoInformadoGrupoDe = "660";
	/** 661-Rejeição: NFC-e já existente para o número do EPEC info = 661 */
	public static final String LBR_NFESTATUS_661_RejeiçãoNFC_EJáExistenteParaONúmeroDoEPECInfo = "661";
	/** 662-Rejeição: Numeração do EPEC está inutilizada na Base de = 662 */
	public static final String LBR_NFESTATUS_662_RejeiçãoNumeraçãoDoEPECEstáInutilizadaNaBaseDe = "662";
	/** 678-Rejeição: NF referenciada com UF diferente da UF da NF- = 678 */
	public static final String LBR_NFESTATUS_678_RejeiçãoNFReferenciadaComUFDiferenteDaUFDaNF_ = "678";
	/** 679-Rejeição: Modelo da NF-e referenciada diferente de 55 = 679 */
	public static final String LBR_NFESTATUS_679_RejeiçãoModeloDaNF_EReferenciadaDiferenteDe55 = "679";
	/** 680-Rejeição: Duplicidade de NF-e referenciada (Chave de Ac = 680 */
	public static final String LBR_NFESTATUS_680_RejeiçãoDuplicidadeDeNF_EReferenciadaChaveDeAc = "680";
	/** 681-Rejeição: Duplicidade de NF Modelo 1 referenciada (CNPJ = 681 */
	public static final String LBR_NFESTATUS_681_RejeiçãoDuplicidadeDeNFModelo1ReferenciadaCNPJ = "681";
	/** 682-Rejeição: Duplicidade de NF de Produtor referenciada (I = 682 */
	public static final String LBR_NFESTATUS_682_RejeiçãoDuplicidadeDeNFDeProdutorReferenciadaI = "682";
	/** 683-Rejeição: Modelo do CT-e referenciado diferente de 57 = 683 */
	public static final String LBR_NFESTATUS_683_RejeiçãoModeloDoCT_EReferenciadoDiferenteDe57 = "683";
	/** 684-Rejeição: Duplicidade de Cupom Fiscal referenciado (Mod = 684 */
	public static final String LBR_NFESTATUS_684_RejeiçãoDuplicidadeDeCupomFiscalReferenciadoMod = "684";
	/** 685-Rejeição: Total do Valor Aproximado dos Tributos difere = 685 */
	public static final String LBR_NFESTATUS_685_RejeiçãoTotalDoValorAproximadoDosTributosDifere = "685";
	/** 686-Rejeição: NF Complementar referencia uma NF-e cancelada = 686 */
	public static final String LBR_NFESTATUS_686_RejeiçãoNFComplementarReferenciaUmaNF_ECancelada = "686";
	/** 687-Rejeição: NF Complementar referencia uma NF-e denegada = 687 */
	public static final String LBR_NFESTATUS_687_RejeiçãoNFComplementarReferenciaUmaNF_EDenegada = "687";
	/** 688-Rejeição: NF referenciada de Produtor com IE inexistent = 688 */
	public static final String LBR_NFESTATUS_688_RejeiçãoNFReferenciadaDeProdutorComIEInexistent = "688";
	/** 689-Rejeição: NF referenciada de Produtor com IE não vincul = 689 */
	public static final String LBR_NFESTATUS_689_RejeiçãoNFReferenciadaDeProdutorComIENãoVincul = "689";
	/** 690-Rejeição: Pedido de Cancelamento para NF-e com CT-e ou  = 690 */
	public static final String LBR_NFESTATUS_690_RejeiçãoPedidoDeCancelamentoParaNF_EComCT_EOu = "690";
	/** 304-Rejeição: Pedido de Cancelamento para NF-e com evento d = 304 */
	public static final String LBR_NFESTATUS_304_RejeiçãoPedidoDeCancelamentoParaNF_EComEventoD = "304";
	/** 152-CSC gerado = 152 */
	public static final String LBR_NFESTATUS_152_CSCGerado = "152";
	/** 153-CSC revogado = 153 */
	public static final String LBR_NFESTATUS_153_CSCRevogado = "153";
	/** 802-Rejeição: Contribuinte possui número máximo de CSC ativ = 802 */
	public static final String LBR_NFESTATUS_802_RejeiçãoContribuintePossuiNúmeroMáximoDeCSCAtiv = "802";
	/** 803-Rejeição: O CSC e o identificador informado não possuem = 803 */
	public static final String LBR_NFESTATUS_803_RejeiçãoOCSCEOIdentificadorInformadoNãoPossuem = "803";
	/** 804-Rejeição: O CSC informado não pertence ao solicitante d = 804 */
	public static final String LBR_NFESTATUS_804_RejeiçãoOCSCInformadoNãoPertenceAoSolicitanteD = "804";
	/** 805-Rejeição: O CSC informado está revogado = 805 */
	public static final String LBR_NFESTATUS_805_RejeiçãoOCSCInformadoEstáRevogado = "805";
	/** 695-Rejeição: Solicitante não autorizado para a consulta = 695 */
	public static final String LBR_NFESTATUS_695_RejeiçãoSolicitanteNãoAutorizadoParaAConsulta = "695";
	/** 124-EPEC Autorizado = 124 */
	public static final String LBR_NFESTATUS_124_EPECAutorizado = "124";
	/** 142-Ambiente de Contingência EPEC bloqueado para o Emitente = 142 */
	public static final String LBR_NFESTATUS_142_AmbienteDeContingênciaEPECBloqueadoParaOEmitente = "142";
	/** 473-Rejeição: Certificado Transmissor sem CNPJ ou CPF = 473 */
	public static final String LBR_NFESTATUS_473_RejeiçãoCertificadoTransmissorSemCNPJOuCPF = "473";
	/** 719-Rejeição: NFC-e com valor total superior ao permitido p = 719 */
	public static final String LBR_NFESTATUS_719_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoP = "719";
	/** 408-Rejeição: Evento não disponível para Autor pessoa físic = 408 */
	public static final String LBR_NFESTATUS_408_RejeiçãoEventoNãoDisponívelParaAutorPessoaFísic = "408";
	/** 417-Rejeição: Total do ICMS superior ao valor limite estabe = 417 */
	public static final String LBR_NFESTATUS_417_RejeiçãoTotalDoICMSSuperiorAoValorLimiteEstabe = "417";
	/** 418-Rejeição: Total do ICMS ST superior ao valor limite est = 418 */
	public static final String LBR_NFESTATUS_418_RejeiçãoTotalDoICMSSTSuperiorAoValorLimiteEst = "418";
	/** 455-Rejeição: Órgão Autor do evento diferente da UF da Chav = 455 */
	public static final String LBR_NFESTATUS_455_RejeiçãoÓrgãoAutorDoEventoDiferenteDaUFDaChav = "455";
	/** 466-Rejeição: Evento com Tipo de Autor incompatível = 466 */
	public static final String LBR_NFESTATUS_466_RejeiçãoEventoComTipoDeAutorIncompatível = "466";
	/** 467-Rejeição: Dados da NFC-e divergentes do EPEC = 467 */
	public static final String LBR_NFESTATUS_467_RejeiçãoDadosDaNFC_EDivergentesDoEPEC = "467";
	/** 468-Rejeição: NFC-e com Tipo Emissão = 4, sem EPEC correspo = 468 */
	public static final String LBR_NFESTATUS_468_RejeiçãoNFC_EComTipoEmissãoEq4SemEPECCorrespo = "468";
	/** 659-Rejeição: Ano-Mês da Data de Emissão diverge do Ano-Mês = 659 */
	public static final String LBR_NFESTATUS_659_RejeiçãoAno_MêsDaDataDeEmissãoDivergeDoAno_Mês = "659";
	/** 720-Rejeição: Na operação com Exterior deve ser informada t = 720 */
	public static final String LBR_NFESTATUS_720_RejeiçãoNaOperaçãoComExteriorDeveSerInformadaT = "720";
	/** 721-Rejeição: Operação interestadual não deve informar idEs = 721 */
	public static final String LBR_NFESTATUS_721_RejeiçãoOperaçãoInterestadualNãoDeveInformarIdEs = "721";
	/** 792-Rejeição: Informada a IE do destinatário para operação  = 792 */
	public static final String LBR_NFESTATUS_792_RejeiçãoInformadaAIEDoDestinatárioParaOperação = "792";
	/** 472-Rejeição: CPF consultado difere do CPF do Certificado D = 472 */
	public static final String LBR_NFESTATUS_472_RejeiçãoCPFConsultadoDifereDoCPFDoCertificadoD = "472";
	/** 113-SCAN será desabilitado para a UF às hh:mm = 113 */
	public static final String LBR_NFESTATUS_113_SCANSeráDesabilitadoParaAUFÀsHhMm = "113";
	/** 114-SCAN desabilitado pela SEFAZ Origem = 114 */
	public static final String LBR_NFESTATUS_114_SCANDesabilitadoPelaSEFAZOrigem = "114";
	/** 155-Cancelamento de NF-e homologado fora de prazo = 155 */
	public static final String LBR_NFESTATUS_155_CancelamentoDeNF_EHomologadoForaDePrazo = "155";
	/** 303-Uso Denegado : Destinatário não habilitado a operar na  = 303 */
	public static final String LBR_NFESTATUS_303_UsoDenegadoDestinatárioNãoHabilitadoAOperarNa = "303";
	/** 321-Rejeição: NF-e de devolução não possui conhecimento fis = 321 */
	public static final String LBR_NFESTATUS_321_RejeiçãoNF_EDeDevoluçãoNãoPossuiConhecimentoFis = "321";
	/** 322-Rejeição: NF-e de devolução com mais de um documento fi = 322 */
	public static final String LBR_NFESTATUS_322_RejeiçãoNF_EDeDevoluçãoComMaisDeUmDocumentoFi = "322";
	/** 323-Rejeição: CNPJ autorizado para download inválido = 323 */
	public static final String LBR_NFESTATUS_323_RejeiçãoCNPJAutorizadoParaDownloadInválido = "323";
	/** 324-Rejeição: CNPJ do destinatário ja autorizado para downl = 324 */
	public static final String LBR_NFESTATUS_324_RejeiçãoCNPJDoDestinatárioJaAutorizadoParaDownl = "324";
	/** 325-Rejeição: CPF autorizado para download inválido = 325 */
	public static final String LBR_NFESTATUS_325_RejeiçãoCPFAutorizadoParaDownloadInválido = "325";
	/** 326-Rejeição: CPF do destinatário autorizado para download = 326 */
	public static final String LBR_NFESTATUS_326_RejeiçãoCPFDoDestinatárioAutorizadoParaDownload = "326";
	/** 327-Rejeição: CFOP inválido para NF-e com finalidade de dev = 327 */
	public static final String LBR_NFESTATUS_327_RejeiçãoCFOPInválidoParaNF_EComFinalidadeDeDev = "327";
	/** 328-Rejeição: CFOP inválido para NF-e que não tem finalidad = 328 */
	public static final String LBR_NFESTATUS_328_RejeiçãoCFOPInválidoParaNF_EQueNãoTemFinalidad = "328";
	/** 329-Rejeição: Número da DI/DSI inválido = 329 */
	public static final String LBR_NFESTATUS_329_RejeiçãoNúmeroDaDIDSIInválido = "329";
	/** 330-Rejeição: Informar o valor da AFRMM na importação por v = 330 */
	public static final String LBR_NFESTATUS_330_RejeiçãoInformarOValorDaAFRMMNaImportaçãoPorV = "330";
	/** 331-Rejeição: Informar o CNPJ do adquirente ou do encomenda = 331 */
	public static final String LBR_NFESTATUS_331_RejeiçãoInformarOCNPJDoAdquirenteOuDoEncomenda = "331";
	/** 332-Rejeição: CNPJ do adquirente ou do encomendante da impo = 332 */
	public static final String LBR_NFESTATUS_332_RejeiçãoCNPJDoAdquirenteOuDoEncomendanteDaImpo = "332";
	/** 333-Rejeição: Informar a UF do adquirente ou do encomendant = 333 */
	public static final String LBR_NFESTATUS_333_RejeiçãoInformarAUFDoAdquirenteOuDoEncomendant = "333";
	/** 334-Rejeição: Número do processo de drawback não informado  = 334 */
	public static final String LBR_NFESTATUS_334_RejeiçãoNúmeroDoProcessoDeDrawbackNãoInformado = "334";
	/** 335-Rejeição: Número do processo de drawback na importação  = 335 */
	public static final String LBR_NFESTATUS_335_RejeiçãoNúmeroDoProcessoDeDrawbackNaImportação = "335";
	/** 336-Rejeição: Informado o grupo de exportação no item para  = 336 */
	public static final String LBR_NFESTATUS_336_RejeiçãoInformadoOGrupoDeExportaçãoNoItemPara = "336";
	/** 337-Rejeição: Não informado o grupo de exportação no item = 337 */
	public static final String LBR_NFESTATUS_337_RejeiçãoNãoInformadoOGrupoDeExportaçãoNoItem = "337";
	/** 338-Rejeição: Número de processo de drawback não informado  = 338 */
	public static final String LBR_NFESTATUS_338_RejeiçãoNúmeroDeProcessoDeDrawbackNãoInformado = "338";
	/** 339-Rejeição: Número de processo de drawback na exportação  = 339 */
	public static final String LBR_NFESTATUS_339_RejeiçãoNúmeroDeProcessoDeDrawbackNaExportação = "339";
	/** 340-Rejeição: Não informado o grupo de exportação indireta  = 340 */
	public static final String LBR_NFESTATUS_340_RejeiçãoNãoInformadoOGrupoDeExportaçãoIndireta = "340";
	/** 341-Rejeição: Número do registro de exportação inválido = 341 */
	public static final String LBR_NFESTATUS_341_RejeiçãoNúmeroDoRegistroDeExportaçãoInválido = "341";
	/** 342-Rejeição: Chave de acesso informada na exportação indir = 342 */
	public static final String LBR_NFESTATUS_342_RejeiçãoChaveDeAcessoInformadaNaExportaçãoIndir = "342";
	/** 343-Rejeição: Modelo da NF-e informada na exportação indire = 343 */
	public static final String LBR_NFESTATUS_343_RejeiçãoModeloDaNF_EInformadaNaExportaçãoIndire = "343";
	/** 344-Rejeição: Duplicidade de NF-e informada na exportação i = 344 */
	public static final String LBR_NFESTATUS_344_RejeiçãoDuplicidadeDeNF_EInformadaNaExportaçãoI = "344";
	/** 345-Rejeição: Chave de acesso informada na exportação indir = 345 */
	public static final String LBR_NFESTATUS_345_RejeiçãoChaveDeAcessoInformadaNaExportaçãoIndir = "345";
	/** 346-Rejeição: Somatório quantidades informadas na exportaçã = 346 */
	public static final String LBR_NFESTATUS_346_RejeiçãoSomatórioQuantidadesInformadasNaExportaçã = "346";
	/** 347-Rejeição: Descrição do combustível diverge da descrição = 347 */
	public static final String LBR_NFESTATUS_347_RejeiçãoDescriçãoDoCombustívelDivergeDaDescrição = "347";
	/** 348-Rejeição: NFC-e com grupo RECOPI = 348 */
	public static final String LBR_NFESTATUS_348_RejeiçãoNFC_EComGrupoRECOPI = "348";
	/** 349-Rejeição: Número RECOPI não informado = 349 */
	public static final String LBR_NFESTATUS_349_RejeiçãoNúmeroRECOPINãoInformado = "349";
	/** 350-Rejeição: Número RECOPI inválido = 350 */
	public static final String LBR_NFESTATUS_350_RejeiçãoNúmeroRECOPIInválido = "350";
	/** 351-Rejeição: Valor do ICMS da operação no ICMS-ST=51 difer = 351 */
	public static final String LBR_NFESTATUS_351_RejeiçãoValorDoICMSDaOperaçãoNoICMS_STEq51Difer = "351";
	/** 352-Rejeição: Valor do ICMS diferido no CST=51 difere do pr = 352 */
	public static final String LBR_NFESTATUS_352_RejeiçãoValorDoICMSDiferidoNoCSTEq51DifereDoPr = "352";
	/** 353-Rejeição: Valor do ICMS no CST=51 não corresponde a dif = 353 */
	public static final String LBR_NFESTATUS_353_RejeiçãoValorDoICMSNoCSTEq51NãoCorrespondeADif = "353";
	/** 354-Rejeição: Informado grupo de devoluçãode tributos para  = 354 */
	public static final String LBR_NFESTATUS_354_RejeiçãoInformadoGrupoDeDevoluçãodeTributosPara = "354";
	/** 355-Rejeição: Informar o local de saída do país no caso de  = 355 */
	public static final String LBR_NFESTATUS_355_RejeiçãoInformarOLocalDeSaídaDoPaísNoCasoDe = "355";
	/** 356-Rejeição: Informar o clocal de saída do pís somente no  = 356 */
	public static final String LBR_NFESTATUS_356_RejeiçãoInformarOClocalDeSaídaDoPísSomenteNo = "356";
	/** 357-Rejeição: Chave de acesso do grupo de exportação indire = 357 */
	public static final String LBR_NFESTATUS_357_RejeiçãoChaveDeAcessoDoGrupoDeExportaçãoIndire = "357";
	/** 358-Rejeição: Chave de acesso no grupo de exportação indire = 358 */
	public static final String LBR_NFESTATUS_358_RejeiçãoChaveDeAcessoNoGrupoDeExportaçãoIndire = "358";
	/** 359-Rejeição: NF-e de venda a Órgão público sem informar a  = 359 */
	public static final String LBR_NFESTATUS_359_RejeiçãoNF_EDeVendaAÓrgãoPúblicoSemInformarA = "359";
	/** 360-Rejeição: NF-e com Nota de Empenho inválida para UF = 360 */
	public static final String LBR_NFESTATUS_360_RejeiçãoNF_EComNotaDeEmpenhoInválidaParaUF = "360";
	/** 361-Rejeição: NF-e com Nota de Empenho inexistente na UF = 361 */
	public static final String LBR_NFESTATUS_361_RejeiçãoNF_EComNotaDeEmpenhoInexistenteNaUF = "361";
	/** 362-Rejeição: Venda de combustível sem informação do Transp = 362 */
	public static final String LBR_NFESTATUS_362_RejeiçãoVendaDeCombustívelSemInformaçãoDoTransp = "362";
	/** 363-Rejeição: Total do ISS difere do somatório dos itens = 363 */
	public static final String LBR_NFESTATUS_363_RejeiçãoTotalDoISSDifereDoSomatórioDosItens = "363";
	/** 364-Rejeição: Total do valor da dedução do ISS difere do so = 364 */
	public static final String LBR_NFESTATUS_364_RejeiçãoTotalDoValorDaDeduçãoDoISSDifereDoSo = "364";
	/** 365-Rejeição: Total de outras retenções difere do somatório = 365 */
	public static final String LBR_NFESTATUS_365_RejeiçãoTotalDeOutrasRetençõesDifereDoSomatório = "365";
	/** 366-Rejeição: Total do desconto incondicionado do ISS difer = 366 */
	public static final String LBR_NFESTATUS_366_RejeiçãoTotalDoDescontoIncondicionadoDoISSDifer = "366";
	/** 367-Rejeição: Total do desconto condicionado do ISS difere  = 367 */
	public static final String LBR_NFESTATUS_367_RejeiçãoTotalDoDescontoCondicionadoDoISSDifere = "367";
	/** 368-Rejeição: Total do ISS retido difere do somatório dos i = 368 */
	public static final String LBR_NFESTATUS_368_RejeiçãoTotalDoISSRetidoDifereDoSomatórioDosI = "368";
	/** 369-Rejeição: Não informado o grupo avulsa na emissão pelo  = 369 */
	public static final String LBR_NFESTATUS_369_RejeiçãoNãoInformadoOGrupoAvulsaNaEmissãoPelo = "369";
	/** 370-Rejeição: Nota Fiscal Avusa com tipo de emissão inválid = 370 */
	public static final String LBR_NFESTATUS_370_RejeiçãoNotaFiscalAvusaComTipoDeEmissãoInválid = "370";
	/** 461-Rejeição: Informado percentual de gás natural na mistur = 461 */
	public static final String LBR_NFESTATUS_461_RejeiçãoInformadoPercentualDeGásNaturalNaMistur = "461";
	/** 465-Rejeição: Número de controle da FCI inexistente = 465 */
	public static final String LBR_NFESTATUS_465_RejeiçãoNúmeroDeControleDaFCIInexistente = "465";
	/** 620-Rejeição: Chave de Acesso difere da existente em BD = 620 */
	public static final String LBR_NFESTATUS_620_RejeiçãoChaveDeAcessoDifereDaExistenteEmBD = "620";
	/** 663-Rejeição: Alíq. ICMS maior que 4% na saída interestadua = 663 */
	public static final String LBR_NFESTATUS_663_RejeiçãoAlíqICMSMaiorQue4NaSaídaInterestadua = "663";
	/** 701-Rejeição: NF-e não pode utilizar verão 3.00 = 701 */
	public static final String LBR_NFESTATUS_701_RejeiçãoNF_ENãoPodeUtilizarVerão300 = "701";
	/** 702-Rejeição: NFC-e não é aceita pela UF do Emitente = 702 */
	public static final String LBR_NFESTATUS_702_RejeiçãoNFC_ENãoÉAceitaPelaUFDoEmitente = "702";
	/** 703-Rejeição: Data-hora de emissão posterior ao horário de  = 703 */
	public static final String LBR_NFESTATUS_703_RejeiçãoData_HoraDeEmissãoPosteriorAoHorárioDe = "703";
	/** 704-Rejeição: NFC-e com data-hora de emissão atrasada = 704 */
	public static final String LBR_NFESTATUS_704_RejeiçãoNFC_EComData_HoraDeEmissãoAtrasada = "704";
	/** 705-Rejeição: NFC-e com data de entrada/saida = 705 */
	public static final String LBR_NFESTATUS_705_RejeiçãoNFC_EComDataDeEntradaSaida = "705";
	/** 706-Rejeição: NFC-e para operação de entrada = 706 */
	public static final String LBR_NFESTATUS_706_RejeiçãoNFC_EParaOperaçãoDeEntrada = "706";
	/** 707-Rejeição: NFC-e para operação interestadual ou com o ex = 707 */
	public static final String LBR_NFESTATUS_707_RejeiçãoNFC_EParaOperaçãoInterestadualOuComOEx = "707";
	/** 708-Rejeição: NFC-e nao pode referenciar um documento fisca = 708 */
	public static final String LBR_NFESTATUS_708_RejeiçãoNFC_ENaoPodeReferenciarUmDocumentoFisca = "708";
	/** 709-Rejeição: NFC-e com formato de DANFE inválido = 709 */
	public static final String LBR_NFESTATUS_709_RejeiçãoNFC_EComFormatoDeDANFEInválido = "709";
	/** 710-Rejeição: NF-e com formado de DANFE inválido = 710 */
	public static final String LBR_NFESTATUS_710_RejeiçãoNF_EComFormadoDeDANFEInválido = "710";
	/** 711-Rejeição: NF-e com contingência off-line = 711 */
	public static final String LBR_NFESTATUS_711_RejeiçãoNF_EComContingênciaOff_Line = "711";
	/** 712-Rejeição: NFC-e com contingência off-line para a UF = 712 */
	public static final String LBR_NFESTATUS_712_RejeiçãoNFC_EComContingênciaOff_LineParaAUF = "712";
	/** 713-Rejeição: Tipo de emissão diferente de 6 ou 7 para cont = 713 */
	public static final String LBR_NFESTATUS_713_RejeiçãoTipoDeEmissãoDiferenteDe6Ou7ParaCont = "713";
	/** 714-Rejeição: NFC-e com contingência DPEC inexistente = 714 */
	public static final String LBR_NFESTATUS_714_RejeiçãoNFC_EComContingênciaDPECInexistente = "714";
	/** 715-Rejeição: NFC-e com finalidade inválida = 715 */
	public static final String LBR_NFESTATUS_715_RejeiçãoNFC_EComFinalidadeInválida = "715";
	/** 716-Rejeição: NFC-e em operaçoã não destinada a consumidor  = 716 */
	public static final String LBR_NFESTATUS_716_RejeiçãoNFC_EEmOperaçoãNãoDestinadaAConsumidor = "716";
	/** 717-Rejeição: NFC-e em operação não presencial = 717 */
	public static final String LBR_NFESTATUS_717_RejeiçãoNFC_EEmOperaçãoNãoPresencial = "717";
	/** 718-Rejeição: NFC-e não deve informar IE de substituto trib = 718 */
	public static final String LBR_NFESTATUS_718_RejeiçãoNFC_ENãoDeveInformarIEDeSubstitutoTrib = "718";
	/** 722-Rejeição: Operação interna com idEstrangeiro informado  = 722 */
	public static final String LBR_NFESTATUS_722_RejeiçãoOperaçãoInternaComIdEstrangeiroInformado = "722";
	/** 723-Rejeição: Operação interna com idEstrangeiro informado  = 723 */
	public static final String LBR_NFESTATUS_723_RejeiçãoOperaçãoInternaComIdEstrangeiroInformado = "723";
	/** 724-Rejeição: NF-e sem o nome do destinatário = 724 */
	public static final String LBR_NFESTATUS_724_RejeiçãoNF_ESemONomeDoDestinatário = "724";
	/** 725-Rejeição: NFC-e com CFOP inválido = 725 */
	public static final String LBR_NFESTATUS_725_RejeiçãoNFC_EComCFOPInválido = "725";
	/** 726-Rejeição: NF-e sem a informação de endereço do destinat = 726 */
	public static final String LBR_NFESTATUS_726_RejeiçãoNF_ESemAInformaçãoDeEndereçoDoDestinat = "726";
	/** 727-Rejeição: Operação com exterior e UF diferente de EX = 727 */
	public static final String LBR_NFESTATUS_727_RejeiçãoOperaçãoComExteriorEUFDiferenteDeEX = "727";
	/** 728-Rejeição: NF-e sem informação da IE do destinatário = 728 */
	public static final String LBR_NFESTATUS_728_RejeiçãoNF_ESemInformaçãoDaIEDoDestinatário = "728";
	/** 729-Rejeição: NFC-e sem informação da IE do destinatário = 729 */
	public static final String LBR_NFESTATUS_729_RejeiçãoNFC_ESemInformaçãoDaIEDoDestinatário = "729";
	/** 730-Rejeição: NFC-e com inscrição SUFRAMA = 730 */
	public static final String LBR_NFESTATUS_730_RejeiçãoNFC_EComInscriçãoSUFRAMA = "730";
	/** 731-Rejeição: CFOP de operação com exterior e idDest <> 3 = 731 */
	public static final String LBR_NFESTATUS_731_RejeiçãoCFOPDeOperaçãoComExteriorEIdDest3 = "731";
	/** 732-Rejeição: CFOP de operação com interestadual e idDest < = 732 */
	public static final String LBR_NFESTATUS_732_RejeiçãoCFOPDeOperaçãoComInterestadualEIdDestLe = "732";
	/** 733-Rejeição: CFOP de operação interna e idDest <> 1 = 733 */
	public static final String LBR_NFESTATUS_733_RejeiçãoCFOPDeOperaçãoInternaEIdDest1 = "733";
	/** 734-Rejeição: NFC-e com unidade de comercialização inválida = 734 */
	public static final String LBR_NFESTATUS_734_RejeiçãoNFC_EComUnidadeDeComercializaçãoInválida = "734";
	/** 735-Rejeição: NFC-e com unidade de tributação inválida = 735 */
	public static final String LBR_NFESTATUS_735_RejeiçãoNFC_EComUnidadeDeTributaçãoInválida = "735";
	/** 736-Rejeição: NFC-e com grupo de veículos novos = 736 */
	public static final String LBR_NFESTATUS_736_RejeiçãoNFC_EComGrupoDeVeículosNovos = "736";
	/** 737-Rejeição: NFC-e com grupo de medicamentos = 737 */
	public static final String LBR_NFESTATUS_737_RejeiçãoNFC_EComGrupoDeMedicamentos = "737";
	/** 738-Rejeição: NFC-e com grupo de armamentos = 738 */
	public static final String LBR_NFESTATUS_738_RejeiçãoNFC_EComGrupoDeArmamentos = "738";
	/** 739-Rejeição: NFC-e com grupo de combustíveis = 739 */
	public static final String LBR_NFESTATUS_739_RejeiçãoNFC_EComGrupoDeCombustíveis = "739";
	/** 740-Rejeição: NFC-e com CST 51 - diferimento = 740 */
	public static final String LBR_NFESTATUS_740_RejeiçãoNFC_EComCST51_Diferimento = "740";
	/** 741-Rejeição: NFC-e com partilha de CIMS entre UF = 741 */
	public static final String LBR_NFESTATUS_741_RejeiçãoNFC_EComPartilhaDeCIMSEntreUF = "741";
	/** 742-Rejeição: NFC-e com grupo do IPI = 742 */
	public static final String LBR_NFESTATUS_742_RejeiçãoNFC_EComGrupoDoIPI = "742";
	/** 743-Rejeição: NFC-e com grupo do II = 743 */
	public static final String LBR_NFESTATUS_743_RejeiçãoNFC_EComGrupoDoII = "743";
	/** 745-Rejeição: NF-e sem grupo do PIS = 745 */
	public static final String LBR_NFESTATUS_745_RejeiçãoNF_ESemGrupoDoPIS = "745";
	/** 746-Rejeição: NFC-e com grupo do PIS-ST = 746 */
	public static final String LBR_NFESTATUS_746_RejeiçãoNFC_EComGrupoDoPIS_ST = "746";
	/** 748-Rejeição: NF-e sem grupo do COFINS = 748 */
	public static final String LBR_NFESTATUS_748_RejeiçãoNF_ESemGrupoDoCOFINS = "748";
	/** 749-Rejeição: NF-e sem grupo do COFINS-ST = 749 */
	public static final String LBR_NFESTATUS_749_RejeiçãoNF_ESemGrupoDoCOFINS_ST = "749";
	/** 750-Rejeição: NFC-e com valor total superior ao permitido p = 750 */
	public static final String LBR_NFESTATUS_750_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoP = "750";
	/** 751-Rejeição: NFC-e com valor total superior ao permitido p = 751 */
	public static final String LBR_NFESTATUS_751_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoP = "751";
	/** 752-Rejeição: NFC-e com valor total superior ao permitido p = 752 */
	public static final String LBR_NFESTATUS_752_RejeiçãoNFC_EComValorTotalSuperiorAoPermitidoP = "752";
	/** 753-Rejeição: NFC-e sem frete = 753 */
	public static final String LBR_NFESTATUS_753_RejeiçãoNFC_ESemFrete = "753";
	/** 754-Rejeição: NFC-e com dados do transportador = 754 */
	public static final String LBR_NFESTATUS_754_RejeiçãoNFC_EComDadosDoTransportador = "754";
	/** 755-Rejeição: NFC-e com dados de retenção do ICMS no transp = 755 */
	public static final String LBR_NFESTATUS_755_RejeiçãoNFC_EComDadosDeRetençãoDoICMSNoTransp = "755";
	/** 756-Rejeição: NFC-e com dados do veículo de transporte = 756 */
	public static final String LBR_NFESTATUS_756_RejeiçãoNFC_EComDadosDoVeículoDeTransporte = "756";
	/** 757-Rejeição: NFC-e com dados de reboque do veículo de tran = 757 */
	public static final String LBR_NFESTATUS_757_RejeiçãoNFC_EComDadosDeReboqueDoVeículoDeTran = "757";
	/** 758-Rejeição: NFC-e com dados do vagão de transporte = 758 */
	public static final String LBR_NFESTATUS_758_RejeiçãoNFC_EComDadosDoVagãoDeTransporte = "758";
	/** 759-Rejeição: NFC-e co dados da balsa de transporte = 759 */
	public static final String LBR_NFESTATUS_759_RejeiçãoNFC_ECoDadosDaBalsaDeTransporte = "759";
	/** 760-Rejeição: NFC-e com dados de cobrança (fatura, duplicat = 760 */
	public static final String LBR_NFESTATUS_760_RejeiçãoNFC_EComDadosDeCobrançaFaturaDuplicat = "760";
	/** 762-Rejeição: NFC-e com dados de compra (empenho, pedido, c = 762 */
	public static final String LBR_NFESTATUS_762_RejeiçãoNFC_EComDadosDeCompraEmpenhoPedidoC = "762";
	/** 763-Rejeição: NFC-e com dados de aquisiçãod e cana = 763 */
	public static final String LBR_NFESTATUS_763_RejeiçãoNFC_EComDadosDeAquisiçãodECana = "763";
	/** 765-Rejeição: Lote só poderá conter NF-e ou NFC-e = 765 */
	public static final String LBR_NFESTATUS_765_RejeiçãoLoteSóPoderáConterNF_EOuNFC_E = "765";
	/** 766-Rejeição: NFC-e com CST 50-suspenção = 766 */
	public static final String LBR_NFESTATUS_766_RejeiçãoNFC_EComCST50_Suspenção = "766";
	/** 767-Rejeição: NFC-e com somatório dos pagamentos diferente  = 767 */
	public static final String LBR_NFESTATUS_767_RejeiçãoNFC_EComSomatórioDosPagamentosDiferente = "767";
	/** 768-Rejeição: NF-e não deve possuir o grupo de formas de pa = 768 */
	public static final String LBR_NFESTATUS_768_RejeiçãoNF_ENãoDevePossuirOGrupoDeFormasDePa = "768";
	/** 769-Rejeição: NFC-e deve possuir o grupo de formas de pagam = 769 */
	public static final String LBR_NFESTATUS_769_RejeiçãoNFC_EDevePossuirOGrupoDeFormasDePagam = "769";
	/** 771-Rejeição: Operação interestadual e UF de destino com EX = 771 */
	public static final String LBR_NFESTATUS_771_RejeiçãoOperaçãoInterestadualEUFDeDestinoComEX = "771";
	/** 772-Rejeição: Operação interestadual e UF de destino igual  = 772 */
	public static final String LBR_NFESTATUS_772_RejeiçãoOperaçãoInterestadualEUFDeDestinoIgual = "772";
	/** 773-Rejeição: Operação interna e UF de destino difere da UF = 773 */
	public static final String LBR_NFESTATUS_773_RejeiçãoOperaçãoInternaEUFDeDestinoDifereDaUF = "773";
	/** 774-Rejeição: NFC-e com indicador de item não participante  = 774 */
	public static final String LBR_NFESTATUS_774_RejeiçãoNFC_EComIndicadorDeItemNãoParticipante = "774";
	/** 775-Rejeição: Modelo da NFC-e diferente de 65 = 775 */
	public static final String LBR_NFESTATUS_775_RejeiçãoModeloDaNFC_EDiferenteDe65 = "775";
	/** 777-Rejeição: NFC-e deve informar NCM completo = 777 */
	public static final String LBR_NFESTATUS_777_RejeiçãoNFC_EDeveInformarNCMCompleto = "777";
	/** 778-Rejeição: Informado NCM inexistente = 778 */
	public static final String LBR_NFESTATUS_778_RejeiçãoInformadoNCMInexistente = "778";
	/** 779-Rejeição:NFC-e com NCM incompatível = 779 */
	public static final String LBR_NFESTATUS_779_RejeiçãoNFC_EComNCMIncompatível = "779";
	/** 780-Rejeição: Total da NFC-e superior ao valor limite estab = 780 */
	public static final String LBR_NFESTATUS_780_RejeiçãoTotalDaNFC_ESuperiorAoValorLimiteEstab = "780";
	/** 781-Rejeição: Emissor não habilitado para emissão de NFC-e = 781 */
	public static final String LBR_NFESTATUS_781_RejeiçãoEmissorNãoHabilitadoParaEmissãoDeNFC_E = "781";
	/** 782-Rejeição: NFC-e não é autorizada pelo SCAN = 782 */
	public static final String LBR_NFESTATUS_782_RejeiçãoNFC_ENãoÉAutorizadaPeloSCAN = "782";
	/** 783-Rejeição: NFC-e não é autorizada pelo SVC = 783 */
	public static final String LBR_NFESTATUS_783_RejeiçãoNFC_ENãoÉAutorizadaPeloSVC = "783";
	/** 784-Rejeição: NF-e com indicativo de NFC-e com entrega a do = 784 */
	public static final String LBR_NFESTATUS_784_RejeiçãoNF_EComIndicativoDeNFC_EComEntregaADo = "784";
	/** 785-Rejeição: NFC-e com entrega a domicilio não permitida p = 785 */
	public static final String LBR_NFESTATUS_785_RejeiçãoNFC_EComEntregaADomicilioNãoPermitidaP = "785";
	/** 786-Rejeiçao: NFC-e de entrega a domicilio sem dados dos tr = 786 */
	public static final String LBR_NFESTATUS_786_RejeiçaoNFC_EDeEntregaADomicilioSemDadosDosTr = "786";
	/** 787-Rejeição: NFC-e de entrega a domicilio sem a identifica = 787 */
	public static final String LBR_NFESTATUS_787_RejeiçãoNFC_EDeEntregaADomicilioSemAIdentifica = "787";
	/** 788-Rejeição: NFC-e de entrega a domicílio sem o endereço d = 788 */
	public static final String LBR_NFESTATUS_788_RejeiçãoNFC_EDeEntregaADomicílioSemOEndereçoD = "788";
	/** 789-Rejeição: NFC-e para destinatário contribuinte de ICMS = 789 */
	public static final String LBR_NFESTATUS_789_RejeiçãoNFC_EParaDestinatárioContribuinteDeICMS = "789";
	/** 790-Rejeição: Operação com exterior para destinatário contr = 790 */
	public static final String LBR_NFESTATUS_790_RejeiçãoOperaçãoComExteriorParaDestinatárioContr = "790";
	/** 791-Rejeição: NF-e com indicação de destinatário isento de  = 791 */
	public static final String LBR_NFESTATUS_791_RejeiçãoNF_EComIndicaçãoDeDestinatárioIsentoDe = "791";
	/** 793-Rejeição: Informado capítulo do NCM inexistente = 793 */
	public static final String LBR_NFESTATUS_793_RejeiçãoInformadoCapítuloDoNCMInexistente = "793";
	/** Set NFe Status.
		@param lbr_NFeStatus 
		Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus)
	{

		set_Value (COLUMNNAME_lbr_NFeStatus, lbr_NFeStatus);
	}

	/** Get NFe Status.
		@return Status of NFe
	  */
	public String getlbr_NFeStatus () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeStatus);
	}
}