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
package org.adempierelbr.util;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.boleto.bank.MBancoBrasil;
import org.adempierelbr.boleto.bank.MBancoReal;
import org.adempierelbr.boleto.bank.MBradesco;
import org.adempierelbr.boleto.bank.MCaixaEconomica;
import org.adempierelbr.boleto.bank.MHsbc;
import org.adempierelbr.boleto.bank.MItau;
import org.adempierelbr.boleto.bank.MSantander_033;
import org.adempierelbr.boleto.bank.MSantander_353;
import org.adempierelbr.boleto.bank.MUnibanco;
import org.adempierelbr.model.MLBRBoleto;
import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.model.X_LBR_Bank;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * MReturnCNAB
 *
 * Generic ReturnCNAB Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @contribuitor Pablo Boff Pigozzo - 25/08/2010 11:30 pablobp
 * @version $Id: MReturnCNAB.java, 30/11/2007 10:32:02 mgrigioni
 */
public class ReturnCNABUtil
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ReturnCNABUtil.class);

	/** FileName        */
	private static final String FileName = "LogRetorno.CSV";

	public static void returnCNAB(int LBR_Bank_ID, String FilePath, String[] linhas, String trx) throws IOException{

		X_LBR_Bank banco = new X_LBR_Bank(Env.getCtx(),LBR_Bank_ID,trx);
		HashMap<Integer,String[]> occurType = getOccurType(LBR_Bank_ID);
		int bank = Integer.parseInt(banco.getlbr_jBoletoNo());

		switch(bank){
			case MLBRCNAB.BANCO_DO_BRASIL  : new MBancoBrasil().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.BRADESCO         : new MBradesco().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.ITAU				: new MItau().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.BANCO_REAL		: new MBancoReal().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.CAIXA_ECONOMICA  : new MCaixaEconomica().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.UNIBANCO			: new MUnibanco().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.HSBC				: new MHsbc().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.SANTANDER_033	: new MSantander_033().returnCNAB(occurType, FilePath, linhas, trx); break;
			case MLBRCNAB.SANTANDER_353	: new MSantander_353().returnCNAB(occurType, FilePath, linhas, trx); break;
		}
	}

	public static void processReturn(FileWriter fw, String CodOcorren, String DescOcorren, String OcorrenType,
			                         String DocumentNo, String NossoNo, Timestamp DataOcorren, BigDecimal ValorTitulo,
			                         BigDecimal Desconto, BigDecimal Juros, String trx) throws IOException{

		Properties ctx = Env.getCtx();

		String line = CodOcorren  + ";" +
		              DescOcorren + ";" +
		              OcorrenType + ";" +
		              DocumentNo  + ";" +
		              DataOcorren + ";" +
		              ValorTitulo + ";" +
		              Desconto    + ";" +
		              Juros       + ";";

		// Invoice
		int C_Invoice_ID = AdempiereLBR.getC_Invoice_ID(DocumentNo,trx);
		
		// Boleto
		String LBR_PayScheduleNo = MLBRBoleto.getLBR_PayScheduleNo(DocumentNo);	
		int LBR_Boleto_ID = MLBRBoleto.getLBR_Boleto_ID(NossoNo, LBR_PayScheduleNo, C_Invoice_ID, trx);

		if (OcorrenType.equalsIgnoreCase("L")){ //Liquidação

			if (LBR_Boleto_ID > 0){

				MLBRBoleto boleto = new MLBRBoleto(ctx,LBR_Boleto_ID,trx);
				MInvoice Invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
				
				// Atualizar DocumentNo (somente para casos onde o banco atribui o DocumentNo)
				if(!boleto.getDocumentNo().equals(NossoNo))
					MLBRBoleto.uptadeDocumentNo(boleto.getLBR_Boleto_ID(), NossoNo, trx);

				if ((Invoice.getDocStatus()).equals("CO")){
					if (!Invoice.isPaid() && !boleto.isPaid()){

						if (C_Invoice_ID <= 0 && Invoice != null && Invoice.getC_Invoice_ID() > 0)
						{
							log.fine("Documento sem registro");
							C_Invoice_ID = Invoice.getC_Invoice_ID();
						}

						MPayment Payment = new MPayment(ctx,0,trx);
						Payment.setAD_Org_ID(Invoice.getAD_Org_ID());
						
						Integer C_BankAccount_ID = boleto.getC_BankAccount_ID();
						//
						if (C_BankAccount_ID == null)
							C_BankAccount_ID = (Integer)Invoice.get_Value("C_BankAccount_ID");
						if (C_BankAccount_ID == null)
							log.log(Level.SEVERE, "Bank Account not valid");

						Payment.setC_BankAccount_ID(C_BankAccount_ID);

						Payment.setC_DocType_ID(AdempiereLBR.getARReceipt()); 		// Contas a Receber
						Payment.setC_Invoice_ID(C_Invoice_ID);						// Fatura
						Payment.setC_BPartner_ID(Invoice.getC_BPartner_ID());		// BP
						Payment.setC_Currency_ID(297); 								// BRL
						Payment.setTenderType(MPayment.TENDERTYPE_DirectDebit); 	// Débito Direto
						Payment.setDescription("Documento lançado automaticamente - CNAB");

						Payment.setDateAcct(DataOcorren); 							// Data da Conta
						Payment.setDateTrx(DataOcorren); 							// Data da Transação

						BigDecimal DiscountAmt = Env.ZERO;							

						if (Desconto.signum() != 0){
							DiscountAmt = Desconto;									// Desconto
						}
						else if (Juros.signum() != 0){
							DiscountAmt = Juros.negate();							// Desconto
						}

						Payment.setPayAmt(ValorTitulo.add(DiscountAmt.negate())); 	// Valor Pago

						Payment.setDiscountAmt(DiscountAmt); 						// Negativo = Juros | Positivo = Desconto

						
						// Save and process
						if(Payment.save(trx)) 
						{

							Payment.setDocAction(DocAction.ACTION_Complete);
							if(Payment.processIt(DocAction.ACTION_Complete))
								Payment.save(trx);
							
							boleto.setC_Payment_ID(Payment.getC_Payment_ID());
							boleto.setIsPaid(true);
							boleto.setlbr_OccurNo(Integer.parseInt(CodOcorren));
							boleto.setDocStatus(DescOcorren);

							// Colocar no log uma indicação do erro
							if(Payment.getDocStatus().equals(DocAction.STATUS_Completed) && boleto.save(trx))
								TextUtil.addText(fw, line + ";" + Payment.getPayAmt() + ";LANCAMENTO REALIZADO");
							else 
								TextUtil.addText(fw, line + ";" + Payment.getPayAmt() + ";ERRO AO EFETUAR LANÇAMENTO");

						} 
						else 
						{
							TextUtil.addText(fw, line + ";" + Payment.getPayAmt() + ";ERRO AO EFETUAR LANÇAMENTO");
						}
						
						TextUtil.addEOL(fw);

					}//BAIXA
					else{

						boleto.setIsPaid(true);
						boleto.setDocStatus("DOCUMENTO JA LANCADO");
						boleto.save(trx);

						TextUtil.addText(fw, line + ";;DOCUMENTO JA LANCADO");
						TextUtil.addEOL(fw);

					}//JA LANCADO

				}//FATURA COMPLETADA
				else{

					boleto.setDocStatus("FATURA NAO COMPLETADA");
					boleto.save(trx);

					TextUtil.addText(fw, line + ";;FATURA NAO COMPLETADA");
					TextUtil.addEOL(fw);

				}

			}//BOLETO
			else{

				TextUtil.addText(fw, line + ";;DOCUMENTO NAO ENCONTRADO");
				TextUtil.addEOL(fw);

			}//NAO ENCONTRADO

		} //LIQUIDAÇÃO

		else {

			if (LBR_Boleto_ID > 0){
				MLBRBoleto boleto = new MLBRBoleto(ctx,LBR_Boleto_ID,trx);
				boleto.setlbr_OccurNo(Integer.parseInt(CodOcorren));
				boleto.setDocStatus(DescOcorren);
				boleto.save(trx);
				
				// Atualizar DocumentNo (somente para casos onde o banco atribui o DocumentNo)
				if(!boleto.getDocumentNo().equals(NossoNo))
					MLBRBoleto.uptadeDocumentNo(boleto.getLBR_Boleto_ID(), NossoNo, trx);

				TextUtil.addText(fw, line + ";;OCORRENCIA");
				TextUtil.addEOL(fw);
			}
			else{
				TextUtil.addText(fw, line + ";;DOCUMENTO NAO ENCONTRADO");
				TextUtil.addEOL(fw);
			}

		}//OCORRENCIA

	}

	public static FileWriter createFile(String FilePath) throws IOException{

		FileWriter fw = TextUtil.createFile(FilePath + FileName,false);
		TextUtil.addText(fw, getHeader());
		TextUtil.addEOL(fw);
		return fw;

	}

	private static String getHeader(){

		String Header = "Ocorrencia"       + ";" +
	                    "Desc. Ocorrencia" + ";" +
	                    "Tipo Ocorrencia"  + ";" +
	                    "DocumentNo"       + ";" +
                        "Data Ocorrencia"  + ";" +
                        "Valor Titulo"     + ";" +
                        "Valor Desconto"   + ";" +
                        "Valor Juros"      + ";" +
                        "Valor Lancado"    + ";" +
                        "Status";

		return Header;

	}

	public static HashMap<Integer,String[]> getOccurType(int LBR_Bank_ID){

		HashMap<Integer,String[]> list = new HashMap<Integer,String[]>();
		String sql = "SELECT lbr_OccurNo, lbr_OccurType, Description " +
				     "FROM LBR_BankInfo " +
				     "WHERE LBR_Bank_ID = ? " +
				     "AND IsActive='Y'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_Bank_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				int OccurNo          = Integer.parseInt(rs.getString("lbr_OccurNo"));
				String lbr_OccurType = rs.getString("lbr_OccurType");
				String Description   = rs.getString("Description");
				list.put(OccurNo,new String[]{lbr_OccurType,Description});

			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return list;

	} //getOccurType

	public static BigDecimal stringTobigdecimal(String value) {

		if (value == null || value.equals("")){
			return Env.ZERO;
		}

		int length = value.length();

		int valor1 = Integer.parseInt(value.substring(0, length-2));
		int valor2 = Integer.parseInt(value.substring(length-2, length));

		double valorTitulo = valor1 + ((double)valor2/100);

		return new BigDecimal(valorTitulo).setScale(2, RoundingMode.HALF_UP);

	}

}//MReturnCNAB