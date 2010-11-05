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
import org.compiere.model.MSequence;
import org.compiere.util.Env;

/**
 * MBradesco
 *
 * Bank Bradesco Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MBradesco.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MBradesco implements I_Bank
{

	public void generateCNAB(MLBRBoleto boleto){

		Properties ctx = boleto.getCtx();
		String     trx = boleto.get_TrxName();

		try{
			MLBRCNAB cnab = new MLBRCNAB(ctx,0,trx);

			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);

			cnab.setRoutingNo(CBRADESCO); //Bradesco
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); //Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); //Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); //Conta Bancária
	        cnab.setlbr_CNABField1("1"); //Tipo de Registro = 1
	        cnab.setlbr_CNABField2(null); //Agência de Débito
	        cnab.setlbr_CNABField3(null); //Dígito da Agência de Débito
	        cnab.setlbr_CNABField4(null); //Razão da Conta Corrente
	        cnab.setlbr_CNABField5(null); //Conta Corrente
	        cnab.setlbr_CNABField6(null); //Dígito da Conta Corrente
	        cnab.setlbr_CNABField7("0" + TextUtil.pad(boleto.getlbr_BillFold(),'0',3,true)
		               + TextUtil.pad(boleto.getlbr_AgencyNo(),'0',5,true)
		               + TextUtil.pad(boleto.getAccountNo(),'0',7,true)
		               + boleto.getAccountDigit()); // ZERO + CARTEIRA + AGÊNCIA + CC + DV
	        cnab.setlbr_CNABField8(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); //Controle do Participanete (Preencher com Número de Documento)
	        cnab.setlbr_CNABField9(CBRADESCO); //Código do Banco
	        cnab.setlbr_CNABField10("00000"); //ZEROS
	        cnab.setlbr_CNABField11(MLBRCNAB.CNABFormat(boleto.getDocumentNo() ,11)); //Nosso Número
	        cnab.setlbr_CNABField12(getModulo11(boleto.getlbr_BillFold() + boleto.getDocumentNo() , 7)); //DAC
	        cnab.setlbr_CNABField13(MLBRCNAB.CNABFormat("0", 10)); //Desconto Bonificação
	        cnab.setlbr_CNABField14("2"); //Condição Emissão de Papeleta ( 2 = Cliente Emite)
	        cnab.setlbr_CNABField15("N"); //Não registra na Cobrança
	        cnab.setlbr_CNABField16(null); //BRANCOS
	        cnab.setlbr_CNABField17(null); //Rateio
	        cnab.setlbr_CNABField18("2"); //Não emite aviso
	        cnab.setlbr_CNABField19(null); //BRANCOS
	        cnab.setlbr_CNABField20("01"); //Código da Ocorrência (1 = REMESSA)
	        cnab.setlbr_CNABField21(invoice.getDocumentNo()); //Número do Documento
	        cnab.setlbr_CNABField22(MLBRCNAB.CNABDateFormat(boleto.getDueDate())); //Data de Vencimento
	        cnab.setlbr_CNABField23(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField24("000"); //ZEROS
	        cnab.setlbr_CNABField25("00000"); //ZEROS
	        cnab.setlbr_CNABField26(DUPLICATA); //Duplicata
	        cnab.setlbr_CNABField27("N"); //Aceite
	        cnab.setlbr_CNABField28(MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate())); //Data de Emissão
	        //Protestar
	        if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0){
	        	cnab.setlbr_CNABField29("06"); //Protesto Automático
	        	cnab.setlbr_CNABField30(MLBRCNAB.CNABFormat(new Integer(boleto.getlbr_SueDays()).toString(),2)); //Dias para Protestar
	        }
	        cnab.setlbr_CNABField31(MLBRCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros
	        cnab.setlbr_CNABField32(MLBRCNAB.CNABDateFormat(boleto.getDiscountDate())); //Desconto Até
	        cnab.setlbr_CNABField33(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); // Valor de Desconto
	        cnab.setlbr_CNABField34(null); //IOF
	        cnab.setlbr_CNABField35(MLBRCNAB.CNABFormat("", 13)); //Valor do Abatimento

	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField36("01"); //CPF
	        	cnab.setlbr_CNABField37(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); //CPF ou CPNJ
	        }
	        else{
	        	cnab.setlbr_CNABField36("02"); //CNPJ
	        	cnab.setlbr_CNABField37(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); //CPF ou CPNJ
	        }

	        cnab.setlbr_CNABField38(RemoverAcentos.remover(boleto.getlbr_ReceiverName()).toUpperCase()); //NOME
	        cnab.setlbr_CNABField39(RemoverAcentos.remover(boleto.getAddress1()).toUpperCase() + "," + boleto.getCity().toUpperCase()); //Logradouro
	        cnab.setlbr_CNABField40(null); //1a Mensagem

	        String getcep = MLBRCNAB.CNABFormat(boleto.getPostal(),8);

	        cnab.setlbr_CNABField41(getcep.substring(0, 5)); //CEP
	        cnab.setlbr_CNABField42(getcep.substring(5, 8)); //Sufixo CEP
	        cnab.setlbr_CNABField43(null); //2a Mensagem
	        cnab.setlbr_CNABField44(null); //Ajuste na geração do Arquivo

	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE, "Erro ao salvar CNAB" , e);
		}

	} //generateCNAB

	private void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{

		Properties ctx = Env.getCtx();

		MOrg    Org    = MOrg.get(ctx,Env.getAD_Org_ID(ctx));
		Integer LBR_DocSequence_ID = (Integer)BankA.get_Value("LBR_DocSequence_ID");

		String seqFile = "MX" + TextUtil.pad(MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date")), '0', 7, true);

		if (LBR_DocSequence_ID != null && LBR_DocSequence_ID.intValue() != 0){
			MSequence sequence = new MSequence(ctx,LBR_DocSequence_ID,null);
			seqFile = "";
			if (sequence.getPrefix() != null) seqFile += sequence.getPrefix();
			seqFile += ((Integer)sequence.getNextID()).toString();
			if (sequence.getSuffix() != null) seqFile += sequence.getSuffix();
			sequence.save();
		}

		TextUtil.addText(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); //OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addText(fw, "01"); //CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBRANCA", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), '0', 20, true)); //CÓDIGO DA EMPRESA
		//
		TextUtil.addText(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); //NOME DA EMPRESA
		//
		TextUtil.addText(fw, CBRADESCO); //CÓDIGO DO BANCO
		TextUtil.addText(fw, TextUtil.pad(NBRADESCO, ' ', 15, false)); //NOME DO BANCO
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 8, true)); //BRANCOS
		TextUtil.addText(fw, TextUtil.pad(seqFile, '0', 9, false)); //SEQUENCIAL DO ARQUIVO
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

		//lbr_cnabfield7  = ZERO + CARTEIRA + AGÊNCIA + CC + DV

		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		       agencia = agencia.substring(0, agencia.indexOf('-'));
		String conta   = "0"
						+ TextUtil.pad(BankA.get_ValueAsString("lbr_BillFold"),'0',3,true)
						+ TextUtil.pad(agencia,'0',5,true)
						+ TextUtil.pad(cc,'0',7,true)
						+ dv;

		String where =  "WHERE lbr_CNABField7 = '" + conta + "'";

		MLBRCNAB[] lines = null;

		if (DateFrom != null && DateTo != null)
			lines = MLBRCNAB.getFields(where, DateFrom, DateTo, trx);
		else
			lines = MLBRCNAB.getFields(BankA.getC_BankAccount_ID(),trx);

		int numseq = 2;
		for(int i=0;i<lines.length;i++){

			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 7, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 17, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 25, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 11, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 12, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 60, false));
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
			String NossoNo         = (linhas[i].substring(70, 81)).trim();   //Nosso Número
			Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros

			ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
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
    private String getModulo11(String campo,int type) {
    	//Modulo 11 - 234567   (type = 7)
    	//Modulo 11 - 23456789 (type = 9)

    	int multiplicador = 2;
		int multiplicacao = 0;
		int soma_campo = 0;

		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;

			soma_campo = soma_campo + multiplicacao;

			multiplicador++;
			if (multiplicador > 7 && type == 7)
				multiplicador = 2;
			else if (multiplicador > 9 && type == 9)
				multiplicador = 2;
		}

		int dac = 11 - (soma_campo%11);

        if (dac == 10 && type == 7)
            return "P";
        else if (dac == 11 && type == 7)
        	return "0";
        else if ((dac == 0 || dac == 1 || dac > 9) && type == 9)
        	dac = 1;

        return ((Integer)dac).toString();
    }

} //MBradesco