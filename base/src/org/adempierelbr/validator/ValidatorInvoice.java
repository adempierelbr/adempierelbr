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
import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.MTax;
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
 *	@version $Id: ValidatorInvoice.java, 04/01/2008 15:56:00 mgrigioni
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
					
		String tType = invoice.get_ValueAsString("lbr_TransactionType"); 
		
		if (tType == null || tType.equals("")){
			int C_Order_ID = invoice.getC_Order_ID();
			if (C_Order_ID != 0){
				MOrder order = new MOrder(invoice.getCtx(),C_Order_ID,invoice.get_TrxName());
				tType = order.get_ValueAsString("lbr_TransactionType"); 
				if (!(tType == null || tType.equals(""))){
					invoice.set_ValueOfColumn("lbr_TransactionType", tType);
				}
			}
		}
		
		log.info(invoice.toString());
		return null;
	}
	
	// modelChange - InvoiceLine
	// @param MInvoiceLine
	public String modelChange (MInvoiceLine iLine, int type) throws Exception{
			
		if(iLine.isProcessed()){
			return null;
		}
		
		Properties ctx     = iLine.getCtx();
		String     trx     = iLine.get_TrxName();
		
		BigDecimal taxAmt  = Env.ZERO;
		Integer LBR_Tax_ID = (Integer)iLine.get_Value("LBR_Tax_ID");
		
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
				
						for (int j=0;j<brLines.length;j++){
							taxAmt = taxAmt.add(brLines[j].getlbr_TaxAmt());
						}
					}
				
				} //end for
			
				MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx, invoice.getC_Invoice_ID(), iLine.getC_Tax_ID(), trx);
				iTax.setTaxAmt(taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
			
				if (!invoice.isTaxIncluded()){
					iTax.setTaxBaseAmt(invoice.getTotalLines());
					invoice.setGrandTotal(invoice.getTotalLines().add(TaxBR.getMInvoiceTaxAmt(invoice.getC_Invoice_ID(), trx)));
					invoice.save(trx);
				}
				else{
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
	public String docValidate (PO po, int timing)
	{
		
		//Executa quando uma Invoice é completada
		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (timing == TIMING_AFTER_COMPLETE)){
			
			MInvoice invoice = (MInvoice)po;
			MInvoiceLine[] lines = invoice.getLines();
			
			Properties ctx = invoice.getCtx();
			String     trx = invoice.get_TrxName();
			
			BigDecimal grandTotal = Env.ZERO;
			BigDecimal substTotal = Env.ZERO;
			
			boolean isSOTrx = true;
			
			int LBR_NotaFiscal_ID = 0;
			
			//Apaga impostos zerados
			String sql = "DELETE FROM C_InvoiceTax " +
					     "WHERE TaxAmt = 0 " +
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
					
					int LBR_Tax_ID = (Integer)line.get_Value("LBR_Tax_ID");
					
					if (LBR_Tax_ID != 0){
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
								if (taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)){
									substTotal = substTotal.add(taxLine.getlbr_TaxAmt());
								}
								
								grandTotal = grandTotal.add(taxLine.getlbr_TaxAmt());
								
							}
						} //end for
					}
				}
			} //end for
			
			if (!invoice.isTaxIncluded()){
				invoice.setGrandTotal(invoice.getTotalLines().add(grandTotal.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
			}
			else{
				invoice.setGrandTotal(invoice.getGrandTotal().add(substTotal.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
			}
			
			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());
			boolean HasOpenItems = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasOpenItems"));
			boolean HasFiscalDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasFiscalDocument"));
			boolean IsOwnDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_IsOwnDocument"));
			
			if (!HasOpenItems){
			
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
			
			if (HasFiscalDocument && !isReversal(invoice)){
				
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
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("AdempiereLBR - Powered by Kenos");
		return sb.toString ();
	}	//	toString
	
	
	private boolean isReversal(MInvoice invoice){
		
		String description = invoice.getDescription();
		
		if (description == null || description.trim().equals(""))
			return false;
		
		int indexOf      = description.lastIndexOf("{->") + 3;
		int C_Invoice_ID = POLBR.getC_Invoice_ID(description.substring(indexOf, description.length()-1), invoice.get_TrxName()); 
		
		if (C_Invoice_ID != -1){
			MInvoice reversal = new MInvoice(invoice.getCtx(),C_Invoice_ID, invoice.get_TrxName());
			if ((invoice.getGrandTotal().doubleValue()+reversal.getGrandTotal().doubleValue())==0){
				if (invoice.getC_BPartner_ID() == reversal.getC_BPartner_ID())
					return true;
			}		
		}
		
		return false;
	}

} //ValidatorInvoice