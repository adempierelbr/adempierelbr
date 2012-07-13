package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Utilizado para efetuar os cálculos dos impostos brasileiros.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ValidatorTax.java, v1.0 2011/04/05 10:03:06 PM, ralexsander Exp $
 */
public class VLBRTax implements ModelValidator
{

	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public VLBRTax ()
	{
		super ();
	}	//	VLBRTax
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBRTax.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	
	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		//	Global Validator
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else 
			log.info("Initializing global validator: "+this.toString());

		engine.addDocValidate (MOrder.Table_Name, this);
		engine.addDocValidate (MInvoice.Table_Name, this);
		engine.addModelChange (MOrder.Table_Name, this);
		engine.addModelChange (MOrderLine.Table_Name, this);
		engine.addModelChange (MInvoice.Table_Name, this);
		engine.addModelChange (MInvoiceLine.Table_Name, this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID ()
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
		log.info ("AD_User_ID=" + AD_User_ID);
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
		/**
		 * 	Calcula o imposto quando uma linha é salva
		 */
		if ((MOrderLine.Table_Name.equals(po.get_TableName()) || MInvoiceLine.Table_Name.equals(po.get_TableName())) 
				&& (type == TYPE_BEFORE_NEW || type == TYPE_BEFORE_CHANGE)
				&& isChangeAffectTaxes (po))
		{
//			return calculateTaxesLine (po);
			String result = calculateTaxesLine (po);
			
			/**
			 * 	Não fazer o update no nível do pedido para BEFORE NEW, porque as 
			 * 		linhas da OV ainda não foram salvas.
			 * 	Especificamente para novos registros o lançamento é
			 * 		feito pelo AFTER NEW.
			 */
			if (result != null || type == TYPE_BEFORE_NEW)
				return result;
			
			return updateTax (po, false) ? null : "@LBR|ErrorSavingTaxes@";
		}
		
		/**
		 * 	Lançamento dos impostos para registros novos, pois nestes casos
		 * 		as linhas ainda não foram salvas. Para registros alterados
		 * 		o lançamento do imposto é feito no BEFORE SAVE.
		 * 	Também deve ser recalculado quando uma linha é deletada.
		 */
		else if ((type == TYPE_AFTER_NEW || type == TYPE_AFTER_DELETE))
			return updateTaxLine(po, true) ? null : "@LBR|ErrorSavingTaxes@";
		
		/**
		 * 	Calcula o imposto quando o cabeçalho é salvo
		 * 		e houve alguma alteração que pode comprometer
		 * 		os calculos do imposto.
		 */
		else if (type == TYPE_BEFORE_CHANGE
				&& isChangeAffectTaxes (po))
		{
			String result = calculateTaxes (po);
			
			if (result != null)
				return result;
			
			/**
			 * 	Atualiza os impostos na C_OrderTax
			 */
			return updateTax(po, false) ? null : "@LBR|ErrorSavingTaxes@";
		}
		
		return null;
	}	//	modelChange
	
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
		if (MSysConfig.getBooleanValue("LBR_RECALCULATE_TAXES_ON_COMPLETE", false, getAD_Client_ID()) 
				&& timing == TIMING_BEFORE_PREPARE)
		{
			return calculateTaxes (po);
		}
		else if (timing == TIMING_AFTER_PREPARE)
		{
			return updateTax(po, true) ? null : "@LBR|ErrorSavingTaxes@";
		}
	
		return null;
	}	//	docValidate
	
	/**
	 * 	Calculate brazilian taxes
	 * 	@param order
	 * 	@return error message or null
	 */
	private String calculateTaxes (PO po)
	{
		if (MOrder.Table_Name.equals(po.get_TableName()))
		{
			MOrder order = (MOrder) po;
			//
			for (MOrderLine oLine : order.getLines ())
				calculateTaxes (po, oLine, false);
		}
		else if (MInvoice.Table_Name.equals(po.get_TableName()))
		{
			MInvoice invoice = (MInvoice) po;
			//
			for (MInvoiceLine iLine : invoice.getLines ())
				calculateTaxes (po, iLine, false);
		}
		//
		return null;
	}	//	validateTaxes

	/**
	 * 	Calculate brazilian taxes
	 * 	@param original order/invoice
	 * 	@param line to be processed
	 * 	@param updateTaxes
	 * 	@return error message or null
	 */
	private String calculateTaxes (PO po, PO poLine, boolean updateTaxes)
	{
		if (MOrderLine.Table_Name.equals(poLine.get_TableName()))
		{
			MOrderLine oLine = (MOrderLine) poLine;
			//
			I_W_C_Order oW = POWrapper.create((po == null ? oLine.getParent() : po), I_W_C_Order.class);
			I_W_C_OrderLine oLineW = POWrapper.create (oLine, I_W_C_OrderLine.class);
			
			if (oLineW.getLBR_Tax_ID() > 0)
			{
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, oLineW.getlbr_SISCOMEXAmt());
				params.put(MLBRTax.INSURANCE, oLineW.getlbr_InsuranceAmt());
				params.put(MLBRTax.FREIGHT, oLineW.getFreightAmt());
				params.put(MLBRTax.AMT, oLine.getLineNetAmt());
				//
				MLBRTax tax = new MLBRTax (Env.getCtx(), oLineW.getLBR_Tax_ID(), oLine.get_TrxName());
				tax.calculate (oW.isTaxIncluded(), oW.getDateOrdered(), params, oW.getlbr_TransactionType());
			}
			//
			oLineW.setlbr_RecalculateTax(false);
		}
		else if (MInvoiceLine.Table_Name.equals(poLine.get_TableName()))
		{
			MInvoiceLine iLine = (MInvoiceLine) poLine;
			//
			MInvoice invoice = (MInvoice)(po == null ? iLine.getParent() : po);
			I_W_C_Invoice iW = POWrapper.create(invoice, I_W_C_Invoice.class);
			I_W_C_InvoiceLine iLineW = POWrapper.create (iLine, I_W_C_InvoiceLine.class);
			
			if (iLineW.getLBR_Tax_ID() > 0)
			{
				BigDecimal reversal = (iLine.getQtyEntered().signum()<0) ? Env.ONE.negate() : Env.ONE;
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, iLineW.getlbr_SISCOMEXAmt().multiply(reversal));
				params.put(MLBRTax.INSURANCE, iLineW.getlbr_InsuranceAmt().multiply(reversal));
				params.put(MLBRTax.FREIGHT, iLineW.getFreightAmt().multiply(reversal));
				params.put(MLBRTax.AMT, iLine.getLineNetAmt());
				//
				MLBRTax tax = new MLBRTax (Env.getCtx(), iLineW.getLBR_Tax_ID(), iLine.get_TrxName());
				tax.calculate (iW.isTaxIncluded(), iW.getDateOrdered(), params, iW.getlbr_TransactionType());
			}
			//
			iLineW.setlbr_RecalculateTax(false);
		}
		
		return null;
	}	//	validateTaxes

	/**
	 * 	Calculate brazilian taxes
	 * 	@param order
	 * 	@return error message or null
	 */
	private String calculateTaxesLine (PO poLine)
	{
		
		return calculateTaxes (null, poLine, true);
	}	//	calculateTaxes
	
	/**
	 * 	Verify if taxes must be recalculated
	 * 	@param order
	 * 	@return true if must recalculate
	 */
	private boolean isChangeAffectTaxes (PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice)
		{
			/**
			 * 	Campos comuns entre Pedido e Fatura
			 */
			if (po.is_ValueChanged(I_W_C_Order.COLUMNNAME_C_BPartner_ID)
					|| po.is_ValueChanged(I_W_C_Order.COLUMNNAME_C_BPartner_Location_ID)
					|| po.is_ValueChanged(I_W_C_Order.COLUMNNAME_lbr_TransactionType))
				return true;
			
			/**
			 * 	Campo existentes apenas no pedido
			 */
			if (po instanceof MOrder && (po.is_ValueChanged(I_W_C_Order.COLUMNNAME_Bill_BPartner_ID)
					|| po.is_ValueChanged(I_W_C_Order.COLUMNNAME_Bill_Location_ID)))
				return true;
		}
		else if  (po instanceof MOrderLine || po instanceof MInvoiceLine)
		{
			/**
			 * 	Campos comuns nas Linhas do Pedido e Fatura
			 */
			if (po.get_ValueAsBoolean(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LineNetAmt)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_PriceActual)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_PriceEntered)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_QtyEntered)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LBR_Tax_ID)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_C_Tax_ID)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_LBR_CFOP_ID)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_FreightAmt)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_lbr_SISCOMEXAmt)
					|| po.is_ValueChanged (I_W_C_OrderLine.COLUMNNAME_lbr_InsuranceAmt))
				return true;
		}
		//
		return false;
	}	//	isChangeAffectTaxes

	/**
	 * 	Insert taxes
	 * 	@param order
	 * 	@return true if sucess
	 */
	private boolean updateTaxLine (PO po, boolean save)
	{
		if (MOrderLine.Table_Name.equals(po.get_TableName()))
			return updateTax (((MOrderLine) po).getParent(), save);

		else if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
			return updateTax (((MInvoiceLine) po).getParent(), save);

		return true;
	}	//	updateTax
	
	/**
	 * 	Insert taxes
	 * 	@param order
	 * 	@return true if sucess
	 */
	private boolean updateTax (PO po, boolean save)
	{		
		//	Linha do Pedido - Pega o documento Pai
		if (MOrderLine.Table_Name.equals(po.get_TableName()))
		{
			po = ((MOrderLine) po).getParent();
		}
		
		//	Linha da Fatura - Pega o documento Pai
		else if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
		{
			po = ((MInvoiceLine) po).getParent();
		}
		
		String tableName = po.get_TableName();

		//	Cabeçalhos de Documentos
		if (!MOrder.Table_Name.equals(tableName)
				&& !MInvoice.Table_Name.equals(tableName))
		{
			return false;
		}
			
		log.fine("[PO=" + po + ", Save=" + save + "]");
		BigDecimal totalLines = Env.ZERO;

		//	Delete Taxes
		DB.executeUpdateEx("DELETE " + tableName + "Tax " +
				"WHERE " + tableName + "_ID=" + po.get_ID(), po.get_TrxName());
		
		//	Array para somar os impostos de todas as linhas
		Map<Integer, Object[]> taxes = new HashMap<Integer, Object[]>();
		
		//	All Lines - Order
		if (MOrder.Table_Name.equals(tableName))
			for (MOrderLine oLine : ((MOrder) po).getLines())
			{
				I_W_C_OrderLine oLineW = POWrapper.create (oLine, I_W_C_OrderLine.class);
				
				if (oLineW.getLBR_Tax_ID() > 0)
				{
					MLBRTax tax = new MLBRTax (Env.getCtx(), oLineW.getLBR_Tax_ID(), oLine.get_TrxName());
					//
					processTax(taxes, tax, oLine.getC_Tax_ID());
				}
				totalLines = totalLines.add(oLine.getLineNetAmt());
			}
		
		//	All Lines - Invoice
		else if (MInvoice.Table_Name.equals(tableName))
			for (MInvoiceLine iLine : ((MInvoice) po).getLines())
			{
				I_W_C_InvoiceLine iLineW = POWrapper.create (iLine, I_W_C_InvoiceLine.class);
				
				if (iLineW.getLBR_Tax_ID() > 0)
				{
					MLBRTax tax = new MLBRTax (Env.getCtx(), iLineW.getLBR_Tax_ID(), iLine.get_TrxName());
					//
					processTax(taxes, tax, iLine.getC_Tax_ID());
				}
				totalLines = totalLines.add(iLine.getLineNetAmt());
			}
		
		//	Total
		BigDecimal grandTotal = totalLines;
		
		//	Grava os impostos na C_OrderTax
		for (Integer C_Tax_ID : taxes.keySet())
		{
			BigDecimal taxAmt 			= (BigDecimal) taxes.get(C_Tax_ID)[0];
			BigDecimal taxBaseAmt		= (BigDecimal) taxes.get(C_Tax_ID)[1];
			Boolean isTaxItaxncluded 	= (Boolean) taxes.get(C_Tax_ID)[2];
			
			if (!po.get_ValueAsBoolean("IsTaxIncluded"))
				isTaxItaxncluded = false;
			
			if (MOrder.Table_Name.equals(tableName))
			{
				MOrderTax newOTax = new MOrderTax(Env.getCtx(), 0, po.get_TrxName());
				newOTax.setAD_Org_ID(po.getAD_Org_ID());
				newOTax.setC_Order_ID(po.get_ID());
				newOTax.setC_Tax_ID(C_Tax_ID);
				newOTax.setIsTaxIncluded(isTaxItaxncluded);
				newOTax.setTaxBaseAmt(taxBaseAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
				newOTax.setTaxAmt(taxAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
				//
				if (!newOTax.save(po.get_TrxName()))
					return false;
			}
			else if (MInvoice.Table_Name.equals(tableName))
			{
				MInvoiceTax newITax = new MInvoiceTax(Env.getCtx(), 0, po.get_TrxName());
				newITax.setAD_Org_ID(po.getAD_Org_ID());
				newITax.setC_Invoice_ID(po.get_ID());
				newITax.setC_Tax_ID(C_Tax_ID);
				newITax.setIsTaxIncluded(isTaxItaxncluded);
				newITax.setTaxBaseAmt(taxBaseAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
				newITax.setTaxAmt(taxAmt.setScale(2, BigDecimal.ROUND_HALF_UP));
				//
				if (!newITax.save(po.get_TrxName()))
					return false;
			}
			//
			if (!isTaxItaxncluded)
				grandTotal = grandTotal.add(taxAmt);
		}

		if (MOrder.Table_Name.equals(tableName))
		{
			/**
			 * 	Para o pedido o valor do SEGURO, FRETE e SISCOMEX
			 * 		são adicionados no total, já para a fatura
			 * 		é adicionado uma nova linha.
			 */
			totalLines = totalLines.add(VLBROrder.getChargeAmt(po));
			grandTotal = grandTotal.add(VLBROrder.getChargeAmt(po));
			//
			((MOrder)po).setTotalLines(totalLines);
			((MOrder)po).setGrandTotal(grandTotal);
		}
		else if (MInvoice.Table_Name.equals(tableName))
		{
			((MInvoice)po).setTotalLines(totalLines);
			((MInvoice)po).setGrandTotal(grandTotal);
		}
		
		if (save)
			po.save();
		
		return true;
	}	//	updateTax

	/**
	 * 	Verifica todas as linhas do imposto
	 * 
	 * 	@param taxes
	 * 	@param C_Tax_ID
	 * 	@param tax
	 */
	private void processTax (Map<Integer, Object[]> taxes,
			MLBRTax tax, int C_Tax_ID)
	{
		for (MLBRTaxLine tl : tax.getLines())
		{
			BigDecimal taxAmt 		= tl.getlbr_TaxAmt();
			BigDecimal taxBaseAmt	= tl.getlbr_TaxBaseAmt();
			BigDecimal taxTotal 	= Env.ZERO;
			BigDecimal taxBaseTotal = Env.ZERO;
			
			if (taxAmt == null 
					|| taxAmt.compareTo(Env.ZERO) == 0
					|| !tl.islbr_PostTax())
				continue;
			
			Integer key = tl.getChild_Tax_ID(C_Tax_ID);
			
			if (key <= 0)
				continue;
			
			else if (taxes.containsKey(key))
			{
				taxTotal 		= (BigDecimal) taxes.get(key)[0];	//	Amt
				taxBaseTotal 	= (BigDecimal) taxes.get(key)[1];	//	Base
				taxes.remove(key);
			}
			
			taxes.put (key, new Object[]{taxTotal.add(taxAmt), 		//	0-Amt
					taxBaseTotal.add(taxBaseAmt),					//	1-Base
					tl.isTaxIncluded()});							//	2-Tax Included
		}
	}	//	processTax
}	//	VLBRTax
