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
 * MItau
 * 
 * Bank Itau Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MItau.java, 30/10/2007 11:37:02 mgrigioni
 */
public class MItau
{
	private static String banco     = "341";
	private static String bancoName = "BANCO ITAU SA";
	private static String especie   = "01";
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MItau.class);
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		
		try{
			MCNAB cnab = new MCNAB(ctx,0,trx);
			
			MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
			
			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);
			
			banco = boleto.getRoutingNo();
			
			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
			
			cnab.setRoutingNo(banco); //Itaú
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //Conta Bancária
	        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
	        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
	        cnab.setlbr_CNABField3(MCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
	        cnab.setlbr_CNABField4(MCNAB.CNABFormat(boleto.getlbr_AgencyNo(),4)); //Agência
	        cnab.setlbr_CNABField5("00"); //Preencher "00"
	        cnab.setlbr_CNABField6(MCNAB.CNABFormat(boleto.getAccountNo(),5)); //Conta Corrente
	        cnab.setlbr_CNABField7(boleto.getAccountDigit()); //Dígito Verificador da Conta Corrente
	        cnab.setlbr_CNABField8(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField9(null); //OK porem em branco (não sei em que caso utiliza)
	        cnab.setlbr_CNABField10(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Campo Livre (Preencher com Número do Documento)
	        
	        /*	Escriturais: é enviado zerado pela empresa e retornado pelo Banco (112)
	         *	Diretas: é de livre utilização pelo cedente (109)
			 */
	        if ((boleto.getlbr_BillFold()).equalsIgnoreCase("109")){
	        	cnab.setlbr_CNABField11(MCNAB.CNABFormat(boleto.getDocumentNo(),8));
	        }
	        else {
	        	cnab.setlbr_CNABField11(MCNAB.CNABFormat("",8));
	        }
	        
	        cnab.setlbr_CNABField12(null); //OK porem em branco (não sei em que caso utiliza)
	        cnab.setlbr_CNABField13(boleto.getlbr_BillFold()); //Carteira
	        cnab.setlbr_CNABField14(null); //Uso do Banco - Preencher com Espaços em Branco
	        cnab.setlbr_CNABField15("I"); //Código Carteira = I (Operação em Real)
	        cnab.setlbr_CNABField16("01"); //Remessa
	        cnab.setlbr_CNABField17(MCNAB.CNABFormat(invoice.getDocumentNo(),10)); // Número do Documento
	        cnab.setlbr_CNABField18(MCNAB.CNABDateFormat(boleto.getDueDate())); //Data Vencimento
	        cnab.setlbr_CNABField19(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField20(banco); //Banco
	        cnab.setlbr_CNABField21(MCNAB.CNABFormat("",5)); //Preencher com Zeros
	        cnab.setlbr_CNABField22(especie); // Duplicata Mercantil
	        cnab.setlbr_CNABField23("N"); //Aceite
	        cnab.setlbr_CNABField24(MCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
	        cnab.setlbr_CNABField25("00"); //Instrução 1
	        cnab.setlbr_CNABField26("00"); //Instrução 2
	        cnab.setlbr_CNABField27(MCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
	        cnab.setlbr_CNABField28(MCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
	        cnab.setlbr_CNABField29(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); // Valor de Desconto
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
	        cnab.setlbr_CNABField35(null); //Preencher com Espaços em Branco
	        //
	        String endereco = "";
	        if (boleto.getAddress4() != null)
	        	endereco = boleto.getAddress1() + ", " + boleto.getAddress2().toUpperCase() + " - " + boleto.getAddress4();
	        else
	        	endereco = boleto.getAddress1() + ", " + boleto.getAddress2().toUpperCase();
	        //
	        cnab.setlbr_CNABField36(TextUtil.retiraAcentos(endereco)); //Logradouro
	        cnab.setlbr_CNABField37(TextUtil.retiraAcentos(boleto.getAddress3()).toUpperCase()); //Bairro
	        cnab.setlbr_CNABField38(MCNAB.CNABFormat(boleto.getPostal(),8)); //CEP
	        cnab.setlbr_CNABField39(TextUtil.retiraAcentos(boleto.getCity()).toUpperCase()); //Cidade
	        cnab.setlbr_CNABField40(boleto.getRegionName()); //Estado
	        cnab.setlbr_CNABField41(null); //Sacador / Avalista
	        cnab.setlbr_CNABField42(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField43(null); //Data Mora
	        cnab.setlbr_CNABField44(null); //Prazo
	        cnab.setlbr_CNABField45(null); //Preencher com Espaços em Branco
	        cnab.setlbr_CNABField46(null); //Ajuste na geração do Arquivo
	        
	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE,"Erro ao salvar CNAB", cnab);
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}
	      
        
	} //generateCNAB
	
	private static void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{
		
		Properties ctx = Env.getCtx();
		
		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));
		
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);
		
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		
		TextUtil.addLine(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, "1"); //OPERAÇÃO
		TextUtil.addLine(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addLine(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad(agencia, '0', 4, true)); //AGÊNCIA
		TextUtil.addLine(fw, "00"); //ZEROS
		TextUtil.addLine(fw, TextUtil.pad(cc, '0', 5, true)); //CONTA
		TextUtil.addLine(fw, TextUtil.pad(dv, '0', 1, true)); //DAC
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 8, true)); //BRANCOS
		//
		TextUtil.addLine(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addLine(fw, banco); //CÓDIGO DO BANCO
		TextUtil.addLine(fw, TextUtil.pad(bancoName, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addLine(fw, MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 294, true)); //BRANCOS
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
		
		//lbr_cnabfield6  = CONTA CORRENTE
		
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = MCNAB.CNABFormat(BankA.getAccountNo().substring(0, indexCC),5);
		
		String where =  "WHERE lbr_CNABField6 = '" + cc + "'";
		       
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
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 21, false));
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
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 30, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 12, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 30, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 6, false));
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
			String NossoNo         = (linhas[i].substring(85, 93)).trim();   //Nosso Número
			Timestamp  DataOcorren = POLBR.stringTodate((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = MReturnCNAB.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = MReturnCNAB.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = MReturnCNAB.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros
			
			MReturnCNAB.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);
			
		}
		
		TextUtil.closeFile(fw);
		
	}
	
} //MItau