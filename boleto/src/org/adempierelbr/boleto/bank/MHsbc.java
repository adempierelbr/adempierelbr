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
 * MHsbc
 *
 * Bank HSBC Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MHsbc.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MHsbc implements I_Bank
{
	public String DUPLICATA   = "98";

	public void generateCNAB(MLBRBoleto boleto){

		Properties ctx = boleto.getCtx();
		String     trx = boleto.get_TrxName();

		try{
			MLBRCNAB cnab = new MLBRCNAB(ctx,0,trx);

			MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx), trx);

			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);

			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");

	        cnab.setRoutingNo(CHSBC); //HSBC
	        cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //Conta Bancária
	        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
	        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
	        cnab.setlbr_CNABField3(MLBRCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
	        cnab.setlbr_CNABField4("0"); //Zero
	        cnab.setlbr_CNABField5(MLBRCNAB.CNABFormat(boleto.getlbr_AgencyNo(),4)); //Agência
	        cnab.setlbr_CNABField6("55"); //Sub-Conta Preencher "55"
	        cnab.setlbr_CNABField7(MLBRCNAB.CNABFormat(boleto.getlbr_AgencyNo() + boleto.getAccountNo() + boleto.getAccountDigit(),11)); //Conta Corrente
	        cnab.setlbr_CNABField8(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField9(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Campo Livre (Preencher com Número do Documento)
	        cnab.setlbr_CNABField10(MLBRCNAB.CNABFormat(boleto.getDocumentNo() + MLBRCNAB.getModulo11(boleto.getDocumentNo(), 7),11));
	        cnab.setlbr_CNABField11(MLBRCNAB.CNABFormat("",6)); //Desconto-Data(2)
	        cnab.setlbr_CNABField12(MLBRCNAB.CNABFormat("",13)); //Valor-Desconto
	        cnab.setlbr_CNABField13(MLBRCNAB.CNABFormat("", 6)); //Desconto-Data(3)
	        cnab.setlbr_CNABField14(MLBRCNAB.CNABFormat("",13)); //Valor-Desconto
	        cnab.setlbr_CNABField15("1"); //Carteira
	        cnab.setlbr_CNABField16("01"); //Remessa
	        cnab.setlbr_CNABField17(MLBRCNAB.CNABFormat(invoice.getDocumentNo(),10)); // Número do Documento
	        cnab.setlbr_CNABField18(MLBRCNAB.CNABDateFormat(boleto.getDueDate())); //Data Vencimento
	        cnab.setlbr_CNABField19(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField20(CHSBC);
	        cnab.setlbr_CNABField21(MLBRCNAB.CNABFormat("",5)); //Preencher com Zeros
	        cnab.setlbr_CNABField22(DUPLICATA); // Duplicata Mercantil
	        cnab.setlbr_CNABField23("N"); //Aceite
	        cnab.setlbr_CNABField24(MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
	        cnab.setlbr_CNABField25("00"); //Instrução 1
	        cnab.setlbr_CNABField26("00"); //Instrução 2
	        cnab.setlbr_CNABField27(MLBRCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
	        cnab.setlbr_CNABField28(MLBRCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
	        cnab.setlbr_CNABField29(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); //Valor do Desconto
	        cnab.setlbr_CNABField30(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField31(null); //Preencher com Espaços em Branco

	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField32("01"); //CPF
	        	cnab.setlbr_CNABField33(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
	        }
	        else{
	        	cnab.setlbr_CNABField32("02"); //CNPJ
	        	cnab.setlbr_CNABField33(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
	        }

	        cnab.setlbr_CNABField34(RemoverAcentos.remover(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
	        cnab.setlbr_CNABField35(RemoverAcentos.remover(boleto.getAddress1()).toUpperCase()); //Logradouro
	        cnab.setlbr_CNABField36(null);
	        cnab.setlbr_CNABField37(RemoverAcentos.remover(boleto.getAddress3()).toUpperCase()); //Bairro

	        String getcep = MLBRCNAB.CNABFormat(boleto.getPostal(),8);

	        cnab.setlbr_CNABField38(getcep.substring(0, 5)); //CEP
	        cnab.setlbr_CNABField39(getcep.substring(5, 8)); //Sufixo CEP
	        cnab.setlbr_CNABField40(RemoverAcentos.remover(boleto.getCity()).toUpperCase()); //Cidade
	        cnab.setlbr_CNABField41(boleto.getRegionName()); //Estado
	        cnab.setlbr_CNABField42(null); //Sacador / Avalista
	        cnab.setlbr_CNABField43(null); //Tipo Bloqueto
	        cnab.setlbr_CNABField44(null); //Prazo Protesto
	        cnab.setlbr_CNABField45("9"); //Moeda
	        cnab.setlbr_CNABField46(null); //Ajuste na geração do Arquivo

	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}

	} //generateCNAB

	private void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{

		Properties ctx = Env.getCtx();

		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));

		String cc      = BankA.getAccountNo();
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");

		TextUtil.addText(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); //OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addText(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addText(fw, "0"); //ZEROS
		TextUtil.addText(fw, TextUtil.pad(agencia, '0', 4, true)); //AGÊNCIA
		TextUtil.addText(fw, "55"); //SUB-CONTA
		TextUtil.addText(fw, TextUtil.pad((agencia + cc), '0', 11, true, true, false)); //CONTA
		TextUtil.addText(fw, TextUtil.pad("", ' ', 2, true)); //BRANCOS
		//
		TextUtil.addText(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addText(fw, CHSBC); //CÓDIGO DO BANCO
		TextUtil.addText(fw, TextUtil.pad(NHSBC, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addText(fw, "01600"); //DENSIDADE
		TextUtil.addText(fw, "BPI"); //LITERAL DENSIDADE
		TextUtil.addText(fw, TextUtil.pad("", ' ', 2, true)); //BRANCOS
		TextUtil.addText(fw, "LANCV08"); //SIGLA LAYOUT
		TextUtil.addText(fw, TextUtil.pad("", ' ', 277, true)); //BRANCOS
		TextUtil.addText(fw, TextUtil.pad("1", '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	} //generateHeader

	private void generateTrailer(FileWriter fw, int numSeq) throws IOException{

		TextUtil.addText(fw, "9"); //TIPO DE REGISTRO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 393, true)); //BRANCOS
		TextUtil.addText(fw, TextUtil.pad(numSeq, '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	} //generateTrailer

	public void generateFile(String FileName, Timestamp DateFrom, Timestamp DateTo, MBankAccount BankA, String trx) throws IOException{

		FileWriter fw = TextUtil.createFile(FileName, false);

		generateHeader(fw,BankA);

		//lbr_cnabfield7  = AGENCIA + CONTA CORRENTE + DIGITO CC

		String cc      = BankA.getAccountNo();
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		String conta   = MLBRCNAB.CNABFormat(agencia + cc, 11);

		String where =  "WHERE lbr_CNABField7 = '" + conta + "'";

		MLBRCNAB[] lines = null;

		if (DateFrom != null && DateTo != null)
			lines = MLBRCNAB.getFields(where, DateFrom, DateTo, trx);
		else
			lines = MLBRCNAB.getFields(BankA.getC_BankAccount_ID(),trx);

		int numseq = 2;
		for(int i=0;i<lines.length;i++){

			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false)); //1
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false)); //3
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false)); //17
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 1, false)); //18
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 4, false)); //22
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 2, false)); //24
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 11, false)); //35
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 2, false)); //37
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false)); //62
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 11, false)); //73
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 6, false)); //79
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 11, false)); //90
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 6, false)); //96
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 11, false)); //107
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false)); //108
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 2, false)); //110
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 10, false)); //120
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 6, false)); //126
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 13, false)); //139
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 3, false)); //142
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 5, false)); //147
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 2, false)); //149
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 1, false)); //150
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 6, false)); //156
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 2, false)); //158
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 2, false)); //160
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false)); //173
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 6, false)); //179
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 13, false)); //192
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 13, false)); //205
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 13, false)); //218
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 2, false)); //220
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 14, false)); //234
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 40, false)); //274
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 38, false)); //312
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false)); //314
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 12, false)); //326
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 5, false)); //331
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 3, false)); //334
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 15, false)); //349
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 2, false)); //351
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 39, false)); //390
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 1, false)); //391
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 2, false)); //393
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 1, false)); //394
			TextUtil.addText(fw, TextUtil.pad(numseq, '0', 6, true)); //400
			TextUtil.addEOL(fw);

			numseq++;

		}
		generateTrailer(fw,numseq);

		TextUtil.closeFile(fw);

	} //generateFile

	public void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException{

		FileWriter fw = ReturnCNABUtil.createFile(FilePath);

		for (int i = 1;i<((linhas.length)-1);i++){

			String CodOcorren      = linhas[i].substring(108, 110); //Cód. Ocorrencia
			String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));
			String DocumentNo      = (linhas[i].substring(37, 62)).trim();   //Número da Fatura
			String NossoNo         = (linhas[i].substring(62, 73)).trim();   //Nosso Número
			Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros

			ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);

		}

		TextUtil.closeFile(fw);

	}

} //MHsbc