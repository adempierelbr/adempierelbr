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
public class MSantander_033
{
	private static String banco     = "033";
	private static String bancoName = "BANESPA";
	private static String especie   = "01";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		
		MCNAB cnab = new MCNAB(ctx,0,trx);
		
		MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		
		MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
		MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);
		
		banco = boleto.getRoutingNo();
		
		String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
		
		cnab.setRoutingNo(banco); //Santander (Banespa)
		cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
        cnab.setlbr_CNABField3(MCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
        cnab.setlbr_CNABField4(boleto.getlbr_ClientCode()); //Código do Cliente
        cnab.setlbr_CNABField5(null); //Brancos
        cnab.setlbr_CNABField6(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Campo Livre (Preencher com Número do Documento)
        cnab.setlbr_CNABField7(MCNAB.CNABFormat(boleto.getlbr_AgencyNo(),3)); //Agência
        cnab.setlbr_CNABField8(boleto.getDocumentNo()); //Nosso Número
        cnab.setlbr_CNABField9(null); //Brancos
        cnab.setlbr_CNABField10(null); //Brancos
        cnab.setlbr_CNABField11("1"); //Carteira ( 1 = Cobrança Simples)
        cnab.setlbr_CNABField12("01"); //Remessa
        cnab.setlbr_CNABField13(invoice.getDocumentNo()); //Número do Documento
        cnab.setlbr_CNABField14(MCNAB.CNABDateFormat(boleto.getDueDate())); //Data Vencimento
        cnab.setlbr_CNABField15(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
        cnab.setlbr_CNABField16(banco);
        cnab.setlbr_CNABField17("00000"); //ZEROS
        cnab.setlbr_CNABField18(especie); // Duplicata Mercantil
        cnab.setlbr_CNABField19("N"); //Aceite
        cnab.setlbr_CNABField20(MCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
        cnab.setlbr_CNABField21("00"); //Instrução 1
        cnab.setlbr_CNABField22("00"); //Instrução 2
      //cnab.setlbr_CNABField23(MCNAB.CNABFormat(Juros,13)); //Juros
        cnab.setlbr_CNABField24(MCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
        cnab.setlbr_CNABField25(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); //Valor do Desconto
        cnab.setlbr_CNABField26(null); //IOF
        cnab.setlbr_CNABField27(null); //Abatimento
        
        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
        	cnab.setlbr_CNABField28("01"); //CPF
        	cnab.setlbr_CNABField29(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
        }
        else{
        	cnab.setlbr_CNABField28("02"); //CNPJ
        	cnab.setlbr_CNABField29(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
        }
        
        cnab.setlbr_CNABField30(TextUtil.retiraAcentos(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
        cnab.setlbr_CNABField31(TextUtil.retiraAcentos(boleto.getAddress1()).toUpperCase()); //Logradouro
        cnab.setlbr_CNABField32(TextUtil.retiraAcentos(boleto.getAddress3()).toUpperCase()); //Bairro
        
        String getcep = MCNAB.CNABFormat(boleto.getPostal(),8);
        
        cnab.setlbr_CNABField33(getcep.substring(0, 5)); //CEP
        cnab.setlbr_CNABField34(getcep.substring(5, 8)); //Sufixo CEP
        cnab.setlbr_CNABField35(TextUtil.retiraAcentos(boleto.getCity()).toUpperCase()); //Cidade
        cnab.setlbr_CNABField36(boleto.getRegionName()); //Estado
        cnab.setlbr_CNABField37(null); //Sacador / Avalista
        cnab.setlbr_CNABField38(null); //Prazo para Protesto
        cnab.setlbr_CNABField39(null); //Brancos
        cnab.setlbr_CNABField40(null); //Ajuste na geração do Arquivo
        
        cnab.save(trx);
        
	} //generateCNAB
	
	private static void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{
		
		Properties ctx = Env.getCtx();
		
		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));
		
		TextUtil.addLine(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, "1"); //OPERAÇÃO
		TextUtil.addLine(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addLine(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), '0', 11, true)); //CÓDIGO DA EMPRESA
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 9, true)); //BRANCOS
		//
		TextUtil.addLine(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addLine(fw, banco); //CÓDIGO DO BANCO
		TextUtil.addLine(fw, TextUtil.pad(bancoName, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addLine(fw, MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addLine(fw, "01600"); //DENSIDADE DE GRAVAÇÃO
		TextUtil.addLine(fw, "BPI"); //UNIDADE DENSIDADE DE GRAVAÇÃO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 286, true)); //BRANCOS
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
		
		//lbr_cnabfield4  = CÓDIGO DO CLIENTE
		//lbr_cnabfield20 = DATA DE EMISSÃO
		
		String CodCliente = BankA.get_ValueAsString("lbr_ClientCode");
		
		String where =  "WHERE lbr_CNABField4 = '" + CodCliente + "'";
		       
		MCNAB[] lines = MCNAB.getFields(where, DateFrom, DateTo, trx);
		int numseq = 2;
		for(int i=0;i<lines.length;i++){
			
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 9, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 7, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 12, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 1, false));
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
	
} //MSantander