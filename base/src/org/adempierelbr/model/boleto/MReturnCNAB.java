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
package org.adempierelbr.model.boleto;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.boleto.bank.MBancoBrasil;
import org.adempierelbr.model.boleto.bank.MBancoReal;
import org.adempierelbr.model.boleto.bank.MBradesco;
import org.adempierelbr.model.boleto.bank.MCaixaEconomica;
import org.adempierelbr.model.boleto.bank.MHsbc;
import org.adempierelbr.model.boleto.bank.MItau;
import org.adempierelbr.model.boleto.bank.MSantander_033;
import org.adempierelbr.model.boleto.bank.MSantander_353;
import org.adempierelbr.model.boleto.bank.MUnibanco;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.model.X_LBR_Bank;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * MReturnCNAB
 * 
 * Generic ReturnCNAB Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MReturnCNAB.java, 30/11/2007 10:32:02 mgrigioni
 */
public class MReturnCNAB
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MReturnCNAB.class);
	
	/** FileName        */
	private static final String FileName = "LogRetorno.CSV";
	
	public static void returnCNAB(int LBR_Bank_ID, String FilePath, String[] linhas, String trx) throws IOException{
			
		X_LBR_Bank banco = new X_LBR_Bank(Env.getCtx(),LBR_Bank_ID,trx);
		HashMap<Integer,String[]> occurType = getOccurType(LBR_Bank_ID);
		int bank = Integer.parseInt(banco.getlbr_jBoletoNo());
		
    	if(bank==MCNAB.BANCO_DO_BRASIL){
    		MBancoBrasil.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.BRADESCO){
    		MBradesco.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.ITAU){
    		MItau.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.BANCO_REAL){
    		MBancoReal.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.CAIXA_ECONOMICA){
    		MCaixaEconomica.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.UNIBANCO){
    		MUnibanco.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.HSBC){
    		MHsbc.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.SANTANDER_033){
    		MSantander_033.returnCNAB(occurType, FilePath, linhas, trx);
		}
    	else if(bank==MCNAB.SANTANDER_353){
    		MSantander_353.returnCNAB(occurType, FilePath, linhas, trx);
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
		
		int C_Invoice_ID = POLBR.getC_Invoice_ID(DocumentNo,trx);
		int LBR_Boleto_ID = POLBR.getLBR_Boleto_ID(NossoNo, C_Invoice_ID, trx);
			
		if (OcorrenType.equalsIgnoreCase("L")){ //Liquidação  
					
			if (LBR_Boleto_ID > 0){
				
				MBoleto boleto = new MBoleto(ctx,LBR_Boleto_ID,trx);
				MInvoice Invoice = new MInvoice(ctx,boleto.getC_Invoice_ID(),trx);
				
				if ((Invoice.getDocStatus()).equals("CO")){
					if (!Invoice.isPaid()){
				
						MPayment Payment = new MPayment(ctx,0,trx);
					
						int C_BankAccount_ID = (Integer)Invoice.get_Value("C_BankAccount_ID");
					
						Payment.setC_BankAccount_ID(C_BankAccount_ID);
					
						Payment.setC_DocType_ID(POLBR.getARReceipt()); //Contas a Receber
						Payment.setC_Invoice_ID(C_Invoice_ID);
						Payment.setC_BPartner_ID(Invoice.getC_BPartner_ID());
						Payment.setC_Currency_ID(297); //BRL
						Payment.setDescription("Documento lançado automaticamente - CNAB");
					
						Payment.setDateAcct(DataOcorren); //Data da Conta
						Payment.setDateTrx(DataOcorren); //Data da Transação
						
						BigDecimal DiscountAmt = Env.ZERO;
					
						if (Desconto.signum() != 0){
							DiscountAmt = Desconto;
						}
						else if (Juros.signum() != 0){
							DiscountAmt = Juros.negate();
						}
						
						Payment.setPayAmt(ValorTitulo.add(DiscountAmt.negate())); //Valor Pago
					
						Payment.setDiscountAmt(DiscountAmt); //Negativo = Juros | Positivo = Desconto
						
						Payment.save(trx); //Salvar antes de Completar
						
						String status = Payment.completeIt();
						Payment.setDocStatus(status);
						Payment.save(trx);
							
						boleto.setC_Payment_ID(Payment.getC_Payment_ID());
						boleto.setIsPaid(true);
						boleto.setlbr_OccurNo(Integer.parseInt(CodOcorren));
						boleto.setDocStatus(DescOcorren);
						boleto.save(trx);
					
						TextUtil.addLine(fw, line + ";" + Payment.getPayAmt() + ";LANCAMENTO REALIZADO");
						TextUtil.addEOL(fw);
						
					}//BAIXA
					else{
							
						boleto.setIsPaid(true);
						boleto.setDocStatus("DOCUMENTO JA LANCADO");
						boleto.save(trx);
							
						TextUtil.addLine(fw, line + ";;DOCUMENTO JA LANCADO");
						TextUtil.addEOL(fw);
						
					}//JA LANCADO
					
				}//FATURA COMPLETADA
				else{
						
					boleto.setDocStatus("FATURA NAO COMPLETADA");
					boleto.save(trx);
						
					TextUtil.addLine(fw, line + ";;FATURA NAO COMPLETADA");
					TextUtil.addEOL(fw);
					
				}
				
			}//BOLETO
			else{

				TextUtil.addLine(fw, line + ";;DOCUMENTO NAO ENCONTRADO");
				TextUtil.addEOL(fw);
					
			}//NAO ENCONTRADO

		} //LIQUIDAÇÃO
		
		else {
			
			if (LBR_Boleto_ID > 0){
				MBoleto boleto = new MBoleto(ctx,LBR_Boleto_ID,trx);
				boleto.setlbr_OccurNo(Integer.parseInt(CodOcorren));
				boleto.setDocStatus(DescOcorren);
				boleto.save(trx);
				
				TextUtil.addLine(fw, line + ";;OCORRENCIA");
				TextUtil.addEOL(fw);
			}
			else{
				TextUtil.addLine(fw, line + ";;DOCUMENTO NAO ENCONTRADO");
				TextUtil.addEOL(fw);
			}
			
		}//OCORRENCIA
		
	}
	
	public static FileWriter createFile(String FilePath) throws IOException{
		
		FileWriter fw = TextUtil.createFile(FilePath + FileName,false);
		TextUtil.addLine(fw, getHeader());
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
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_Bank_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				int OccurNo          = Integer.parseInt(rs.getString("lbr_OccurNo"));
				String lbr_OccurType = rs.getString("lbr_OccurType");
				String Description   = rs.getString("Description");
				list.put(OccurNo,new String[]{lbr_OccurType,Description});
				
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
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
		
		return new BigDecimal(valorTitulo).setScale(2, BigDecimal.ROUND_HALF_UP);
		
	}
		
}//MReturnCNAB