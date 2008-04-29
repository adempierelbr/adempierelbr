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
package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MTax;
import org.adempierelbr.model.boleto.MBoleto;
import org.adempierelbr.process.ProcGenerateNF;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import bsh.EvalError;

/**
 *	ValidatorInvoice
 *
 *  Validate Invoice (Tax Calculation)
 *	
 *	@author Mario Grigioni
 *  @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 *	@version $Id: ValidatorInvoice.java, 04/01/2008 15:56:00 mgrigioni
 *
 *	BF: 1928906 - amontenegro
 */
public class ValidatorInvoice implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorInvoice ()
	{
		super ();
	}	//ValidatorOrder
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorInvoice.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	
	
	/**
	 *	Initialize Validation
	 *	@param engine validation engine 
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		m_AD_Client_ID = client.getAD_Client_ID();

		log.info(client.toString());
		
		//	ModelChange
		engine.addModelChange("C_Invoice", this);
		engine.addModelChange("C_InvoiceLine", this);
		//	DocValidate
		engine.addDocValidate("C_Invoice", this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID()
	{
		return m_AD_Client_ID;
	}	//	getAD_Client_ID

	/**
	 *	User Login.
	 *	Called when preferences are set
	 *	@param AD_Org_ID org
	 *	@param AD_Role_ID role
	 *	@param AD_User_ID user
	 *	@return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}	//	login
	
    /**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		
		//Executa quando uma Invoice é salva ou atualizada
		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (type == TYPE_AFTER_CHANGE || type == TYPE_NEW ))
		{
			MInvoice invoice = (MInvoice)po;
			return modelChange(invoice);
		}
		
		else
		
		//Executa quando uma InvoiceLine é salva ou atualizada
		if (po.get_TableName().equalsIgnoreCase("C_InvoiceLine") && (type == TYPE_AFTER_CHANGE || type == TYPE_NEW || type == TYPE_AFTER_NEW ))
		{
			MInvoiceLine iLine = (MInvoiceLine)po;
			return modelChange(iLine,type);
		}
		
		return null;
	}	//	modelChange
	
	// modelChange - Invoice
	// @param MInvoice
	public String modelChange (MInvoice invoice) throws Exception{
		
		int C_Order_ID = invoice.getC_Order_ID();
		MOrder order = null;
		if (C_Order_ID != 0)
			order = new MOrder(invoice.getCtx(),C_Order_ID,invoice.get_TrxName());
		else
			return null;
		
		String tType = invoice.get_ValueAsString("lbr_TransactionType"); 
		
		if (tType == null || tType.equals("")){
			tType = order.get_ValueAsString("lbr_TransactionType"); 
			if (!(tType == null || tType.equals(""))){
				invoice.set_ValueOfColumn("lbr_TransactionType", tType);
			}	
		}
		
		String paymentRule = invoice.get_ValueAsString("lbr_PaymentRule"); 
		
		if (paymentRule == null || paymentRule.equals("")){
			paymentRule = order.get_ValueAsString("lbr_PaymentRule"); 
			if (!(paymentRule == null || paymentRule.equals(""))){
				invoice.set_ValueOfColumn("lbr_PaymentRule", paymentRule);
			}	
		}
		
		Integer C_BankAccount_ID = (Integer)invoice.get_Value("C_BankAccount_ID"); 
		
		if (C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0){
			C_BankAccount_ID = (Integer)order.get_Value("C_BankAccount_ID"); 
			if (!(C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0)){
				invoice.set_ValueOfColumn("C_BankAccount_ID", C_BankAccount_ID);
			}	
		}

		log.info(invoice.toString());
		return null;
	}
	
	// modelChange - InvoiceLine
	// @param MInvoiceLine
	@SuppressWarnings("unchecked")
	public String modelChange (MInvoiceLine iLine, int type) throws Exception{
			
		if(iLine.isProcessed()){
			return null;
		}
		
		Properties ctx     = iLine.getCtx();
		String     trx     = iLine.get_TrxName();
		
		BigDecimal taxAmt  = Env.ZERO;
		Integer LBR_Tax_ID = (Integer)iLine.get_Value("LBR_Tax_ID");
		//BEGIN - fer_luck @ faire
		HashMap <X_LBR_TaxName, BigDecimal> taxList = null;
		//END - fer_luck @ faire
		
		if (type == TYPE_NEW){
			
			if (LBR_Tax_ID == null || LBR_Tax_ID.intValue() == 0){
				int C_OrderLine_ID = iLine.getC_OrderLine_ID();
				if (C_OrderLine_ID != 0){
					MOrderLine oLine = new MOrderLine(ctx,C_OrderLine_ID,trx);
				
					//CFOP, Sit. Tributária, Mensagem Legal
					Integer LBR_CFOP_ID         = (Integer)oLine.get_Value("LBR_CFOP_ID");
					Integer LBR_LegalMessage_ID = (Integer)oLine.get_Value("LBR_LegalMessage_ID");
					String  sitTributaria       = (String)oLine.get_Value("lbr_TaxStatus");
				
					LBR_Tax_ID = (Integer)oLine.get_Value("LBR_Tax_ID");
					if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
						MTax oTax = new MTax(ctx,LBR_Tax_ID,trx);
						MTax newTax = oTax.copyFrom();
						
						iLine.set_ValueOfColumn("LBR_Tax_ID", newTax.getLBR_Tax_ID());
						iLine.set_ValueOfColumn("LBR_CFOP_ID", LBR_CFOP_ID);
						iLine.set_ValueOfColumn("LBR_LegalMessage_ID", LBR_LegalMessage_ID);
						iLine.set_ValueOfColumn("lbr_TaxStatus", sitTributaria);
					
					}
				}
			}
		}
		else{
			MInvoice invoice = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
		
			org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,iLine.getC_Tax_ID(),trx);
				
			if (tax.isSummary()){
				
				MInvoiceLine[] lines = invoice.getLines(true);
				for (int i = 0; i < lines.length; i++){
				
					int C_InvoiceLine_ID = lines[i].getC_InvoiceLine_ID();
				
					TaxBR.calculateTaxes(C_InvoiceLine_ID, false, trx);
				
					LBR_Tax_ID = (Integer)lines[i].get_Value("LBR_Tax_ID");
					if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
						MTax brTax = new MTax(ctx,LBR_Tax_ID,trx);
						X_LBR_TaxLine[] brLines = brTax.getLines();
				
						for (int j=0; j < brLines.length; j++){
							//BEGIN - fer_luck @ faire
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, brLines[j].getLBR_TaxName_ID(), trx);
							if(taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)){
								if(taxList == null)
									taxList = new HashMap <X_LBR_TaxName, BigDecimal>();
								boolean isListed = taxList.get(taxName) != null ? true : false;
								BigDecimal amt = Env.ZERO;
								if(isListed)
									amt = taxList.get(taxName);
								amt = amt.add(brLines[j].getlbr_TaxAmt());
								taxList.put(taxName, amt);
							}
							else	
								taxAmt = taxAmt.add(brLines[j].getlbr_TaxAmt());
							//END - fer_luck @ faire
						}
						
						//Via objeto o Adempiere não está atualizando o valor
						//UPDATE direto no banco
						String sql = "UPDATE C_InvoiceLine SET TaxAmt = " + MTax.getTaxAmt(LBR_Tax_ID, trx) +
							         " WHERE C_InvoiceLine_ID = " + lines[i].getC_InvoiceLine_ID();
						DB.executeUpdate(sql, trx);
						
					}
				
				} //end for
			
				MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx, invoice.getC_Invoice_ID(), iLine.getC_Tax_ID(), trx);
				iTax.setTaxAmt(taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
			
				if (!invoice.isTaxIncluded()){
					iTax.setTaxBaseAmt(invoice.getTotalLines());
					invoice.setGrandTotal(invoice.getTotalLines().add(TaxBR.getMInvoiceTaxAmt(invoice.getC_Invoice_ID(), trx)));
					//BEGIN - fer_luck @ faire
					if(taxList != null){
						Iterator it = taxList.entrySet().iterator();
						while(it.hasNext()){
							Map.Entry<X_LBR_TaxName, BigDecimal> map;
							map = (Map.Entry<X_LBR_TaxName, BigDecimal>) it.next();
							invoice.setGrandTotal(invoice.getGrandTotal().add(map.getValue()).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						}
					}
					//END - fer_luck @ faire
					invoice.save(trx);
				}
				else{
					//BEGIN - fer_luck @ faire
					if(taxList != null){
						Iterator it = taxList.entrySet().iterator();
						BigDecimal tmp = new BigDecimal(0.0);
						while(it.hasNext()){
							Map.Entry<X_LBR_TaxName, BigDecimal> map;
							map = (Map.Entry<X_LBR_TaxName, BigDecimal>) it.next();
							tmp = tmp.add(map.getValue());
						}
						if(!invoice.getGrandTotal().equals(invoice.getTotalLines().add(tmp))){
							invoice.setGrandTotal(invoice.getTotalLines().add(tmp).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
							invoice.save();
						}
						//END - fer_luck @ faire
					}
					iTax.setTaxBaseAmt(invoice.getTotalLines());
				}
			
				iTax.save(trx);
			
			}
		}
		
		log.info(iLine.toString());
		return null;
	} // modelChange(MInvoiceLine)

	/**
	 *	Validate Document.
	 *	Called as first step of DocAction.prepareIt 
     *	when you called addDocValidate for the table.
     *	Note that totals, etc. may not be correct.
	 *	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	@SuppressWarnings("unchecked")
	public String docValidate (PO po, int timing)
	{
		
		//Executa quando uma Invoice é completada
		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (timing == TIMING_AFTER_COMPLETE)){
			
			MInvoice invoice = (MInvoice)po;
			MInvoiceLine[] lines = invoice.getLines();
			
			Properties ctx = invoice.getCtx();
			String     trx = invoice.get_TrxName();
			
			//BEGIN - fer_luck @ faire
			HashMap <X_LBR_TaxName, BigDecimal> taxList = null;
			//END - fer_luck @ faire
			
			BigDecimal grandTotal = Env.ZERO;
			//BigDecimal substTotal = Env.ZERO;
			
			boolean isSOTrx = true;
			
			int LBR_NotaFiscal_ID = 0;
			
			//Apaga impostos zerados
			String sql = "DELETE FROM C_InvoiceTax " +
		                 "WHERE (TaxAmt = 0 OR " +
	                            "C_Tax_ID IN (SELECT C_Tax_ID FROM C_Tax WHERE IsSummary = 'Y')) " +
					     "AND C_Invoice_ID = " + invoice.getC_Invoice_ID();
			DB.executeUpdate(sql, trx);
			
			for (int i = 0; i < lines.length; i++){
				MInvoiceLine line = lines[i];
				org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,line.getC_Tax_ID(),trx);
				
				if (tax.isSummary()){
					
					//Cálculo dos Impostos (Linha)
					try {
						TaxBR.calculateTaxes(line.getC_InvoiceLine_ID(), false, trx);
					} catch (EvalError e) {
						e.printStackTrace();
					}
					
					Integer LBR_Tax_ID = (Integer)line.get_Value("LBR_Tax_ID");
					
					if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
						org.compiere.model.MTax[] cTaxes = tax.getChildTaxes(false);
						for (int j = 0; j < cTaxes.length; j++){
							org.compiere.model.MTax cTax = cTaxes[j];
							
							int LBR_TaxLine_ID = MTax.getLine(LBR_Tax_ID, (Integer)cTax.get_Value("LBR_TaxName_ID"), trx);
							if (LBR_TaxLine_ID != 0){
								X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx,LBR_TaxLine_ID,trx);
								
								//Verifica se o Imposto deve ser Contabilizado
								if (taxLine.islbr_PostTax()){
									
									MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx, invoice.getC_Invoice_ID(), cTax.getC_Tax_ID(), trx);
									
									BigDecimal TaxAmt     = iTax.getTaxAmt();
									BigDecimal TaxBaseAmt = iTax.getTaxBaseAmt();
								
									iTax.setTaxAmt(TaxAmt.add(taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
									iTax.setTaxBaseAmt(TaxBaseAmt.add(taxLine.getlbr_TaxBaseAmt()));
									iTax.setIsTaxIncluded(invoice.isTaxIncluded());
									iTax.save(trx);
									
								}
								
								X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
								//BEGIN - fer_luck @ faire
								if(taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)){
									if(taxList == null)
										taxList = new HashMap <X_LBR_TaxName, BigDecimal>();
									boolean isListed = taxList.get(taxName) != null ? true : false;
									BigDecimal amt = Env.ZERO;
									if(isListed)
										amt = taxList.get(taxName);
									amt = amt.add(taxLine.getlbr_TaxAmt());
									taxList.put(taxName, amt);
								}
								else	
								//END - fer_luck @ faire
									grandTotal = grandTotal.add(taxLine.getlbr_TaxAmt());
								
							}
						} //end for
					
					}
				}
			} //end for
			
			if (!invoice.isTaxIncluded()){
				invoice.setGrandTotal(invoice.getTotalLines().add(grandTotal.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
				//BEGIN - fer_luck @ faire
				if(taxList != null){
					Iterator it = taxList.entrySet().iterator();
					while(it.hasNext()){
						Map.Entry<X_LBR_TaxName, BigDecimal> map;
						map = (Map.Entry<X_LBR_TaxName, BigDecimal>) it.next();
						invoice.setGrandTotal(invoice.getGrandTotal().add(map.getValue()).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
					}
				}
				//END - fer_luck @ faire
			}
			else{
				//BEGIN - fer_luck @ faire
				if(taxList != null){
					Iterator it = taxList.entrySet().iterator();
					BigDecimal tmp = new BigDecimal(0.0);
					while(it.hasNext()){
						Map.Entry<X_LBR_TaxName, BigDecimal> map;
						map = (Map.Entry<X_LBR_TaxName, BigDecimal>) it.next();
						tmp = tmp.add(map.getValue());
					}
					if(!invoice.getGrandTotal().equals(invoice.getTotalLines().add(tmp))){
						invoice.setGrandTotal(invoice.getTotalLines().add(tmp).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						invoice.save();
					}
				}
				//END - fer_luck @ faire
			}
			
			//Validate Withhold
			validateWithhold((MInvoice)po);
			
			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());
			boolean HasOpenItems = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasOpenItems"));
			boolean HasFiscalDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasFiscalDocument"));
			boolean IsOwnDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_IsOwnDocument"));
			
			if (!HasOpenItems && !invoice.isReversal()){
			
				invoice.setC_Payment_ID(0);
				invoice.setIsPaid(true);
					
				//	Create Allocation
				MAllocationHdr alloc = new MAllocationHdr(ctx, false, invoice.getDateAcct(), invoice.getC_Currency_ID(), 
						Msg.translate(ctx, "C_Invoice_ID")	+ ": " + invoice.getDocumentNo() + "/", trx);
				alloc.setAD_Org_ID(invoice.getAD_Org_ID());
				if (alloc.save())
				{
					//	Amount
					BigDecimal gt = invoice.getGrandTotal(true);
					if (!invoice.isSOTrx())
						gt = gt.negate();
					//	Orig Line
					MAllocationLine aLine = new MAllocationLine (alloc, gt, 
							Env.ZERO, Env.ZERO, Env.ZERO);
					aLine.setC_Invoice_ID(invoice.getC_Invoice_ID());
					aLine.save();
					//	Process It
					if (alloc.processIt(DocAction.ACTION_Complete))
						alloc.save();
				}
				
			} // don't have Open Items - create automatically allocation
			
			if (HasFiscalDocument && !invoice.isReversal()){
				
				if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) ||
					dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice)){
					
					isSOTrx = true;
					
					LBR_NotaFiscal_ID = ProcGenerateNF.generate(ctx,invoice,isSOTrx,true,trx);
					
					invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", LBR_NotaFiscal_ID);
					
				} //documento de venda (saída)
				else if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) ||
						 dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo)){
					
					isSOTrx = false;
					
					LBR_NotaFiscal_ID = ProcGenerateNF.generate(ctx,invoice,isSOTrx,IsOwnDocument,trx);
					
					invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", LBR_NotaFiscal_ID);
					
				} //documento de compra (entrada)
			} // geração de Documento Fiscal
			
		}
		else if(po.get_TableName().equalsIgnoreCase("C_Invoice") 
				&& (timing == TIMING_AFTER_REACTIVATE 
						|| timing == TIMING_AFTER_VOID 
						|| timing == TIMING_AFTER_CLOSE
						|| timing == TIMING_AFTER_REVERSECORRECT))
		{
			MInvoice invoice = (MInvoice)po;
			
			String sql = "UPDATE C_Invoice SET LBR_Withhold_Invoice_ID=NULL " +
						     "WHERE LBR_Withhold_Invoice_ID=" + invoice.getC_Invoice_ID();
			
			DB.executeUpdate(sql, invoice.get_TrxName());
			//TODO: Continuar fazendo as reversões
			
			
			//CANCELA BOLETO E CNAB
			MBoleto.cancelBoleto(invoice.getCtx(),invoice.getC_Invoice_ID(),invoice.get_TrxName());
			
		}
		else if(po.get_TableName().equalsIgnoreCase("C_Invoice") 
				&& (timing == TIMING_BEFORE_REACTIVATE 
						|| timing == TIMING_BEFORE_VOID 
						|| timing == TIMING_BEFORE_CLOSE
						|| timing == TIMING_BEFORE_REVERSECORRECT))
		{
			MInvoice invoice = (MInvoice)po;
			Integer whInvoice = 0;
			whInvoice = (Integer) invoice.get_Value("LBR_Withhold_Invoice_ID");
			
			if (whInvoice != null
					&& whInvoice.compareTo((Integer) invoice.get_Value("C_Invoice_ID")) != 0)
				return "Não é possível re-abrir uma Fatura que tem Retenções de outra Fatura.";
		}
			
		return null;
	}	//	docValidate
		
	/**
	 * 	Update Info Window Columns.
	 * 	- add new Columns
	 * 	- remove columns
	 * 	- change dispay sequence
	 *	@param columns array of columns
	 *	@param sqlFrom from clause, can be modified
	 *	@param sqlOrder order by clause, can me modified
	 *	@return true if you updated columns, sequence or sql From clause
	 */
	public boolean updateInfoColumns (ArrayList<Info_Column> columns, 
		StringBuffer sqlFrom, StringBuffer sqlOrder)
	{
		/**		*
		int AD_Role_ID = Env.getAD_Role_ID (Env.getCtx());	// Can be Role/User specific 
		String from = sqlFrom.toString();
		if (from.startsWith ("M_Product"))
		{
			columns.add (new Info_Column("Header", "'sql'", String.class).seq(35));
			return true;
		}/**	*/
		return false;
	}	//	updateInfoColumns
	
	/**
	 *	Validate Withhold.
	 *	@param invoice MInvoice
     *	@return error message or null
     *
     *	FR [ 1905256 ] Retenção Impostos de Serviço (Fatura), 01/03/2008, mgrigioni
     *
	 */
	public String validateWithhold (MInvoice invoice)
	{
		ArrayList<BigDecimal[]> results = new ArrayList<BigDecimal[]>();
		Boolean hasWhSummary = false, hasLeastThanThreshold = false;
		
		Properties ctx    	 = invoice.getCtx();
		String     trx    	 = invoice.get_TrxName();
		int		   whInvoice = invoice.getC_Invoice_ID();
		
		String sql = "SELECT brtn.LBR_TaxName_ID, brtn.WithHoldThreshold, " +
						"SUM(ABS(i.TotalLines)) AS GrandTotal FROM C_Invoice i " + //Total à pagar + retido
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID=il.C_Invoice_ID  " + 
						"INNER JOIN C_Tax t ON t.Parent_Tax_ID=il.C_Tax_ID " + 
						"INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID=t.LBR_TaxName_ID " + 
						"WHERE brtn.HasWithHold='Y' AND i.C_BPartner_ID=? " + 
						"AND TO_CHAR(i.DateAcct, 'MMYYYY') = TO_CHAR(TO_TIMESTAMP(?, 'YYYY-MM-DD HH24:MI:SS GMT'), 'MMYYYY') " +
						"AND (i.DocStatus IN ('CL','CO') OR (i.C_Invoice_ID=?)) " +
						"AND i.IsSOTrx=? " + 
						"GROUP BY brtn.LBR_TaxName_ID, brtn.WithHoldThreshold";

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, invoice.getC_BPartner_ID());
			pstmt.setTimestamp(2, invoice.getDateAcct());
			pstmt.setInt(3, whInvoice);
			pstmt.setString(4, invoice.isSOTrx() ? "Y" : "N");
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				BigDecimal[] result = new BigDecimal[3];
				result[0] = rs.getBigDecimal(1);
				result[1] = rs.getBigDecimal(2);
				result[2] = rs.getBigDecimal(3);
				results.add(result);
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
		
		for (int r = 0; r < results.size(); r++)
		{
			BigDecimal[] row = results.get(r);
			
			MInvoiceTax[] taxes = invoice.getTaxes(true);
			
			for (int i = 0; i < taxes.length; i++)
			{
				
				MInvoiceTax iTax = taxes[i];
				org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx, iTax.getC_Tax_ID(), trx);
				if (tax.get_Value("LBR_TaxName_ID") == null)
					continue;
				X_LBR_TaxName lbr_TaxName = new X_LBR_TaxName(ctx, (Integer) tax.get_Value("LBR_TaxName_ID"), trx);
				
				/** 
				 * Somente continua se o imposto tiver retenção
				 * */
				if(!lbr_TaxName.isHasWithHold())
					continue;

				
				log.fine("TaxName ID: " + row[0]);
				log.fine("TaxName ID LBR: " + lbr_TaxName.getLBR_TaxName_ID());
				log.fine("Withhold Threshold: " + row[1]);
				log.fine("Withhold Total: " + row[2]);
				
				/**
				 * O imposto será apagado caso o valor da NF 
				 * não tenha atingido o limiar de retenção
				 * ou se estiver marcado para as retenções serem 
				 * lançadas em outra fatura.
				 * */
				if (row[0].compareTo(new BigDecimal(lbr_TaxName.getLBR_TaxName_ID())) == 0
						&& (row[1].compareTo(row[2]) == 1)) // || whMasterInvoice != whInvoice
				{				
					iTax.delete(true);
					invoice.set_ValueOfColumn("LBR_Withhold_Invoice_ID", null);
					hasLeastThanThreshold = true;
				}
				/**
				 * Limiar atingido
				 * */
				else if (row[0].compareTo(new BigDecimal(lbr_TaxName.getLBR_TaxName_ID())) == 0)
				{
					ArrayList<Integer> taxLines = new ArrayList<Integer>();
					/**
					 * Verificar se já houve alguma retenção para o cliente no mês
					 */
					sql = "SELECT DISTINCT tl.LBR_TaxLine_ID FROM C_Invoice i " + 
							"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID=il.C_Invoice_ID  " + 
							"INNER JOIN LBR_TaxLine tl ON tl.LBR_Tax_ID=il.LBR_Tax_ID  " +
							"INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID=tl.LBR_TaxName_ID  " + 
							"WHERE brtn.HasWithHold='Y' AND i.C_BPartner_ID=?  " +  
							"AND TO_CHAR(i.DateAcct, 'MMYYYY') = TO_CHAR(TO_TIMESTAMP(?, 'YYYY-MM-DD HH24:MI:SS'), 'MMYYYY') " +
							"AND (i.LBR_Withhold_Invoice_ID IS NULL OR i.LBR_Withhold_Invoice_ID=?) " + 
							"AND i.DocStatus IN ('CL','CO') AND i.C_Invoice_ID<>? " +
							"AND i.IsSOTrx=? " +
							"AND brtn.LBR_TaxName_ID=?";

					pstmt = null;
					try
					{
						pstmt = DB.prepareStatement (sql, null);
						pstmt.setInt(1, invoice.getC_BPartner_ID());
						pstmt.setTimestamp(2, invoice.getDateAcct());
						pstmt.setInt(3, whInvoice);
						pstmt.setInt(4, whInvoice);
						pstmt.setString(5, invoice.isSOTrx() ? "Y" : "N");
						pstmt.setString(6, row[0].toString());
						ResultSet rs = pstmt.executeQuery ();
						while (rs.next ())
						{
							taxLines.add(rs.getInt(1));
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
					
					iTax.setTaxAmt(iTax.getTaxAmt().negate());
					iTax.save();
					
					/**
					 * Invoice com retenção própria.
					 */
					if(taxLines.size() == 0)
					{
						
						/**
						 * O campo LBR_Withhold_Invoice_ID preenchido significa que a reteção foi
						 * efetuada, este campo NULL significa que não há retenção ou o limiar ainda
						 * não foi atingido.
						 * */
						invoice.set_ValueOfColumn("LBR_Withhold_Invoice_ID", whInvoice);
						invoice.setGrandTotal(invoice.getGrandTotal().add(iTax.getTaxAmt()).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						invoice.save();	
						
						//Fix - Ajustar PaySchedule
						MPaymentTerm pt = new MPaymentTerm(invoice.getCtx(), invoice.getC_PaymentTerm_ID(), null);
						log.fine(pt.toString());
						pt.apply(invoice);
						
						continue;
					}
					
					invoice.set_ValueOfColumn("LBR_Withhold_Invoice_ID", whInvoice);
					BigDecimal grandTotal = invoice.getGrandTotal();
					invoice.setGrandTotal(grandTotal.add(iTax.getTaxAmt()).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
					
					/**
					 * Nesta etapa o imposto será lançado 
					 * com referência à outras ordens
					 * */
					for (int j=0; j < taxLines.size(); j++)
					{
						int C_Invoice_ID = 0;
						X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx, taxLines.get(j), trx);
						//MInvoiceTax newTax = TaxBR.getMInvoiceTax(ctx, invoice.getC_Invoice_ID(), iTax.getC_Tax_ID(), trx);
						
						
						BigDecimal TaxAmt     = iTax.getTaxAmt();
						BigDecimal TaxBaseAmt = iTax.getTaxBaseAmt();
						
						//
						//BigDecimal TaxAmt     = newTax.getTaxAmt();
						//BigDecimal TaxBaseAmt = newTax.getTaxBaseAmt();
						BigDecimal OldTaxAmt     = taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP).negate();
						BigDecimal OldTaxBaseAmt = taxLine.getlbr_TaxBaseAmt();
						
						iTax.setTaxAmt(TaxAmt.add(OldTaxAmt));
						iTax.setTaxBaseAmt(TaxBaseAmt.add(OldTaxBaseAmt));
						iTax.setIsTaxIncluded(invoice.isTaxIncluded());
						iTax.save(trx);
						
						//newTax.setTaxAmt(TaxAmt.add(OldTaxAmt));
						//newTax.setTaxBaseAmt(TaxBaseAmt.add(OldTaxBaseAmt));
						////newTax.setIsTaxIncluded(invoice.isTaxIncluded());
						//newTax.save(trx);
						
						grandTotal = invoice.getGrandTotal();
						invoice.setGrandTotal(grandTotal.add(OldTaxAmt).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
						
						//Fix - Ajustar PaySchedule
						MPaymentTerm pt = new MPaymentTerm(invoice.getCtx(), invoice.getC_PaymentTerm_ID(), null);
						log.fine(pt.toString());
						pt.apply(invoice);
						
						sql = "SELECT DISTINCT C_Invoice_ID FROM C_InvoiceLine WHERE LBR_Tax_ID=?";
						C_Invoice_ID = DB.getSQLValue(trx, sql, taxLine.getLBR_Tax_ID());

						/**
						 * Marcar que a fatura abaixo terá suas retenções em outra fatura.
						 * */
						MInvoice oldInvoice = new MInvoice(ctx, C_Invoice_ID, trx);
						oldInvoice.set_ValueOfColumn("LBR_Withhold_Invoice_ID", whInvoice);
						oldInvoice.save();
						
						hasWhSummary = true;
					}
					
					invoice.save();
				}
			}
		}
		
		if(hasLeastThanThreshold)
			log.warning("Retenções não contabilizadas, por não atingir o limiar.");
		
		if(hasWhSummary)
			log.warning("Retenções de outras Faturas contidas nesta Fatura.");
		
		return "";
	}
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("AdempiereLBR - Powered by Kenos & Faire");
		return sb.toString ();
	}	//	toString

} //ValidatorInvoice