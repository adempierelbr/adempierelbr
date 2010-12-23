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
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.callout.CalloutTax;
import org.adempierelbr.model.MLBRProductMovementFiller;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TaxesCalculation;
import org.adempierelbr.util.TaxesException;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MStorage;
import org.compiere.model.MWarehouse;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	ValidatorOrder
 *
 *  Validate Order (Tax Calculation)
 *
 *  [ 1967069 ] LBR_Tax não é excluído quando excluí uma linha, mgrigioni
 *  [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Fernando Lucktemberg (Faire, www.faire.com.br)
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
		//client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  {
			log.info("Initializing global validator: "+this.toString());
		}

		engine.addModelChange(MOrderLine.Table_Name, this);

		engine.addDocValidate(MOrder.Table_Name, this);
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
		boolean isChange = (TYPE_AFTER_NEW  == type || TYPE_AFTER_CHANGE == type);
		boolean isNew    = (TYPE_BEFORE_NEW == type);
		boolean isDelete = (TYPE_BEFORE_DELETE == type);

		if (po instanceof MOrderLine && (isChange || isNew || isDelete)){
			return modelChange((MOrderLine)po, isNew, isDelete);
		}

		return null;
	}	//	modelChange

	// modelChange - OrderLine
	// @param MOrderLine
	public String modelChange (MOrderLine oLine, boolean isNew, boolean isDelete) throws Exception{

		Properties ctx    = oLine.getCtx();
		String     trx    = oLine.get_TrxName();

		if (isNew) {
			MProduct product = oLine.getProduct();
			if (product != null && oLine.get_ValueAsInt("LBR_Tax_ID") == 0) {
				CalloutTax ct = new CalloutTax();
				TaxesException tE = ct.getException(ctx,oLine.getParent(),product,null);
				//
				if (tE != null) {
					oLine.set_CustomColumn("LBR_Tax_ID", tE.getLBR_Tax_ID());
					oLine.set_CustomColumn("lbr_TaxStatus", tE.getlbr_TaxStatus());
					if (tE.isSOTrx())
						oLine.set_CustomColumn("LBR_LegalMessage_ID", tE.getLBR_LegalMessage_ID());
				}
			}
		} //NEW

		else if (isDelete){
			int LBR_Tax_ID = oLine.get_ValueAsInt("LBR_Tax_ID");
			if (LBR_Tax_ID != 0){
				MLBRTax lbrTax = new MLBRTax(oLine.getCtx(),LBR_Tax_ID,oLine.get_TrxName());
				lbrTax.delete(true, oLine.get_TrxName());
			}
		} //DELETE

		else{
			//PROCESSED - don't do any thing
			if(oLine.isProcessed()){
				TaxBR.deleteSummaryTax(oLine.getC_Order_ID(), true, trx);
				return null;
			}

			//Verifica se já tem um Shipment
			//Ordem PDV, só marca processed no final
			if (oLine.getQtyDelivered() != null && oLine.getQtyDelivered().signum() != 0){
				TaxBR.deleteSummaryTax(oLine.getC_Order_ID(), true, trx);
				return null;
			}

			//Verifica se já tem uma Invoice
			//Ordem PDV, só marca processed no final
			if (oLine.getQtyInvoiced() != null && oLine.getQtyInvoiced().signum() != 0){
				TaxBR.deleteSummaryTax(oLine.getC_Order_ID(), true, trx);
				return null;
			}

			//ModelChange
			try{
				TaxesCalculation calc = new TaxesCalculation(oLine);
				calc.modelChange();
			}
			catch (Exception e){
				log.log(Level.SEVERE, "", e);
			}

		} //new or change

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

		if (po instanceof MOrder){

			MOrder order   = (MOrder)po;
			Properties ctx = order.getCtx();
			String     trx = order.get_TrxName();

			if (timing == TIMING_AFTER_COMPLETE){

				//DocValidate
				try {
					TaxesCalculation calc = new TaxesCalculation(order);
					calc.docValidate(timing);
				} catch (Exception e) {
					log.log(Level.SEVERE, "", e);
				}

				//Validate Withhold
				MLBRTax.validateWithhold(order);
				
				//FR 3079621 Onhate
				MLBRProductMovementFiller pmf = new MLBRProductMovementFiller();
				pmf.saveThis(order);

				MDocType dt = MDocType.get(ctx, order.getC_DocTypeTarget_ID());
				String DocSubTypeSO = dt.getDocSubTypeSO();

				//Somente Venda Padrão
				if (DocSubTypeSO != null && !(DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_WarehouseOrder) ||
					  DocSubTypeSO.equals(MDocType.DOCSUBTYPESO_POSOrder))){

					MInOut shipment  = null;
					MInvoice invoice = null;

					//Shipment
					boolean isAutomaticShipment = dt.get_ValueAsBoolean("lbr_IsAutomaticShipment");
					if (isAutomaticShipment){
						shipment = createShipment(order,dt,order.getDateOrdered());
					}

					//Invoice
					boolean isAutomaticInvoice = dt.get_ValueAsBoolean("lbr_IsAutomaticInvoice");
					if (isAutomaticInvoice){

						if (shipment != null){
							//	Manually Process Shipment
							String status = shipment.completeIt();
							shipment.setDocStatus(status);
							shipment.save(trx);
							if (!MOrder.DOCSTATUS_Completed.equals(status))
							{
								return shipment.getProcessMsg();
							}
						}

						invoice = createInvoice(order,dt,shipment,order.getDateOrdered());

						if (invoice != null){
							//	Manually Process Invoice
							String status = invoice.completeIt();
							invoice.setDocStatus(status);
							invoice.save(trx);
							order.setC_CashLine_ID(invoice.getC_CashLine_ID());
							if (!MOrder.DOCSTATUS_Completed.equals(status))
							{
								return invoice.getProcessMsg();
							}
						}
					}
				}

			} //AFTER COMPLETE

			else if (timing == TIMING_AFTER_REACTIVATE || timing == TIMING_AFTER_VOID ||
					 timing == TIMING_AFTER_CLOSE){

				String sql = "UPDATE C_Order SET LBR_Withhold_Order_ID=NULL " +
							 "WHERE LBR_Withhold_Order_ID=" + order.getC_Order_ID();

				DB.executeUpdate(sql, order.get_TrxName());

				int whOrder = order.get_ValueAsInt("LBR_Withhold_Order_ID");

				if (whOrder != 0)
					return "Não é possível re-abrir uma Ordem que tem Retenções de outra Ordem.";
				//TODO: Continuar fazendo as reversões

			} //AFTER REACTIVE AND REVERSE

		} //MOrder


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
		StringBuffer sb = new StringBuffer ("ValidatorOrder@AdempiereLBR - Powered by Kenos & Faire");
		return sb.toString ();
	}	//	toString

	/**
	 * 	Create Shipment
	 *	@param dt order document type
	 *	@param movementDate optional movement date (default today)
	 *	@return shipment or null
	 */
	private MInOut createShipment(MOrder order, MDocType dt, Timestamp movementDate)
	{
		Properties ctx = order.getCtx();
		String     trx = order.get_TrxName();

		MInOut shipment = new MInOut (order, dt.getC_DocTypeShipment_ID(), movementDate);
	//	shipment.setDateAcct(getDateAcct());
		if (!shipment.save(trx))
		{
			log.log(Level.SEVERE, "Could not create Shipment");
			return null;
		}
		//
		MOrderLine[] oLines = order.getLines(true, null);
		for (int i = 0; i < oLines.length; i++)
		{
			MOrderLine oLine = oLines[i];
			//
			MInOutLine ioLine = new MInOutLine(shipment);
			//	Qty = Ordered - Delivered
			BigDecimal MovementQty = oLine.getQtyOrdered().subtract(oLine.getQtyDelivered());
			if (MovementQty.signum() == 0)
				continue;

			//	Location
			Integer M_Locator_ID = (Integer)oLine.get_Value("M_Locator_ID");
			if (M_Locator_ID == null || M_Locator_ID.intValue() == 0){
				M_Locator_ID = MStorage.getM_Locator_ID (oLine.getM_Warehouse_ID(),
					oLine.getM_Product_ID(), oLine.getM_AttributeSetInstance_ID(),
					MovementQty, trx);
			}
			if (M_Locator_ID == 0)		//	Get default Location
			{
				MWarehouse wh = MWarehouse.get(ctx, oLine.getM_Warehouse_ID());
				M_Locator_ID = wh.getDefaultLocator().getM_Locator_ID();
			}
			//
			ioLine.setOrderLine(oLine, M_Locator_ID, MovementQty);
			ioLine.setQty(MovementQty);
			if (oLine.getQtyEntered().compareTo(oLine.getQtyOrdered()) != 0)
				ioLine.setQtyEntered(MovementQty
					.multiply(oLine.getQtyEntered())
					.divide(oLine.getQtyOrdered(), 6, RoundingMode.HALF_UP));
			if (!ioLine.save(trx))
			{
				log.log(Level.SEVERE, "Could not create Shipment Line");
				return null;
			}
		}
		return shipment;
	}	//	createShipment

	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	private MInvoice createInvoice (MOrder order, MDocType dt, MInOut shipment, Timestamp invoiceDate)
	{
		String     trx = order.get_TrxName();

		MInvoice invoice = new MInvoice (order, dt.getC_DocTypeInvoice_ID(), invoiceDate);
		if (!invoice.save(trx))
		{
			log.log(Level.SEVERE, "Could not create Invoice");
			return null;
		}

		//	If we have a Shipment - use that as a base
		if (shipment != null)
		{
			//
			MInOutLine[] sLines = shipment.getLines(false);
			for (int i = 0; i < sLines.length; i++)
			{
				MInOutLine sLine = sLines[i];
				//
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setShipLine(sLine);
				//	Qty = Delivered
				iLine.setQtyEntered(sLine.getQtyEntered());
				iLine.setQtyInvoiced(sLine.getMovementQty());
				if (!iLine.save(trx))
				{
					log.log(Level.SEVERE, "Could not create Invoice Line from Shipment Line");
					return null;
				}
				//
				sLine.setIsInvoiced(true);
				if (!sLine.save(trx))
				{
					log.warning("Could not update Shipment line: " + sLine);
				}
			}
		}
		else	//	Create Invoice from Order
		{
			//
			MOrderLine[] oLines = order.getLines(true,null);
			for (int i = 0; i < oLines.length; i++)
			{
				MOrderLine oLine = oLines[i];
				//
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setOrderLine(oLine);
				//	Qty = Ordered - Invoiced
				iLine.setQtyInvoiced(oLine.getQtyOrdered().subtract(oLine.getQtyInvoiced()));
				if (oLine.getQtyOrdered().compareTo(oLine.getQtyEntered()) == 0)
					iLine.setQtyEntered(iLine.getQtyInvoiced());
				else
					iLine.setQtyEntered(iLine.getQtyInvoiced().multiply(oLine.getQtyEntered())
						.divide(oLine.getQtyOrdered(), 12, RoundingMode.HALF_UP));
				if (!iLine.save(trx))
				{
					log.log(Level.SEVERE, "Could not create Invoice Line from Order Line");
					return null;
				}
			}
		}

		return invoice;
	}	//	createInvoice

} //ValidatorOrder