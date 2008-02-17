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
package org.adempierelbr.model.boleto.bank;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.boleto.MBoleto;
import org.adempierelbr.model.boleto.MCNAB;
import org.adempierelbr.model.boleto.MReturnCNAB;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrg;
import org.compiere.util.Env;


/**
 * MBradesco
 * 
 * Bank Bradesco Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MBradesco.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MBradesco
{
	private static String banco     = "237";
	private static String bancoName = "BRADESCO";
	private static String especie   = "01";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		
		MCNAB cnab = new MCNAB(ctx,0,trx);
		
		MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
		MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);
		
		banco = boleto.getRoutingNo();
		
		cnab.setRoutingNo(banco); //Bradesco
		cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
        cnab.setlbr_CNABField2(null); //Agência de Débito
        cnab.setlbr_CNABField3(null); //Dígito da Agência de Débito
        cnab.setlbr_CNABField4(null); //Razão da Conta Corrente
        cnab.setlbr_CNABField5(null); //Conta Corrente
        cnab.setlbr_CNABField6(null); //Dígito da Conta Corrente
        cnab.setlbr_CNABField7("0" + boleto.getlbr_BillFold() 
        		               + boleto.getlbr_AgencyNo() + boleto.getAccountNo()
        		               + boleto.getAccountDigit()); // ZERO + CARTEIRA + AGÊNCIA + CC + DV
        cnab.setlbr_CNABField8(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Controle do Participanete (Preencher com Número de Documento)
        cnab.setlbr_CNABField9(banco); //Código do Banco
        cnab.setlbr_CNABField10("00000"); //ZEROS
        cnab.setlbr_CNABField11(MCNAB.CNABFormat(boleto.getDocumentNo() ,11)); //Nosso Número
        cnab.setlbr_CNABField12(((Integer)MCNAB.getModulo11(boleto.getlbr_BillFold() + boleto.getDocumentNo() , 7)).toString()); //DAC
        cnab.setlbr_CNABField13(MCNAB.CNABFormat("0", 10)); //Desconto Bonificação
        cnab.setlbr_CNABField14("2"); //Condição Emissão de Papeleta ( 2 = Cliente Emite)
        cnab.setlbr_CNABField15("N"); //Não registra na Cobrança
        cnab.setlbr_CNABField16(null); //BRANCOS
        cnab.setlbr_CNABField17(null); //Rateio
        cnab.setlbr_CNABField18("2"); //Não emite aviso
        cnab.setlbr_CNABField19(null); //BRANCOS
        cnab.setlbr_CNABField20("01"); //Código da Ocorrência (1 = REMESSA)
        cnab.setlbr_CNABField21(invoice.getDocumentNo()); //Número do Documento
        cnab.setlbr_CNABField22(MCNAB.CNABDateFormat(boleto.getDueDate())); //Data de Vencimento
        cnab.setlbr_CNABField23(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
        cnab.setlbr_CNABField24("000"); //ZEROS
        cnab.setlbr_CNABField25("00000"); //ZEROS
        cnab.setlbr_CNABField26(especie); //Duplicata
        cnab.setlbr_CNABField27("N"); //Aceite
        cnab.setlbr_CNABField28(MCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
        cnab.setlbr_CNABField29("00"); //Instrução 1
        cnab.setlbr_CNABField30("00"); //Instrução 2
      //cnab.setlbr_CNABField31(MCNAB.CNABFormat(Juros,13)); //Juros
        cnab.setlbr_CNABField32(MCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
        cnab.setlbr_CNABField33(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); // Valor de Desconto
        cnab.setlbr_CNABField34(null); //IOF
        cnab.setlbr_CNABField35(MCNAB.CNABFormat("", 13)); //Valor do Abatimento
        
        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
        	cnab.setlbr_CNABField36("01"); //CPF
        	cnab.setlbr_CNABField37(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
        }
        else{
        	cnab.setlbr_CNABField36("02"); //CNPJ
        	cnab.setlbr_CNABField37(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
        }
        
        cnab.setlbr_CNABField38(TextUtil.retiraAcentos(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
        cnab.setlbr_CNABField39(TextUtil.retiraAcentos(boleto.getAddress1()).toUpperCase() + "," + boleto.getCity().toUpperCase()); //Logradouro
        cnab.setlbr_CNABField40(null); //1a Mensagem
        
        String getcep = MCNAB.CNABFormat(boleto.getPostal(),8);
        
        cnab.setlbr_CNABField41(getcep.substring(0, 5)); //CEP
        cnab.setlbr_CNABField42(getcep.substring(5, 8)); //Sufixo CEP
        cnab.setlbr_CNABField43(null); //2a Mensagem
        cnab.setlbr_CNABField44(null); //Ajuste na geração do Arquivo
        
        cnab.save(trx);
        
	} //generateCNAB
	
	private static void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{
		
		Properties ctx = Env.getCtx();
		
		MOrg    Org    = MOrg.get(ctx,Env.getAD_Org_ID(ctx));
		
		TextUtil.addLine(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, "1"); //OPERAÇÃO
		TextUtil.addLine(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addLine(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), '0', 20, true)); //CÓDIGO DA EMPRESA
		//
		TextUtil.addLine(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addLine(fw, banco); //CÓDIGO DO BANCO
		TextUtil.addLine(fw, TextUtil.pad(bancoName, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addLine(fw, MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 8, true)); //BRANCOS
		TextUtil.addLine(fw, "MX"); //IDENTIFICAÇÃO DO SISTEMA
		TextUtil.addLine(fw, TextUtil.pad("1", '0', 7, true)); //SEQUENCIAL DO ARQUIVO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 277, true)); //BRANCOS
		TextUtil.addLine(fw, TextUtil.pad("1", '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);
	    
	} //generateHeader
	
	private static void generateTrailer(FileWriter fw, int numSeq) throws IOException{
		
		TextUtil.addLine(fw, "9"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 393, true)); //BRANCOS
		TextUtil.addLine(fw, TextUtil.pad(numSeq, '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);
		
	} //generateTrailer
	
	public static void generateFile(String FileName, Timestamp DateFrom, Timestamp DateTo, MBankAccount BankA, String trx) throws IOException{
		
		FileWriter fw = TextUtil.createFile(FileName, false);
		
		generateHeader(fw,BankA);
		
		//lbr_cnabfield7  = ZERO + CARTEIRA + AGÊNCIA + CC + DV
		
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		       agencia = agencia.substring(0, agencia.indexOf('-'));
		String conta   = "0" + BankA.get_ValueAsString("lbr_BillFold") + agencia + cc + dv;
		
		String where =  "WHERE lbr_CNABField7 = '" + conta + "'";
		       
		MCNAB[] lines = MCNAB.getFields(where, DateFrom, DateTo, trx);
		int numseq = 2;
		for(int i=0;i<lines.length;i++){
			
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 7, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 17, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 12, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 60, false));
			TextUtil.addLine(fw, TextUtil.pad(numseq, '0', 6, true));
			TextUtil.addEOL(fw);
			
			numseq++;
			
		}
		generateTrailer(fw,numseq);
		
		TextUtil.closeFile(fw);
		
	} //generateFile
	
	public static void returnCNAB(ArrayList<String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException{
		
		FileWriter fw = MReturnCNAB.createFile(FilePath);
		
		for (int i = 1;i<((linhas.length)-1);i++){
			
			String CodOcorren      = linhas[i].substring(108, 110); //Cód. Ocorrencia
			String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));
			String DocumentNo      = (linhas[i].substring(37, 62)).trim();   //Número da Fatura
			Timestamp  DataOcorren = POLBR.stringTodate((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = MReturnCNAB.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = MReturnCNAB.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = MReturnCNAB.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros
			
			MReturnCNAB.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, 
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);
			
		}
		
		TextUtil.closeFile(fw);
		
	}
	
} //MBradesco