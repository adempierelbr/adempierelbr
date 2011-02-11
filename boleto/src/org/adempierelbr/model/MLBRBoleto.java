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
package org.adempierelbr.model;

import java.awt.print.PrinterException;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.boleto.bank.MBancoBrasil;
import org.adempierelbr.boleto.bank.MBancoReal;
import org.adempierelbr.boleto.bank.MBradesco;
import org.adempierelbr.boleto.bank.MCaixaEconomica;
import org.adempierelbr.boleto.bank.MHsbc;
import org.adempierelbr.boleto.bank.MItau;
import org.adempierelbr.boleto.bank.MSantander_033;
import org.adempierelbr.boleto.bank.MSantander_353;
import org.adempierelbr.boleto.bank.MUnibanco;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MRegion;
import org.compiere.model.MSequence;
import org.compiere.model.MTable;
import org.compiere.model.Query;
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
 * FR [2974197] Novas Funcionalidades: Form de geração/impressão de boletos na web (ZK)
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @contributor Murilo H. Torquato, muriloht (http://fbeltram.muriloht.com)
 *
 * @version $Id: MBoleto.java, 31/10/2007 10:43:02 mgrigioni
 */
public class MLBRBoleto extends X_LBR_Boleto
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRBoleto.class);

	private static final String dateFormat = "dd/MM/yyyy";

	public MLBRBoleto(Properties ctx, int LBR_Boleto_ID, String trx){
		super(ctx,LBR_Boleto_ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRBoleto (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/** Get Parcela da Fatura
	 * @param DocumentNo Número de Controle da Empresa
	 * @return LBR_PayScheduleNo */
	public static String getLBR_PayScheduleNo(String DocumentNo){

		int index = DocumentNo.indexOf("/") + 1;
		String LBR_PayScheduleNo = DocumentNo.substring(index, index + 2).trim();
		
		return LBR_PayScheduleNo;
	}
	
	/** Atualizar o DocumentNo do Boleto (Somente para casos onde o Banco gera o NossoNumero)
	 * @param LBR_Boleto_ID Boleto
	 * @param NewDocumentNo
	 * @param trx Transação
	 * @return int com número de linhas atualizadas */
	public static int uptadeDocumentNo(int LBR_Boleto_ID, String NewDocumentNo, String trx)
	{
		int retorno = 0;
		String sql = " UPDATE LBR_Boleto " +
				     " SET DocumentNo = '" + NewDocumentNo.trim() + "'" +
				     " WHERE LBR_Boleto_ID = " + LBR_Boleto_ID;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			pstmt = DB.prepareStatement(sql , trx);
			retorno = pstmt.executeUpdate();
			
			if(retorno <= 0)
				log.info("MBoleto.uptadeDocumentNo - Nenhuma boleto atualizado!");
				
			
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
		} finally {
		    DB.close(rs, pstmt);
		}
		
		return retorno;
	}
	
	/**
	 *  Get LBR_Bolerto_ID - Três tentativas de busca, pelo número da Fatura + Vencimento, 
	 *  pelo nosso número e pelo nosso número sem zeros a esquerda
	 * @param DocumentNo com o número do Documento
	 * @param LBR_PayScheduleNo com o número da Parcela
	 * @param C_Invoice_ID com a Fatura
	 * @param trx com a Transaçao
	 * @return LBR_Boleto_ID 
	 */
	public static int getLBR_Boleto_ID(String DocumentNo, String LBR_PayScheduleNo, int C_Invoice_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		
		String sql 					= "";
		String whereDocNo 			= "";
		String whereInvPaySchedNo 	= "";
		String orderBy 				= "";
		
		sql = " SELECT LBR_Boleto_ID 				" +
			  "   FROM LBR_Boleto 					" +
			  "  WHERE LBR_IsCancelled = 'N'		" +
			  "    AND AD_Client_ID = ? 			";
		
		
		// By Invoice e Pay Schedule No
		if (C_Invoice_ID > 0 && LBR_PayScheduleNo != null && !LBR_PayScheduleNo.isEmpty()) 
			whereInvPaySchedNo += " AND LBR_PayScheduleNo = ? AND C_Invoice_ID = ? ";


		// By DocumentNo
		if (DocumentNo != null && !DocumentNo.isEmpty()) 
			whereDocNo += " AND DocumentNo = ? ";
		
		
		// Order By
		orderBy += " ORDER BY LBR_Boleto_ID DESC ";		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
	
		
			// PRIMEIRA BUSCA - POR FATURA E PARCELA 
			if (C_Invoice_ID > 0 && LBR_PayScheduleNo != null && !LBR_PayScheduleNo.isEmpty()){

				// ADD INVOICE E PAY SCHEDULE NA PESQUISA
				pstmt = DB.prepareStatement(sql + whereInvPaySchedNo + orderBy, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
				pstmt.setString(2, LBR_PayScheduleNo);		// SCHED
				pstmt.setInt(3, C_Invoice_ID);				// INVOICE
								
				rs = pstmt.executeQuery();				
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);				

			}			
			
			
			/** 
			 * ESSES MÉTODOS ABAIXO SÃO PARA CASOS EM QUA NÃO ENCONTRE A FATURA + NUMERO DA PARCELA
			 * DIFICILMENTE SERAO ACIONADOS, POIS DE ACORDO COM A ESTRUTURA DE RETORNO ATUAL, SEMPRE DEVERÁ ACHAR COM O MÉTODO ACIMA,
			 * PORÉM SE NÃO ENCONTRAR, FAZ AS TENTATIVAS PELO NOSSO NUMERO
			 */
			
			if(LBR_Boleto_ID <= 0 && DocumentNo != null && !DocumentNo.isEmpty()) {
				
			
				// add DocumentNo na Pesquisa
				sql += whereDocNo;
				sql += orderBy;
				
				pstmt = DB.prepareStatement(sql, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));		// CLIENT
				pstmt.setString(2, DocumentNo);							// DOCUMENTNO
				
				// Executa Query
				rs = pstmt.executeQuery();
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);
			}

			
			// NÃO ENCONTROU, REMOVER ZEROS DA ESQUERDA DO NUMERO DO BOLETO E TENTAR NOVAMENTE
			if (LBR_Boleto_ID <= 0 && DocumentNo != null && !DocumentNo.isEmpty() && TextUtil.isNumber(DocumentNo))
			{

				pstmt = DB.prepareStatement(sql, trx);
				pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));			// CLIENT
				pstmt.setString(2, new BigDecimal(DocumentNo).toString());	// DOCUMENTNO
				
				// Executa Query
				rs = pstmt.executeQuery();
				if (rs.next())
					 LBR_Boleto_ID = rs.getInt(1);

			}
			
						
		}
		catch (Exception e) {
			
			log.log(Level.SEVERE, "", e);
			
		} finally {
			
		    DB.close(rs, pstmt);
		    
		}
		
		return LBR_Boleto_ID;
	}	


	public static int getLBR_Boleto_ID(Integer C_Invoice_ID, Integer C_InvoicePaySchedule_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		int index = 1;
		int aux = 0;

		if (C_Invoice_ID == null)
			C_Invoice_ID = -1;

		if (C_InvoicePaySchedule_ID == null)
			C_InvoicePaySchedule_ID = -1;

		String sql = "SELECT LBR_Boleto_ID " +
				     "FROM LBR_Boleto " +
				     "WHERE C_Invoice_ID = ? ";

		if (C_InvoicePaySchedule_ID > 0){
			sql += "AND C_InvoicePaySchedule_ID = ? ";
			index++;
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			if (index > 1){
				pstmt.setInt(2, C_InvoicePaySchedule_ID);
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				 LBR_Boleto_ID = rs.getInt(1);
				 aux++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (aux > 1)
			LBR_Boleto_ID = -1;

		return LBR_Boleto_ID;
	}	//	getLBR_Boleto_ID

	public static MLBRBoleto[] getBoleto(Properties ctx, int C_Invoice_ID, String trx){

		String whereClause = "C_Invoice_ID = ? AND lbr_IsCancelled = 'N'";

		MTable table = MTable.get(ctx, MLBRBoleto.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_Invoice_ID});

		List<MLBRBoleto> list = query.list();

		return list.toArray(new MLBRBoleto[list.size()]);
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
	 *  getlbr_BillFoldDigit
	 *
	 *  Return BillFoldNo without Digit
	 *
	 *  @return String BillFoldDigit
	 */
	public static String getlbr_BillFoldDigit(String BillFoldNo){

		int index = BillFoldNo.indexOf('-');

		if (index == -1) return null;

		String BillFoldDigit = BillFoldNo.substring(index+1);

		return BillFoldDigit;
	}

	/**
	 *  getlbr_BillFoldDigit
	 *
	 *  Return BillFoldNo Digit
	 *
	 *  @return String BillFoldDigit
	 */
	public static String getlbr_BillFoldNo(String BillFoldNo){

		int index = BillFoldNo.indexOf('-');

		if (index == -1) return BillFoldNo;

		BillFoldNo = BillFoldNo.substring(0, index);

		return BillFoldNo;
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
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				 numParcela.put(rs.getInt(1), PayScheduleNo);
				 PayScheduleNo++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		//

		if (PayScheduleNo != 1)
			PayScheduleNo = numParcela.get(C_InvoicePaySchedule_ID);


		return MLBRCNAB.CNABFormat(((Integer)PayScheduleNo).toString(), 2);
	}

	private String getSequence(MBankAccount BankA){

		String DocumentNo = "";

		MSequence Sequence = new MSequence(getCtx(),(Integer)BankA.get_Value("AD_Sequence_ID"),get_TrxName());
		if (Sequence.getPrefix() != null) DocumentNo += Sequence.getPrefix();
		DocumentNo += ((Integer)Sequence.getNextID()).toString();
		if (Sequence.getSuffix() != null) DocumentNo += Sequence.getSuffix();

		Sequence.save();

		return DocumentNo;
	}

    public void generateCNAB(int bank){

		switch(bank){
			case MLBRCNAB.BANCO_DO_BRASIL  : new MBancoBrasil().generateCNAB(this); break;
			case MLBRCNAB.BRADESCO         : new MBradesco().generateCNAB(this); break;
			case MLBRCNAB.ITAU				: new MItau().generateCNAB(this); break;
			case MLBRCNAB.BANCO_REAL		: new MBancoReal().generateCNAB(this); break;
			case MLBRCNAB.CAIXA_ECONOMICA  : new MCaixaEconomica().generateCNAB(this); break;
			case MLBRCNAB.UNIBANCO			: new MUnibanco().generateCNAB(this); break;
			case MLBRCNAB.HSBC				: new MHsbc().generateCNAB(this); break;
			case MLBRCNAB.SANTANDER_033	: new MSantander_033().generateCNAB(this); break;
			case MLBRCNAB.SANTANDER_353	: new MSantander_353().generateCNAB(this); break;
		}

    } //generateCNAB


    public static List<File> generateBoleto(Properties ctx, int C_Invoice_ID, Integer C_BankAccount_ID, String trx) throws IOException, PrinterException{
    	return generateBoleto(ctx,C_Invoice_ID,C_BankAccount_ID,null,null,trx);
    }

	public static List<File> generateBoleto(Properties ctx, int C_Invoice_ID, Integer C_BankAccount_ID, String FilePath, String PrinterName, String trx) throws IOException, PrinterException{

		if (C_Invoice_ID == 0){
			log.log(Level.SEVERE, "C_Invoice_ID == 0");
			throw new IllegalArgumentException("C_Invoice_ID == 0");
		}

		List<File> pdfList      = new ArrayList<File>();
		ArrayList<MLBRBoleto> list = new ArrayList<MLBRBoleto>();

		//REIMPRESSÃO DE BOLETOS
		MLBRBoleto[] boletos = MLBRBoleto.getBoleto(ctx, C_Invoice_ID, trx);
		if (boletos.length > 0){
			for (int i=0;i<boletos.length; i++){
				File boletoPDF = boletos[i].print(FilePath, PrinterName);
				if (boletoPDF != null)
					pdfList.add(boletoPDF);
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

			if (!BankA.get_ValueAsBoolean("lbr_IsBillPrinted")){
				log.log(Level.SEVERE, "Conta não está marcada para Geração de Boletos");
				throw new IllegalArgumentException("Conta não está marcada para Geração de Boletos");
			}

			boolean isRegistered = BankA.get_ValueAsBoolean("IsRegistered");

			X_LBR_Bank lbrBank = new X_LBR_Bank(ctx, Bank.get_ValueAsInt("LBR_Bank_ID"),trx);

			// Localização do Parceiro de Negócio
			int C_Location_ID = 0;
			MLocation Location = null;
			MRegion Region = null;
			MBPartnerLocation BPLocation = new MBPartnerLocation(ctx, invoice.getC_BPartner_Location_ID(), trx);
			if(BPLocation.isActive() && BPLocation.isPayFrom()) {
				C_Location_ID = BPLocation.getC_Location_ID();
			} else {
				MBPartnerLocation BPLocations[] = BPartner.getLocations(true);
				for(MBPartnerLocation BPLoc: BPLocations)
				{
					if(BPLoc.isActive() && BPLoc.isPayFrom())
					{
						C_Location_ID = BPLoc.getC_Location_ID();
						break;
					}
				}
			}
						
			
			Location = MLocation.get(ctx, C_Location_ID, trx);
			Region = new MRegion(ctx, Location.getC_Region_ID(),trx);

			MLBROpenItem[] oi = null;

			oi = MLBROpenItem.getOpenItem(C_Invoice_ID, trx);

			/*
			 * Generate Boleto
			 */
			for (MLBROpenItem op : oi){

				try{

					int jBoletoNo = Integer.parseInt(lbrBank.getlbr_jBoletoNo());

					MLBRBoleto newBoleto = new MLBRBoleto(ctx,0,trx);
					newBoleto.setRoutingNo(Bank.getRoutingNo()); //Número Banco
					newBoleto.setlbr_jBoletoNo(lbrBank.getlbr_jBoletoNo()); //Número jBoleto
					newBoleto.setlbr_DocDate(invoice.getDateInvoiced()); //Data do Documento
					newBoleto.setC_BankAccount_ID(BankA.getC_BankAccount_ID()); //Conta Bancária
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
					newBoleto.setlbr_PayScheduleNo(newBoleto.getPayScheduleNo(C_Invoice_ID,op.getC_InvoicePaySchedule_ID()));
					newBoleto.setGrandTotal(op.getGrandTotal());
					newBoleto.setDueDate(op.getDueDate());
					newBoleto.setDiscountAmt(op.getDiscountAmt());
					newBoleto.setDiscountDate(op.getDiscountDate());

					int C_PaymentTerm_ID = op.getC_PaymentTerm_ID();
					MPaymentTerm paymentTerm = new MPaymentTerm(ctx,C_PaymentTerm_ID,trx);

					//Juros
					if (paymentTerm.get_ValueAsBoolean("lbr_HasInterest")){
						newBoleto.setlbr_Interest(op.getInterestAmt());
						newBoleto.setlbr_Instruction1("COBRAR MORA DIÁRIA DE R$ " + op.getInterestAmt());
					}
					else{
						newBoleto.setlbr_Interest(Env.ZERO);
					}

			        //      Instrução 2 - Desconto e Protesto
					String inst2 = "";
					if (op.getDiscountAmt() != null && op.getDiscountAmt().signum() == 1
						&& op.getDiscountDate() != null){

						inst2 = "ATÉ O DIA " + TextUtil.timeToString(op.getDiscountDate(), "dd/MM/yyyy")
                              + " CONCEDER DESCONTO DE R$ " + op.getDiscountAmt().setScale(2, RoundingMode.HALF_UP).toString().replace('.', ',') + ". ";
					 }

					//Protesto
					Integer sueDays = (Integer)paymentTerm.get_Value("lbr_SueDays");
					if (paymentTerm.get_ValueAsBoolean("lbr_HasSue") && sueDays.intValue() >= 5){
						newBoleto.setlbr_SueDays(sueDays);
						newBoleto.setlbr_HasSue(true);
						inst2 += ("PROTESTO AUTOMATICO NO " + sueDays.intValue() + " DIA APOS O VENCIMENTO");
					}
					else{
						newBoleto.setlbr_SueDays(0);
						newBoleto.setlbr_HasSue(false);
					}

					if (inst2 != null && inst2.length() > 0){
						newBoleto.setlbr_Instruction2(inst2);
					}

					//Nota Fiscal
					Integer LBR_NotaFiscal_ID = (Integer)invoice.get_Value("LBR_NotaFiscal_ID");
					if (LBR_NotaFiscal_ID != null && LBR_NotaFiscal_ID.intValue() != 0){
						MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);
						newBoleto.setlbr_Instruction3("NOTA FISCAL: " + nf.getDocumentNo());
					}

					//Observação Boleto
					if (op.getC_InvoicePaySchedule_ID() != 0){ //Parcelado
						MInvoicePaySchedule ips = new MInvoicePaySchedule(ctx,op.getC_InvoicePaySchedule_ID(),trx);
						newBoleto.setComments(ips.get_ValueAsString("lbr_BoletoComments"));
					}
					else{
						newBoleto.setComments(invoice.get_ValueAsString("lbr_BoletoComments"));
					}

					String DocumentNo = newBoleto.getSequence(BankA);
					DocumentNo = TextUtil.pad(DocumentNo, '0', JBoleto.getQtdDigitos(jBoletoNo), true);

					newBoleto.setDocumentNo(DocumentNo.trim());

					if(!newBoleto.save(trx)){
						log.log(Level.SEVERE, "Erro ao salvar o boleto", newBoleto);
						throw new AdempiereException("Erro ao salvar o boleto");
					}

					//Verifica se o boleto é registrado (CNAB)
					if (isRegistered){
						newBoleto.generateCNAB(Integer.parseInt(lbrBank.getlbr_jBoletoNo()));
					}

					invoice.set_ValueOfColumn("lbr_PaymentRule", "B"); //Forma de Pagamento
					invoice.set_ValueOfColumn("C_BankAccount_ID", C_BankAccount_ID);
					invoice.set_ValueOfColumn("lbr_IsBillPrinted", true);
					invoice.save(trx);

					list.add(newBoleto);
				}
				catch(Exception e){
					log.log(Level.SEVERE, "Erro ao salvar o boleto", e);
				}

			} //end for

			boletos = new MLBRBoleto[list.size()];
			list.toArray(boletos);
			for (int j=0;j<boletos.length; j++){
				File boletoPDF = boletos[j].print(FilePath, PrinterName);
				if (boletoPDF != null)
					pdfList.add(boletoPDF);
			}
		}

		return pdfList;
	}

	private File print(String FilePath, String PrinterName){

		JBoletoBean jBoletoBean = new JBoletoBean();

		MInvoice invoice         = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
		MPaymentTerm paymentTerm = new MPaymentTerm(getCtx(),invoice.getC_PaymentTerm_ID(),get_TrxName());
		MBPartner bpartner       = new MBPartner(getCtx(),getC_BPartner_ID(),get_TrxName());

		int bank = Integer.parseInt(getlbr_jBoletoNo());

		jBoletoBean.setDataDocumento(TextUtil.timeToString(getlbr_DocDate(),dateFormat));
	    jBoletoBean.setDataProcessamento(TextUtil.timeToString(getlbr_DocDate(),dateFormat));
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

	    //Observação Boleto
	    String comments = getComments();
	    if (comments == null) comments = "";
	    jBoletoBean.setInstrucao5(comments);

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
	    jBoletoBean.setDataVencimento(TextUtil.timeToString(getDueDate(),dateFormat));
	    JBoleto jBoleto = new JBoleto();
	    jBoleto.addBoleto(jBoletoBean,bank);

	    String fileName = invoice.getDocumentNo() + "_" + getlbr_PayScheduleNo() + ".pdf";

	    if (FilePath == null) FilePath = AdempiereLBR.getPath();

	    if (!(FilePath.endsWith(AdempiereLBR.getFileSeparator())))
	    	FilePath += AdempiereLBR.getFileSeparator();

	    fileName = FilePath + fileName;

	    log.log(Level.INFO, "SALVANDO ARQUIVO: " + fileName);
	    jBoleto.writeToFile(fileName);

	    if (PrinterName != null){
	    	log.log(Level.INFO, "ENVIANDO ARQUIVO PARA IMPRESSORA: " + PrinterName);
	    	try {
				JBoletoPrint.print(fileName,PrinterName);
			} catch (IOException e) {
				log.log(Level.SEVERE, "Erro ao salvar o documento", e);
			} catch (PrinterException e)
			{
				log.log(Level.SEVERE, "Erro ao imprimir o documento", e);
			}
	    	TextUtil.deleteFile(fileName);
	    	return null;
	    }

	    return new File(fileName);
	}

	public static void cancelBoleto(Properties ctx, int C_Invoice_ID, String trx){

		if (C_Invoice_ID <= 0)
			return;

		MLBRBoleto[] boletos = MLBRBoleto.getBoleto(ctx, C_Invoice_ID, trx);
		for(MLBRBoleto boleto : boletos){

			boleto.setlbr_IsCancelled(true);
			boleto.save(trx);

			int LBR_CNAB_ID = MLBRCNAB.getLBR_CNAB_ID(boleto.getLBR_Boleto_ID(), trx);
			if (LBR_CNAB_ID > 0){
				MLBRCNAB cnab = new MLBRCNAB(ctx,LBR_CNAB_ID,trx);
				cnab.setlbr_IsCancelled(true);
				if (!cnab.save(trx)){
					log.log(Level.SEVERE, "Erro ao cancelar o cnab", cnab);
				}
			}

		}

		//Atualiza Fatura
		MInvoice invoice = new MInvoice(ctx,C_Invoice_ID,trx);
		invoice.set_ValueOfColumn("C_BankAccount_ID", null);
		invoice.set_ValueOfColumn("lbr_IsBillPrinted", false);
		if (!invoice.save(trx)){
			log.log(Level.SEVERE, null, invoice);
		}
	}

} //MBoleto