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
	private static final long serialVersionUID = 20120520L;

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
			setDocumentNo (null);
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
	public void setSeqNo (int SeqNo)
	{
		if (SeqNo < 1) 
			set_Value (COLUMNNAME_SeqNo, null);
		else 
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
	/** 203-Rejeição: Emissor não habilitado para emissão da NF-e = 203 */
	public static final String LBR_NFESTATUS_203_RejeiçãoEmissorNãoHabilitadoParaEmissãoDaNF_E = "203";
	/** 204-Rejeição: Duplicidade de NF-e [999999999999999999999999 = 204 */
	public static final String LBR_NFESTATUS_204_RejeiçãoDuplicidadeDeNF_E999999999999999999999999 = "204";
	/** 205-Rejeição: NF-e está denegada na base de dados da SEFAZ = 205 */
	public static final String LBR_NFESTATUS_205_RejeiçãoNF_EEstáDenegadaNaBaseDeDadosDaSEFAZ = "205";
	/** 206-Rejeição: NF-e já está inutilizada na Base de dados da  = 206 */
	public static final String LBR_NFESTATUS_206_RejeiçãoNF_EJáEstáInutilizadaNaBaseDeDadosDa = "206";
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
	/** 212-Rejeição: Data de emissão NF-e posterior a data de rece = 212 */
	public static final String LBR_NFESTATUS_212_RejeiçãoDataDeEmissãoNF_EPosteriorADataDeRece = "212";
	/** 213-Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do  = 213 */
	public static final String LBR_NFESTATUS_213_RejeiçãoCNPJ_BaseDoEmitenteDifereDoCNPJ_BaseDo = "213";
	/** 214-Rejeição: Tamanho da mensagem excedeu o limite estabele = 214 */
	public static final String LBR_NFESTATUS_214_RejeiçãoTamanhoDaMensagemExcedeuOLimiteEstabele = "214";
	/** 215-Rejeição: Falha no schema XML = 215 */
	public static final String LBR_NFESTATUS_215_RejeiçãoFalhaNoSchemaXML = "215";
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
	/** 242-Rejeição: Cabeçalho - Falha no Schema XML = 242 */
	public static final String LBR_NFESTATUS_242_RejeiçãoCabeçalho_FalhaNoSchemaXML = "242";
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
	/** 267-Rejeição: NF Complementar referencia uma NF-e inexisten = 267 */
	public static final String LBR_NFESTATUS_267_RejeiçãoNFComplementarReferenciaUmaNF_EInexisten = "267";
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
	/** 999-Rejeição: Erro não catalogado (informar a mensagem de e = 999 */
	public static final String LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeE = "999";
	/** 301-Uso Denegado: Irregularidade fiscal do emitente = 301 */
	public static final String LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente = "301";
	/** 302-Uso Denegado : Irregularidade fiscal do destinatário = 302 */
	public static final String LBR_NFESTATUS_302_UsoDenegadoIrregularidadeFiscalDoDestinatário = "302";
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
	/** 516-Rejeição: Obrigatória a informação do NCM e/ou genero = 516 */
	public static final String LBR_NFESTATUS_516_RejeiçãoObrigatóriaAInformaçãoDoNCMEOuGenero = "516";
	/** 517-Rejeição: Informação do NCM difere da informação de gên = 517 */
	public static final String LBR_NFESTATUS_517_RejeiçãoInformaçãoDoNCMDifereDaInformaçãoDeGên = "517";
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
	/** 539-Rejeição: Duplicidade de NF-e, com diferença na Chave d = 539 */
	public static final String LBR_NFESTATUS_539_RejeiçãoDuplicidadeDeNF_EComDiferençaNaChaveD = "539";
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
	/** 570-Rejeição: tpEmis = 2 só é válido na contingência SCAN = 570 */
	public static final String LBR_NFESTATUS_570_RejeiçãoTpEmisEq2SóÉVálidoNaContingênciaSCAN = "570";
	/** 571-Rejeição: O tpEmis informado diferente de 2 para contin = 571 */
	public static final String LBR_NFESTATUS_571_RejeiçãoOTpEmisInformadoDiferenteDe2ParaContin = "571";
	/** 129-Lote de Evento Processado = 129 */
	public static final String LBR_NFESTATUS_129_LoteDeEventoProcessado = "129";
	/** 135-Evento registrado e vinculado a NF-e = 135 */
	public static final String LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E = "135";
	/** 136-Evento registrado, mas não vinculado a NF-e  = 136 */
	public static final String LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANF_E = "136";
	/** 489-Rejeição: CNPJ informado inválido (DV ou zeros)  = 489 */
	public static final String LBR_NFESTATUS_489_RejeiçãoCNPJInformadoInválidoDVOuZeros = "489";
	/** 490-Rejeição: CPF informado inválido (DV ou zeros)  = 490 */
	public static final String LBR_NFESTATUS_490_RejeiçãoCPFInformadoInválidoDVOuZeros = "490";
	/** 491-Rejeição: O tpEvento informado inválido  = 491 */
	public static final String LBR_NFESTATUS_491_RejeiçãoOTpEventoInformadoInválido = "491";
	/** 492-Rejeição: O verEvento informado inválido = 492 */
	public static final String LBR_NFESTATUS_492_RejeiçãoOVerEventoInformadoInválido = "492";
	/** 493-Rejeição: Evento não atende o Schema XML específico  = 493 */
	public static final String LBR_NFESTATUS_493_RejeiçãoEventoNãoAtendeOSchemaXMLEspecífico = "493";
	/** 494-Rejeição: Chave de Acesso inexistente  = 494 */
	public static final String LBR_NFESTATUS_494_RejeiçãoChaveDeAcessoInexistente = "494";
	/** 501-Rejeição: Prazo de cancelamento superior ao previsto na = 501 */
	public static final String LBR_NFESTATUS_501_RejeiçãoPrazoDeCancelamentoSuperiorAoPrevistoNa = "501";
	/** 572-Rejeição: Erro Atributo ID do evento não corresponde a  = 572 */
	public static final String LBR_NFESTATUS_572_RejeiçãoErroAtributoIDDoEventoNãoCorrespondeA = "572";
	/** 573-Rejeição: Duplicidade de Evento  = 573 */
	public static final String LBR_NFESTATUS_573_RejeiçãoDuplicidadeDeEvento = "573";
	/** 574-Rejeição: O autor do evento diverge do emissor da NF-e  = 574 */
	public static final String LBR_NFESTATUS_574_RejeiçãoOAutorDoEventoDivergeDoEmissorDaNF_E = "574";
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
	/** 587-Rejeição: Usar somente o namespace padrão da NF-e  = 587 */
	public static final String LBR_NFESTATUS_587_RejeiçãoUsarSomenteONamespacePadrãoDaNF_E = "587";
	/** 588-Rejeição: Não é permitida a presença de caracteres de e = 588 */
	public static final String LBR_NFESTATUS_588_RejeiçãoNãoÉPermitidaAPresençaDeCaracteresDeE = "588";
	/** 590-Rejeição: Informado CST para emissor do Simples Naciona = 590 */
	public static final String LBR_NFESTATUS_590_RejeiçãoInformadoCSTParaEmissorDoSimplesNaciona = "590";
	/** 591-Rejeição: Informado CSOSN para emissor que não é do Sim = 591 */
	public static final String LBR_NFESTATUS_591_RejeiçãoInformadoCSOSNParaEmissorQueNãoÉDoSim = "591";
	/** 592-Rejeição: A NF-e deve ter pelo menos um item de produto = 592 */
	public static final String LBR_NFESTATUS_592_RejeiçãoANF_EDeveTerPeloMenosUmItemDeProduto = "592";
	/** 595-Rejeição: Obrigatória a informação da justificativa do  = 595 */
	public static final String LBR_NFESTATUS_595_RejeiçãoObrigatóriaAInformaçãoDaJustificativaDo = "595";
	/** 596-Rejeição: Evento apresentado fora do prazo: [prazo vige = 596 */
	public static final String LBR_NFESTATUS_596_RejeiçãoEventoApresentadoForaDoPrazoPrazoVige = "596";
	/** 597-Rejeição: CFOP de Importação e não informado dados de I = 597 */
	public static final String LBR_NFESTATUS_597_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "597";
	/** 598-Rejeição: NF-e emitida em ambiente de homologação com R = 598 */
	public static final String LBR_NFESTATUS_598_RejeiçãoNF_EEmitidaEmAmbienteDeHomologaçãoComR = "598";
	/** 599-Rejeição: CFOP de Importação e não informado dados de I = 599 */
	public static final String LBR_NFESTATUS_599_RejeiçãoCFOPDeImportaçãoENãoInformadoDadosDeI = "599";
	/** 128-Lote de Evento Processado 135 Evento registrado e vincu = 128 */
	public static final String LBR_NFESTATUS_128_LoteDeEventoProcessado135EventoRegistradoEVincu = "128";
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
	/** 615-Rejeição: Chave de Acesso inválida (Ano menor que 05 ou = 615 */
	public static final String LBR_NFESTATUS_615_RejeiçãoChaveDeAcessoInválidaAnoMenorQue05Ou = "615";
	/** 616-Rejeição: Chave de Acesso inválida (Mês menor que 1 ou  = 616 */
	public static final String LBR_NFESTATUS_616_RejeiçãoChaveDeAcessoInválidaMêsMenorQue1Ou = "616";
	/** 617-Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígi = 617 */
	public static final String LBR_NFESTATUS_617_RejeiçãoChaveDeAcessoInválidaCNPJZeradoOuDígi = "617";
	/** 618-Rejeição: Chave de Acesso inválida (modelo diferente de = 618 */
	public static final String LBR_NFESTATUS_618_RejeiçãoChaveDeAcessoInválidaModeloDiferenteDe = "618";
	/** 619-Rejeição: Chave de Acesso inválida (número NF = 0)  = 619 */
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
	/** 626-Rejeição: O CFOP de operação isenta para ZFM deve ser 6 = 626 */
	public static final String LBR_NFESTATUS_626_RejeiçãoOCFOPDeOperaçãoIsentaParaZFMDeveSer6 = "626";
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
	/** 137-Nenhum documento localizado para o Destinatário  = 137 */
	public static final String LBR_NFESTATUS_137_NenhumDocumentoLocalizadoParaODestinatário = "137";
	/** 138-Documento localizado para o Destinatário  = 138 */
	public static final String LBR_NFESTATUS_138_DocumentoLocalizadoParaODestinatário = "138";
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