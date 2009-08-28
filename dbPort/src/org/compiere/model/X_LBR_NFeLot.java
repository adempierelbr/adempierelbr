/*****************************************************************************
* Product: ADempiereLBR - ADempiere Localization Brazil                      *
* This program is free software. you can redistribute it and/or modify it    *
* under the terms version 2 of the GNU General Public License as published   *
* by the Free Software Foundation. This program is distributed in the hope   *
* that it will be useful, but WITHOUT ANY WARRANTY. without even the implied *
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
* See the GNU General Public License for more details.                       *
* You should have received a copy of the GNU General Public License along    *
* with this program. if not, write to the Free Software Foundation, Inc.,    *
* 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
*****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_NFeLot
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NFeLot extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NFeLot_ID id
@param trxName transaction
*/
public X_LBR_NFeLot (Properties ctx, int LBR_NFeLot_ID, String trxName)
{
super (ctx, LBR_NFeLot_ID, trxName);
/** if (LBR_NFeLot_ID == 0)
{
setLBR_NFeLot_ID (0);
setName (null);
setlbr_LotReceived (false);	// N
setlbr_LotSent (false);	// N
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NFeLot (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NFeLot");

/** TableName=LBR_NFeLot */
public static final String Table_Name="LBR_NFeLot";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NFeLot");

protected BigDecimal accessLevel = new BigDecimal(3);
/** AccessLevel
@return 3 - Client - Org 
*/
protected int get_AccessLevel()
{
return accessLevel.intValue();
}
/** Load Meta Data
@param ctx context
@return PO Info
*/
protected POInfo initPO (Properties ctx)
{
POInfo poi = POInfo.getPOInfo (ctx, Table_ID);
return poi;
}
/** Info
@return info
*/
public String toString()
{
StringBuffer sb = new StringBuffer ("X_LBR_NFeLot[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Create lines from.
@param CreateFrom Process which will generate a new document lines based on an existing document */
public void setCreateFrom (String CreateFrom)
{
if (CreateFrom != null && CreateFrom.length() > 1)
{
log.warning("Length > 1 - truncated");
CreateFrom = CreateFrom.substring(0,0);
}
set_Value ("CreateFrom", CreateFrom);
}
/** Get Create lines from.
@return Process which will generate a new document lines based on an existing document */
public String getCreateFrom() 
{
return (String)get_Value("CreateFrom");
}
/** Set Finish Date.
@param DateFinish Finish or (planned) completion date */
public void setDateFinish (Timestamp DateFinish)
{
set_Value ("DateFinish", DateFinish);
}
/** Get Finish Date.
@return Finish or (planned) completion date */
public Timestamp getDateFinish() 
{
return (Timestamp)get_Value("DateFinish");
}
/** Set Transaction Date.
@param DateTrx Transaction Date */
public void setDateTrx (Timestamp DateTrx)
{
set_Value ("DateTrx", DateTrx);
}
/** Get Transaction Date.
@return Transaction Date */
public Timestamp getDateTrx() 
{
return (Timestamp)get_Value("DateTrx");
}
/** Set Description.
@param Description Optional short description of the record */
public void setDescription (String Description)
{
if (Description != null && Description.length() > 255)
{
log.warning("Length > 255 - truncated");
Description = Description.substring(0,254);
}
set_Value ("Description", Description);
}
/** Get Description.
@return Optional short description of the record */
public String getDescription() 
{
return (String)get_Value("Description");
}
/** Set Document No.
@param DocumentNo Document sequence number of the document */
public void setDocumentNo (String DocumentNo)
{
if (DocumentNo != null && DocumentNo.length() > 22)
{
log.warning("Length > 22 - truncated");
DocumentNo = DocumentNo.substring(0,21);
}
set_Value ("DocumentNo", DocumentNo);
}
/** Get Document No.
@return Document sequence number of the document */
public String getDocumentNo() 
{
return (String)get_Value("DocumentNo");
}
/** Set NFe Lot.
@param LBR_NFeLot_ID NFe Lot */
public void setLBR_NFeLot_ID (int LBR_NFeLot_ID)
{
if (LBR_NFeLot_ID < 1) throw new IllegalArgumentException ("LBR_NFeLot_ID is mandatory.");
set_ValueNoCheck ("LBR_NFeLot_ID", new Integer(LBR_NFeLot_ID));
}
/** Get NFe Lot.
@return NFe Lot */
public int getLBR_NFeLot_ID() 
{
Integer ii = (Integer)get_Value("LBR_NFeLot_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Name.
@param Name Alphanumeric identifier of the entity */
public void setName (String Name)
{
if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
if (Name.length() > 60)
{
log.warning("Length > 60 - truncated");
Name = Name.substring(0,59);
}
set_Value ("Name", Name);
}
/** Get Name.
@return Alphanumeric identifier of the entity */
public String getName() 
{
return (String)get_Value("Name");
}
/** Get Record ID/ColumnName
@return ID/ColumnName pair */
public KeyNamePair getKeyNamePair() 
{
return new KeyNamePair(get_ID(), getName());
}
/** Set Processed.
@param Processed The document has been processed */
public void setProcessed (boolean Processed)
{
set_Value ("Processed", new Boolean(Processed));
}
/** Get Processed.
@return The document has been processed */
public boolean isProcessed() 
{
Object oo = get_Value("Processed");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Process Now.
@param Processing Process Now */
public void setProcessing (boolean Processing)
{
set_Value ("Processing", new Boolean(Processing));
}
/** Get Process Now.
@return Process Now */
public boolean isProcessing() 
{
Object oo = get_Value("Processing");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Process Now.
@param Processing2 Process Now */
public void setProcessing2 (String Processing2)
{
if (Processing2 != null && Processing2.length() > 1)
{
log.warning("Length > 1 - truncated");
Processing2 = Processing2.substring(0,0);
}
set_Value ("Processing2", Processing2);
}
/** Get Process Now.
@return Process Now */
public String getProcessing2() 
{
return (String)get_Value("Processing2");
}
/** Set Lot Received.
@param lbr_LotReceived Lot Received */
public void setlbr_LotReceived (boolean lbr_LotReceived)
{
set_Value ("lbr_LotReceived", new Boolean(lbr_LotReceived));
}
/** Get Lot Received.
@return Lot Received */
public boolean islbr_LotReceived() 
{
Object oo = get_Value("lbr_LotReceived");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Lot Sent.
@param lbr_LotSent Lot Sent */
public void setlbr_LotSent (boolean lbr_LotSent)
{
set_Value ("lbr_LotSent", new Boolean(lbr_LotSent));
}
/** Get Lot Sent.
@return Lot Sent */
public boolean islbr_LotSent() 
{
Object oo = get_Value("lbr_LotSent");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set NFe Answer Status.
@param lbr_NFeAnswerStatus Status of Answer NFe */
public void setlbr_NFeAnswerStatus (String lbr_NFeAnswerStatus)
{
if (lbr_NFeAnswerStatus != null && lbr_NFeAnswerStatus.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_NFeAnswerStatus = lbr_NFeAnswerStatus.substring(0,2);
}
set_Value ("lbr_NFeAnswerStatus", lbr_NFeAnswerStatus);
}
/** Get NFe Answer Status.
@return Status of Answer NFe */
public String getlbr_NFeAnswerStatus() 
{
return (String)get_Value("lbr_NFeAnswerStatus");
}
/** Set Recebimento ID.
@param lbr_NFeRecID Recebimento ID */
public void setlbr_NFeRecID (String lbr_NFeRecID)
{
if (lbr_NFeRecID != null && lbr_NFeRecID.length() > 256)
{
log.warning("Length > 256 - truncated");
lbr_NFeRecID = lbr_NFeRecID.substring(0,255);
}
set_Value ("lbr_NFeRecID", lbr_NFeRecID);
}
/** Get Recebimento ID.
@return Recebimento ID */
public String getlbr_NFeRecID() 
{
return (String)get_Value("lbr_NFeRecID");
}
/** Set Resposta ID.
@param lbr_NFeRespID Resposta ID */
public void setlbr_NFeRespID (String lbr_NFeRespID)
{
if (lbr_NFeRespID != null && lbr_NFeRespID.length() > 256)
{
log.warning("Length > 256 - truncated");
lbr_NFeRespID = lbr_NFeRespID.substring(0,255);
}
set_Value ("lbr_NFeRespID", lbr_NFeRespID);
}
/** Get Resposta ID.
@return Resposta ID */
public String getlbr_NFeRespID() 
{
return (String)get_Value("lbr_NFeRespID");
}

/** lbr_NFeStatus AD_Reference_ID=1100004 */
public static final int LBR_NFESTATUS_AD_Reference_ID=1100004;
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
/** Set NFe Status.
@param lbr_NFeStatus Status of NFe */
public void setlbr_NFeStatus (String lbr_NFeStatus)
{
if (lbr_NFeStatus == null || lbr_NFeStatus.equals("212") || lbr_NFeStatus.equals("213") || lbr_NFeStatus.equals("214") || lbr_NFeStatus.equals("215") || lbr_NFeStatus.equals("216") || lbr_NFeStatus.equals("217") || lbr_NFeStatus.equals("218") || lbr_NFeStatus.equals("219") || lbr_NFeStatus.equals("220") || lbr_NFeStatus.equals("221") || lbr_NFeStatus.equals("222") || lbr_NFeStatus.equals("223") || lbr_NFeStatus.equals("224") || lbr_NFeStatus.equals("225") || lbr_NFeStatus.equals("226") || lbr_NFeStatus.equals("227") || lbr_NFeStatus.equals("228") || lbr_NFeStatus.equals("229") || lbr_NFeStatus.equals("230") || lbr_NFeStatus.equals("231") || lbr_NFeStatus.equals("232") || lbr_NFeStatus.equals("233") || lbr_NFeStatus.equals("234") || lbr_NFeStatus.equals("235") || lbr_NFeStatus.equals("236") || lbr_NFeStatus.equals("237") || lbr_NFeStatus.equals("238") || lbr_NFeStatus.equals("239") || lbr_NFeStatus.equals("240") || lbr_NFeStatus.equals("241") || lbr_NFeStatus.equals("242") || lbr_NFeStatus.equals("243") || lbr_NFeStatus.equals("244") || lbr_NFeStatus.equals("245") || lbr_NFeStatus.equals("246") || lbr_NFeStatus.equals("247") || lbr_NFeStatus.equals("248") || lbr_NFeStatus.equals("249") || lbr_NFeStatus.equals("250") || lbr_NFeStatus.equals("251") || lbr_NFeStatus.equals("252") || lbr_NFeStatus.equals("253") || lbr_NFeStatus.equals("254") || lbr_NFeStatus.equals("255") || lbr_NFeStatus.equals("256") || lbr_NFeStatus.equals("257") || lbr_NFeStatus.equals("258") || lbr_NFeStatus.equals("259") || lbr_NFeStatus.equals("260") || lbr_NFeStatus.equals("261") || lbr_NFeStatus.equals("262") || lbr_NFeStatus.equals("263") || lbr_NFeStatus.equals("264") || lbr_NFeStatus.equals("265") || lbr_NFeStatus.equals("266") || lbr_NFeStatus.equals("267") || lbr_NFeStatus.equals("268") || lbr_NFeStatus.equals("269") || lbr_NFeStatus.equals("270") || lbr_NFeStatus.equals("271") || lbr_NFeStatus.equals("272") || lbr_NFeStatus.equals("273") || lbr_NFeStatus.equals("274") || lbr_NFeStatus.equals("275") || lbr_NFeStatus.equals("276") || lbr_NFeStatus.equals("277") || lbr_NFeStatus.equals("278") || lbr_NFeStatus.equals("279") || lbr_NFeStatus.equals("280") || lbr_NFeStatus.equals("281") || lbr_NFeStatus.equals("282") || lbr_NFeStatus.equals("283") || lbr_NFeStatus.equals("284") || lbr_NFeStatus.equals("285") || lbr_NFeStatus.equals("286") || lbr_NFeStatus.equals("287") || lbr_NFeStatus.equals("288") || lbr_NFeStatus.equals("289") || lbr_NFeStatus.equals("290") || lbr_NFeStatus.equals("291") || lbr_NFeStatus.equals("292") || lbr_NFeStatus.equals("293") || lbr_NFeStatus.equals("294") || lbr_NFeStatus.equals("295") || lbr_NFeStatus.equals("296") || lbr_NFeStatus.equals("297") || lbr_NFeStatus.equals("298") || lbr_NFeStatus.equals("299") || lbr_NFeStatus.equals("401") || lbr_NFeStatus.equals("402") || lbr_NFeStatus.equals("403") || lbr_NFeStatus.equals("404") || lbr_NFeStatus.equals("405") || lbr_NFeStatus.equals("406") || lbr_NFeStatus.equals("407") || lbr_NFeStatus.equals("453") || lbr_NFeStatus.equals("454") || lbr_NFeStatus.equals("478") || lbr_NFeStatus.equals("999") || lbr_NFeStatus.equals("301") || lbr_NFeStatus.equals("302") || lbr_NFeStatus.equals("100") || lbr_NFeStatus.equals("101") || lbr_NFeStatus.equals("102") || lbr_NFeStatus.equals("103") || lbr_NFeStatus.equals("104") || lbr_NFeStatus.equals("105") || lbr_NFeStatus.equals("106") || lbr_NFeStatus.equals("107") || lbr_NFeStatus.equals("108") || lbr_NFeStatus.equals("109") || lbr_NFeStatus.equals("110") || lbr_NFeStatus.equals("111") || lbr_NFeStatus.equals("112") || lbr_NFeStatus.equals("201") || lbr_NFeStatus.equals("202") || lbr_NFeStatus.equals("203") || lbr_NFeStatus.equals("204") || lbr_NFeStatus.equals("205") || lbr_NFeStatus.equals("206") || lbr_NFeStatus.equals("207") || lbr_NFeStatus.equals("208") || lbr_NFeStatus.equals("209") || lbr_NFeStatus.equals("210") || lbr_NFeStatus.equals("211"));
 else throw new IllegalArgumentException ("lbr_NFeStatus Invalid value - " + lbr_NFeStatus + " - Reference_ID=1100004 - 212 - 213 - 214 - 215 - 216 - 217 - 218 - 219 - 220 - 221 - 222 - 223 - 224 - 225 - 226 - 227 - 228 - 229 - 230 - 231 - 232 - 233 - 234 - 235 - 236 - 237 - 238 - 239 - 240 - 241 - 242 - 243 - 244 - 245 - 246 - 247 - 248 - 249 - 250 - 251 - 252 - 253 - 254 - 255 - 256 - 257 - 258 - 259 - 260 - 261 - 262 - 263 - 264 - 265 - 266 - 267 - 268 - 269 - 270 - 271 - 272 - 273 - 274 - 275 - 276 - 277 - 278 - 279 - 280 - 281 - 282 - 283 - 284 - 285 - 286 - 287 - 288 - 289 - 290 - 291 - 292 - 293 - 294 - 295 - 296 - 297 - 298 - 299 - 401 - 402 - 403 - 404 - 405 - 406 - 407 - 453 - 454 - 478 - 999 - 301 - 302 - 100 - 101 - 102 - 103 - 104 - 105 - 106 - 107 - 108 - 109 - 110 - 111 - 112 - 201 - 202 - 203 - 204 - 205 - 206 - 207 - 208 - 209 - 210 - 211");
if (lbr_NFeStatus != null && lbr_NFeStatus.length() > 3)
{
log.warning("Length > 3 - truncated");
lbr_NFeStatus = lbr_NFeStatus.substring(0,2);
}
set_Value ("lbr_NFeStatus", lbr_NFeStatus);
}
/** Get NFe Status.
@return Status of NFe */
public String getlbr_NFeStatus() 
{
return (String)get_Value("lbr_NFeStatus");
}
}
