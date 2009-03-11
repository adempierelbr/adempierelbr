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
import java.util.logging.Level;

import org.adempierelbr.model.MOtherNFLine;
import org.adempierelbr.model.MProcessLink;
import org.adempierelbr.model.MTax;
import org.adempierelbr.model.boleto.MBoleto;
import org.adempierelbr.process.ProcGenerateNF;
import org.adempierelbr.util.POLBR;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * ValidatorInvoice
 * 
 * Validate Invoice (Tax Calculation)
 * 
 * [ 1967069 ] LBR_Tax não é excluído quando excluí uma linha, mgrigioni
 * [ 2200626 ] Lista de Preço Brasil, mgrigioni
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 * @version $Id: ValidatorInvoice.java, 04/01/2008 15:56:00 mgrigioni
 * 
 *          BF: 1928906 - amontenegro
 */
public class ValidatorInvoice implements ModelValidator
{
	/**
	 * Constructor. The class is instanciated when logging in and client is
	 * selected/known
	 */
	public ValidatorInvoice()
	{
		super();
	} // ValidatorOrder

	/** Logger */
	private static CLogger	log				= CLogger.getCLogger(ValidatorInvoice.class);
	/** Client */
	private int				m_AD_Client_ID	= -1;

	/**
	 * Initialize Validation
	 * 
	 * @param engine
	 *            validation engine
	 * @param client
	 *            client
	 */
	public void initialize(ModelValidationEngine engine, MClient client)
	{
		m_AD_Client_ID = client.getAD_Client_ID();

		log.info(client.toString());

		// ModelChange
		engine.addModelChange("C_Invoice", this);
		engine.addModelChange("C_InvoiceLine", this);
		// DocValidate
		engine.addDocValidate("C_Invoice", this);
	} // initialize

	/**
	 * Get Client to be monitored
	 * 
	 * @return AD_Client_ID client
	 */
	public int getAD_Client_ID()
	{
		return m_AD_Client_ID;
	} // getAD_Client_ID

	/**
	 * User Login. Called when preferences are set
	 * 
	 * @param AD_Org_ID
	 *            org
	 * @param AD_Role_ID
	 *            role
	 * @param AD_User_ID
	 *            user
	 * @return error message or null
	 */
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info("AD_User_ID=" + AD_User_ID);

		if (getAD_Client_ID() != 0 && AD_Org_ID == 0)
			return "Não é possível logar com Org = *";

		return null;
	} // login

	/**
	 * Model Change of a monitored Table. Called after
	 * PO.beforeSave/PO.beforeDelete when you called addModelChange for the
	 * table
	 * 
	 * @param po
	 *            persistent object
	 * @param type
	 *            TYPE_
	 * @return error message or null
	 * @exception Exception
	 *                if the recipient wishes the change to be not accept.
	 */
	public String modelChange(PO po, int type) throws Exception
	{

		// Executa quando uma Invoice é salva ou atualizada
		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (type == TYPE_AFTER_CHANGE || type == TYPE_NEW))
		{
			MInvoice invoice = (MInvoice) po;
			return modelChange(invoice);
		}

		else

		// Executa quando uma InvoiceLine é salva ou atualizada
		if (po.get_TableName().equalsIgnoreCase("C_InvoiceLine") && (type == TYPE_AFTER_CHANGE || type == TYPE_NEW || type == TYPE_AFTER_NEW || type == TYPE_DELETE))
		{
			MInvoiceLine iLine = (MInvoiceLine) po;
			return modelChange(iLine, type);
		}

		return null;
	} // modelChange

	// modelChange - Invoice
	// @param MInvoice
	public String modelChange(MInvoice invoice) throws Exception
	{

		int C_Order_ID = invoice.getC_Order_ID();
		MOrder order = null;
		if (C_Order_ID != 0)
			order = new MOrder(invoice.getCtx(), C_Order_ID, invoice.get_TrxName());
		else
			return null;

		String tType = invoice.get_ValueAsString("lbr_TransactionType");

		if (tType == null || tType.equals(""))
		{
			tType = order.get_ValueAsString("lbr_TransactionType");
			if (!(tType == null || tType.equals("")))
			{
				invoice.set_ValueOfColumn("lbr_TransactionType", tType);
			}
		}

		String paymentRule = invoice.get_ValueAsString("lbr_PaymentRule");

		if (paymentRule == null || paymentRule.equals(""))
		{
			paymentRule = order.get_ValueAsString("lbr_PaymentRule");
			if (!(paymentRule == null || paymentRule.equals("")))
			{
				invoice.set_ValueOfColumn("lbr_PaymentRule", paymentRule);
			}
		}

		Integer C_BankAccount_ID = (Integer) invoice.get_Value("C_BankAccount_ID");

		if (C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0)
		{
			C_BankAccount_ID = (Integer) order.get_Value("C_BankAccount_ID");
			if (!(C_BankAccount_ID == null || C_BankAccount_ID.intValue() == 0))
			{
				invoice.set_ValueOfColumn("C_BankAccount_ID", C_BankAccount_ID);
			}
		}
		
		String lbr_NFEntrada = invoice.get_ValueAsString("lbr_NFEntrada");
		
		if (lbr_NFEntrada == null || lbr_NFEntrada.trim().equalsIgnoreCase(""))
		{
			lbr_NFEntrada = order.get_ValueAsString("lbr_NFEntrada");
			if (lbr_NFEntrada == null || lbr_NFEntrada.trim().equalsIgnoreCase(""))
			{
				invoice.set_ValueOfColumn("lbr_NFEntrada", lbr_NFEntrada);
			}
		}
		
		String lbr_BillNote = invoice.get_ValueAsString("lbr_BillNote");
		
		if (lbr_BillNote == null || lbr_BillNote.trim().equalsIgnoreCase(""))
		{
			lbr_BillNote = order.get_ValueAsString("lbr_BillNote");
			if (lbr_BillNote == null || lbr_BillNote.trim().equalsIgnoreCase(""))
			{
				invoice.set_ValueOfColumn("lbr_BillNote", lbr_BillNote);
			}
		}
		
		String lbr_ShipNote = invoice.get_ValueAsString("lbr_ShipNote");
		
		if (lbr_ShipNote == null || lbr_ShipNote.trim().equalsIgnoreCase(""))
		{
			lbr_ShipNote = order.get_ValueAsString("lbr_ShipNote");
			if (lbr_ShipNote == null || lbr_ShipNote.trim().equalsIgnoreCase(""))
			{
				invoice.set_ValueOfColumn("lbr_ShipNote", lbr_ShipNote);
			}
		}

		log.info(invoice.toString());
		return validatePaymentTerm(invoice);
	}

	// modelChange - InvoiceLine
	// @param MInvoiceLine
	public String modelChange(MInvoiceLine iLine, int type) throws Exception
	{

		Properties ctx = iLine.getCtx();
		String trx = iLine.get_TrxName();

		if (type == TYPE_DELETE)
		{

			Integer LBR_Tax_ID = (Integer) iLine.get_Value("LBR_Tax_ID");
			if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0)
			{
				MTax lbrTax = new MTax(iLine.getCtx(), LBR_Tax_ID, iLine.get_TrxName());
				lbrTax.delete(true, iLine.get_TrxName());
			}

		} // delete
		else
		{

			if (iLine.isProcessed()) { return null; }

			Integer LBR_Tax_ID = (Integer) iLine.get_Value("LBR_Tax_ID");

			if (type == TYPE_NEW)
			{

				if (LBR_Tax_ID == null || LBR_Tax_ID.intValue() == 0)
				{
					int C_OrderLine_ID = iLine.getC_OrderLine_ID();
					if (C_OrderLine_ID != 0)
					{
						MOrderLine oLine = new MOrderLine(ctx, C_OrderLine_ID, trx);

						// CFOP, Sit. Tributária, Mensagem Legal
						Integer LBR_CFOP_ID = (Integer) oLine.get_Value("LBR_CFOP_ID");
						Integer LBR_LegalMessage_ID = (Integer) oLine.get_Value("LBR_LegalMessage_ID");
						String sitTributaria = (String) oLine.get_Value("lbr_TaxStatus");

						LBR_Tax_ID = (Integer) oLine.get_Value("LBR_Tax_ID");
						if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0)
						{
							MTax oTax = new MTax(ctx, LBR_Tax_ID, trx);
							MTax newTax = oTax.copyFrom();

							iLine.set_ValueOfColumn("LBR_Tax_ID", newTax.getLBR_Tax_ID());
							iLine.set_ValueOfColumn("LBR_CFOP_ID", LBR_CFOP_ID);
							iLine.set_ValueOfColumn("LBR_LegalMessage_ID", LBR_LegalMessage_ID);
							iLine.set_ValueOfColumn("lbr_TaxStatus", sitTributaria);

						}
					}
				}
			} // new

			else
			{

				// ModelChange
				try
				{
					MTax.modelChange(ctx, iLine, trx);
				}
				catch (Exception e)
				{
					log.log(Level.SEVERE, "", e);
				}

			} // change

		} // new or change

		log.info(iLine.toString());
		return null;
	} // modelChange(MInvoiceLine)

	/**
	 * Validate Document. Called as first step of DocAction.prepareIt when you
	 * called addDocValidate for the table. Note that totals, etc. may not be
	 * correct.
	 * 
	 * @param po
	 *            persistent object
	 * @param timing
	 *            see TIMING_ constants
	 * @return error message or null
	 */
	public String docValidate(PO po, int timing)
	{

		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (timing == TIMING_AFTER_PREPARE)){
			
			MInvoice invoice = (MInvoice)po;
			
			Properties ctx = invoice.getCtx();
			String     trx = invoice.get_TrxName();
			
			MDocType docType = new MDocType(ctx,invoice.getC_DocTypeTarget_ID(),trx);
			if (POLBR.get_ValueAsBoolean(docType.get_Value("lbr_HasFiscalDocument")) && //Gera Documento Fiscal
				!POLBR.get_ValueAsBoolean(docType.get_Value("lbr_IsOwnDocument"))){ //Não é um documento próprio
				
				if (invoice.get_Value("lbr_NFEntrada") == null || invoice.get_ValueAsString("lbr_NFEntrada").equals("")){
					if (!invoice.isReversal())
						return "Necessário preencher campo Referência do Pedido";
				}
				
			}
		}
		
		else
		
		// Executa quando uma Invoice é completada
		if (po.get_TableName().equalsIgnoreCase("C_Invoice") && (timing == TIMING_AFTER_COMPLETE))
		{

			MInvoice invoice = (MInvoice) po;

			Properties ctx = invoice.getCtx();
			String trx = invoice.get_TrxName();

			// DocValidate
			try
			{
				MTax.docValidate(ctx, invoice, trx);
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, "", e);
			}

			// Fix - Ajustar PaySchedule
			MPaymentTerm pt = new MPaymentTerm(invoice.getCtx(), invoice.getC_PaymentTerm_ID(), null);
			log.fine(pt.toString());
			pt.apply(invoice);

			// Validate Withhold
			MTax.validateWithhold(invoice);

			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());
			boolean HasOpenItems = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasOpenItems"));
			boolean HasFiscalDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_HasFiscalDocument"));
			boolean IsOwnDocument = POLBR.get_ValueAsBoolean(dt.get_Value("lbr_IsOwnDocument"));

			if (!HasOpenItems && !invoice.isReversal())
			{

				invoice.setC_Payment_ID(0);
				invoice.setIsPaid(true);

				// Create Allocation
				MAllocationHdr alloc = new MAllocationHdr(ctx, false, invoice.getDateAcct(), invoice.getC_Currency_ID(), Msg.translate(ctx, "C_Invoice_ID") + ": " + invoice.getDocumentNo() + "/", trx);
				alloc.setAD_Org_ID(invoice.getAD_Org_ID());
				if (alloc.save())
				{
					// Amount
					BigDecimal gt = invoice.getGrandTotal(true);
					if (!invoice.isSOTrx())
						gt = gt.negate();
					// Orig Line
					MAllocationLine aLine = new MAllocationLine(alloc, gt, Env.ZERO, Env.ZERO, Env.ZERO);
					aLine.setC_Invoice_ID(invoice.getC_Invoice_ID());
					aLine.save();
					// Process It
					if (alloc.processIt(DocAction.ACTION_Complete))
						alloc.save();
				}

			} // don't have Open Items - create automatically allocation

			boolean isSOTrx = true;
			int LBR_NotaFiscal_ID = 0;

			if (HasFiscalDocument && !invoice.isReversal())
			{

				if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) || dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice))
				{

					isSOTrx = true;
					IsOwnDocument = true;

				} // documento de venda (saída)
				else if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) || dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo))
				{

					isSOTrx = false;

				} // documento de compra (entrada)

				LBR_NotaFiscal_ID = ProcGenerateNF.generate(ctx, invoice, 0, isSOTrx, IsOwnDocument, trx);
				invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", LBR_NotaFiscal_ID);

			} // geração de Documento Fiscal
			

			// Processo de consignação - Registra referência na tabela LBR_ProcessLink
			// A referência será sempre da fatura de envio, com a fatura de retorno ou venda
			// Antes de fazer qualquer processamento pesado, primeiro deve-se verificar se é uma fatura de
			// consignação
			String lbr_docbasetype = (String)dt.get_Value("LBR_DocBaseType"); //BF: assim se não existe a coluna retorn NULL

			if (lbr_docbasetype != null && (lbr_docbasetype.equalsIgnoreCase("farc") || lbr_docbasetype.equalsIgnoreCase("faec") || lbr_docbasetype.equalsIgnoreCase("fafc")))
			{
				MProcessLink proc = new MProcessLink(ctx, 0, trx);
				Integer lbr_Ref_C_InvoiceLine_ID;
				
				for(MInvoiceLine iLine : invoice.getLines())
				{
					proc.setM_Product_ID(iLine.getM_Product_ID());
					proc.setM_AttributeSetInstance_ID(iLine.getM_AttributeSetInstance_ID());
	
					lbr_Ref_C_InvoiceLine_ID = POLBR.getlbr_Ref_C_InvoiceLine_ID(iLine.getC_OrderLine_ID(),trx);
	
					if (!invoice.isReversal()) //Se for uma invoice reversa, devemos multiplicar a qty por -1
						proc.setMovementQty(iLine.getQtyInvoiced());
					else
						proc.setMovementQty(iLine.getQtyInvoiced().negate());
	
					proc.setlbr_Dest_C_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
					proc.setlbr_Ori_C_InvoiceLine_ID(lbr_Ref_C_InvoiceLine_ID);
	
					if (lbr_docbasetype.equalsIgnoreCase("farc"))
					{
						proc.setMovementType(MProcessLink.MOVEMENTTYPE_MovementFrom);
					}
					else if (lbr_docbasetype.equalsIgnoreCase("faec"))
					{
						proc.setMovementType(MProcessLink.MOVEMENTTYPE_MovementTo);
						proc.setMovementQty(proc.getMovementQty().negate()); //Enviando itens = Retira do Estoque
					}
					else if (lbr_docbasetype.equalsIgnoreCase("fafc"))
					{
						proc.setMovementType(MProcessLink.MOVEMENTTYPE_CustomerShipment);
						proc.setMovementQty(proc.getMovementQty().negate()); //Enviando itens = Retira do Estoque
					}
					proc.save(trx);
				}
			}
			// Fim Processo de Consginação
		}
		else if (po.get_TableName().equalsIgnoreCase("C_Invoice")
				&& (timing == TIMING_AFTER_REACTIVATE || timing == TIMING_AFTER_VOID || timing == TIMING_AFTER_CLOSE || timing == TIMING_AFTER_REVERSECORRECT))
		{
			MInvoice invoice = (MInvoice) po;

			String sql = "UPDATE C_Invoice SET LBR_Withhold_Invoice_ID=NULL " + "WHERE LBR_Withhold_Invoice_ID=" + invoice.getC_Invoice_ID();

			DB.executeUpdate(sql, invoice.get_TrxName());
			// TODO: Continuar fazendo as reversões

			// CANCELA BOLETO E CNAB
			MBoleto.cancelBoleto(invoice.getCtx(), invoice.getC_Invoice_ID(), invoice.get_TrxName());
			
			//CANCELA CONSIGNAÇÃO
			for(MInvoiceLine iLine : invoice.getLines())
			{
				MOtherNFLine.voidConsignationLine(iLine.getC_InvoiceLine_ID(), invoice.get_TrxName());
			}

		}
		else if (po.get_TableName().equalsIgnoreCase("C_Invoice")
				&& (timing == TIMING_BEFORE_REACTIVATE || timing == TIMING_BEFORE_VOID || timing == TIMING_BEFORE_CLOSE || timing == TIMING_BEFORE_REVERSECORRECT))
		{
			MInvoice invoice = (MInvoice) po;
			Integer whInvoice = 0;
			whInvoice = (Integer) invoice.get_Value("LBR_Withhold_Invoice_ID");

			if (whInvoice != null && whInvoice.compareTo((Integer) invoice.get_Value("C_Invoice_ID")) != 0)
				return "Não é possível re-abrir uma Fatura que tem Retenções de outra Fatura.";
		}

		return null;
	} // docValidate

	/**
	 * Update Info Window Columns. - add new Columns - remove columns - change
	 * dispay sequence
	 * 
	 * @param columns
	 *            array of columns
	 * @param sqlFrom
	 *            from clause, can be modified
	 * @param sqlOrder
	 *            order by clause, can me modified
	 * @return true if you updated columns, sequence or sql From clause
	 */
	public boolean updateInfoColumns(ArrayList<Info_Column> columns, StringBuffer sqlFrom, StringBuffer sqlOrder)
	{
		/**
		 * * int AD_Role_ID = Env.getAD_Role_ID (Env.getCtx()); // Can be
		 * Role/User specific String from = sqlFrom.toString(); if
		 * (from.startsWith ("M_Product")) { columns.add (new
		 * Info_Column("Header", "'sql'", String.class).seq(35)); return true;
		 * }/**
		 */
		return false;
	} // updateInfoColumns

	private String validatePaymentTerm(MInvoice invoice)
	{

		/*
		 * Properties ctx = invoice.getCtx(); String trx =
		 * invoice.get_TrxName();
		 * 
		 * String docStatus = invoice.getDocStatus(); String error = "";
		 * 
		 * if (docStatus.equals(MInvoice.DOCSTATUS_Completed) ||
		 * docStatus.equals(MInvoice.DOCSTATUS_Reversed) ||
		 * docStatus.equals(MInvoice.DOCSTATUS_Closed) ||
		 * docStatus.equals(MInvoice.DOCSTATUS_Voided)){
		 * 
		 * MInvoicePaySchedule[] ischedule = POLBR.getInvoicePaySchedule(ctx,
		 * invoice.getC_Invoice_ID(), trx);
		 * 
		 * int C_PaymentTerm_ID = invoice.getC_PaymentTerm_ID(); MPaymentTerm
		 * paymentTerm = new MPaymentTerm(ctx,C_PaymentTerm_ID,trx);
		 * MPaySchedule[] schedule = paymentTerm.getSchedule(true);
		 * 
		 * if (ischedule.length != schedule.length){ error =
		 * "Condição de Pagamento Inconsistente"; log.log(Level.WARNING, error);
		 * return error; }
		 * 
		 * }
		 */

		return null;
	}

	/**
	 * String Representation
	 * 
	 * @return info
	 */
	public String toString()
	{
		StringBuffer sb = new StringBuffer("AdempiereLBR - Powered by Kenos & Faire");
		return sb.toString();
	} // toString

} // ValidatorInvoice