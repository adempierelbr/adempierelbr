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
 * MSantander
 *
 * Bank Santander Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MSantander_033.java, 21/11/2007 13:54:00 mgrigioni
 */
public class MSantander_033 implements I_Bank
{

	public void generateCNAB(MLBRBoleto boleto){

		Properties ctx = boleto.getCtx();
		String     trx = boleto.get_TrxName();

		try{
			MLBRCNAB cnab = new MLBRCNAB(ctx,0,trx);

			MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),trx);

			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);

			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");

			cnab.setRoutingNo(CSANTANDER033); //Santander (Banespa)
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //Conta Bancária
	        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
	        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
	        cnab.setlbr_CNABField3(MLBRCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
	        cnab.setlbr_CNABField4(boleto.getlbr_ClientCode()); //Código do Cliente
	        cnab.setlbr_CNABField5(null); //Brancos
	        cnab.setlbr_CNABField6(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Campo Livre (Preencher com Número do Documento)
	        cnab.setlbr_CNABField7(MLBRCNAB.CNABFormat(boleto.getlbr_AgencyNo(),3)); //Agência
	        cnab.setlbr_CNABField8(boleto.getDocumentNo()); //Nosso Número
	        cnab.setlbr_CNABField9(null); //Brancos
	        cnab.setlbr_CNABField10(null); //Brancos
	        cnab.setlbr_CNABField11("1"); //Carteira ( 1 = Cobrança Simples)
	        cnab.setlbr_CNABField12("01"); //Remessa
	        cnab.setlbr_CNABField13(invoice.getDocumentNo()); //Número do Documento
	        cnab.setlbr_CNABField14(MLBRCNAB.CNABDateFormat(boleto.getDueDate())); //Data Vencimento
	        cnab.setlbr_CNABField15(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField16(CSANTANDER033);
	        cnab.setlbr_CNABField17("00000"); //ZEROS
	        cnab.setlbr_CNABField18(DUPLICATA); // Duplicata Mercantil
	        cnab.setlbr_CNABField19("N"); //Aceite
	        cnab.setlbr_CNABField20(MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
	        //Protestar
	        if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0){
	        	cnab.setlbr_CNABField21("06"); //Protesto Automático
	        }
	        cnab.setlbr_CNABField22("00"); //Instrução 2
	        cnab.setlbr_CNABField23(MLBRCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
	        cnab.setlbr_CNABField24(MLBRCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
	        cnab.setlbr_CNABField25(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); //Valor do Desconto
	        cnab.setlbr_CNABField26(null); //IOF
	        cnab.setlbr_CNABField27(null); //Abatimento

	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField28("01"); //CPF
	        	cnab.setlbr_CNABField29(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
	        }
	        else{
	        	cnab.setlbr_CNABField28("02"); //CNPJ
	        	cnab.setlbr_CNABField29(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
	        }

	        cnab.setlbr_CNABField30(RemoverAcentos.remover(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
	        cnab.setlbr_CNABField31(RemoverAcentos.remover(boleto.getAddress1()).toUpperCase()); //Logradouro
	        cnab.setlbr_CNABField32(RemoverAcentos.remover(boleto.getAddress3()).toUpperCase()); //Bairro

	        String getcep = MLBRCNAB.CNABFormat(boleto.getPostal(),8);

	        cnab.setlbr_CNABField33(getcep.substring(0, 5)); //CEP
	        cnab.setlbr_CNABField34(getcep.substring(5, 8)); //Sufixo CEP
	        cnab.setlbr_CNABField35(RemoverAcentos.remover(boleto.getCity()).toUpperCase()); //Cidade
	        cnab.setlbr_CNABField36(boleto.getRegionName()); //Estado
	        cnab.setlbr_CNABField37(null); //Sacador / Avalista
	        cnab.setlbr_CNABField38(null); //Prazo para Protesto
	        cnab.setlbr_CNABField39(null); //Brancos
	        cnab.setlbr_CNABField40(null); //Ajuste na geração do Arquivo

	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE,"Erro ao salvar CNAB", cnab);
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}

	} //generateCNAB

	private void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{

		Properties ctx = Env.getCtx();

		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));

		TextUtil.addText(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); //OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addText(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), '0', 11, true)); //CÓDIGO DA EMPRESA
		TextUtil.addText(fw, TextUtil.pad("", ' ', 9, true)); //BRANCOS
		//
		TextUtil.addText(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addText(fw, CSANTANDER033); //CÓDIGO DO BANCO
		TextUtil.addText(fw, TextUtil.pad(NSANTANDER033, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addText(fw, "01600"); //DENSIDADE DE GRAVAÇÃO
		TextUtil.addText(fw, "BPI"); //UNIDADE DENSIDADE DE GRAVAÇÃO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 286, true)); //BRANCOS
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

		//lbr_cnabfield4  = CÓDIGO DO CLIENTE
		//lbr_cnabfield20 = DATA DE EMISSÃO

		String CodCliente = BankA.get_ValueAsString("lbr_ClientCode");

		String where =  "WHERE lbr_CNABField4 = '" + CodCliente + "'";

		MLBRCNAB[] lines = null;

		if (DateFrom != null && DateTo != null)
			lines = MLBRCNAB.getFields(where, DateFrom, DateTo, trx);
		else
			lines = MLBRCNAB.getFields(BankA.getC_BankAccount_ID(),trx);

		int numseq = 2;
		for(int i=0;i<lines.length;i++){

			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 11, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 9, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 25, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 7, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 25, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 12, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 15, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(numseq, '0', 6, true));
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
			String NossoNo         = (linhas[i].substring(65, 72)).trim(); //Nosso Número
			Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros

			ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);

		}

		TextUtil.closeFile(fw);

	}

} //MSantander_033