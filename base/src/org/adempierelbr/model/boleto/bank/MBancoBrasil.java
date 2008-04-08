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
import org.compiere.model.MSequence;
import org.compiere.util.Env;


/**
 * MBancoBrasil
 * 
 * Bank Banco do Brasil Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MBancoBrasil.java, 09/04/2008 15:09:00 mgrigioni
 */
public class MBancoBrasil
{
	private static String banco     = "001";
	private static String bancoName = "BANCO DO BRASIL";
	private static String especie   = "01";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		
		MCNAB cnab = new MCNAB(ctx,0,trx);
		
		MOrgInfo OrgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		
		MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
		MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);
		
		banco = boleto.getRoutingNo();
		
		String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
		
		cnab.setRoutingNo(banco); //Banco do Brasil
		cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
		cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
        cnab.setlbr_CNABField2("02"); //Pessoa Jurídica
        cnab.setlbr_CNABField3(MCNAB.CNABFormat(CNPJ,14)); //CNPJ Empresa
        cnab.setlbr_CNABField4(MCNAB.CNABFormat(boleto.getlbr_AgencyNo(),4)); //Agência
        cnab.setlbr_CNABField5(MCNAB.CNABFormat(boleto.getAgencyDigit(),1)); //DV Agência
        cnab.setlbr_CNABField6(MCNAB.CNABFormat(boleto.getAccountNo(), 8)); //Cod. Cedente
        cnab.setlbr_CNABField7(MCNAB.CNABFormat(boleto.getAccountDigit(), 1)); //DV Cedente
        cnab.setlbr_CNABField8(MCNAB.CNABFormat(boleto.getlbr_ClientCode(), 6)); //Num. Convenio
        cnab.setlbr_CNABField9(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Controle do Participanete (Preencher com Número de Documento)
        cnab.setlbr_CNABField10(MCNAB.CNABFormat(boleto.getDocumentNo() ,11)); //Nosso Número
        cnab.setlbr_CNABField11(getModulo11(boleto.getDocumentNo())); //DV Nosso Numero
        cnab.setlbr_CNABField12("00"); //Número da Prestação (INFORMAR 00)
        cnab.setlbr_CNABField13("00"); //Indicativo de grupos (INFORMAR 00)
        cnab.setlbr_CNABField14(null); //BRANCOS
        cnab.setlbr_CNABField15(null); //Indicativo de Sacador (BRANCO)
        
        String carteira = boleto.getlbr_BillFold();
        String prefixo  = "AI";
        
        if (carteira.equals("31") || carteira.equals("51"))
        	prefixo = "SD";
        if (carteira.equals("12"))
        	prefixo = "AIU";
        
        cnab.setlbr_CNABField16(prefixo);
        cnab.setlbr_CNABField17("000"); //Variação da Carteira
        cnab.setlbr_CNABField18("0"); //Conta Caução (PREENCHER COM ZEROS)
        cnab.setlbr_CNABField19("00000"); //Cod. Responsabilidade
        cnab.setlbr_CNABField20("0"); //DV Cod. Responsabilidae
        cnab.setlbr_CNABField21("000000"); //Número do Borderô
        cnab.setlbr_CNABField22(null); //EM BRANCO (REGISTRO SIMPLES)
        cnab.setlbr_CNABField23(carteira); //Carteira
        cnab.setlbr_CNABField24("01"); //Registro de Título
        cnab.setlbr_CNABField25(invoice.getDocumentNo()); //Número do Documento
        cnab.setlbr_CNABField26(MCNAB.CNABDateFormat(boleto.getDueDate())); //Data de Vencimento
        cnab.setlbr_CNABField27(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
        cnab.setlbr_CNABField28(banco);
        cnab.setlbr_CNABField29("0000"); //AGENCIA COBRADORA
        cnab.setlbr_CNABField30("0"); //DV AGENCIA COBRADORA
        cnab.setlbr_CNABField31(especie); //DUPLICATA MERCANTIL
        cnab.setlbr_CNABField32("N"); //Aceite
        cnab.setlbr_CNABField33(MCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
        
        //Protestar
        if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0){
        	cnab.setlbr_CNABField34("06"); //Protesto Automático
        	cnab.setlbr_CNABField51(MCNAB.CNABFormat(new Integer(boleto.getlbr_SueDays()).toString(),2)); //Dias para Protestar
        }
        else{
        	cnab.setlbr_CNABField34("00"); //Protesto Automático
        	cnab.setlbr_CNABField51("00"); //Dias para Protestar
        }
        
        cnab.setlbr_CNABField35("00"); //Instrução 2
        cnab.setlbr_CNABField36(MCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
        cnab.setlbr_CNABField37(MCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
        cnab.setlbr_CNABField38(MCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); // Valor de Desconto
        cnab.setlbr_CNABField39(MCNAB.CNABFormat("", 13)); //IOF
        cnab.setlbr_CNABField40(MCNAB.CNABFormat("", 13)); //Valor do Abatimento
        
        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
        	cnab.setlbr_CNABField41("01"); //CPF
        	cnab.setlbr_CNABField42(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
        }
        else{
        	cnab.setlbr_CNABField41("02"); //CNPJ
        	cnab.setlbr_CNABField42(MCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
        }
        
        cnab.setlbr_CNABField43(TextUtil.retiraAcentos(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
        cnab.setlbr_CNABField44(null); //BRANCOS
        cnab.setlbr_CNABField45(TextUtil.retiraAcentos(boleto.getAddress()).toUpperCase()); //Logradouro
        cnab.setlbr_CNABField46(null); //BRANCOS
        cnab.setlbr_CNABField47(MCNAB.CNABFormat(boleto.getPostal(),8)); //CEP
        cnab.setlbr_CNABField48(TextUtil.retiraAcentos(boleto.getCity()).toUpperCase()); //CIDADE
        cnab.setlbr_CNABField49(boleto.getRegionName()); //UF
        cnab.setlbr_CNABField50(null); //BRANCOS
        //51 INFORMADO ACIMA (DIAS DE PROTESTO)
        cnab.setlbr_CNABField52(null); //BRANCOS
        cnab.setlbr_CNABField53(null); //Ajuste na geração do Arquivo
        
        cnab.save(trx);
        
	} //generateCNAB
	
	private static void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{
		
		Properties ctx = Env.getCtx();
		
		MOrg    Org    = MOrg.get(ctx,Env.getAD_Org_ID(ctx));
		
		Integer LBR_DocSequence_ID = (Integer)BankA.get_Value("LBR_DocSequence_ID");
		
		String seqFile = TextUtil.pad(MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date")), '0', 7, true);
		
		if (LBR_DocSequence_ID != null && LBR_DocSequence_ID.intValue() != 0){
			MSequence sequence = new MSequence(ctx,LBR_DocSequence_ID,null);
			seqFile = "";
			if (sequence.getPrefix() != null) seqFile += sequence.getPrefix();
			seqFile += ((Integer)sequence.getNextID()).toString();
			if (sequence.getSuffix() != null) seqFile += sequence.getSuffix();
			sequence.save();
		}
		
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);
		
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		int indexAG    = agencia.indexOf('-');
		String ag      = agencia.substring(0, indexAG);
		String dvag    = agencia.substring(indexAG+1);
		
		TextUtil.addLine(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addLine(fw, "1"); //OPERAÇÃO
		TextUtil.addLine(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addLine(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad("COBRANCA", ' ', 8, false)); //LITERAL DE SERVIÇO
		TextUtil.addLine(fw, TextUtil.pad(null, ' ', 7, false)); //BRANCOS
		TextUtil.addLine(fw, TextUtil.pad(ag, '0', 4, true)); //AGENCIA
		TextUtil.addLine(fw, TextUtil.pad(dvag, '0', 1, true)); //DV AGENCIA
		TextUtil.addLine(fw, TextUtil.pad(cc, '0', 8, true)); //COD. CEDENTE
		TextUtil.addLine(fw, TextUtil.pad(dv, '0', 1, true)); //DV CEDENTE
		TextUtil.addLine(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), ' ', 6, true)); //NUM CONVENIO
		//
		TextUtil.addLine(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addLine(fw, banco); //CÓDIGO DO BANCO
		TextUtil.addLine(fw, TextUtil.pad(bancoName, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addLine(fw, MCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		//
		TextUtil.addLine(fw, TextUtil.pad(seqFile, '0', 7, false)); //SEQUENCIAL DO ARQUIVO
		TextUtil.addLine(fw, TextUtil.pad("", ' ', 287, true)); //BRANCOS
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
			   cc   = TextUtil.pad(cc, '0', 8, true);

		String where =  "WHERE lbr_CNABField6 = '" + cc + "'";
		       
		MCNAB[] lines = MCNAB.getFields(where, DateFrom, DateTo, trx);
		int numseq = 2;
		for(int i=0;i<lines.length;i++){
			
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 11, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 37, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 37, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField46(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField47(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField48(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField49(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField50(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField51(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField52(), ' ', 1, false));
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
	
	/**************************************************************************
	 * 	getModulo11
	 *  @param String value
	 *  @param int type
	 * 	@return String dac
	 */
    public static String getModulo11(String campo) {
    	//Modulo 11 - 23456789 (type = 9)
        
    	int multiplicador = 2;
		int multiplicacao = 0;
		int soma_campo = 0;
		
		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;
			
			soma_campo = soma_campo + multiplicacao;
			
			multiplicador++;
			if (multiplicador > 9)
				multiplicador = 2;
		}
		
		int dac = (soma_campo%11);
		
        if (dac == 10)
            return "X";
       
        return ((Integer)dac).toString();
    }
	
} //MBancoBrasil