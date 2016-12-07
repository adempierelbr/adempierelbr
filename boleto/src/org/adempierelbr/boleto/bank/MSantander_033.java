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

import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.boleto.I_Bank;
import org.adempierelbr.model.MLBRBoleto;
import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.util.ReturnCNABUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_BankAccount;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;

/**
 * 	CNAB 400 para o Banco Santander 033 e 353
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li> Current version
 * 	@author Mario Grigioni (Kenos, www.kenos.com.br)
 * 		<li> Legacy version
 * 	@version $Id: MSantander_033.java, v1.0 2016/12/01 13:55:42, ralexsander Exp $
 */
public class MSantander_033 implements I_Bank
{
	/**
	 * 	Gera um registro na tabela CNAB para aquele boleto
	 * 	@param boleto
	 */
	public void generateCNAB (MLBRBoleto boleto)
	{
		try
		{
			MLBRCNAB cnab = new MLBRCNAB (boleto.getCtx(), 0, boleto.get_TrxName());
			//
			cnab.setRoutingNo(CSANTANDER033); 							//	Santander (Banespa)
			cnab.setLBR_Boleto_ID(boleto.getLBR_Boleto_ID()); 			//	Boleto
			cnab.setC_BankAccount_ID(boleto.getC_BankAccount_ID()); 	//	Conta Bancária
			cnab.setlbr_DocDate(boleto.getlbr_DocDate());
			cnab.saveEx();
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE,"Erro ao salvar CNAB", e);
		}
	} 	//	generateCNAB

	/**
	 * 	Registro Header no padrão Santander
	 * 
	 * @param fw Arquivo
	 * @param ba Conta Bancária
	 * @throws IOException
	 */
	private void generateHeader(OutputStreamWriter osw, I_W_C_BankAccount ba) throws IOException
	{
		Properties ctx = Env.getCtx();
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get (ctx, ba.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		//
		String legalEntity = "";
		if (oi.getlbr_LegalEntity() != null)
			legalEntity = TextUtil.retiraEspecial (oi.getlbr_LegalEntity().toUpperCase());
		//
		osw.write("0"); 							//	Código do registro = 0
		osw.write("1"); 							//	Código da remessa = 1
		osw.write("REMESSA"); 						//	Literal de transmissão = REMESSA
		osw.write("01"); 							//	Código do serviço = 01
		osw.write(TextUtil.rPad ("COBRANCA", 15)); 	//	Literal de serviço = COBRANÇA
		osw.write(TextUtil.lPad (getEmissionCode (ba), 20));	//	Código de Transmissão (nota 1)
		osw.write(TextUtil.rPad (legalEntity, 30)); //	Nome do cedente
		//
		osw.write(CSANTANDER033); 					//	Código do Banco = 353 / 033
		osw.write(TextUtil.rPad (NSANTANDER033, 15)); //	Nome do Banco = SANTANDER
		osw.write(MLBRCNAB.CNABDateFormat(Env.getContextAsDate (ctx, "#Date"))); 	//	Data de Gravação
		osw.write(TextUtil.lPad ("0", 16)); 		//	Zeros
		osw.write(TextUtil.rPad ("", 275)); 		//	Mensagens de 1 a 6
		osw.write(TextUtil.lPad ("0", 3)); 			//	Número da versão da remessa opcional, se informada, será controlada pelo sistema
		osw.write(TextUtil.lPad ("1", 6)); 			//	Número sequencial do registro no arquivo = 000001
		osw.write(TextUtil.EOL_WIN32);
	} 	//	generateHeader

	/**
	 * 		Registro de Trailler para o banco Santander
	 * @param fw Arquivo
	 * @param numSeq Número sequencial
	 * @throws IOException
	 */
	private void generateTrailler (OutputStreamWriter osw, int qty, BigDecimal grandTotal) throws IOException
	{
		osw.write("9"); 									//	Código do registro = 9
		osw.write(TextUtil.lPad (qty, 6));				//	Quantidade de documentos no arquivo
		osw.write(TextUtil.lPad (grandTotal, 13));		//	Valor total dos títulos
		osw.write(TextUtil.lPad ("0", 374)); 				//	Zeros
		osw.write(TextUtil.lPad (qty, 6)); 				//	Número sequencial do registro no arquivo
		osw.write(TextUtil.EOL_WIN32);
	} 	//	generateTrailer

	/**
	 * 	Generate CNAB File
	 */
	public void generateFile (String fileName, Timestamp dateFrom, Timestamp dateTo, MBankAccount ba, String trxName) throws IOException
	{
		//	Creates a new FileWriter
		OutputStreamWriter osw = new OutputStreamWriter (new FileOutputStream(fileName), TextUtil.UTF8);
		I_W_C_BankAccount baw = POWrapper.create (ba, I_W_C_BankAccount.class);
		
		//	Prepare the header
		generateHeader (osw, baw);

		//	Query for CNAB records
		MLBRCNAB[] cnabs = null;
		if (dateFrom != null && dateTo != null)
			cnabs = MLBRCNAB.getFields ("C_BankAccount_ID=" + ba.getC_BankAccount_ID(), dateFrom, dateTo, trxName);
		else
			cnabs = MLBRCNAB.getFields (ba.getC_BankAccount_ID(),trxName);

		//	Sum
		int counter = 2;
		BigDecimal grandTotal = Env.ZERO;
		Properties ctx = Env.getCtx();
		
		//	Número da agência bancária
		String agencyNo = getAgencyOnly (baw);

		//	Número da conta bancária
		String[] accountNo = getAccount(baw);
				
		for (MLBRCNAB cnab : cnabs)
		{
			MLBRBoleto boleto = new MLBRBoleto (ctx, cnab.getLBR_Boleto_ID(), trxName);
			I_W_AD_OrgInfo oiW = POWrapper.create (MOrgInfo.get (ctx, boleto.getAD_Org_ID(), trxName), I_W_AD_OrgInfo.class);
			I_W_C_BPartner bpW = POWrapper.create (new MBPartner (ctx, boleto.getC_BPartner_ID(), trxName), I_W_C_BPartner.class);
			
			//	Dados do cedente
			String ocnpj = TextUtil.retiraEspecial (oiW.getlbr_CNPJ());
			
			//	Dados do sacado
			String bpType = I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals (bpW.getlbr_BPTypeBR()) ? "01" : "02";
			String cnpjf = TextUtil.retiraEspecial (I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals(bpW.getlbr_BPTypeBR()) ? bpW.getlbr_CPF() : bpW.getlbr_CNPJ());
			
			//	Nosso Número
			String documentNo = TextUtil.lPad (TextUtil.retiraEspecial (boleto.getDocumentNo()), 7);
			
			//	DV do Nosso Número
			documentNo += String.valueOf (MLBRCNAB.getModulo11Reverse (documentNo));
			
			//	Cobrança de Mora
			String instruction1 = "00";	//	Sem instrução 1
//			if (boleto.getlbr_Interest() != null && boleto.getlbr_Interest().signum() == 1)
//				instruction1 = "00";		//	Sem instrução 1
			
			//	Protesto
			String instruction2 = "00"; //	Sem instrução 2
			if (boleto.islbr_HasSue() && boleto.getlbr_SueDays() > 0)
				instruction2 = "06";
			
			//	Código do Participante
			//	LBR_Boleto_ID-DocumentNo/Parcel
			String customerCode = "B" + boleto.getLBR_Boleto_ID() + 
					"F" + (boleto.getC_Invoice_ID() > 0 ? boleto.getC_Invoice().getDocumentNo() : "") + 
					"P" + boleto.getlbr_PayScheduleNo();
			
			// Seu Número composto de Fatura/Parcela
			String seuNumero = "";			
			if (boleto.getC_Invoice_ID() > 0)
				seuNumero = boleto.getC_Invoice().getDocumentNo() + boleto.getlbr_PayScheduleNo();
			else
				seuNumero = documentNo;
			
			//
			osw.write("1");							//	Código do registro = 1
			osw.write("02");						//	Tipo de inscrição do cedente
			osw.write(TextUtil.lPad (ocnpj, 14));	//	CNPJ ou CPF do cedente
			osw.write(TextUtil.lPad (agencyNo, 4));					//	Código da agência cedente (nota 2)
			osw.write(TextUtil.lPad (baw.getlbr_ClientCode(), 8));	//	Conta movimento cedente (nota 2)
			osw.write(TextUtil.lPad (accountNo[0], 8));				//	Conta cobrança cedente (nota 2)
			osw.write(TextUtil.rPad (customerCode, 25));			//	Número de controle do participante, para controle por parte do cedente
			osw.write(TextUtil.lPad ("", 8));		//	Nosso número (nota 3)
			osw.write(TextUtil.lPad ("0", 6));		//	Data do segundo desconto
			osw.write(TextUtil.rPad ("", 1));		//	Branco
			osw.write(TextUtil.lPad ("", 1));		//	Informação de multa = 4, senão houver informar zero Verificar página 16
			osw.write(TextUtil.lPad ("", 4));		//	Percentual multa por atraso %
			osw.write(TextUtil.lPad ("", 2));		//	Unidade de valor moeda corrente = 00
			osw.write(TextUtil.lPad ("", 13));		//	Valor do título em outra unidade (consultar banco)
			osw.write(TextUtil.rPad ("", 4));		//	Brancos
			osw.write(TextUtil.lPad ("", 6));		//	Data para cobrança de multa. (Nota 4)
			osw.write(TextUtil.lPad ("1", 1));		//	Código da carteira
			osw.write(TextUtil.lPad ("01", 2));		//	Código da ocorrência
			osw.write(TextUtil.rPad (seuNumero, 10));					//	Seu número
			osw.write(TextUtil.lPad (MLBRCNAB.CNABDateFormat(boleto.getDueDate()), 6));				//	Data de vencimento do título
			osw.write(TextUtil.lPad (boleto.getGrandTotal(), 13));		//	Valor do título - moeda corrente
			osw.write(TextUtil.lPad (CSANTANDER033, 3));				//	Número do Banco cobrador = 353 / 033
			osw.write(TextUtil.lPad ("", 5));							//	Código da agência cobradora do Banco Santander informar somente se carteira for igual a 5, caso contrário, informar zeros.
			osw.write(TextUtil.lPad ("01", 2));							//	Espécie de documento
			osw.write(TextUtil.rPad ("N", 1));							//	Tipo de aceite = N
			osw.write(TextUtil.lPad (MLBRCNAB.CNABDateFormat(boleto.getlbr_DocDate()), 6));			//	Data da emissão do título
			osw.write(TextUtil.lPad (instruction1, 2));					//	Primeira instrução cobrança
			osw.write(TextUtil.lPad (instruction2, 2));					//	Segunda instrução cobrança
			osw.write(TextUtil.lPad (boleto.getlbr_Interest(), 13));	//	Valor de mora a ser cobrado por dia de atraso
			osw.write(TextUtil.lPad (MLBRCNAB.CNABDateFormat(boleto.getValidDiscountDate()), 6));	//	Data limite para concessão de desconto
			osw.write(TextUtil.lPad (boleto.getDiscountAmt(), 13));		//	Valor de desconto a ser concedido
			osw.write(TextUtil.lPad ("", 13));							//	Valor do IOF a ser recolhido pelo Banco para nota de seguro
			osw.write(TextUtil.lPad ("", 13));							//	Valor do abatimento a ser concedido ou valor do segundo desconto. Vide posição 71.
			osw.write(TextUtil.lPad (bpType, 2));						//	Tipo de inscrição do sacado:
			osw.write(TextUtil.lPad (cnpjf, 14));						//	CNPJ ou CPF do sacado
			osw.write(TextUtil.rPad (boleto.getReceiverName(), 40));	//	Nome do sacado
			osw.write(TextUtil.rPad (boleto.getAddress(false), 40));	//	Endereço do sacado
			osw.write(TextUtil.rPad (boleto.getDistrict(), 12));		//	Bairro do sacado (opcional)
			osw.write(TextUtil.lPad (boleto.getPostalBegin(), 5));		//	CEP do sacado
			osw.write(TextUtil.lPad (boleto.getPostalEnd(), 3));		//	Complemento do CEP
			osw.write(TextUtil.rPad (boleto.getValidCity(), 15));		//	Município do sacado
			osw.write(TextUtil.rPad (boleto.getRegionName(), 2));		//	UF Estado do sacado
			osw.write(TextUtil.rPad ("", 30));							//	Nome do sacador ou coobrigado
			osw.write(TextUtil.rPad ("", 1));							//	Brancos
			osw.write(TextUtil.rPad ("I", 1));							//	Identificador do Complemento (nota 2)
			osw.write(TextUtil.lPad (accountNo[1], 2));					//	Complemento (nota 2)
			osw.write(TextUtil.rPad ("", 6));							//	Brancos
			osw.write(TextUtil.lPad (boleto.getlbr_SueDays(), 2));		//	Número de dias para protesto. Quando posições 157/158 ou 159/160 for igual a 06.
			osw.write(TextUtil.rPad ("", 1));							//	Branco
			osw.write(TextUtil.lPad (counter++, 6));					//	Número sequencial do registro no arquivo
			osw.write(TextUtil.EOL_WIN32);
			//
			grandTotal = grandTotal.add (boleto.getGrandTotal ());
		}

		//	Prepare the Trailler
		generateTrailler (osw, counter, grandTotal);

		osw.flush();
		osw.close();
	}	//	generateFile

	/**
	 * 	Process the return file
	 */
	public void returnCNAB (HashMap<Integer,String[]> occurType, String filePath, String[] lines, String trxName) throws IOException
	{
		FileWriter fw = ReturnCNABUtil.createFile (filePath);

		for (int i = 1;i<((lines.length)-1);i++)
		{
			String codOcorren      = lines[i].substring(108, 110); //Cód. Ocorrencia
			String[] descOcorren   = (occurType.get(Integer.parseInt(codOcorren)));
			String documentNo      = (lines[i].substring(37, 62)).trim();   //Número da Fatura
			String nossoNo         = (lines[i].substring(65, 72)).trim(); //Nosso Número
			Timestamp  dataOcorren = TextUtil.stringToTime((lines[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal valorTitulo = ReturnCNABUtil.stringTobigdecimal((lines[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal desconto    = ReturnCNABUtil.stringTobigdecimal((lines[i].substring(240, 253)).trim()); //Desconto
			BigDecimal juros       = ReturnCNABUtil.stringTobigdecimal((lines[i].substring(266, 279)).trim()); //Juros

			ReturnCNABUtil.processReturn(fw, codOcorren, descOcorren[1], descOcorren[0], documentNo, nossoNo,
									  dataOcorren, valorTitulo, desconto, juros, trxName);
		}

		TextUtil.closeFile(fw);
	}	//	returnCNAB
	
	private String getAgencyOnly (I_W_C_BankAccount baw)
	{
		String agencyNo = baw.getlbr_AgencyNo();
		if (agencyNo != null)
		{
			//	Remove o dígito da agência
			if (agencyNo.indexOf("-") > 1)
				agencyNo = agencyNo.substring (0, agencyNo.indexOf("-"));
			
			//	Trim
			agencyNo = TextUtil.toNumeric (agencyNo);

			//	Caso o cadastro da agência não use o separador de dígito
			if (agencyNo.length() > 4)
				agencyNo = agencyNo.substring(0, 4);
		}
		//
		return TextUtil.lPad (agencyNo, 4);
	}	//	getAgencyOnly
	
	/**
	 * 	Retorna o número da conta dividido em 2 partes
	 * @param baw
	 * @return
	 */
	private String[] getAccount (I_W_C_BankAccount baw)
	{
		String accountNo = baw.getAccountNo();
		String accountPartial = "";
		String accountCompl = "";
		//
		if (accountNo != null)
		{
			//	Trim
			accountNo = TextUtil.lPad (TextUtil.toNumeric (accountNo), 10);
			//
			accountPartial = accountNo.substring (0, 8);
			accountCompl = accountNo.substring (8);
		}
		return new String[]
				{
						TextUtil.lPad (accountPartial, 8), 
						TextUtil.lPad (accountCompl, 2)
				};
	}	//	getAccount
	
	/**
	 * 		Emission code
	 * 	@param ba
	 * 	@return
	 */
	private String getEmissionCode (I_W_C_BankAccount baw)
	{
		return TextUtil.lPad (getAgencyOnly(baw), 4) 
				+ TextUtil.lPad (baw.getlbr_ClientCode(), 8)
				+ TextUtil.lPad (getAccount(baw)[0], 8);
	}	//	getEmissionCode
} 	//	MSantander_033