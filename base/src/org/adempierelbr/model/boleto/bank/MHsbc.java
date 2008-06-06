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
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

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
import org.compiere.util.CLogger;
import org.compiere.util.Env;


/**
 * MHsbc
 * 
 * Bank HSBC Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MHsbc.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MHsbc
{
	private static String banco     = "399";
	private static String bancoName = "HSBC";
	private static String especie   = "98";
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MHsbc.class);
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		
		try{
			MCNAB cnab = new MCNAB(ctx,0,trx);
			
			MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
			
			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);
			
			banco = boleto.getRoutingNo();
			
			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
		
	        cnab.setRoutingNo(banco); //HSBC
	        cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //Conta Bancária
	        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
	        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
	        cnab.setlbr_CNABField3(MCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
	        cnab.setlbr_CNABField4("0"); //Zero
	        cnab.setlbr_CNABField5(MCNAB.CNABFormat(boleto.getlbr_AgencyNo(),4)); //Agência
	        cnab.setlbr_CNABField6("55"); //Sub-Conta Preencher "55"
	        cnab.setlbr_CNABField7(MCNAB.CNABFormat(boleto.getlbr_AgencyNo() + boleto.getAccountNo() + boleto.getAccountDigit(),11)); //Conta Corrente
	        cnab.setlbr_CNABField8(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField9(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Campo Livre (Preencher com Número do Documento)
	        cnab.setlbr_CNABField10(MCNAB.CNABFormat(boleto.getDocumentNo() + MCNAB.getModulo11(boleto.getDocumentNo(), 7),11));
	        cnab.setlbr_CNABField11(MCNAB.CNABFormat("",6)); //Desconto-Data(2)
	        cnab.setlbr_CNABField12(MCNAB.CNABFormat("",13)); //Valor-Desconto
	        cnab.setlbr_CNABField13(MCNAB.CNABFormat("", 6)); //Desconto-Data(3)
	        cnab.setlbr_CNABField14(MCNAB.CNABFormat("",13)); //Valor-Desconto
	        cnab.setlbr_CNABField15("1"); //Carteira
	        cnab.setlbr_CNABField16("01"); //Remessa
	        cnab.setlbr_CNABField17(MCNAB.CNABFormat(invoice.getDocumentNo(),10)); // Número do Documento
	        cnab.setlbr_CNABField18(MCNAB.CNABDateFormat(boleto.getDueDate())); //Data Vencimento
	        cnab.setlbr_CNABField19(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField20(banco);
	        cnab.setlbr_CNABField21(MCNAB.CNABFormat("",5)); //Preencher com Zeros
	        cnab.setlbr_CNABField22(especie); // Duplicata Mercantil
	        cnab.setlbr_CNABField23("N"); //Aceite
	        cnab.setlbr_CNABField24(MCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
	        cnab.setlbr_CNABField25("00"); //Instrução 1
	        cnab.setlbr_CNABField26("00"); //Instrução 2
	        cnab.setlbr_CNABField27(MCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
	        cnab.setlbr_CNABField28(MCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
	        cnab.setlbr_CNABField29(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); //Valor do Desconto
	        cnab.setlbr_CNABField30(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField31(null); //Preencher com Espaços em Branco
	        
	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField32("01"); //CPF
	        	cnab.setlbr_CNABField33(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
	        }
	        else{
	        	cnab.setlbr_CNABField32("02"); //CNPJ
	        	cnab.setlbr_CNABField33(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
	        }
	        
	        cnab.setlbr_CNABField34(TextUtil.retiraAcentos(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
	        cnab.setlbr_CNABField35(TextUtil.retiraAcentos(boleto.getAddress1()).toUpperCase()); //Logradouro
	        cnab.setlbr_CNABField36(null);
	        cnab.setlbr_CNABField37(TextUtil.retiraAcentos(boleto.getAddress3()).toUpperCase()); //Bairro
	        
	        String getcep = MCNAB.CNABFormat(boleto.getPostal(),8);
	        
	        cnab.setlbr_CNABField38(getcep.substring(0, 5)); //CEP
	        cnab.setlbr_CNABField39(getcep.substring(5, 8)); //Sufixo CEP
	        cnab.setlbr_CNABField40(TextUtil.retiraAcentos(boleto.getCity()).toUpperCase()); //Cidade
	        cnab.setlbr_CNABField41(boleto.getRegionName()); //Estado
	        cnab.setlbr_CNABField42(null); //Sacador / Avalista
	        cnab.setlbr_CNABField43(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField44(null); //Data Mora
	        cnab.setlbr_CNABField45(null); //Prazo
	        cnab.setlbr_CNABField46(null); //Ajuste na geração do Arquivo
	        
	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}
        
	} //generateCNAB
	
	private static void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{
		
		Properties ctx = Env.getCtx();
		
		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));
		
		String cc      = BankA.getAccountNo();
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		
		TextUtil.addLine(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, "1"); //OPERAÇÃO
		TextUtil.addLine(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addLine(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addLine(fw, "0"); //ZEROS
		TextUtil.addLine(fw, TextUtil.pad(agencia, '0', 4, true)); //AGÊNCIA
		TextUtil.addLine(fw, "55"); //SUB-CONTA
		TextUtil.addLine(fw, TextUtil.pad((agencia + cc), '0', 11, true, true, false)); //CONTA
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 2, true)); //BRANCOS
		//
		TextUtil.addLine(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addLine(fw, banco); //CÓDIGO DO BANCO
		TextUtil.addLine(fw, TextUtil.pad(bancoName, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addLine(fw, MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addLine(fw, "01600"); //DENSIDADE
		TextUtil.addLine(fw, "BPI"); //LITERAL DENSIDADE
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 2, true)); //BRANCOS
		TextUtil.addLine(fw, "LANCV08"); //SIGLA LAYOUT
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
		
		//lbr_cnabfield7  = AGENCIA + CONTA CORRENTE + DIGITO CC

		String cc      = BankA.getAccountNo();
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		String conta   = MCNAB.CNABFormat(agencia + cc, 11);
		
		String where =  "WHERE lbr_CNABField7 = '" + conta + "'";
		
		MCNAB[] lines = null;
		
		if (DateFrom != null && DateTo != null)
			lines = MCNAB.getFields(where, DateFrom, DateTo, trx);
		else
			lines = MCNAB.getFields(BankA.getC_BankAccount_ID(),trx);
		
		int numseq = 2;
		for(int i=0;i<lines.length;i++){
			
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 38, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 12, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 39, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(numseq, '0', 6, true));
			TextUtil.addEOL(fw);
			
			numseq++;
			
		}
		generateTrailer(fw,numseq);
		
		TextUtil.closeFile(fw);
		
	} //generateFile
	
	public static void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException{
		
		FileWriter fw = MReturnCNAB.createFile(FilePath);
		
		for (int i = 1;i<((linhas.length)-1);i++){
			
			String CodOcorren      = linhas[i].substring(108, 110); //Cód. Ocorrencia
			String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));
			String DocumentNo      = (linhas[i].substring(37, 62)).trim();   //Número da Fatura
			String NossoNo         = (linhas[i].substring(62, 73)).trim();   //Nosso Número
			Timestamp  DataOcorren = POLBR.stringTodate((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = MReturnCNAB.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = MReturnCNAB.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = MReturnCNAB.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros
			
			MReturnCNAB.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);
			
		}
		
		TextUtil.closeFile(fw);
		
	}
	
} //MHsbc