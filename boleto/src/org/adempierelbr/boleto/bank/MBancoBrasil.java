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
import org.compiere.model.MSequence;
import org.compiere.util.Env;


/**
 * MBancoBrasil
 *
 * Bank Banco do Brasil Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * 		Alterado por Pablo Boff Pigozzo - 13/08/2010 10:20:00 pablobp4
 *
 * @version $Id: MBancoBrasil.java, 09/04/2008 15:09:00 mgrigioni
 */
public class MBancoBrasil implements I_Bank
{

	/** Leiaute CNAB CBR641 com CONVÊNIO de 7 POSICOES */
	private static int CBR641_7 = 7;

	/** Leiaute CNAB CBR641 com CONVÊNIO de 6 POSICOES */
	private static int CBR641_6 = 6;

	/** Generate CNAB */
	public void generateCNAB(MLBRBoleto boleto){

 		int DIGITOS_CONVENIO = boleto.getlbr_ClientCode().trim().length();		// Numero de Digitos do Convênio
		if(DIGITOS_CONVENIO == 7)
			generateCNAB_7Pos(boleto);
		else
			generateCNAB_6Pos(boleto);

		log.info("generateCNAB - Convênio com " + DIGITOS_CONVENIO + " dígitos.");

	} //generateCNAB

	public void generateCNAB_6Pos(MLBRBoleto boleto){

		Properties ctx = boleto.getCtx();
		String     trx = boleto.get_TrxName();

		try
		{

			MLBRCNAB cnab = new MLBRCNAB(ctx,0,trx); 										// CNAB
			MOrgInfo OrgInfo = MOrgInfo.get(ctx, boleto.getAD_Org_ID(),trx);			// Organização
			MInvoice invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);		// Fatura
			MBPartner bpartner = new MBPartner(ctx,boleto.getC_BPartner_ID(),trx);  // Parceiro de Negócio

			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
			cnab.setRoutingNo(CBANCOBRASIL); 													// Banco do Brasil
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); 								// Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); 							//Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); 					//Conta Bancária

			// CNAB FIELDS
			cnab.setlbr_CNABField1("1"); 												// Tipo de Registro = 1
			cnab.setlbr_CNABField2("02"); 												// Pessoa Jurídica
			cnab.setlbr_CNABField3(MLBRCNAB.CNABFormat(CNPJ,14)); 							// CNPJ Empresa
			cnab.setlbr_CNABField4(MLBRCNAB.CNABFormat(boleto.getlbr_AgencyNo(),4)); 		// Agência
			cnab.setlbr_CNABField5(MLBRCNAB.CNABFormat(boleto.getAgencyDigit(),1)); 		// DV Agência
			cnab.setlbr_CNABField6(MLBRCNAB.CNABFormat(boleto.getAccountNo(), 8)); 		// Cod. Cedente
			cnab.setlbr_CNABField7(MLBRCNAB.CNABFormat(boleto.getAccountDigit(), 1)); 		// DV Cedente
			cnab.setlbr_CNABField8(MLBRCNAB.CNABFormat(boleto.getlbr_ClientCode(), 6)); 	// Num. Convenio
			cnab.setlbr_CNABField9(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); 	//Controle do Participanete (Preencher com Número de Documento)

			cnab.setlbr_CNABField10(MLBRCNAB.CNABFormat(boleto.getDocumentNo() ,11)); 		// Nosso Número
			cnab.setlbr_CNABField11(getModulo11(boleto.getDocumentNo())); 				// DV Nosso Numero

			String carteira = MLBRBoleto.getlbr_BillFoldNo(boleto.getlbr_BillFold());		// Carteira
			
			/** Colocar ZEROS pois o nosso número é gerado no Banco para as carteiras 11, 31, 51 */
			if (carteira.equals("11") || carteira.equals("31") || carteira.equals("51")){
				cnab.setlbr_CNABField10(MLBRCNAB.CNABFormat(null ,11)); 					// Nosso Número
				cnab.setlbr_CNABField11("0"); 											// DV Nosso Numero
			}

			cnab.setlbr_CNABField12("00"); 												// Número da Prestação (INFORMAR 00)
			cnab.setlbr_CNABField13("00"); 												// Indicativo de grupos (INFORMAR 00)
			cnab.setlbr_CNABField14(null); 												// BRANCOS
			cnab.setlbr_CNABField15(null); 												// Indicativo de Sacador (BRANCO)

        	String prefixo  = "AI";
        	if (carteira.equals("31") || carteira.equals("51"))
        		prefixo = "SD";
        	if (carteira.equals("12"))
        		prefixo = "AIU";
        	cnab.setlbr_CNABField16(prefixo);
        	cnab.setlbr_CNABField17(MLBRBoleto.getlbr_BillFoldDigit(boleto.getlbr_BillFold())); // Variação da Carteira

        	cnab.setlbr_CNABField18("0"); 												// Conta Caução (PREENCHER COM ZEROS)
        	cnab.setlbr_CNABField19("00000");											// Cod. Responsabilidade
        	cnab.setlbr_CNABField20("0"); 												// DV Cod. Responsabilidae
        	cnab.setlbr_CNABField21("000000"); 											// Número do Borderô
        	cnab.setlbr_CNABField22(null); 												// EM BRANCO (REGISTRO SIMPLES)
	        cnab.setlbr_CNABField23(carteira); 											// Carteira
	        cnab.setlbr_CNABField24("01"); 												// Registro de Título
	        cnab.setlbr_CNABField25(invoice.getDocumentNo()); 							// Número do Documento
	        cnab.setlbr_CNABField26(MLBRCNAB.CNABDateFormat(boleto.getDueDate())); 		// Data de Vencimento
	        cnab.setlbr_CNABField27(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); //Valor do Título
	        cnab.setlbr_CNABField28(CBANCOBRASIL);
	        cnab.setlbr_CNABField29("0000"); 											// AGENCIA COBRADORA
	        cnab.setlbr_CNABField30(" "); 												// DV AGENCIA COBRADORA
	        cnab.setlbr_CNABField31(DUPLICATA); 										// DUPLICATA MERCANTIL
	        cnab.setlbr_CNABField32("N"); 												// Aceite
	        cnab.setlbr_CNABField33(MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate())); 	// Data de Emissão

	        // Instrução Codificada 1 - Protestar
	        if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0){
	        	cnab.setlbr_CNABField34("06"); 											// Protesto Automático
	        	cnab.setlbr_CNABField51(MLBRCNAB.CNABFormat(new Integer(boleto.getlbr_SueDays()).toString(),2)); //Dias para Protestar
	        }
	        else{
	        	cnab.setlbr_CNABField34("00"); 											// Protesto Automático
	        	cnab.setlbr_CNABField51("00"); 											// Dias para Protestar
	        } 
	        
	        cnab.setlbr_CNABField35("01"); 												// Instrução Codificada 2


	        cnab.setlbr_CNABField36(MLBRCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); 					// Juros
	        
	        if( boleto.getDiscountAmt() != null && boleto.getDiscountAmt().compareTo(Env.ZERO) == 1) {
	        	cnab.setlbr_CNABField37(MLBRCNAB.CNABDateFormat(boleto.getDiscountDate()));										// Desconto Até
	        	cnab.setlbr_CNABField38(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13)); 	// Valor de Desconto
	        } else {
	        	cnab.setlbr_CNABField37("000000"); 									// Desconto Até
	        	cnab.setlbr_CNABField38("0000000000000"); 							// Valor de Desconto
	        }


	        cnab.setlbr_CNABField39(MLBRCNAB.CNABFormat("", 13)); 						// IOF
	        cnab.setlbr_CNABField40(MLBRCNAB.CNABFormat("", 13)); 						// Valor do Abatimento

	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField41("01"); 														 // CPF
	        	cnab.setlbr_CNABField42(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); // CPF ou CPNJ
	        }
	        else
	        {
	        	cnab.setlbr_CNABField41("02"); 															// CNPJ
	        	cnab.setlbr_CNABField42(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); 	// CPF ou CPNJ
	        }

	        String nomeSacado = RemoverAcentos.remover(boleto.getlbr_ReceiverName());
	        cnab.setlbr_CNABField43(nomeSacado.toUpperCase()); 											// NOME

	        cnab.setlbr_CNABField44(null); 																// BRANCOS

	        String enderecoSacado = RemoverAcentos.remover(boleto.getAddress());
	        cnab.setlbr_CNABField45(enderecoSacado.toUpperCase()); 										// Logradouro

	        cnab.setlbr_CNABField46(null); 																// BRANCOS
	        cnab.setlbr_CNABField47(MLBRCNAB.CNABFormat(boleto.getPostal(),8)); 							// CEP

	        String cidadeSacado = RemoverAcentos.remover(boleto.getCity());
	        cnab.setlbr_CNABField48(cidadeSacado.toUpperCase()); 										// Cidade Sacado

	        cnab.setlbr_CNABField49(boleto.getRegionName()); 											// UF
	        cnab.setlbr_CNABField50(""); 																// BRANCOS
	        cnab.setlbr_CNABField52(null); 																// BRANCOS
	        cnab.setlbr_CNABField53(null); 																//Ajuste na geração do Arquivo

	        if (!cnab.save(trx)){
	        	log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
	        	return;
	        }
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}
	}

	public void generateCNAB_7Pos(MLBRBoleto boleto){

		Properties ctx = boleto.getCtx();
		String     trx = boleto.get_TrxName();

		try
		{

			MLBRCNAB cnab = new MLBRCNAB(ctx, 0, trx); 									// CNAB
			MOrgInfo OrgInfo = MOrgInfo.get(ctx, boleto.getAD_Org_ID(), trx);		// Organização
			MInvoice invoice = new MInvoice(ctx, boleto.getC_Invoice_ID(), trx);	// Fatura
			MBPartner bpartner = new MBPartner(ctx, boleto.getC_BPartner_ID(), trx);// Parceiro de Negócio

			String CNPJ = OrgInfo.get_ValueAsString("lbr_CNPJ");
			cnab.setRoutingNo(CBANCOBRASIL); 											// Banco do Brasil
			cnab.setlbr_DocDate(boleto.getlbr_DocDate()); 								// Data do Documento
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); 							// Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); 					// Conta Bancária

			// CNAB FIELDS
			cnab.setlbr_CNABField1("7"); 												// Tipo de Registro = 1
			cnab.setlbr_CNABField2("02"); 												// Pessoa Jurídica
			cnab.setlbr_CNABField3(MLBRCNAB.CNABFormat(CNPJ, 14)); 						// CNPJ Empresa

			cnab.setlbr_CNABField4(MLBRCNAB.CNABFormat(boleto.getlbr_AgencyNo(), 4)); 		// Agência
			cnab.setlbr_CNABField5(MLBRCNAB.CNABFormat(boleto.getAgencyDigit(), 1)); 		// DV Agência
			cnab.setlbr_CNABField6(MLBRCNAB.CNABFormat(boleto.getAccountNo(), 8)); 		// Cod. Cedente
			cnab.setlbr_CNABField7(MLBRCNAB.CNABFormat(boleto.getAccountDigit(), 1)); 		// DV Cedente
			cnab.setlbr_CNABField8(MLBRCNAB.CNABFormat(boleto.getlbr_ClientCode(), 7)); 	// Num. Convenio
			cnab.setlbr_CNABField9(invoice.getDocumentNo() + "/" + boleto.getlbr_PayScheduleNo()); 	// Controle do Participanete (Preencher com Número de Documento)

			cnab.setlbr_CNABField10(MLBRCNAB.CNABFormat(boleto.getDocumentNo() ,17)); 		// Nosso Número

			String carteira = MLBRBoleto.getlbr_BillFoldNo(boleto.getlbr_BillFold());		// Get Carteira
			
			// Colocar ZEROS quando o nosso número é gerado no Banco para as carteiras 11, 31, 51
			if (carteira.equals("11") || carteira.equals("31") || carteira.equals("51")){
				cnab.setlbr_CNABField10(MLBRCNAB.CNABFormat(null ,17)); 					// Nosso Número (ZEROS para a carteira 11, 31 , 51)
			}

			cnab.setlbr_CNABField11("00"); 												// Número da Prestação (INFORMAR 00)
			cnab.setlbr_CNABField12("00"); 												// Indicativo de grupos (INFORMAR 00)
			cnab.setlbr_CNABField13(null); 												// Complemento do Registro (BRANCOS)
			cnab.setlbr_CNABField14(null); 												// Indicativo de Sacador (BRANCO)

			String prefixo  = "AI";
        	if (carteira.equals("31") || carteira.equals("51"))
        		prefixo = "SD";
        	if (carteira.equals("12"))
        		prefixo = "AIU";
        	cnab.setlbr_CNABField15(prefixo); 											// Prefixo do Título
        	
        	cnab.setlbr_CNABField16(MLBRBoleto.getlbr_BillFoldDigit(boleto.getlbr_BillFold())); // Variação da Carteira
        	cnab.setlbr_CNABField17("0"); 												// Conta Caução (PREENCHER COM ZEROS)
        	cnab.setlbr_CNABField18("000000");											// Número do Borderô (ZEROS)
        	cnab.setlbr_CNABField19("00000");											// Tipo de Cobranças
        	cnab.setlbr_CNABField20(carteira); 											// Carteira de Cobrança
        	cnab.setlbr_CNABField21("01"); 												// Comando (01 - Registro de Títulos)
        	cnab.setlbr_CNABField22(invoice.getDocumentNo()); 							// Seu Número/ Número atribuido pela impresa (Número da Fatura)
        	cnab.setlbr_CNABField23(MLBRCNAB.CNABDateFormat(boleto.getDueDate())); 		// Data de Vencimento
        	cnab.setlbr_CNABField24(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getGrandTotal()).doubleValue()),13)); // Valor do Título
        	cnab.setlbr_CNABField25("001"); 											// Número do Banco
        	cnab.setlbr_CNABField26("0000"); 											// Prefixo da Agência Cobradora (ZEROS)
        	cnab.setlbr_CNABField27(null); 												// DV da Agência Cobradora(Brancos)
        	cnab.setlbr_CNABField28(DUPLICATA); 										// Espécie do título (Duplicata Mercantil)
        	cnab.setlbr_CNABField29("N"); 												// Aceite do Titulo
        	cnab.setlbr_CNABField30(MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate())); 	// Data de Emissão

        	// Instrução 1
	        if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0){
	        	cnab.setlbr_CNABField31("06"); 											// Protesto Automático
	        	cnab.setlbr_CNABField48(MLBRCNAB.CNABFormat(new Integer(boleto.getlbr_SueDays()).toString(),2)); //Dias para Protestar
	        }
	        else{
	        	cnab.setlbr_CNABField31("00"); 											// Protesto Automático (ZERO - Sem instruções )
	        	cnab.setlbr_CNABField48("00"); 											// Dias para Protestar (ZERO)
	        }
        	
	        cnab.setlbr_CNABField32("01"); 												// Instrução 2

	        cnab.setlbr_CNABField33(MLBRCNAB.CNABFormat(String.format("%,.2f", boleto.getlbr_Interest()),13)); //Juros de Mora por Dia de Atraso

	        if( boleto.getDiscountAmt() != null && boleto.getDiscountAmt().compareTo(Env.ZERO) == 1)
	        {
	        	cnab.setlbr_CNABField34(MLBRCNAB.CNABDateFormat(boleto.getDiscountDate()));  										// Data Limite para Concessão de Desconto/Data de Operação do BB Vendor
	        	cnab.setlbr_CNABField35(MLBRCNAB.CNABFormat(String.format("%,.2f", (boleto.getDiscountAmt()).doubleValue()),13));  // Valor de Desconto
	        }
	        else
	        {
	        	cnab.setlbr_CNABField34("000000"); 										// Data Limite para Concessão de Desconto/Data de Operação do BB Vendor
	        	cnab.setlbr_CNABField35("0000000000000"); 								// Valor de Desconto
	        }

	        cnab.setlbr_CNABField36(MLBRCNAB.CNABFormat("", 13)); 							// Valor do IOF/Qtde de Moeda Variável
   	        cnab.setlbr_CNABField37(MLBRCNAB.CNABFormat("", 13)); 							// Valor do Abatimento


	        if ((boleto.getlbr_BPTypeBR()).equalsIgnoreCase("PF")){
	        	cnab.setlbr_CNABField38("01"); 														    // Tipo de Inscrição do Sacado (CPF)
	        	cnab.setlbr_CNABField39(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CPF"),14)); 	// Número do CNPJ ou CPF do Sacado
	        }
	        else
	        {
	        	cnab.setlbr_CNABField38("02"); 															// Tipo de Inscrição do Sacado (CNPJ)
	        	cnab.setlbr_CNABField39(MLBRCNAB.CNABFormat(bpartner.get_ValueAsString("lbr_CNPJ"),14)); 	// Número do CNPJ ou CPF do Sacado
	        }

	        String nomeSacado = RemoverAcentos.remover(boleto.getlbr_ReceiverName());
	        cnab.setlbr_CNABField40(nomeSacado.toUpperCase());											// Nome do Sacado

	        cnab.setlbr_CNABField41(null); 																// BRANCOS

	        String enderecoSacado = RemoverAcentos.remover(boleto.getAddress());
	        cnab.setlbr_CNABField42(enderecoSacado.toUpperCase()); 										// Endereço do Sacado

	        cnab.setlbr_CNABField43(null); 																// BRANCOS
	        cnab.setlbr_CNABField44(MLBRCNAB.CNABFormat(boleto.getPostal(),8)); 							// CEP do Sacado

	        String cidadeSacado = RemoverAcentos.remover(boleto.getCity());
	        cnab.setlbr_CNABField45(cidadeSacado.toUpperCase()); 										// Cidade do Sacado
	        cnab.setlbr_CNABField46(boleto.getRegionName()); 											// UF do sacado
	        cnab.setlbr_CNABField47(""); 																// Observações/Mensagem ou Sacador/Avalista
	        cnab.setlbr_CNABField48(""); 																// Número de Dias para Protesto
	        cnab.setlbr_CNABField49(""); 																// Complemento do Registro(BRANCOS)


	        if (!cnab.save(trx))	// Salvar
	        {
	        	log.log(Level.SEVERE, "Erro ao salvar CNAB", cnab);
	        	return;
	        }

		}
		catch(Exception e)
		{
			log.log(Level.SEVERE,"Erro ao salvar CNAB", e);
		}
	}

	/** Gerar cabeçalho para Convenios de 6 Posições
	 * @param fw FileWriter arquivo texto de Remessa
	 * @param BankA conta em banco */
	private static void generateHeader6Pos(FileWriter fw, MBankAccount BankA) throws IOException
	{

		Properties ctx = Env.getCtx();
		MOrg Org = MOrg.get(ctx,Env.getAD_Org_ID(ctx));

		// Sequence
		Integer LBR_DocSequence_ID = (Integer)BankA.get_Value("LBR_DocSequence_ID");
		String seqFile = TextUtil.pad(MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date")), '0', 7, true);
		if (LBR_DocSequence_ID != null && LBR_DocSequence_ID.intValue() != 0)
		{
			MSequence sequence = new MSequence(ctx,LBR_DocSequence_ID,null);
			seqFile = "";
			if (sequence.getPrefix() != null)
				seqFile += sequence.getPrefix();

			seqFile += ((Integer)sequence.getNextID()).toString();
			if (sequence.getSuffix() != null)
				seqFile += sequence.getSuffix();

			sequence.save();
		}

		// Info CC
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);

		// Info Agência
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		int indexAG    = agencia.indexOf('-');
		String ag      = agencia.substring(0, indexAG);
		String dvag    = agencia.substring(indexAG+1);

		// Linhas do arquivo
		TextUtil.addText(fw, "0"); 										// TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); 										// OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); 								// LITERAL DE REMESSA
		TextUtil.addText(fw, "01"); 									// CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBRANCA", ' ', 8, false));  // LITERAL DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 7, false)); 		// BRANCOS
		TextUtil.addText(fw, TextUtil.pad(ag, '0', 4, true)); 			// AGENCIA
		TextUtil.addText(fw, TextUtil.pad(dvag, '0', 1, true)); 		// DV AGENCIA
		TextUtil.addText(fw, TextUtil.pad(cc, '0', 8, true)); 			// COD. CEDENTE
		TextUtil.addText(fw, TextUtil.pad(dv, '0', 1, true)); 			// DV CEDENTE
		TextUtil.addText(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), ' ', 6, true)); 		 // NUM CONVENIO
		TextUtil.addText(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); // NOME DA EMPRESA
		TextUtil.addText(fw, CBANCOBRASIL); 									// CÓDIGO DO BANCO
		TextUtil.addText(fw, TextUtil.pad(NBANCOBRASIL, ' ', 15, false));  // NOME DO BANCO
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date")));  // DATA DE GERAÇÃO
		TextUtil.addText(fw, TextUtil.pad(seqFile, '0', 7, true)); 						 // SEQUENCIAL DO ARQUIVO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 287, true)); 		// BRANCOS
		TextUtil.addText(fw, TextUtil.pad("1", '0', 6, true)); 			// NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	}

	/** Gerar cabeçalho para Convenios de 7 Posições
	 * @param fw FileWriter arquivo texto de Remessa
	 * @param BankA conta em banco */
	private static void generateHeader7Pos(FileWriter fw, MBankAccount BankA) throws IOException
	{

		Properties ctx = Env.getCtx();  					// Contexto
		MOrg Org = MOrg.get(ctx,Env.getAD_Org_ID(ctx));		// Contexto

		// SEQUENCIA
		Integer LBR_DocSequence_ID = (Integer)BankA.get_Value("LBR_DocSequence_ID");
		String seqFile = TextUtil.pad(MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date")), '0', 7, true);
		if (LBR_DocSequence_ID != null && LBR_DocSequence_ID.intValue() != 0)
		{
			MSequence sequence = new MSequence(ctx,LBR_DocSequence_ID,null);
			seqFile = "";

			if (sequence.getPrefix() != null)
				seqFile += sequence.getPrefix();
			seqFile += ((Integer)sequence.getNextID()).toString();

			if (sequence.getSuffix() != null)
				seqFile += sequence.getSuffix();

			sequence.save();
		}

		// Info CC
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);

		// Info Agência
		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");
		int indexAG    = agencia.indexOf('-');
		String ag      = agencia.substring(0, indexAG);
		String dvag    = agencia.substring(indexAG+1);

		// Linhas do arquivo
		TextUtil.addText(fw, "0"); 												// TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); 												// OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); 										// LITERAL DE REMESSA
		TextUtil.addText(fw, "01"); 											// CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBRANCA", ' ', 8, false)); 			// LITERAL DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 7, false)); 				// BRANCOS
		TextUtil.addText(fw, TextUtil.pad(ag, '0', 4, true)); 					// AGENCIA
		TextUtil.addText(fw, TextUtil.pad(dvag, '0', 1, true)); 				// DV AGENCIA
		TextUtil.addText(fw, TextUtil.pad(cc, '0', 8, true)); 					// COD. CEDENTE
		TextUtil.addText(fw, TextUtil.pad(dv, '0', 1, true)); 					// DV CEDENTE
		TextUtil.addText(fw, TextUtil.pad(null, '0', 6, true)); 				// COMPLEMENTO DO REGISTRO
		TextUtil.addText(fw, TextUtil.pad(Org.getDescription().toUpperCase(), ' ', 30, false, false, true)); // NOME DA EMPRESA
		TextUtil.addText(fw, TextUtil.pad("001BANCO DO BRASIL", '0', 18, true));		// 001BANCO DO BRASIL
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); // DATA DE GERAÇÃO
		TextUtil.addText(fw, TextUtil.pad(seqFile, '0', 7, true)); 				// SEQUENCIAL DO ARQUIVO
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 22, true)); 				// BRANCOS
		TextUtil.addText(fw, TextUtil.pad(BankA.get_ValueAsString("lbr_ClientCode"), ' ', 7, true)); 	// NUM CONVENIO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 258, true)); 				// BRANCOS
		TextUtil.addText(fw, TextUtil.pad("1", '0', 6, true)); 					// NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	}


	/**
	 * Generate Trailer
	 */
	private static void generateTrailer(FileWriter fw, int numSeq) throws IOException
	{

		TextUtil.addText(fw, "9"); //TIPO DE REGISTRO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 393, true)); //BRANCOS
		TextUtil.addText(fw, TextUtil.pad(numSeq, '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	}


	/** Generate File - Gerar o arquivo de Remessa */
	public void generateFile(String FileName, Timestamp DateFrom, Timestamp DateTo, MBankAccount BankA, String trx) throws IOException{

		// Arquivo texto
		FileWriter fw = TextUtil.createFile(FileName, false);

		// Tipo de Laiaute
		int TIPO = BankA.get_ValueAsString("lbr_ClientCode").trim().length() == 7 ? CBR641_7 : CBR641_6;

		//
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		cc   = TextUtil.pad(cc, '0', 8, true);

		//
		MLBRCNAB[] lines = null;
		String where =  "WHERE lbr_CNABField6 = '" + cc + "'";

		if (DateFrom != null && DateTo != null)
		{
			lines = MLBRCNAB.getFields(where, DateFrom, DateTo, trx);
		}
		else
		{
			lines = MLBRCNAB.getFields(BankA.getC_BankAccount_ID(),trx);
		}


		// HEADER e DETALHE
		int numseq;
		if(TIPO == CBR641_7)
		{
			generateHeader7Pos(fw,BankA);
			numseq = generateDetalhe7Pos(fw, BankA, lines);
		}
		else
		{
			generateHeader6Pos(fw,BankA);
			numseq = generateDetalhe6Pos(fw, BankA, lines);
		}

		// TRAILER
		generateTrailer(fw, numseq);

		//
		TextUtil.closeFile(fw);

	} //generateFile



	/** Generate Detalhe com convênio de 6 posições
	 * @param fw arquivo de texto a ser montado o leiaute
	 * @param BankA conta em banco a ser gerado os arquivos
	 * @param lines com as linhas do CNAB
	 * @return sequencia do arquivo, retornado para o TRAILLER */
	private int generateDetalhe6Pos(FileWriter fw, MBankAccount BankA, MLBRCNAB[] lines) throws IOException
	{
		int numseq = 2;// Sequência sempre começa de 2 pois 1 é o Header
		for(int i=0;i<lines.length;i++)
		{

			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 4, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 8, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 11, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 4, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 37, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 37, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField46(), ' ', 15, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField47(), ' ', 8, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField48(), ' ', 15, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField49(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField50(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField51(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField52(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(numseq, '0', 6, true));
			TextUtil.addEOL(fw);

			numseq++;
		}

		return numseq;
	}

	/** Generate Detalhe com convênio de 7 posições
	 * @param fw arquivo de texto a ser montado o leiaute
	 * @param BankA conta em banco a ser gerado os arquivos
	 * @param lines com as linhas do CNAB
	 * @return sequencia do arquivo, retornado para o TRAILLER */
	private int generateDetalhe7Pos(FileWriter fw, MBankAccount BankA, MLBRCNAB[] lines) throws IOException
	{
		int numseq = 2; // Sequência sempre começa de 2 pois 1 é o Header

		for(int i=0;i<lines.length;i++)
		{
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 4, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 8, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 7, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 25, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 17, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), '0', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), '0', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), '0', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), '0', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 5, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 10, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 4, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 6, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 13, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 14, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 37, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 3, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 37, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 15, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 8, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 15, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField46(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField47(), ' ', 40, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField48(), ' ', 2, false));
			TextUtil.addText(fw, TextUtil.pad(lines[i].getlbr_CNABField49(), ' ', 1, false));
			TextUtil.addText(fw, TextUtil.pad(numseq, '0', 6, true));
			TextUtil.addEOL(fw);

			numseq++;
		}

		return numseq;
	}

	/**
	 * Processar Retorno do CNAB
	 */
	public void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException{

		FileWriter fw = ReturnCNABUtil.createFile(FilePath);

		for (int i = 1;i<((linhas.length)-1);i++)
		{
			try{
			
				if(linhas[i].substring(0, 1).equals("7"))
					fw = returnCNAB7Pos(occurType, FilePath, linhas, trx, i, fw);	// CONVÊNIO DE 7 POSIÇÕES
				else
					fw = returnCNAB6Pos(occurType, FilePath, linhas, trx, i, fw);	// CONVÊNIO DE 6 POSIÇÕES

			}catch (Exception ex ) { 
				log.warning("Erro ao processar retorno CNAB 400 BB. " + ex.getMessage());
			}
		}

		TextUtil.closeFile(fw);

	}

	/**
	 * Processar retorno do CNAB 400 com convênio de 7 POSIÇÕES
	 * */
	public FileWriter returnCNAB6Pos(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx, int i, FileWriter fw) throws IOException
	{
		String CodOcorren      = linhas[i].substring(108, 110); 					// Cód. Ocorrencia
		String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));

		String DocumentNo      = (linhas[i].substring(37, 62)).trim();   			// Número da Fatura
		String NossoNo         = (linhas[i].substring(62, 73)).trim();   			// Nosso Número
		Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); // Data Pagamento
		BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); // Valor Titulo
		BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); // Desconto
		BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); // Juros

		ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,	 // Processar
								  DataOcorren, ValorTitulo, Desconto, Juros, trx);

		return fw;
	}

	/**
	 * Processar retorno do CNAB 400 com convênio de 7 POSIÇÕES
	 * */
	public FileWriter returnCNAB7Pos(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx, int i, FileWriter fw) throws IOException
	{
		String CodOcorren      = linhas[i].substring(108, 110); 					// Cód. Ocorrencia
		String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));

		String DocumentNo      = (linhas[i].substring(38, 63)).trim();   			// Número da Fatura
		String NossoNo         = (linhas[i].substring(63, 80)).trim();   			// Nosso Número
		Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); // Data Pagamento
		BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); // Valor Titulo
		BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); // Desconto
		BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); // Juros

		ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,	 // Processar
								  DataOcorren, ValorTitulo, Desconto, Juros, trx);

		return fw;
	}


	/**************************************************************************
	 * 	getModulo11
	 *  @param String value
	 *  @param int type
	 * 	@return String dac
	 */
    private static String getModulo11(String campo) {
    	//Modulo 11 - 23456789 (type = 9)

    	int multiplicador = 9;
		int multiplicacao = 0;
		int soma_campo = 0;

		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;

			soma_campo = soma_campo + multiplicacao;

			multiplicador--;
			if (multiplicador < 2)
				multiplicador = 9;
		}

		int dac = (soma_campo%11);

        if (dac == 10)
            return "X";

        return ((Integer)dac).toString();
    }

    public static void main(String[] args){

    	System.out.println(getModulo11("16467180001"));
    	System.out.println(getModulo11("16467180000"));

    }

} //MBancoBrasil