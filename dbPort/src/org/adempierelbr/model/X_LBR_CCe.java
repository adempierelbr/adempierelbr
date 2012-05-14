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

/** Generated Model for LBR_CCe
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_CCe extends PO implements I_LBR_CCe, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20120513L;

    /** Standard Constructor */
    public X_LBR_CCe (Properties ctx, int LBR_CCe_ID, String trxName)
    {
      super (ctx, LBR_CCe_ID, trxName);
      /** if (LBR_CCe_ID == 0)
        {
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setDescription (null);
			setDocAction (null);
// CO
			setDocStatus (null);
// DR
			setLBR_CCe_ID (0);
			setLBR_NotaFiscal_ID (0);
			setProcessed (false);
// N
			setSeqNo (null);
// 1
        } */
    }

    /** Load Constructor */
    public X_LBR_CCe (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_CCe[")
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

	/** Set Carta de Correcao.
		@param LBR_CCe_ID Carta de Correcao	  */
	public void setLBR_CCe_ID (int LBR_CCe_ID)
	{
		if (LBR_CCe_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_CCe_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_CCe_ID, Integer.valueOf(LBR_CCe_ID));
	}

	/** Get Carta de Correcao.
		@return Carta de Correcao	  */
	public int getLBR_CCe_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CCe_ID);
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
	public void setSeqNo (String SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, SeqNo);
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public String getSeqNo () 
	{
		return (String)get_Value(COLUMNNAME_SeqNo);
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
	/** Autorizado o uso da NF-e = 100 */
	public static final String LBR_NFESTATUS_AutorizadoOUsoDaNF_E = "100";
	/** Cancelamento de NF-e homologado = 101 */
	public static final String LBR_NFESTATUS_CancelamentoDeNF_EHomologado = "101";
	/** Inutilização de número homologado = 102 */
	public static final String LBR_NFESTATUS_InutilizaçãoDeNúmeroHomologado = "102";
	/** Lote recebido com sucesso = 103 */
	public static final String LBR_NFESTATUS_LoteRecebidoComSucesso = "103";
	/** Lote processado = 104 */
	public static final String LBR_NFESTATUS_LoteProcessado = "104";
	/** Lote em processamento = 105 */
	public static final String LBR_NFESTATUS_LoteEmProcessamento = "105";
	/** Lote não localizado = 106 */
	public static final String LBR_NFESTATUS_LoteNãoLocalizado = "106";
	/** Serviço em Operação = 107 */
	public static final String LBR_NFESTATUS_ServiçoEmOperação = "107";
	/** Serviço Paralisado Momentaneamente (curto prazo) = 108 */
	public static final String LBR_NFESTATUS_ServiçoParalisadoMomentaneamenteCurtoPrazo = "108";
	/** Serviço Paralisado sem Previsão = 109 */
	public static final String LBR_NFESTATUS_ServiçoParalisadoSemPrevisão = "109";
	/** Uso Denegado = 110 */
	public static final String LBR_NFESTATUS_UsoDenegado = "110";
	/** Consulta cadastro com uma ocorrência = 111 */
	public static final String LBR_NFESTATUS_ConsultaCadastroComUmaOcorrência = "111";
	/** Consulta cadastro com mais de uma ocorrência = 112 */
	public static final String LBR_NFESTATUS_ConsultaCadastroComMaisDeUmaOcorrência = "112";
	/** Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite = 201 */
	public static final String LBR_NFESTATUS_RejeiçãoONumeroMáximoDeNumeraçãoDeNF_EAInutilizarUltrapassouOLimite = "201";
	/** Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital = 202 */
	public static final String LBR_NFESTATUS_RejeiçãoFalhaNoReconhecimentoDaAutoriaOuIntegridadeDoArquivoDigital = "202";
	/** Rejeição: Emissor não habilitado para emissão da NF-e = 203 */
	public static final String LBR_NFESTATUS_RejeiçãoEmissorNãoHabilitadoParaEmissãoDaNF_E = "203";
	/** Rejeição: Duplicidade de NF-e = 204 */
	public static final String LBR_NFESTATUS_RejeiçãoDuplicidadeDeNF_E = "204";
	/** Rejeição: NF-e está denegada na base de dados da SEFAZ = 205 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EEstáDenegadaNaBaseDeDadosDaSEFAZ = "205";
	/** Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ = 206 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDaSEFAZ = "206";
	/** Rejeição: CNPJ do emitente inválido = 207 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDoEmitenteInválido = "207";
	/** Rejeição: CNPJ do destinatário inválido = 208 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDoDestinatárioInválido = "208";
	/** Rejeição: IE do emitente inválida = 209 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoEmitenteInválida = "209";
	/** Rejeição: IE do destinatário inválida = 210 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoDestinatárioInválida = "210";
	/** Rejeição: IE do substituto inválida = 211 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoSubstitutoInválida = "211";
	/** Rejeição: Data de emissão NF-e posterior a data de recebimento = 212 */
	public static final String LBR_NFESTATUS_RejeiçãoDataDeEmissãoNF_EPosteriorADataDeRecebimento = "212";
	/** Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital = 213 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJ_BaseDoEmitenteDifereDoCNPJ_BaseDoCertificadoDigital = "213";
	/** Rejeição: Tamanho da mensagem excedeu o limite estabelecido = 214 */
	public static final String LBR_NFESTATUS_RejeiçãoTamanhoDaMensagemExcedeuOLimiteEstabelecido = "214";
	/** Rejeição: Falha no schema XML = 215 */
	public static final String LBR_NFESTATUS_RejeiçãoFalhaNoSchemaXML = "215";
	/** Rejeição: Chave de Acesso difere da cadastrada = 216 */
	public static final String LBR_NFESTATUS_RejeiçãoChaveDeAcessoDifereDaCadastrada = "216";
	/** Rejeição: NF-e não consta na base de dados da SEFAZ = 217 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_ENãoConstaNaBaseDeDadosDaSEFAZ = "217";
	/** Rejeição: NF-e  já esta cancelada na base de dados da SEFAZ = 218 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EJáEstaCanceladaNaBaseDeDadosDaSEFAZ = "218";
	/** Rejeição: Circulação da NF-e verificada = 219 */
	public static final String LBR_NFESTATUS_RejeiçãoCirculaçãoDaNF_EVerificada = "219";
	/** Rejeição: NF-e autorizada há mais de 7 dias (168 horas) = 220 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EAutorizadaHáMaisDe7Dias168Horas = "220";
	/** Rejeição: Confirmado o recebimento da NF-e pelo destinatário = 221 */
	public static final String LBR_NFESTATUS_RejeiçãoConfirmadoORecebimentoDaNF_EPeloDestinatário = "221";
	/** Rejeição: Protocolo de Autorização de Uso difere do cadastrado = 222 */
	public static final String LBR_NFESTATUS_RejeiçãoProtocoloDeAutorizaçãoDeUsoDifereDoCadastrado = "222";
	/** Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta = 223 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDoTransmissorDoLoteDifereDoCNPJDoTransmissorDaConsulta = "223";
	/** Rejeição: A faixa inicial é maior que a faixa final = 224 */
	public static final String LBR_NFESTATUS_RejeiçãoAFaixaInicialÉMaiorQueAFaixaFinal = "224";
	/** Rejeição: Falha no Schema XML da NFe = 225 */
	public static final String LBR_NFESTATUS_RejeiçãoFalhaNoSchemaXMLDaNFe = "225";
	/** Rejeição: Código da UF do Emitente diverge da UF autorizadora = 226 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoDaUFDoEmitenteDivergeDaUFAutorizadora = "226";
	/** Rejeição: Erro na Chave de Acesso - Campo ID = 227 */
	public static final String LBR_NFESTATUS_RejeiçãoErroNaChaveDeAcesso_CampoID = "227";
	/** Rejeição: Data de Emissão muito atrasada = 228 */
	public static final String LBR_NFESTATUS_RejeiçãoDataDeEmissãoMuitoAtrasada = "228";
	/** Rejeição: IE do emitente não informada = 229 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoEmitenteNãoInformada = "229";
	/** Rejeição: IE do emitente não cadastrada = 230 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoEmitenteNãoCadastrada = "230";
	/** Rejeição: IE do emitente não vinculada ao CNPJ = 231 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoEmitenteNãoVinculadaAoCNPJ = "231";
	/** Rejeição: IE do destinatário não informada = 232 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoDestinatárioNãoInformada = "232";
	/** Rejeição: IE do destinatário não cadastrada = 233 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoDestinatárioNãoCadastrada = "233";
	/** Rejeição: IE do destinatário não vinculada ao CNPJ = 234 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDoDestinatárioNãoVinculadaAoCNPJ = "234";
	/** Rejeição: Inscrição SUFRAMA inválida = 235 */
	public static final String LBR_NFESTATUS_RejeiçãoInscriçãoSUFRAMAInválida = "235";
	/** Rejeição: Chave de Acesso com dígito verificador inválido = 236 */
	public static final String LBR_NFESTATUS_RejeiçãoChaveDeAcessoComDígitoVerificadorInválido = "236";
	/** Rejeição: CPF do destinatário inválido = 237 */
	public static final String LBR_NFESTATUS_RejeiçãoCPFDoDestinatárioInválido = "237";
	/** Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente = 238 */
	public static final String LBR_NFESTATUS_RejeiçãoCabeçalho_VersãoDoArquivoXMLSuperiorAVersãoVigente = "238";
	/** Rejeição: Cabeçalho - Versão do arquivo XML não suportada = 239 */
	public static final String LBR_NFESTATUS_RejeiçãoCabeçalho_VersãoDoArquivoXMLNãoSuportada = "239";
	/** Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente = 240 */
	public static final String LBR_NFESTATUS_RejeiçãoCancelamentoInutilização_IrregularidadeFiscalDoEmitente = "240";
	/** Rejeição: Um número da faixa já foi utilizado = 241 */
	public static final String LBR_NFESTATUS_RejeiçãoUmNúmeroDaFaixaJáFoiUtilizado = "241";
	/** Rejeição: Cabeçalho - Falha no Schema XML = 242 */
	public static final String LBR_NFESTATUS_RejeiçãoCabeçalho_FalhaNoSchemaXML = "242";
	/** Rejeição: XML Mal Formado = 243 */
	public static final String LBR_NFESTATUS_RejeiçãoXMLMalFormado = "243";
	/** Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente = 244 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDoCertificadoDigitalDifereDoCNPJDaMatrizEDoCNPJDoEmitente = "244";
	/** Rejeição: CNPJ Emitente não cadastrado = 245 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJEmitenteNãoCadastrado = "245";
	/** Rejeição: CNPJ Destinatário não cadastrado = 246 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDestinatárioNãoCadastrado = "246";
	/** Rejeição: Sigla da UF do Emitente diverge da UF autorizadora = 247 */
	public static final String LBR_NFESTATUS_RejeiçãoSiglaDaUFDoEmitenteDivergeDaUFAutorizadora = "247";
	/** Rejeição: UF do Recibo diverge da UF autorizadora = 248 */
	public static final String LBR_NFESTATUS_RejeiçãoUFDoReciboDivergeDaUFAutorizadora = "248";
	/** Rejeição: UF da Chave de Acesso diverge da UF autorizadora = 249 */
	public static final String LBR_NFESTATUS_RejeiçãoUFDaChaveDeAcessoDivergeDaUFAutorizadora = "249";
	/** Rejeição: UF diverge da UF autorizadora = 250 */
	public static final String LBR_NFESTATUS_RejeiçãoUFDivergeDaUFAutorizadora = "250";
	/** Rejeição: UF/Município destinatário não pertence a SUFRAMA = 251 */
	public static final String LBR_NFESTATUS_RejeiçãoUFMunicípioDestinatárioNãoPertenceASUFRAMA = "251";
	/** Rejeição: Ambiente informado diverge do Ambiente de recebimento = 252 */
	public static final String LBR_NFESTATUS_RejeiçãoAmbienteInformadoDivergeDoAmbienteDeRecebimento = "252";
	/** Rejeição: Digito Verificador da chave de acesso composta inválida = 253 */
	public static final String LBR_NFESTATUS_RejeiçãoDigitoVerificadorDaChaveDeAcessoCompostaInválida = "253";
	/** Rejeição: NF-e complementar não possui NF referenciada = 254 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EComplementarNãoPossuiNFReferenciada = "254";
	/** Rejeição: NF-e complementar possui mais de uma NF referenciada = 255 */
	public static final String LBR_NFESTATUS_RejeiçãoNF_EComplementarPossuiMaisDeUmaNFReferenciada = "255";
	/** Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ = 256 */
	public static final String LBR_NFESTATUS_RejeiçãoUmaNF_EDaFaixaJáEstáInutilizadaNaBaseDeDadosDaSEFAZ = "256";
	/** Rejeição: Solicitante não habilitado para emissão da NF-e = 257 */
	public static final String LBR_NFESTATUS_RejeiçãoSolicitanteNãoHabilitadoParaEmissãoDaNF_E = "257";
	/** Rejeição: CNPJ da consulta inválido = 258 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDaConsultaInválido = "258";
	/** Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF = 259 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJDaConsultaNãoCadastradoComoContribuinteNaUF = "259";
	/** Rejeição: IE da consulta inválida = 260 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDaConsultaInválida = "260";
	/** Rejeição: IE da consulta não cadastrada como contribuinte na UF = 261 */
	public static final String LBR_NFESTATUS_RejeiçãoIEDaConsultaNãoCadastradaComoContribuinteNaUF = "261";
	/** Rejeição: UF não fornece consulta por CPF = 262 */
	public static final String LBR_NFESTATUS_RejeiçãoUFNãoForneceConsultaPorCPF = "262";
	/** Rejeição: CPF da consulta inválido = 263 */
	public static final String LBR_NFESTATUS_RejeiçãoCPFDaConsultaInválido = "263";
	/** Rejeição: CPF da consulta não cadastrado como contribuinte na UF = 264 */
	public static final String LBR_NFESTATUS_RejeiçãoCPFDaConsultaNãoCadastradoComoContribuinteNaUF = "264";
	/** Rejeição: Sigla da UF da consulta difere da UF do Web Service = 265 */
	public static final String LBR_NFESTATUS_RejeiçãoSiglaDaUFDaConsultaDifereDaUFDoWebService = "265";
	/** Rejeição: Série utilizada não permitida no Web Service = 266 */
	public static final String LBR_NFESTATUS_RejeiçãoSérieUtilizadaNãoPermitidaNoWebService = "266";
	/** Rejeição: NF Complementar referencia uma NF-e inexistente = 267 */
	public static final String LBR_NFESTATUS_RejeiçãoNFComplementarReferenciaUmaNF_EInexistente = "267";
	/** Rejeição: NF Complementar referencia uma outra NF-e Complementar = 268 */
	public static final String LBR_NFESTATUS_RejeiçãoNFComplementarReferenciaUmaOutraNF_EComplementar = "268";
	/** Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada = 269 */
	public static final String LBR_NFESTATUS_RejeiçãoCNPJEmitenteDaNFComplementarDifereDoCNPJDaNFReferenciada = "269";
	/** Rejeição: Código Município do Fato Gerador: dígito inválido = 270 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoFatoGeradorDígitoInválido = "270";
	/** Rejeição: Código Município do Fato Gerador: difere da UF do emitente = 271 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoFatoGeradorDifereDaUFDoEmitente = "271";
	/** Rejeição: Código Município do Emitente: dígito inválido = 272 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoEmitenteDígitoInválido = "272";
	/** Rejeição: Código Município do Emitente: difere da UF do emitente = 273 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoEmitenteDifereDaUFDoEmitente = "273";
	/** Rejeição: Código Município do Destinatário: dígito inválido = 274 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoDestinatárioDígitoInválido = "274";
	/** Rejeição: Código Município do Destinatário: difere da UF do Destinatário = 275 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoDestinatárioDifereDaUFDoDestinatário = "275";
	/** Rejeição: Código Município do Local de Retirada: dígito inválido = 276 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDígitoInválido = "276";
	/** Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada = 277 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoLocalDeRetiradaDifereDaUFDoLocalDeRetirada = "277";
	/** Rejeição: Código Município do Local de Entrega: dígito inválido = 278 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoLocalDeEntregaDígitoInválido = "278";
	/** Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega = 279 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoLocalDeEntregaDifereDaUFDoLocalDeEntrega = "279";
	/** Rejeição: Certificado Transmissor inválido = 280 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorInválido = "280";
	/** Rejeição: Certificado Transmissor Data Validade = 281 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorDataValidade = "281";
	/** Rejeição: Certificado Transmissor sem CNPJ = 282 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorSemCNPJ = "282";
	/** Rejeição: Certificado Transmissor - erro Cadeia de Certificação = 283 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissor_ErroCadeiaDeCertificação = "283";
	/** Rejeição: Certificado Transmissor revogado = 284 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorRevogado = "284";
	/** Rejeição: Certificado Transmissor difere ICP-Brasil = 285 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorDifereICP_Brasil = "285";
	/** Rejeição: Certificado Transmissor erro no acesso a LCR = 286 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoTransmissorErroNoAcessoALCR = "286";
	/** Rejeição: Código Município do FG - ISSQN: dígito inválido = 287 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoFG_ISSQNDígitoInválido = "287";
	/** Rejeição: Código Município do FG - Transporte: dígito inválido = 288 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoMunicípioDoFG_TransporteDígitoInválido = "288";
	/** Rejeição: Código da UF informada diverge da UF solicitada = 289 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoDaUFInformadaDivergeDaUFSolicitada = "289";
	/** Rejeição: Certificado Assinatura inválido = 290 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaInválido = "290";
	/** Rejeição: Certificado Assinatura Data Validade = 291 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaDataValidade = "291";
	/** Rejeição: Certificado Assinatura sem CNPJ = 292 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaSemCNPJ = "292";
	/** Rejeição: Certificado Assinatura - erro Cadeia de Certificação = 293 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinatura_ErroCadeiaDeCertificação = "293";
	/** Rejeição: Certificado Assinatura revogado = 294 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaRevogado = "294";
	/** Rejeição: Certificado Assinatura difere ICP-Brasil = 295 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaDifereICP_Brasil = "295";
	/** Rejeição: Certificado Assinatura erro no acesso a LCR = 296 */
	public static final String LBR_NFESTATUS_RejeiçãoCertificadoAssinaturaErroNoAcessoALCR = "296";
	/** Rejeição: Assinatura difere do calculado = 297 */
	public static final String LBR_NFESTATUS_RejeiçãoAssinaturaDifereDoCalculado = "297";
	/** Rejeição: Assinatura difere do padrão do Projeto = 298 */
	public static final String LBR_NFESTATUS_RejeiçãoAssinaturaDifereDoPadrãoDoProjeto = "298";
	/** Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8 = 299 */
	public static final String LBR_NFESTATUS_RejeiçãoXMLDaÁreaDeCabeçalhoComCodificaçãoDiferenteDeUTF_8 = "299";
	/** Rejeição: CPF do remetente inválido = 401 */
	public static final String LBR_NFESTATUS_RejeiçãoCPFDoRemetenteInválido = "401";
	/** Rejeição: XML da área de dados com codificação diferente de UTF-8 = 402 */
	public static final String LBR_NFESTATUS_RejeiçãoXMLDaÁreaDeDadosComCodificaçãoDiferenteDeUTF_8 = "402";
	/** Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco = 403 */
	public static final String LBR_NFESTATUS_RejeiçãoOGrupoDeInformaçõesDaNF_EAvulsaÉDeUsoExclusivoDoFisco = "403";
	/** Rejeição: Uso de prefixo de namespace não permitido = 404 */
	public static final String LBR_NFESTATUS_RejeiçãoUsoDePrefixoDeNamespaceNãoPermitido = "404";
	/** Rejeição: Código do país do emitente: dígito inválido = 405 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoDoPaísDoEmitenteDígitoInválido = "405";
	/** Rejeição: Código do país do destinatário: dígito inválido = 406 */
	public static final String LBR_NFESTATUS_RejeiçãoCódigoDoPaísDoDestinatárioDígitoInválido = "406";
	/** Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa = 407 */
	public static final String LBR_NFESTATUS_RejeiçãoOCPFSóPodeSerInformadoNoCampoEmitenteParaANF_EAvulsa = "407";
	/** Rejeição: Ano de inutilização não pode ser superior ao Ano atual = 453 */
	public static final String LBR_NFESTATUS_RejeiçãoAnoDeInutilizaçãoNãoPodeSerSuperiorAoAnoAtual = "453";
	/** Rejeição: Ano de inutilização não pode ser inferior a 2006 = 454 */
	public static final String LBR_NFESTATUS_RejeiçãoAnoDeInutilizaçãoNãoPodeSerInferiorA2006 = "454";
	/** Rejeição: Local da entrega não informado para faturamento direto de veículos novos = 478 */
	public static final String LBR_NFESTATUS_RejeiçãoLocalDaEntregaNãoInformadoParaFaturamentoDiretoDeVeículosNovos = "478";
	/** Rejeição: Erro não catalogado = 999 */
	public static final String LBR_NFESTATUS_RejeiçãoErroNãoCatalogado = "999";
	/** Uso Denegado : Irregularidade fiscal do emitente = 301 */
	public static final String LBR_NFESTATUS_UsoDenegadoIrregularidadeFiscalDoEmitente = "301";
	/** Uso Denegado : Irregularidade fiscal do destinatário  = 302 */
	public static final String LBR_NFESTATUS_UsoDenegadoIrregularidadeFiscalDoDestinatário = "302";
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