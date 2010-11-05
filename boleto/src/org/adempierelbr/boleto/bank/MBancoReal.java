/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.boleto.bank;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.boleto.I_Bank;
import org.adempierelbr.model.MLBRBoleto;
import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.util.ReturnCNABUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;

/**
 * 	Bank Banco Real Model
 *
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MBancoReal.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MBancoReal implements I_Bank
{
	/**	Rounding Method		*/
	private final static RoundingMode ROUND 	= RoundingMode.HALF_UP;

	/**
	 * 	Gera o arquivo do CNAB para registro do Boleto
	 * 	Remessa Reg. Detalhe - Padrão	CNAB 400 bytes
	 *
	 * @param boleto
	 * @param ctx
	 * @param trxName
	 */
	public void generateCNAB (MLBRBoleto boleto) {

		Properties ctx     = boleto.getCtx();
		String     trxName = boleto.get_TrxName();

		try
		{
			//	Tratamento de erro
			if (!boleto.getRoutingNo().equals(CBANCOREAL))
				log.log(Level.SEVERE, "Banco não suportado ["+boleto.getRoutingNo()+"], " +
						"banco suportado ["+CBANCOREAL+"]");
			//
			MLBRCNAB cnab = new MLBRCNAB(ctx, 0, trxName);
			//
			MOrgInfo orgInfo 	= MOrgInfo.get (ctx, Env.getAD_Org_ID(ctx), trxName);
			MInvoice invoice 	= new MInvoice (ctx, boleto.getC_Invoice_ID(), trxName);
			MBPartner bPartner 	= new MBPartner(ctx, boleto.getC_BPartner_ID(), trxName);
			//
			String CNPJ = orgInfo.get_ValueAsString("lbr_CNPJ");
			String identCobr = invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo();
			//
			String agencyNo = boleto.getlbr_AgencyNo();
			String accountNo = boleto.getAccountNo();
			String titBankNo = MLBRCNAB.CNABFormat(boleto.getDocumentNo(), 7);
			String titCedeNo = MLBRCNAB.CNABFormat(invoice.getDocumentNo(),10);
			//
			String dueDate = MLBRCNAB.CNABDateFormat(boleto.getDueDate());
			String docDate = MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate());
			String discountDate = MLBRCNAB.CNABDateFormat(boleto.getDiscountDate());
			//
			String grandTot = MLBRCNAB.CNABFormat(boleto.getGrandTotal()
					.setScale(2, ROUND).toString(), 13);
			String interest = MLBRCNAB.CNABFormat(boleto.getlbr_Interest()
					.setScale(2, ROUND).toString(), 13);
			String discountAmt = MLBRCNAB.CNABFormat(boleto.getDiscountAmt()
					.setScale(2, ROUND).toString(), 13);
			//
			cnab.setRoutingNo(CBANCOREAL); 								//	Banco Real
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); 			//	Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); 		//	Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //	Conta Bancária
			//
			cnab.setlbr_CNABField1("1"); 							//	Tipo de Registro = 3
			cnab.setlbr_CNABField2("02"); 							//	Pessoa Jurídica
			cnab.setlbr_CNABField3(MLBRCNAB.CNABFormat(CNPJ, 14)); 	//	CNPJ Empresa
			cnab.setlbr_CNABField4("0"); 							//	Zero
			cnab.setlbr_CNABField5(MLBRCNAB.CNABFormat(agencyNo, 4)); 	//	Agência
			cnab.setlbr_CNABField6("0"); 							//	Zero
			cnab.setlbr_CNABField7(MLBRCNAB.CNABFormat(accountNo, 7));	//	Conta Corrente
			cnab.setlbr_CNABField8(null); 							//	Brancos
			cnab.setlbr_CNABField9(identCobr); 						//	Campo Livre
			cnab.setlbr_CNABField10("00");							//	Zeros
			cnab.setlbr_CNABField11(titBankNo);						//	Titulo
			cnab.setlbr_CNABField12("0");							//	Incidência da Multa | FIXME
			cnab.setlbr_CNABField13("00");							//	Número de Dias para Multa | FIXME
			cnab.setlbr_CNABField14("0");							//	Tipo da Multa | FIXME
			cnab.setlbr_CNABField15(MLBRCNAB.CNABFormat("0",13));		//	Multa
			cnab.setlbr_CNABField16(null); 							//	Brancos
			cnab.setlbr_CNABField17(MLBRCNAB.CNABFormat("0",9)); 		//	Contrato
			cnab.setlbr_CNABField18(null); 							//	Brancos
			cnab.setlbr_CNABField19(boleto.getlbr_BillFold()); 		//	Código da Carteira
			cnab.setlbr_CNABField20("5");							//	Tipo de Cobrança
			cnab.setlbr_CNABField21("01");							//	Código da Ocorrência
			cnab.setlbr_CNABField22(titCedeNo);						//	Número do Título (Cedente)
			cnab.setlbr_CNABField23(dueDate);						//	Data de Vencimento
			cnab.setlbr_CNABField24(grandTot);						//	Valor do Título
			cnab.setlbr_CNABField25(CBANCOREAL);				    //	Identificação do Banco
			cnab.setlbr_CNABField26(MLBRCNAB.CNABFormat("",5));		//	Agência Cobradora
			cnab.setlbr_CNABField27(DUPLICATA); 					// 	Espécie de Título - Duplicata
			cnab.setlbr_CNABField28("N"); 							//	Aceite
			cnab.setlbr_CNABField29(docDate); 						//	Data de Emissão
			cnab.setlbr_CNABField30("00"); 							//	Código do Protesto
			cnab.setlbr_CNABField31("  "); 							//	Brancos
			cnab.setlbr_CNABField32("0"); 							//	Tipo de Juros
			cnab.setlbr_CNABField33(interest); 						//	Juros de Mora
			cnab.setlbr_CNABField34(discountDate); 					//	Data Limite para Desconto
			cnab.setlbr_CNABField35(discountAmt); 					//	Valor Desconto
			cnab.setlbr_CNABField36(null); 							//	I.O.C
			cnab.setlbr_CNABField37(null); 							//	Abatimento
			//
			if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF"))
			{
				/*
				 * 	CPF é formado por 3 campos.
				 * 	CPF (Sem dig) + 000 + Controle (Dig. verificador)
				 */
				String CPF_Cedente = MLBRCNAB.CNABFormat(bPartner.get_ValueAsString("lbr_CPF"), 11);
				CPF_Cedente = CPF_Cedente.substring(0, 9) + "000" + CPF_Cedente.substring(9);
				//
				cnab.setlbr_CNABField38("01"); 						//	Cód. Inscr. Sacado
				cnab.setlbr_CNABField39(CPF_Cedente); 				//	CPF ou CPNJ
			}
			else
			{
				/*
				 * 	CNPJ é formado por 3 campos.
				 * 	CNPJ + Filial + Controle (Dig. verificador)
				 */
				String CNPJ_Cedente = MLBRCNAB.CNABFormat(bPartner.get_ValueAsString("lbr_CNPJ"), 14);
				//
				cnab.setlbr_CNABField38("02"); 						//	Cód. Inscr. Sacado
				cnab.setlbr_CNABField39(CNPJ_Cedente); 				//	CPF ou CPNJ
			}
			//
			cnab.setlbr_CNABField40(RemoverAcentos.remover(boleto.getlbr_ReceiverName())
					.toUpperCase()); 								//	Nome do sacado
			cnab.setlbr_CNABField41(RemoverAcentos.remover(boleto.getAddress1() + ", " +
					boleto.getAddress2()).toUpperCase()); 			//	Endereço do Sacado
			cnab.setlbr_CNABField42(RemoverAcentos.remover(boleto.getAddress3())
					.toUpperCase()); 								//	Bairro
			//
			String CEP = MLBRCNAB.CNABFormat(boleto.getPostal(),8);
			cnab.setlbr_CNABField43(CEP.substring(0, 5)); 			//	CEP
			cnab.setlbr_CNABField44(CEP.substring(5, 8)); 			//	Complemento do CEP
			//
			cnab.setlbr_CNABField45(RemoverAcentos.remover(boleto.getCity())
					.toUpperCase()); 								//	Cidade
			cnab.setlbr_CNABField46(boleto.getRegionName()); 		//	Estado
			cnab.setlbr_CNABField47(null); 							//	Nome do sacador
			cnab.setlbr_CNABField48("0"); 							//	Valor/Moeda - Reais
			cnab.setlbr_CNABField49("07"); 							//	Tipo/Moeda
			//
			if (!cnab.save(trxName))
				log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}
	}	//	generateCNAB

	/**
	 * 	Processa o retorno do CNAB
	 *
	 * @param occurType
	 * @param FilePath
	 * @param linhas
	 * @param trx
	 */
	public void returnCNAB (HashMap<Integer,String[]> occurType, String FilePath,
			String[] linhas, String trx) throws IOException
	{
		FileWriter fw = ReturnCNABUtil.createFile(FilePath);
		//
		for (int i = 1;i<((linhas.length)-1);i++)
		{
			String codOcorren      = linhas[i].substring(108, 110); 		//	Cód. Ocorrencia
			String[] descOcorren   = (occurType.get(Integer.parseInt(codOcorren)));
			//
			String documentNo      = (linhas[i].substring(37, 62)).trim();	//	Número da Fatura
			String nossoNo         = (linhas[i].substring(64, 71)).trim();	//	Nosso Número

			//	Data da Ocorrência
			Timestamp  dataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy");
			//	Valor do Título
			BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim());
			//	Desconto concedido
			BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim());
			//	Juros de Mora
			BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim());
			//
			ReturnCNABUtil.processReturn(fw, codOcorren, descOcorren[1], descOcorren[0], documentNo, nossoNo,
									  dataOcorren, ValorTitulo, Desconto, Juros, trx);
		}
		TextUtil.closeFile(fw);
	}	//	returnCNAB

	/**
	 * 	Remessa Reg. Header
	 * 	Padrão	CNAB 400 bytes
	 *
	 * @param fw
	 * @param BankA
	 * @throws IOException
	 */
	private void generateHeader (FileWriter fw, MBankAccount BankA) throws IOException
	{
		Properties ctx = Env.getCtx();
		//
		MOrg    org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));
		MOrgInfo oi	   = org.getInfo();
		//
		String cc      = BankA.getAccountNo();
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		String constante = TextUtil.rPad("1REMESSA01COBRANCA", 25);
		String legalEntity = TextUtil.rPad((String) oi.get_Value("lbr_LegalEntity"), 30);
		String data = MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"));
		//
		TextUtil.addText(fw, "0"); 									//	Código do Registro
		TextUtil.addText(fw, constante); 							//	Constante
		TextUtil.addText(fw, "0"); 									//	Zero
		TextUtil.addText(fw, TextUtil.lPad(agencia, 4)); 			//	Agência Cedente
		TextUtil.addText(fw, "0");									//	Zero
		TextUtil.addText(fw, TextUtil.lPad(cc, 7)); 				//	Conta do Cedente
		TextUtil.addText(fw, TextUtil.rPad("", 7)); 				//	Brancos
		TextUtil.addText(fw, legalEntity); 							//	Nome do Cedente
		TextUtil.addText(fw, CBANCOREAL); 							//	Identif. do Banco
		TextUtil.addText(fw, TextUtil.rPad(NBANCOREAL, 15)); 		//	Nome do Banco
		TextUtil.addText(fw, data); 								//	Data do Processamento
		TextUtil.addText(fw, "01600BPI"); 							//	Constante
		TextUtil.addText(fw, TextUtil.rPad("", 286)); 				//	Brancos
		TextUtil.addText(fw, TextUtil.lPad("1", 6)); 				//	Nro. seqüencial do
		TextUtil.addEOL(fw);
	}	//	generateHeader

	/**
	 * 	Remessa Reg. Trailler
	 * 	Padrão	CNAB 400 bytes
	 *
	 * @param fw
	 * @param numSeq
	 * @throws IOException
	 */
	private void generateTrailer (FileWriter fw, int qtdTitulos,
			BigDecimal total, int numSeq) throws IOException
	{
		String vTotal = TextUtil.lPad(total.setScale(2, ROUND), 13);
		//
		TextUtil.addText(fw, "9"); 									//	Código do Registro
		TextUtil.addText(fw, TextUtil.lPad(""+qtdTitulos, 6)); 		//	Quantidade de títulos
		TextUtil.addText(fw, vTotal); 								//	Valor Total
		TextUtil.addText(fw, TextUtil.rPad("", 374)); 				//	Brancos
		TextUtil.addText(fw, TextUtil.lPad(""+numSeq, 6)); 			//	No. de seqüência
		TextUtil.addEOL(fw);
	}	//	generateTrailer

	/**
	 * 	Gera o arquivo
	 *
	 * @param fileName
	 * @param dateFrom
	 * @param dateTo
	 * @param bankAcct
	 * @param trx
	 * @throws IOException
	 */
	public void generateFile (String fileName, Timestamp dateFrom,
			Timestamp dateTo, MBankAccount bankAcct, String trx) throws IOException
	{
		FileWriter fw = TextUtil.createFile(fileName, false);
		generateHeader (fw,bankAcct);
		//
		int 	seqNo 	= 2;
		String 	cc 		= MLBRCNAB.CNABFormat (bankAcct.getAccountNo(), 7);
		String 	where 	= " lbr_CNABField7='" + cc + "'";
		BigDecimal tot	= Env.ZERO;
		//
		MLBRCNAB[] lines = null;
		if (dateFrom != null && dateTo != null)
			lines = MLBRCNAB.getFields (where, dateFrom, dateTo, trx);
		else
			lines = MLBRCNAB.getFields (bankAcct.getC_BankAccount_ID(),trx);
		//
		for (int i=0; i < lines.length; i++)
		{
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField1(), 1)); 	//	0..1
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField2(), 2)); 	//	2
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField3(), 14)); 	//	4
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField4(), 1)); 	//	18
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField5(), 4)); 	//	19
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField6(), 1)); 	//	23
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField7(), 7)); 	//	24
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField8(), 7)); 	//	31
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false)); 	//	38
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField10(), 2)); 	//	63
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField11(), 7)); 	//	65..71
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField12(), 1)); 	//	72
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField13(), 2)); 	//	73
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField14(), 1)); 	//	75
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField15(), 13)); //	76
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField16(), 7)); 	//	89
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField17(), 9)); 	//	96
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField18(), 1)); 	//	105
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField19(), 2)); 	//	106
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField20(), 1)); 	//	108
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField21(), 2)); 	//	109
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField22(), 10)); //	111..120
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField23(), 6)); 	//	121
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField24(), 13)); //	127
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField25(), 3)); 	//	140
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField26(), 5)); 	//	143
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField27(), 2));	//	148
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField28(), 1)); 	//	150
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField29(), 6)); 	//	151
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField30(), 2)); 	//	157
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField31(), 2)); 	//	159
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField32(), 1)); 	//	161
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField33(), 12)); //	162..173
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField34(), 6)); 	//	174
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField35(), 13)); //	180
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField36(), 13)); //	193
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField37(), 13)); //	206
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField38(), 2)); 	//	219
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField39(), 14)); //	221
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField40(), 40)); //	235
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField41(), 40)); //	275
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField42(), 12)); //	315
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField43(), 5)); 	//	327..331
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField44(), 3)); 	//	332
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField45(), 15)); //	335
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField46(), 2)); 	//	350
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField47(), 40)); //	352
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField48(), 1)); 	//	392
			TextUtil.addText(fw, TextUtil.rPad(lines[i].getlbr_CNABField49(), 2)); 	//	393
			TextUtil.addText(fw, TextUtil.lPad(""+seqNo, 6)); 						//	395..400
			TextUtil.addEOL(fw);
			//
			tot = tot.add(ReturnCNABUtil.stringTobigdecimal(lines[i].getlbr_CNABField24()));
			seqNo++;
		}
		//
		generateTrailer (fw, seqNo-2, tot, seqNo);
		TextUtil.closeFile (fw);
	}	//	generateFile

}	//	MBancoReal