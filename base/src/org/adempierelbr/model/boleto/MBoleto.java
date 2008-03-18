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

import java.awt.print.PrinterException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MOpenItem;
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
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.X_LBR_Bank;
import org.compiere.model.X_LBR_Boleto;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.jboleto.JBoleto;
import org.jboleto.JBoletoBean;
import org.jboleto.JBoletoPrint;

/**
 * MBoleto
 * 
 * Boleto Model Class
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MBoleto.java, 31/10/2007 10:43:02 mgrigioni
 */
public class MBoleto extends X_LBR_Boleto
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MBoleto.class);
	
	private static final String dateFormat = "dd/MM/yyyy";

	MBoleto(Properties ctx, int LBR_Boleto_ID, String trx){
		super(ctx,LBR_Boleto_ID,trx);
	}
	
	public static MBoleto[] getBoleto(Properties ctx, int C_Invoice_ID, String trx){
		
		String sql = "SELECT LBR_Boleto_ID " + //1
					 "FROM LBR_Boleto " +
					 "WHERE lbr_IsCancelled = 'N' AND C_Invoice_ID = ?"; //*1

		ArrayList<MBoleto> list = new ArrayList<MBoleto>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new MBoleto(ctx,rs.getInt(1),trx));
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

		MBoleto[] retValue = new MBoleto[list.size()];
		list.toArray(retValue);
		return retValue;
	}
	
	/**
	 *  getlbr_AgencyNo
	 *  
	 *  Return AgencyNo without the Digit
	 *  
	 *  @return String AgencyNo
	 */
	public String getlbr_AgencyNo(){
		
		String lbr_AgencyNo = super.getlbr_AgencyNo();
		
		int index = lbr_AgencyNo.indexOf('-');
		
		if (index == -1) return lbr_AgencyNo;
		
		String AgencyNo = lbr_AgencyNo.substring(0, index);
		
		return AgencyNo;
	}
	
	/**
	 *  getAgencyDigit
	 *  
	 *  Return AgencyNo Digit
	 *  
	 *  @return String AgencyDigit
	 */
	public String getAgencyDigit(){
		
		String lbr_AgencyNo = super.getlbr_AgencyNo();
		
		int index = lbr_AgencyNo.indexOf('-');
		
		if (index == -1) return null;
		
		String AgencyDigit = lbr_AgencyNo.substring(index+1);
		
		return AgencyDigit;
	}
	
	/**
	 *  getAccountNo
	 *  
	 *  Return AccountNo without the Digit
	 *  
	 *  @return String AccountNo
	 */
	public String getAccountNo(){
		
		String AccountNo = super.getAccountNo();
		
		int index = AccountNo.indexOf('-');
		
		if (index == -1) return AccountNo;
		
		AccountNo = AccountNo.substring(0, index);
		
		return AccountNo;
	}
	
	/**
	 *  getAccountDigit
	 *  
	 *  Return AccountNo Digit
	 *  
	 *  @return String AccountDigit
	 */
	public String getAccountDigit(){
		
		String AccountNo = super.getAccountNo();
		
		int index = AccountNo.indexOf('-');
		
		if (index == -1) return null;
		
		String AccountDigit = AccountNo.substring(index+1);
		
		return AccountDigit;
	}
	
	/**
	 *  getAddress
	 *  
	 *  Return Address using Boleto's Format
	 *  
	 *  @return String Address
	 */
	public String getAddress(){
		
		String Address = "";
		
		if (getAddress1() != null) Address += getAddress1(); //Endereço
		
		if (getAddress2() != null) Address += ", " + getAddress2(); //Número
		
		if (getAddress4() != null) Address += ", " + getAddress4(); //Complemento
		
		if (Address.startsWith(",")){
			Address = Address.substring(1);
		}
		
		return Address.trim();
	}
	
	/**
	 *  getPayScheduleNo
	 *  
	 *  Return the PayScheduleNo
	 *  
	 *  @return String PayScheduleNo
	 */
	public String getPayScheduleNo(int C_Invoice_ID,int C_InvoicePaySchedule_ID){
		
		HashMap<Integer,Integer> numParcela = new HashMap<Integer,Integer>();
		
		String sql = "SELECT C_InvoicePaySchedule_ID " +
                     "FROM C_InvoicePaySchedule " +
                     "WHERE C_Invoice_ID = ? " +
                     "ORDER BY C_InvoicePaySchedule_ID"; //1
		
		int PayScheduleNo = 1;

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				 numParcela.put(rs.getInt(1), PayScheduleNo);
				 PayScheduleNo++;
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		
		if (PayScheduleNo != 1)
			PayScheduleNo = numParcela.get(C_InvoicePaySchedule_ID);
		
		
		return MCNAB.CNABFormat(((Integer)PayScheduleNo).toString(), 2);	
	}
	 
    public void generateCNAB(int bank){
        
    	if(bank==MCNAB.BANCO_DO_BRASIL){
    		MBancoBrasil.generateCNAB(this,getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.BRADESCO){
    		MBradesco.generateCNAB(this,getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.ITAU){
    		MItau.generateCNAB(this, getCtx(), get_TrxName());
		}
    	else if(bank==MCNAB.BANCO_REAL){
    		MBancoReal.generateCNAB(this, getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.CAIXA_ECONOMICA){
    		MCaixaEconomica.generateCNAB(this, getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.UNIBANCO){
    		MUnibanco.generateCNAB(this, getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.HSBC){
    		MHsbc.generateCNAB(this, getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.SANTANDER_033){
    		MSantander_033.generateCNAB(this, getCtx(),get_TrxName());
		}
    	else if(bank==MCNAB.SANTANDER_353){
    		MSantander_353.generateCNAB(this, getCtx(),get_TrxName());
		}
        
    }
	
	public static void generateBoleto(Properties ctx, int C_Invoice_ID, Integer C_BankAccount_ID, String FilePath, String PrinterName, String trx) throws IOException, PrinterException{
		
		if (C_Invoice_ID == 0){
			log.log(Level.SEVERE, "C_Invoice_ID == 0");
			throw new IllegalArgumentException("C_Invoice_ID == 0");
		}
		
		//REIMPRESSÃO DE BOLETOS
		MBoleto[] boletos = MBoleto.getBoleto(ctx, C_Invoice_ID, trx);
		if (boletos.length > 0){
			for (int i=0;i<boletos.length; i++){
				boletos[i].print(FilePath, PrinterName);
			}
		}
		//GERAÇÃO E IMPRESSÃO DE BOLETOS
		else{
			MInvoice invoice = MInvoice.get(ctx, C_Invoice_ID);
			
			//Verifica se não tem uma conta definida na Fatura
			Integer invBank = (Integer)invoice.get_Value("C_BankAccount_ID");
			if (invBank != null && invBank.intValue() != 0){ //Conta <> 0
				String paymentRule = invoice.get_ValueAsString("lbr_PaymentRule");
				if (paymentRule.equalsIgnoreCase("B")){ //Forma de Pagamento = Boleto
					C_BankAccount_ID = invBank;
				}
			}
				        
			MBPartner BPartner = MBPartner.get(ctx, invoice.getC_BPartner_ID());
			MOrg Org = new MOrg(ctx,invoice.getAD_Org_ID(),trx);
			
			if (C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0){
				log.log(Level.SEVERE, "C_BankAccount_ID == 0");
				throw new IllegalArgumentException("C_BankAccount_ID == 0");
			}
			MBankAccount BankA = new MBankAccount(ctx,C_BankAccount_ID,trx);
			MBank Bank = new MBank(ctx,BankA.getC_Bank_ID(),trx);
			
			boolean isRegistered = POLBR.get_ValueAsBoolean(BankA.get_Value("IsRegistered"));
		
			X_LBR_Bank lbrBank = new X_LBR_Bank(ctx,(Integer)Bank.get_Value("LBR_Bank_ID"),trx);
		
			MBPartnerLocation BPLocation = null;
			MLocation Location = null;
			MRegion Region = null;
		
			BPLocation = BPartner.getLocation(invoice.getC_BPartner_Location_ID());
			Location = MLocation.get(ctx, BPLocation.getC_Location_ID(), trx);
			Region = new MRegion(ctx, Location.getC_Region_ID(),trx);
		
			MOpenItem[] oi = null;
		
			oi = MOpenItem.getOpenItem(C_Invoice_ID, trx);
		
			/*
			 * Generate Boleto
			 */
			for (int i=0;i<oi.length;i++){
			
				MBoleto newBoleto = new MBoleto(ctx,0,trx);
				newBoleto.setRoutingNo(Bank.getRoutingNo()); //Número Banco
				newBoleto.setlbr_jBoletoNo(lbrBank.getlbr_jBoletoNo()); //Número jBoleto
				newBoleto.setlbr_DocDate(invoice.getDateInvoiced()); //Data do Documento
				//
				newBoleto.setlbr_Cessionary(Org.getDescription()); //Nome do Cedente (Descrição da Empresa)
				//
				newBoleto.setlbr_ReceiverName(BPartner.getName()); //Nome do Sacado
				newBoleto.setAddress1(Location.getAddress1()); //Endereço
				newBoleto.setAddress2(Location.getAddress2()); //Número
				newBoleto.setAddress3(Location.getAddress3()); //Bairro
				newBoleto.setAddress4(Location.getAddress4()); //Complemento
				newBoleto.setCity(Location.getCity()); //Cidade
				newBoleto.setRegionName(Region.getName()); //Estado
				newBoleto.setPostal(Location.getPostal()); //CEP
				newBoleto.setC_BPartner_ID(BPartner.getC_BPartner_ID()); /*C_BPARTNER_ID*/
				newBoleto.setC_Invoice_ID(invoice.getC_Invoice_ID()); /*C_INVOICE_ID*/
				newBoleto.setlbr_BPTypeBR(BPartner.get_ValueAsString("lbr_BPTypeBR")); //Tipo de Pessoa
				newBoleto.setlbr_AgencyNo(BankA.get_ValueAsString("lbr_AgencyNo")); //Número Agência + DV
				newBoleto.setlbr_BillFold(BankA.get_ValueAsString("lbr_BillFold")); //Carteira
				newBoleto.setAccountNo(BankA.getAccountNo()); //Número da Conta + DV
				newBoleto.setlbr_PaymentLocation1(lbrBank.getlbr_PaymentLocation1());
				newBoleto.setlbr_PaymentLocation2(lbrBank.getlbr_PaymentLocation2());
				newBoleto.setlbr_BillKind(BankA.get_ValueAsString("lbr_BillKind"));
				newBoleto.setlbr_ClientCode(BankA.get_ValueAsString("lbr_ClientCode"));
				newBoleto.setlbr_PayScheduleNo(newBoleto.getPayScheduleNo(C_Invoice_ID,oi[i].getC_InvoicePaySchedule_ID()));
				newBoleto.setGrandTotal(oi[i].getGrandTotal());
				newBoleto.setDueDate(oi[i].getDueDate());
				newBoleto.setDiscountAmt(oi[i].getDiscountAmt());
				newBoleto.setDiscountDate(oi[i].getDiscountDate());
				
				int C_PaymentTerm_ID = oi[i].getC_PaymentTerm_ID();
				MPaymentTerm paymentTerm = new MPaymentTerm(ctx,C_PaymentTerm_ID,trx);
				
				//Juros
				if (POLBR.get_ValueAsBoolean(paymentTerm.get_Value("lbr_HasInterest")) && isRegistered){
					newBoleto.setlbr_Interest(oi[i].getInterestAmt());
					newBoleto.setlbr_Instruction1("COBRAR MORA DIÁRIA DE R$ " + oi[i].getInterestAmt());
				}
				else{
					newBoleto.setlbr_Interest(Env.ZERO);
				}
				
				//Protesto
				if (POLBR.get_ValueAsBoolean(paymentTerm.get_Value("lbr_HasSue")) && isRegistered){
					Integer sueDays = (Integer)paymentTerm.get_Value("lbr_SueDays");
					newBoleto.setlbr_SueDays(sueDays);
					newBoleto.setlbr_HasSue(true);
					newBoleto.setlbr_Instruction2("PROTESTO AUTOMATICO NO " + sueDays.intValue() + " DIA APOS O VENCIMENTO");
				}
				else{
					newBoleto.setlbr_SueDays(0);
					newBoleto.setlbr_HasSue(false);
				}
				
				//Nota Fiscal
				MNotaFiscal nf = new MNotaFiscal(ctx,(Integer)invoice.get_Value("LBR_NotaFiscal_ID"),trx);
				newBoleto.setlbr_Instruction3("NOTA FISCAL: " + nf.getDocumentNo());
			
				String DocumentNo = "";
			
				MSequence Sequence = new MSequence(ctx,(Integer)BankA.get_Value("AD_Sequence_ID"),null);
				if (Sequence.getPrefix() != null) DocumentNo += Sequence.getPrefix();
				DocumentNo += ((Integer)Sequence.getNextID()).toString();
				if (Sequence.getSuffix() != null) DocumentNo += Sequence.getSuffix();
				Sequence.save();
			
				newBoleto.setDocumentNo(DocumentNo.trim());
				newBoleto.save(trx);
				
				//Verifica se o boleto é registrado (CNAB)
				if (isRegistered){
					newBoleto.generateCNAB(Integer.parseInt(lbrBank.getlbr_jBoletoNo()));
				}
			
				invoice.set_ValueOfColumn("C_BankAccount_ID", C_BankAccount_ID);
				invoice.set_ValueOfColumn("lbr_IsBillPrinted", true);
				invoice.save(trx);
			
				newBoleto.print(FilePath, PrinterName);
			}
		}
	}
		
	private void print(String FilePath, String PrinterName) throws IOException, PrinterException{
			
		JBoletoBean jBoletoBean = new JBoletoBean();
		
		MInvoice invoice         = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
		MPaymentTerm paymentTerm = new MPaymentTerm(getCtx(),invoice.getC_PaymentTerm_ID(),get_TrxName());
		MBPartner bpartner       = new MBPartner(getCtx(),getC_BPartner_ID(),get_TrxName());
		
		int bank = Integer.parseInt(getlbr_jBoletoNo());
			
		jBoletoBean.setDataDocumento(POLBR.dateTostring(getlbr_DocDate(),dateFormat));
	    jBoletoBean.setDataProcessamento(POLBR.dateTostring(getlbr_DocDate(),dateFormat));   
	    jBoletoBean.setCedente(getlbr_Cessionary());  
	    jBoletoBean.setNomeSacado(getlbr_ReceiverName());
	    jBoletoBean.setEnderecoSacado(getAddress());   
	    
	    String Address3 = getAddress3();
	    if (Address3 == null) Address3 = "";
	    jBoletoBean.setBairroSacado(Address3.trim());
	    
	    String City = getCity();
	    if (City == null) City = "";
	    jBoletoBean.setCidadeSacado(City.trim());
	    
	    String RegionName = getRegionName();
	    if (RegionName == null) RegionName = "";
	    jBoletoBean.setUfSacado(RegionName);
	    
	    String Postal = getPostal();
	    if (Postal == null) Postal = "";
	    jBoletoBean.setCepSacado(Postal);
	        
	    if (getlbr_BPTypeBR().equalsIgnoreCase("PF"))
	     	jBoletoBean.setCpfSacado(bpartner.get_ValueAsString("lbr_CPF"));
	    else 
	      	jBoletoBean.setCpfSacado(bpartner.get_ValueAsString("lbr_CNPJ"));
	        
	    jBoletoBean.setCarteira(getlbr_BillFold());
	    
	    String PaymentLocation1 = getlbr_PaymentLocation1();
	    if (PaymentLocation1 == null) PaymentLocation1 = "";
	    jBoletoBean.setLocalPagamento(PaymentLocation1);
	    
	    String PaymentLocation2 = getlbr_PaymentLocation2();
	    if (PaymentLocation2 == null) PaymentLocation2 = "";
	    jBoletoBean.setLocalPagamento2(PaymentLocation2);
	    
	    String Instruction1 = getlbr_Instruction1();
	    if (Instruction1 == null) Instruction1 = "";
	    jBoletoBean.setInstrucao1(Instruction1);
	    
	    String Instruction2 = getlbr_Instruction2();
	    if (Instruction2 == null) Instruction2 = "";
	    jBoletoBean.setInstrucao2(Instruction2);
	    
	    String Instruction3 = getlbr_Instruction3();
	    if (Instruction3 == null) Instruction3 = "";
	    jBoletoBean.setInstrucao3(Instruction3);
	    
	    jBoletoBean.setAgencia(getlbr_AgencyNo());
	    
        Vector<String> descricoes = new Vector<String>();
        descricoes.add("FATURA: " + invoice.getDocumentNo() + "/" + getlbr_PayScheduleNo());
        descricoes.add(Instruction3);
        descricoes.add("CONDIÇÃO DE PAGAMENTO: " + paymentTerm.getName());
        jBoletoBean.setDescricoes(descricoes);
	    
	    String AgencyDigit = getAgencyDigit();
	    if (AgencyDigit != null) jBoletoBean.setDvAgencia(AgencyDigit);
	    
	    jBoletoBean.setContaCorrente(getAccountNo());
	    
	    String AccountDigit = getAccountDigit();
	    if (AccountDigit != null) jBoletoBean.setDvContaCorrente(AccountDigit);
	    
	    String ClientCode = getlbr_ClientCode();
	    if (ClientCode != null){
	    	if (bank == 0) //Banco do Brasil
	    		jBoletoBean.setNumConvenio(ClientCode);
	    	else
	    		jBoletoBean.setCodCliente(ClientCode);
	    }
	    
	    jBoletoBean.setEspecieDocumento(getlbr_BillKind());
	    jBoletoBean.setNoDocumento(invoice.getDocumentNo() + "/" + getlbr_PayScheduleNo());
	    jBoletoBean.setNossoNumero(getDocumentNo(),JBoleto.getQtdDigitos(bank));
	    jBoletoBean.setValorBoleto(String.valueOf(getGrandTotal()));
	    jBoletoBean.setDataVencimento(POLBR.dateTostring(getDueDate(),dateFormat));
	    JBoleto jBoleto = new JBoleto();        
	    jBoleto.addBoleto(jBoletoBean,bank);
	       
	    String fileName = invoice.getDocumentNo() + "_" + getlbr_PayScheduleNo() + ".pdf";
	    
	    if (FilePath == null) FilePath = POLBR.getPath();
	    
	    fileName = FilePath + fileName;
	    
	    log.log(Level.INFO, "SALVANDO ARQUIVO: " + fileName);
	    jBoleto.writeToFile(fileName);
	    
	    if (PrinterName != null){
	    	log.log(Level.INFO, "ENVIANDO ARQUIVO PARA IMPRESSORA: " + PrinterName);
	    	JBoletoPrint.print(fileName,PrinterName);
	    	TextUtil.deleteFile(fileName);
	    }
	}
	
	public static void cancelBoleto(Properties ctx, int C_Invoice_ID, String trx){
		
		String sql = "SELECT LBR_Boleto_ID " + //1
		 			 "FROM LBR_Boleto " +
	                 "WHERE C_Invoice_ID = ? AND lbr_IsCancelled = 'N'"; //*1

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MBoleto boleto = new MBoleto(ctx,rs.getInt(1),trx);
				boleto.setlbr_IsCancelled(true);
				boleto.save(trx);
				
				int LBR_CNAB_ID = MCNAB.getLBR_CNAB_ID(boleto.getLBR_Boleto_ID(), trx);
				if (LBR_CNAB_ID > 0){
					MCNAB cnab = new MCNAB(ctx,LBR_CNAB_ID,trx);
					cnab.setlbr_IsCancelled(true);
					cnab.save(trx);
				}
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
		
		sql = "UPDATE C_Invoice SET C_BankAccount_ID = NULL, lbr_IsBillPrinted = 'N' " +
	          "WHERE C_Invoice_ID = " + C_Invoice_ID;

		DB.executeUpdate(sql, trx);
		
	}

} //MBoleto