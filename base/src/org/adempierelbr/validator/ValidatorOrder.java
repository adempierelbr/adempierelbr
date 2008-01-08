package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.MTax;
import org.adempierelbr.util.TaxBR;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MClient;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;

/**
 *	ValidatorOrder
 *
 *  Validate Order (Tax Calculation)
 *	
 *	@author Mario Grigioni
 *	@version $Id: ValidatorOrder.java, 21/12/2007 14:45:00 mgrigioni
 */
public class ValidatorOrder implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorOrder ()
	{
		super ();
	}	//ValidatorOrder
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorOrder.class);
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
		engine.addModelChange("C_OrderLine", this);
		//	DocValidate
		engine.addDocValidate("C_Order", this);
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
		//Executa quando uma OrderLine é salva ou atualizada
		if (po.get_TableName().equalsIgnoreCase("C_OrderLine") && (type == TYPE_AFTER_CHANGE || type == TYPE_AFTER_NEW ))
		{
			MOrderLine oLine = (MOrderLine)po;
			return modelChange(oLine);
		}
		
		return null;
	}	//	modelChange
	
	// modelChange - OrderLine
	// @param MOrderLine
	public String modelChange (MOrderLine oLine) throws Exception{
			
		if(oLine.isProcessed()){
			return null;
		}
		
		//Verifica se já tem um Shipment
		//Ordem PDV, só marca processed no final
		if (oLine.getQtyDelivered() != null && oLine.getQtyDelivered().signum() != 0){
			return null;
		}
		
		//Verifica se já tem uma Invoice
		//Ordem PDV, só marca processed no final
		if (oLine.getQtyInvoiced() != null && oLine.getQtyInvoiced().signum() != 0){
			return null;
		}
		
		Properties ctx    = oLine.getCtx();
		String     trx    = oLine.get_TrxName();
		
		BigDecimal taxAmt = Env.ZERO;
		
		MOrder order = new MOrder(ctx,oLine.getC_Order_ID(),trx);
		
		org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,oLine.getC_Tax_ID(),trx);
				
		if (tax.isSummary()){
			
			MOrderLine[] lines = order.getLines();
			for (int i = 0; i < lines.length; i++){
				
				int C_OrderLine_ID = lines[i].getC_OrderLine_ID();
				
				TaxBR.calculateTaxes(C_OrderLine_ID, true, trx);
				
				Integer LBR_Tax_ID = (Integer)lines[i].get_Value("LBR_Tax_ID");
				if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
					MTax brTax = new MTax(ctx,LBR_Tax_ID,trx);
					X_LBR_TaxLine[] brLines = brTax.getLines();
				
					for (int j=0;j<brLines.length;j++){
						taxAmt = taxAmt.add(brLines[j].getlbr_TaxAmt());
					}
				}
				
			} //end for
			
			MOrderTax oTax = TaxBR.getMOrderTax(ctx, order.getC_Order_ID(), oLine.getC_Tax_ID(), trx);
			oTax.setTaxAmt(taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
			
			if (!order.isTaxIncluded()){
				order.setGrandTotal(order.getTotalLines().add(TaxBR.getMOrderTaxAmt(ctx, order.getC_Order_ID(), trx)));
				order.save(trx);
			}
			else{
				oTax.setTaxBaseAmt(order.getTotalLines());
			}
			
			oTax.save(trx);
			
		}
		
		log.info(oLine.toString());
		return null;
	} // modelChange(MOrderLine)

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
		
		//Executa quando uma Ordem é completada
		if (po.get_TableName().equalsIgnoreCase("C_Order") && (timing == TIMING_AFTER_COMPLETE)){
			
			MOrder order = (MOrder)po;
			MOrderLine[] lines = order.getLines();
			
			Properties ctx = order.getCtx();
			String     trx = order.get_TrxName();
			
			BigDecimal grandTotal = Env.ZERO;
			
			//Apaga impostos zerados
			String sql = "DELETE FROM C_OrderTax " +
					     "WHERE TaxAmt = 0 " +
					     "AND C_Order_ID = " + order.getC_Order_ID();
			DB.executeUpdate(sql, trx);
			
			for (int i = 0; i < lines.length; i++){
				MOrderLine line = lines[i];
				org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,line.getC_Tax_ID(),trx);
				
				if (tax.isSummary()){
					
					//Cálculo dos Impostos (Linha)
					try {
						TaxBR.calculateTaxes(line.getC_OrderLine_ID(), true, trx);
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
									
									MOrderTax oTax = TaxBR.getMOrderTax(ctx, order.getC_Order_ID(), cTax.getC_Tax_ID(), trx);
								
									BigDecimal TaxAmt     = oTax.getTaxAmt();
									BigDecimal TaxBaseAmt = oTax.getTaxBaseAmt();
								
									oTax.setTaxAmt(TaxAmt.add(taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
									oTax.setTaxBaseAmt(TaxBaseAmt.add(taxLine.getlbr_TaxBaseAmt()));
									oTax.setIsTaxIncluded(order.isTaxIncluded());
									oTax.save(trx);
								
								}
								
								grandTotal = grandTotal.add(taxLine.getlbr_TaxAmt());
							}
						} //end for
					}
				}
			} //end for
			
			if (!order.isTaxIncluded()){
				order.setGrandTotal(order.getTotalLines().add(grandTotal.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP)));
			}
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
	
} //ValidatorOrder